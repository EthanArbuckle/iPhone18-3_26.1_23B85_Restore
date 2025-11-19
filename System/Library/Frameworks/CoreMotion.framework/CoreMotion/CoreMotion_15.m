uint64_t sub_19B4C17C0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 96);
  if ((v4 & 0x1000) != 0)
  {
    v5 = *(result + 88);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 96);
    if ((v4 & 0x800) == 0)
    {
LABEL_3:
      if ((v4 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*(result + 96) & 0x800) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 84);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x100) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 96);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = *(v3 + 64);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x8000) == 0)
  {
LABEL_6:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = *(v3 + 94);
  result = PB::Writer::write(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x4000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = *(v3 + 93);
  result = PB::Writer::write(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(v3 + 92);
  result = PB::Writer::write(this);
  v4 = *(v3 + 96);
  if ((v4 & 2) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 96);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x40) == 0)
  {
LABEL_13:
    if ((v4 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v15 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 96);
  if ((v4 & 1) == 0)
  {
LABEL_14:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v16 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x400) == 0)
  {
LABEL_15:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    v18 = *(v3 + 76);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 96) & 4) == 0)
    {
      return result;
    }

    goto LABEL_33;
  }

LABEL_31:
  v17 = *(v3 + 80);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_33:
  v19 = *(v3 + 24);

  return PB::Writer::writeVarInt(this);
}

double sub_19B4C19B8(uint64_t a1)
{
  *a1 = &unk_1F0E2ED28;
  *(a1 + 120) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

void sub_19B4C19F4(PB::Base *this)
{
  *this = &unk_1F0E2ED28;
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

void sub_19B4C1A78(PB::Base *a1)
{
  sub_19B4C19F4(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4C1AB0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 120);
  if (v5)
  {
    PB::TextFormatter::format(this, "avgHorizontalDecelMax", *(a1 + 80));
    v5 = *(a1 + 120);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "avgHorizontalDecelThresholdCoupled", *(a1 + 96));
  if ((*(a1 + 120) & 8) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(this, "impactThresholdUncoupled", *(a1 + 100));
  }

LABEL_5:
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "inertialAccel", v8);
  }

  v9 = *(a1 + 120);
  if ((v9 & 0x80) != 0)
  {
    v19 = *(a1 + 116);
    PB::TextFormatter::format(this, "isMounted");
    v9 = *(a1 + 120);
    if ((v9 & 0x100) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_28;
    }
  }

  else if ((*(a1 + 120) & 0x100) == 0)
  {
    goto LABEL_9;
  }

  v20 = *(a1 + 117);
  PB::TextFormatter::format(this, "isSimulated");
  v9 = *(a1 + 120);
  if ((v9 & 0x10) == 0)
  {
LABEL_10:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_28:
  v21 = *(a1 + 104);
  PB::TextFormatter::format(this, "nAccelGap");
  if ((*(a1 + 120) & 0x20) != 0)
  {
LABEL_11:
    v10 = *(a1 + 108);
    PB::TextFormatter::format(this, "numResets");
  }

LABEL_12:
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "prevQ", v13);
  }

  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(this, "rawClampedAccel", v16);
  }

  v17 = *(a1 + 120);
  if ((v17 & 0x200) != 0)
  {
    v22 = *(a1 + 118);
    PB::TextFormatter::format(this, "shouldTrigger");
    v17 = *(a1 + 120);
    if ((v17 & 2) == 0)
    {
LABEL_18:
      if ((v17 & 0x40) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_18;
  }

  v23 = *(a1 + 88);
  PB::TextFormatter::format(this, "timestamp");
  if ((*(a1 + 120) & 0x40) != 0)
  {
LABEL_19:
    v18 = *(a1 + 112);
    PB::TextFormatter::format(this, "triggerPathBitmap");
  }

LABEL_20:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4C1CC8(uint64_t a1, PB::Reader *this)
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
        goto LABEL_236;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 120) |= 2u;
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
                goto LABEL_210;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
            }

            while (!v14);
LABEL_153:
            v28 = 0;
            goto LABEL_210;
          }

          v137 = 0;
          v138 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v139 = v23 - v24;
          if (!v17)
          {
            v139 = 0;
          }

          v140 = (v25 + v24);
          v141 = v24 + 1;
          while (2)
          {
            if (v139)
            {
              v142 = *v140;
              *(this + 1) = v141;
              v28 |= (v142 & 0x7F) << v137;
              if (v142 < 0)
              {
                v137 += 7;
                --v139;
                ++v140;
                ++v141;
                v14 = v138++ > 8;
                if (v14)
                {
                  goto LABEL_153;
                }

                continue;
              }

              if (*(this + 24))
              {
                v28 = 0;
              }
            }

            else
            {
              v28 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_210:
          *(a1 + 88) = v28;
          goto LABEL_232;
        case 2u:
          *(a1 + 120) |= 0x200u;
          v88 = *(this + 1);
          if (v88 >= *(this + 2))
          {
            v91 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v89 = v88 + 1;
            v90 = *(*this + v88);
            *(this + 1) = v89;
            v91 = v90 != 0;
          }

          *(a1 + 118) = v91;
          goto LABEL_232;
        case 3u:
          *(a1 + 120) |= 1u;
          v67 = *(this + 1);
          if (v67 > 0xFFFFFFFFFFFFFFF7 || v67 + 8 > *(this + 2))
          {
            goto LABEL_228;
          }

          *(a1 + 80) = *(*this + v67);
          goto LABEL_222;
        case 4u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_238;
            }

            v68 = *(this + 1);
            v69 = *(this + 2);
            while (v68 < v69 && (*(this + 24) & 1) == 0)
            {
              v71 = *(a1 + 16);
              v70 = *(a1 + 24);
              if (v71 >= v70)
              {
                v73 = *(a1 + 8);
                v74 = v71 - v73;
                v75 = (v71 - v73) >> 3;
                v76 = v75 + 1;
                if ((v75 + 1) >> 61)
                {
                  goto LABEL_240;
                }

                v77 = v70 - v73;
                if (v77 >> 2 > v76)
                {
                  v76 = v77 >> 2;
                }

                if (v77 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v78 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v78 = v76;
                }

                if (v78)
                {
                  sub_19B4C50F0(a1 + 8, v78);
                }

                v79 = (v71 - v73) >> 3;
                v80 = (8 * v75);
                v81 = (8 * v75 - 8 * v79);
                *v80 = 0;
                v72 = v80 + 1;
                memcpy(v81, v73, v74);
                v82 = *(a1 + 8);
                *(a1 + 8) = v81;
                *(a1 + 16) = v72;
                *(a1 + 24) = 0;
                if (v82)
                {
                  operator delete(v82);
                }
              }

              else
              {
                *v71 = 0;
                v72 = v71 + 8;
              }

              *(a1 + 16) = v72;
              v83 = *(this + 1);
              if (v83 > 0xFFFFFFFFFFFFFFF7 || v83 + 8 > *(this + 2))
              {
                goto LABEL_172;
              }

              *(v72 - 1) = *(*this + v83);
              v69 = *(this + 2);
              v68 = *(this + 1) + 8;
              *(this + 1) = v68;
            }

            goto LABEL_173;
          }

          v144 = *(a1 + 16);
          v143 = *(a1 + 24);
          if (v144 >= v143)
          {
            v160 = *(a1 + 8);
            v161 = v144 - v160;
            v162 = (v144 - v160) >> 3;
            v163 = v162 + 1;
            if ((v162 + 1) >> 61)
            {
LABEL_240:
              sub_19B5BE690();
            }

            v164 = v143 - v160;
            if (v164 >> 2 > v163)
            {
              v163 = v164 >> 2;
            }

            if (v164 >= 0x7FFFFFFFFFFFFFF8)
            {
              v165 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v165 = v163;
            }

            if (v165)
            {
              sub_19B4C50F0(a1 + 8, v165);
            }

            v176 = (v144 - v160) >> 3;
            v177 = (8 * v162);
            v178 = (8 * v162 - 8 * v176);
            *v177 = 0;
            v145 = v177 + 1;
            memcpy(v178, v160, v161);
            v179 = *(a1 + 8);
            *(a1 + 8) = v178;
            *(a1 + 16) = v145;
            *(a1 + 24) = 0;
            if (v179)
            {
              operator delete(v179);
            }
          }

          else
          {
            *v144 = 0;
            v145 = v144 + 8;
          }

          *(a1 + 16) = v145;
          v180 = *(this + 1);
          if (v180 <= 0xFFFFFFFFFFFFFFF7 && v180 + 8 <= *(this + 2))
          {
            *(v145 - 1) = *(*this + v180);
LABEL_222:
            v181 = *(this + 1) + 8;
            goto LABEL_231;
          }

          goto LABEL_228;
        case 5u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_238;
            }

            v41 = *(this + 1);
            v42 = *(this + 2);
            while (v41 < v42 && (*(this + 24) & 1) == 0)
            {
              v44 = *(a1 + 64);
              v43 = *(a1 + 72);
              if (v44 >= v43)
              {
                v46 = *(a1 + 56);
                v47 = v44 - v46;
                v48 = (v44 - v46) >> 2;
                v49 = v48 + 1;
                if ((v48 + 1) >> 62)
                {
                  goto LABEL_239;
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
                  sub_19B4C4FA8(a1 + 56, v51);
                }

                v52 = (v44 - v46) >> 2;
                v53 = (4 * v48);
                v54 = (4 * v48 - 4 * v52);
                *v53 = 0;
                v45 = v53 + 1;
                memcpy(v54, v46, v47);
                v55 = *(a1 + 56);
                *(a1 + 56) = v54;
                *(a1 + 64) = v45;
                *(a1 + 72) = 0;
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

              *(a1 + 64) = v45;
              v56 = *(this + 1);
              if (v56 > 0xFFFFFFFFFFFFFFFBLL || v56 + 4 > *(this + 2))
              {
                goto LABEL_172;
              }

              *(v45 - 1) = *(*this + v56);
              v42 = *(this + 2);
              v41 = *(this + 1) + 4;
              *(this + 1) = v41;
            }

            goto LABEL_173;
          }

          v135 = *(a1 + 64);
          v134 = *(a1 + 72);
          if (v135 >= v134)
          {
            v154 = *(a1 + 56);
            v155 = v135 - v154;
            v156 = (v135 - v154) >> 2;
            v157 = v156 + 1;
            if ((v156 + 1) >> 62)
            {
              goto LABEL_239;
            }

            v158 = v134 - v154;
            if (v158 >> 1 > v157)
            {
              v157 = v158 >> 1;
            }

            if (v158 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v159 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v159 = v157;
            }

            if (v159)
            {
              sub_19B4C4FA8(a1 + 56, v159);
            }

            v172 = (v135 - v154) >> 2;
            v173 = (4 * v156);
            v174 = (4 * v156 - 4 * v172);
            *v173 = 0;
            v136 = v173 + 1;
            memcpy(v174, v154, v155);
            v175 = *(a1 + 56);
            *(a1 + 56) = v174;
            *(a1 + 64) = v136;
            *(a1 + 72) = 0;
            if (v175)
            {
              operator delete(v175);
            }
          }

          else
          {
            *v135 = 0;
            v136 = v135 + 4;
          }

          *(a1 + 64) = v136;
          goto LABEL_226;
        case 6u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_238:
              v187 = 0;
              return v187 & 1;
            }

            v92 = *(this + 1);
            v93 = *(this + 2);
            while (v92 < v93 && (*(this + 24) & 1) == 0)
            {
              v95 = *(a1 + 40);
              v94 = *(a1 + 48);
              if (v95 >= v94)
              {
                v97 = *(a1 + 32);
                v98 = v95 - v97;
                v99 = (v95 - v97) >> 2;
                v100 = v99 + 1;
                if ((v99 + 1) >> 62)
                {
                  goto LABEL_239;
                }

                v101 = v94 - v97;
                if (v101 >> 1 > v100)
                {
                  v100 = v101 >> 1;
                }

                if (v101 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v102 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v102 = v100;
                }

                if (v102)
                {
                  sub_19B4C4FA8(a1 + 32, v102);
                }

                v103 = (v95 - v97) >> 2;
                v104 = (4 * v99);
                v105 = (4 * v99 - 4 * v103);
                *v104 = 0;
                v96 = v104 + 1;
                memcpy(v105, v97, v98);
                v106 = *(a1 + 32);
                *(a1 + 32) = v105;
                *(a1 + 40) = v96;
                *(a1 + 48) = 0;
                if (v106)
                {
                  operator delete(v106);
                }
              }

              else
              {
                *v95 = 0;
                v96 = v95 + 4;
              }

              *(a1 + 40) = v96;
              v107 = *(this + 1);
              if (v107 > 0xFFFFFFFFFFFFFFFBLL || v107 + 4 > *(this + 2))
              {
LABEL_172:
                *(this + 24) = 1;
                break;
              }

              *(v96 - 1) = *(*this + v107);
              v93 = *(this + 2);
              v92 = *(this + 1) + 4;
              *(this + 1) = v92;
            }

LABEL_173:
            PB::Reader::recallMark();
          }

          else
          {
            v147 = *(a1 + 40);
            v146 = *(a1 + 48);
            if (v147 >= v146)
            {
              v166 = *(a1 + 32);
              v167 = v147 - v166;
              v168 = (v147 - v166) >> 2;
              v169 = v168 + 1;
              if ((v168 + 1) >> 62)
              {
LABEL_239:
                sub_19B5BE690();
              }

              v170 = v146 - v166;
              if (v170 >> 1 > v169)
              {
                v169 = v170 >> 1;
              }

              if (v170 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v171 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v171 = v169;
              }

              if (v171)
              {
                sub_19B4C4FA8(a1 + 32, v171);
              }

              v182 = (v147 - v166) >> 2;
              v183 = (4 * v168);
              v184 = (4 * v168 - 4 * v182);
              *v183 = 0;
              v136 = v183 + 1;
              memcpy(v184, v166, v167);
              v185 = *(a1 + 32);
              *(a1 + 32) = v184;
              *(a1 + 40) = v136;
              *(a1 + 48) = 0;
              if (v185)
              {
                operator delete(v185);
              }
            }

            else
            {
              *v147 = 0;
              v136 = v147 + 4;
            }

            *(a1 + 40) = v136;
LABEL_226:
            v186 = *(this + 1);
            if (v186 <= 0xFFFFFFFFFFFFFFFBLL && v186 + 4 <= *(this + 2))
            {
              *(v136 - 1) = *(*this + v186);
LABEL_230:
              v181 = *(this + 1) + 4;
LABEL_231:
              *(this + 1) = v181;
            }

            else
            {
LABEL_228:
              *(this + 24) = 1;
            }
          }

LABEL_232:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_236;
          }

          break;
        case 7u:
          *(a1 + 120) |= 0x80u;
          v108 = *(this + 1);
          if (v108 >= *(this + 2))
          {
            v111 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v109 = v108 + 1;
            v110 = *(*this + v108);
            *(this + 1) = v109;
            v111 = v110 != 0;
          }

          *(a1 + 116) = v111;
          goto LABEL_232;
        case 8u:
          *(a1 + 120) |= 0x100u;
          v84 = *(this + 1);
          if (v84 >= *(this + 2))
          {
            v87 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v85 = v84 + 1;
            v86 = *(*this + v84);
            *(this + 1) = v85;
            v87 = v86 != 0;
          }

          *(a1 + 117) = v87;
          goto LABEL_232;
        case 9u:
          *(a1 + 120) |= 4u;
          v121 = *(this + 1);
          if (v121 > 0xFFFFFFFFFFFFFFFBLL || v121 + 4 > *(this + 2))
          {
            goto LABEL_228;
          }

          *(a1 + 96) = *(*this + v121);
          goto LABEL_230;
        case 0xAu:
          *(a1 + 120) |= 8u;
          v66 = *(this + 1);
          if (v66 > 0xFFFFFFFFFFFFFFFBLL || v66 + 4 > *(this + 2))
          {
            goto LABEL_228;
          }

          *(a1 + 100) = *(*this + v66);
          goto LABEL_230;
        case 0xBu:
          *(a1 + 120) |= 0x40u;
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
                goto LABEL_213;
              }

              v115 += 7;
              ++v119;
              v14 = v116++ > 8;
            }

            while (!v14);
LABEL_169:
            LODWORD(v117) = 0;
            goto LABEL_213;
          }

          v148 = 0;
          v149 = 0;
          v117 = 0;
          v17 = v112 >= v113;
          v150 = v112 - v113;
          if (!v17)
          {
            v150 = 0;
          }

          v151 = (v114 + v113);
          v152 = v113 + 1;
          while (2)
          {
            if (v150)
            {
              v153 = *v151;
              *(this + 1) = v152;
              v117 |= (v153 & 0x7F) << v148;
              if (v153 < 0)
              {
                v148 += 7;
                --v150;
                ++v151;
                ++v152;
                v14 = v149++ > 8;
                if (v14)
                {
                  goto LABEL_169;
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

LABEL_213:
          *(a1 + 112) = v117;
          goto LABEL_232;
        case 0xCu:
          *(a1 + 120) |= 0x20u;
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
                goto LABEL_204;
              }

              v35 += 7;
              ++v39;
              v14 = v36++ > 8;
            }

            while (!v14);
LABEL_135:
            LODWORD(v37) = 0;
            goto LABEL_204;
          }

          v122 = 0;
          v123 = 0;
          v37 = 0;
          v17 = v32 >= v33;
          v124 = v32 - v33;
          if (!v17)
          {
            v124 = 0;
          }

          v125 = (v34 + v33);
          v126 = v33 + 1;
          while (2)
          {
            if (v124)
            {
              v127 = *v125;
              *(this + 1) = v126;
              v37 |= (v127 & 0x7F) << v122;
              if (v127 < 0)
              {
                v122 += 7;
                --v124;
                ++v125;
                ++v126;
                v14 = v123++ > 8;
                if (v14)
                {
                  goto LABEL_135;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v37) = 0;
              }
            }

            else
            {
              LODWORD(v37) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_204:
          *(a1 + 108) = v37;
          goto LABEL_232;
        case 0xDu:
          *(a1 + 120) |= 0x10u;
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
                goto LABEL_207;
              }

              v60 += 7;
              ++v64;
              v14 = v61++ > 8;
            }

            while (!v14);
LABEL_143:
            LODWORD(v62) = 0;
            goto LABEL_207;
          }

          v128 = 0;
          v129 = 0;
          v62 = 0;
          v17 = v57 >= v58;
          v130 = v57 - v58;
          if (!v17)
          {
            v130 = 0;
          }

          v131 = (v59 + v58);
          v132 = v58 + 1;
          while (2)
          {
            if (v130)
            {
              v133 = *v131;
              *(this + 1) = v132;
              v62 |= (v133 & 0x7F) << v128;
              if (v133 < 0)
              {
                v128 += 7;
                --v130;
                ++v131;
                ++v132;
                v14 = v129++ > 8;
                if (v14)
                {
                  goto LABEL_143;
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

LABEL_207:
          *(a1 + 104) = v62;
          goto LABEL_232;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_238;
          }

          goto LABEL_232;
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

LABEL_236:
  v187 = v4 ^ 1;
  return v187 & 1;
}

uint64_t sub_19B4C2940(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 120);
  if ((v4 & 2) == 0)
  {
    if ((*(result + 120) & 0x200) == 0)
    {
      goto LABEL_3;
    }

LABEL_23:
    v16 = *(v3 + 118);
    result = PB::Writer::write(this);
    if ((*(v3 + 120) & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v15 = *(result + 88);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 120);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (v4)
  {
LABEL_4:
    result = PB::Writer::write(this, *(v3 + 80));
  }

LABEL_5:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v8 = *(v3 + 56);
  v9 = *(v3 + 64);
  while (v8 != v9)
  {
    v10 = *v8++;
    result = PB::Writer::write(this, v10);
  }

  v11 = *(v3 + 32);
  v12 = *(v3 + 40);
  while (v11 != v12)
  {
    v13 = *v11++;
    result = PB::Writer::write(this, v13);
  }

  v14 = *(v3 + 120);
  if ((v14 & 0x80) != 0)
  {
    v17 = *(v3 + 116);
    result = PB::Writer::write(this);
    v14 = *(v3 + 120);
    if ((v14 & 0x100) == 0)
    {
LABEL_16:
      if ((v14 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    }
  }

  else if ((*(v3 + 120) & 0x100) == 0)
  {
    goto LABEL_16;
  }

  v18 = *(v3 + 117);
  result = PB::Writer::write(this);
  v14 = *(v3 + 120);
  if ((v14 & 4) == 0)
  {
LABEL_17:
    if ((v14 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 96));
  v14 = *(v3 + 120);
  if ((v14 & 8) == 0)
  {
LABEL_18:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 100));
  v14 = *(v3 + 120);
  if ((v14 & 0x40) == 0)
  {
LABEL_19:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_30:
    v20 = *(v3 + 108);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 120) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_31;
  }

LABEL_29:
  v19 = *(v3 + 112);
  result = PB::Writer::writeVarInt(this);
  v14 = *(v3 + 120);
  if ((v14 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_20:
  if ((v14 & 0x10) == 0)
  {
    return result;
  }

LABEL_31:
  v21 = *(v3 + 104);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B4C2AFC(uint64_t result)
{
  *result = &unk_1F0E2F620;
  *(result + 16) = 0;
  return result;
}

void sub_19B4C2B24(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4C2B5C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4C2BBC(uint64_t a1, PB::Reader *this)
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
        *(a1 + 16) |= 1u;
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
              v27 = 0;
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
              v27 = 0;
              goto LABEL_45;
            }
          }

          if (*(this + 24))
          {
            v27 = 0;
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
              v27 = 0;
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

uint64_t sub_19B4C2E30(uint64_t result, PB::Writer *this)
{
  if (*(result + 16))
  {
    v2 = *(result + 8);
    return PB::Writer::writeVarInt(this);
  }

  return result;
}

void *sub_19B4C2E50(void *result)
{
  *result = &unk_1F0E2FF50;
  *(result + 164) = 0;
  return result;
}

void sub_19B4C2E78(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4C2EB0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 164);
  if ((v5 & 0x40) != 0)
  {
    PB::TextFormatter::format(this, "configAccelThresholdNorm", *(a1 + 56));
    v5 = *(a1 + 164);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 60);
  PB::TextFormatter::format(this, "configHardware");
  v5 = *(a1 + 164);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "configIx", *(a1 + 64));
  v5 = *(a1 + 164);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "configIy", *(a1 + 68));
  v5 = *(a1 + 164);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "configIz", *(a1 + 72));
  v5 = *(a1 + 164);
  if ((v5 & 0x800) == 0)
  {
LABEL_7:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "configLx", *(a1 + 76));
  v5 = *(a1 + 164);
  if ((v5 & 0x1000) == 0)
  {
LABEL_8:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "configLy", *(a1 + 80));
  v5 = *(a1 + 164);
  if ((v5 & 0x2000) == 0)
  {
LABEL_9:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "configLz", *(a1 + 84));
  v5 = *(a1 + 164);
  if ((v5 & 0x4000) == 0)
  {
LABEL_10:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "configZgThreshold", *(a1 + 88));
  v5 = *(a1 + 164);
  if ((v5 & 0x8000) == 0)
  {
LABEL_11:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_48;
  }

LABEL_47:
  v8 = *(a1 + 92);
  PB::TextFormatter::format(this, "debugCountOfAccelDataDrop");
  v5 = *(a1 + 164);
  if ((v5 & 0x10000) == 0)
  {
LABEL_12:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_48:
  v9 = *(a1 + 96);
  PB::TextFormatter::format(this, "debugCountOfDmDataDrop");
  v5 = *(a1 + 164);
  if ((v5 & 0x20000) == 0)
  {
LABEL_13:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "debugMaxTimeBetweenAccelSample", *(a1 + 100));
  v5 = *(a1 + 164);
  if ((v5 & 0x40000) == 0)
  {
LABEL_14:
    if ((v5 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "debugMaxTimeBetweenDmSample", *(a1 + 104));
  v5 = *(a1 + 164);
  if ((v5 & 1) == 0)
  {
LABEL_15:
    if ((v5 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_52;
  }

LABEL_51:
  v10 = *(a1 + 8);
  PB::TextFormatter::format(this, "epochFirstTimestamp");
  v5 = *(a1 + 164);
  if ((v5 & 2) == 0)
  {
LABEL_16:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_53;
  }

LABEL_52:
  v11 = *(a1 + 16);
  PB::TextFormatter::format(this, "epochLastTimestamp");
  v5 = *(a1 + 164);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_17:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

LABEL_53:
  v12 = *(a1 + 160);
  PB::TextFormatter::format(this, "freefallTpQualifier");
  v5 = *(a1 + 164);
  if ((v5 & 0x80000) == 0)
  {
LABEL_18:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_54:
  v13 = *(a1 + 108);
  PB::TextFormatter::format(this, "metaCountOfFreefallImpactPassed");
  v5 = *(a1 + 164);
  if ((v5 & 0x100000) == 0)
  {
LABEL_19:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_56;
  }

LABEL_55:
  v14 = *(a1 + 112);
  PB::TextFormatter::format(this, "metaCountOfFreefallTimePassed");
  v5 = *(a1 + 164);
  if ((v5 & 0x200000) == 0)
  {
LABEL_20:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_57;
  }

LABEL_56:
  v15 = *(a1 + 116);
  PB::TextFormatter::format(this, "metaCountOfSigImpact");
  v5 = *(a1 + 164);
  if ((v5 & 0x400000) == 0)
  {
LABEL_21:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_58;
  }

LABEL_57:
  v16 = *(a1 + 120);
  PB::TextFormatter::format(this, "metaCountOfZgSegment");
  v5 = *(a1 + 164);
  if ((v5 & 0x800000) == 0)
  {
LABEL_22:
    if ((v5 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

LABEL_58:
  v17 = *(a1 + 124);
  PB::TextFormatter::format(this, "metaCrossingCount");
  v5 = *(a1 + 164);
  if ((v5 & 4) == 0)
  {
LABEL_23:
    if ((v5 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_60;
  }

LABEL_59:
  v18 = *(a1 + 24);
  PB::TextFormatter::format(this, "metaDtBwFirstAndLastFreeFall");
  v5 = *(a1 + 164);
  if ((v5 & 8) == 0)
  {
LABEL_24:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_61;
  }

LABEL_60:
  v19 = *(a1 + 32);
  PB::TextFormatter::format(this, "metaDtBwFirstFreeFall");
  v5 = *(a1 + 164);
  if ((v5 & 0x10) == 0)
  {
LABEL_25:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }

LABEL_61:
  v20 = *(a1 + 40);
  PB::TextFormatter::format(this, "metaDtBwFirstSigImpact");
  v5 = *(a1 + 164);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "metaFreefallTime", *(a1 + 128));
  v5 = *(a1 + 164);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(this, "metaFreefallTimeForImpact", *(a1 + 132));
  v5 = *(a1 + 164);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(this, "metaMaxOfAccel", *(a1 + 136));
  v5 = *(a1 + 164);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(this, "metaMaxPower", *(a1 + 140));
  v5 = *(a1 + 164);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(this, "metaMaxZgSegmentTime", *(a1 + 144));
  v5 = *(a1 + 164);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(this, "metaNormOfAccel", *(a1 + 148));
  v5 = *(a1 + 164);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(this, "metaNormOfImpact", *(a1 + 152));
  v5 = *(a1 + 164);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_69:
  PB::TextFormatter::format(this, "metaTotalZgTime", *(a1 + 156));
  if ((*(a1 + 164) & 0x20) != 0)
  {
LABEL_34:
    v6 = *(a1 + 48);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_35:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4C3314(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 >= v3 || (*(this + 24) & 1) != 0)
  {
LABEL_357:
    v256 = v4 ^ 1;
    return v256 & 1;
  }

  v4 = 0;
  while (2)
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
      goto LABEL_357;
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
      goto LABEL_357;
    }

    v22 = v10 >> 3;
    switch((v10 >> 3))
    {
      case 1u:
        *(a1 + 164) |= 0x100000000uLL;
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

        *(a1 + 160) = v26;
        goto LABEL_297;
      case 2u:
        *(a1 + 164) |= 0x100000uLL;
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
              goto LABEL_334;
            }

            v100 += 7;
            ++v104;
            v14 = v101++ > 8;
          }

          while (!v14);
LABEL_236:
          LODWORD(v102) = 0;
          goto LABEL_334;
        }

        v207 = 0;
        v208 = 0;
        v102 = 0;
        v17 = v97 >= v98;
        v209 = v97 - v98;
        if (!v17)
        {
          v209 = 0;
        }

        v210 = (v99 + v98);
        v211 = v98 + 1;
        while (2)
        {
          if (v209)
          {
            v212 = *v210;
            *(this + 1) = v211;
            v102 |= (v212 & 0x7F) << v207;
            if (v212 < 0)
            {
              v207 += 7;
              --v209;
              ++v210;
              ++v211;
              v14 = v208++ > 8;
              if (v14)
              {
                goto LABEL_236;
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

LABEL_334:
        *(a1 + 112) = v102;
        goto LABEL_297;
      case 3u:
        *(a1 + 164) |= 0x80000uLL;
        v78 = *(this + 1);
        v77 = *(this + 2);
        v79 = *this;
        if (v78 <= 0xFFFFFFFFFFFFFFF5 && v78 + 10 <= v77)
        {
          v80 = 0;
          v81 = 0;
          v82 = 0;
          v83 = (v79 + v78);
          v84 = v78 + 1;
          do
          {
            *(this + 1) = v84;
            v85 = *v83++;
            v82 |= (v85 & 0x7F) << v80;
            if ((v85 & 0x80) == 0)
            {
              goto LABEL_328;
            }

            v80 += 7;
            ++v84;
            v14 = v81++ > 8;
          }

          while (!v14);
LABEL_220:
          LODWORD(v82) = 0;
          goto LABEL_328;
        }

        v195 = 0;
        v196 = 0;
        v82 = 0;
        v17 = v77 >= v78;
        v197 = v77 - v78;
        if (!v17)
        {
          v197 = 0;
        }

        v198 = (v79 + v78);
        v199 = v78 + 1;
        while (2)
        {
          if (v197)
          {
            v200 = *v198;
            *(this + 1) = v199;
            v82 |= (v200 & 0x7F) << v195;
            if (v200 < 0)
            {
              v195 += 7;
              --v197;
              ++v198;
              ++v199;
              v14 = v196++ > 8;
              if (v14)
              {
                goto LABEL_220;
              }

              continue;
            }

            if (*(this + 24))
            {
              LODWORD(v82) = 0;
            }
          }

          else
          {
            LODWORD(v82) = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_328:
        *(a1 + 108) = v82;
        goto LABEL_297;
      case 4u:
        *(a1 + 164) |= 0x1000000uLL;
        v95 = *(this + 1);
        if (v95 > 0xFFFFFFFFFFFFFFFBLL || v95 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 128) = *(*this + v95);
        goto LABEL_296;
      case 5u:
        *(a1 + 164) |= 0x20000000uLL;
        v56 = *(this + 1);
        if (v56 > 0xFFFFFFFFFFFFFFFBLL || v56 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 148) = *(*this + v56);
        goto LABEL_296;
      case 6u:
        *(a1 + 164) |= 0x4000000uLL;
        v117 = *(this + 1);
        if (v117 > 0xFFFFFFFFFFFFFFFBLL || v117 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 136) = *(*this + v117);
        goto LABEL_296;
      case 7u:
        *(a1 + 164) |= 0x80000000uLL;
        v128 = *(this + 1);
        if (v128 > 0xFFFFFFFFFFFFFFFBLL || v128 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 156) = *(*this + v128);
        goto LABEL_296;
      case 8u:
        *(a1 + 164) |= 0x10000000uLL;
        v96 = *(this + 1);
        if (v96 > 0xFFFFFFFFFFFFFFFBLL || v96 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 144) = *(*this + v96);
        goto LABEL_296;
      case 9u:
        *(a1 + 164) |= 0x200000uLL;
        v140 = *(this + 1);
        v139 = *(this + 2);
        v141 = *this;
        if (v140 <= 0xFFFFFFFFFFFFFFF5 && v140 + 10 <= v139)
        {
          v142 = 0;
          v143 = 0;
          v144 = 0;
          v145 = (v141 + v140);
          v146 = v140 + 1;
          do
          {
            *(this + 1) = v146;
            v147 = *v145++;
            v144 |= (v147 & 0x7F) << v142;
            if ((v147 & 0x80) == 0)
            {
              goto LABEL_349;
            }

            v142 += 7;
            ++v146;
            v14 = v143++ > 8;
          }

          while (!v14);
LABEL_278:
          LODWORD(v144) = 0;
          goto LABEL_349;
        }

        v237 = 0;
        v238 = 0;
        v144 = 0;
        v17 = v139 >= v140;
        v239 = v139 - v140;
        if (!v17)
        {
          v239 = 0;
        }

        v240 = (v141 + v140);
        v241 = v140 + 1;
        while (2)
        {
          if (v239)
          {
            v242 = *v240;
            *(this + 1) = v241;
            v144 |= (v242 & 0x7F) << v237;
            if (v242 < 0)
            {
              v237 += 7;
              --v239;
              ++v240;
              ++v241;
              v14 = v238++ > 8;
              if (v14)
              {
                goto LABEL_278;
              }

              continue;
            }

            if (*(this + 24))
            {
              LODWORD(v144) = 0;
            }
          }

          else
          {
            LODWORD(v144) = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_349:
        *(a1 + 116) = v144;
        goto LABEL_297;
      case 0xAu:
        *(a1 + 164) |= 0x400000uLL;
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
              goto LABEL_325;
            }

            v69 += 7;
            ++v73;
            v14 = v70++ > 8;
          }

          while (!v14);
LABEL_212:
          LODWORD(v71) = 0;
          goto LABEL_325;
        }

        v189 = 0;
        v190 = 0;
        v71 = 0;
        v17 = v66 >= v67;
        v191 = v66 - v67;
        if (!v17)
        {
          v191 = 0;
        }

        v192 = (v68 + v67);
        v193 = v67 + 1;
        while (2)
        {
          if (v191)
          {
            v194 = *v192;
            *(this + 1) = v193;
            v71 |= (v194 & 0x7F) << v189;
            if (v194 < 0)
            {
              v189 += 7;
              --v191;
              ++v192;
              ++v193;
              v14 = v190++ > 8;
              if (v14)
              {
                goto LABEL_212;
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

LABEL_325:
        *(a1 + 120) = v71;
        goto LABEL_297;
      case 0xBu:
        *(a1 + 164) |= 0x10uLL;
        v131 = *(this + 1);
        v130 = *(this + 2);
        v132 = *this;
        if (v131 <= 0xFFFFFFFFFFFFFFF5 && v131 + 10 <= v130)
        {
          v133 = 0;
          v134 = 0;
          v135 = 0;
          v136 = (v132 + v131);
          v137 = v131 + 1;
          do
          {
            *(this + 1) = v137;
            v138 = *v136++;
            v135 |= (v138 & 0x7F) << v133;
            if ((v138 & 0x80) == 0)
            {
              goto LABEL_346;
            }

            v133 += 7;
            ++v137;
            v14 = v134++ > 8;
          }

          while (!v14);
LABEL_270:
          v135 = 0;
          goto LABEL_346;
        }

        v231 = 0;
        v232 = 0;
        v135 = 0;
        v17 = v130 >= v131;
        v233 = v130 - v131;
        if (!v17)
        {
          v233 = 0;
        }

        v234 = (v132 + v131);
        v235 = v131 + 1;
        while (2)
        {
          if (v233)
          {
            v236 = *v234;
            *(this + 1) = v235;
            v135 |= (v236 & 0x7F) << v231;
            if (v236 < 0)
            {
              v231 += 7;
              --v233;
              ++v234;
              ++v235;
              v14 = v232++ > 8;
              if (v14)
              {
                goto LABEL_270;
              }

              continue;
            }

            if (*(this + 24))
            {
              v135 = 0;
            }
          }

          else
          {
            v135 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_346:
        *(a1 + 40) = v135;
        goto LABEL_297;
      case 0xCu:
        *(a1 + 164) |= 8uLL;
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
              goto LABEL_319;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
LABEL_196:
          v52 = 0;
          goto LABEL_319;
        }

        v177 = 0;
        v178 = 0;
        v52 = 0;
        v17 = v47 >= v48;
        v179 = v47 - v48;
        if (!v17)
        {
          v179 = 0;
        }

        v180 = (v49 + v48);
        v181 = v48 + 1;
        while (2)
        {
          if (v179)
          {
            v182 = *v180;
            *(this + 1) = v181;
            v52 |= (v182 & 0x7F) << v177;
            if (v182 < 0)
            {
              v177 += 7;
              --v179;
              ++v180;
              ++v181;
              v14 = v178++ > 8;
              if (v14)
              {
                goto LABEL_196;
              }

              continue;
            }

            if (*(this + 24))
            {
              v52 = 0;
            }
          }

          else
          {
            v52 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_319:
        *(a1 + 32) = v52;
        goto LABEL_297;
      case 0xDu:
        *(a1 + 164) |= 4uLL;
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
              goto LABEL_322;
            }

            v60 += 7;
            ++v64;
            v14 = v61++ > 8;
          }

          while (!v14);
LABEL_204:
          v62 = 0;
          goto LABEL_322;
        }

        v183 = 0;
        v184 = 0;
        v62 = 0;
        v17 = v57 >= v58;
        v185 = v57 - v58;
        if (!v17)
        {
          v185 = 0;
        }

        v186 = (v59 + v58);
        v187 = v58 + 1;
        while (2)
        {
          if (v185)
          {
            v188 = *v186;
            *(this + 1) = v187;
            v62 |= (v188 & 0x7F) << v183;
            if (v188 < 0)
            {
              v183 += 7;
              --v185;
              ++v186;
              ++v187;
              v14 = v184++ > 8;
              if (v14)
              {
                goto LABEL_204;
              }

              continue;
            }

            if (*(this + 24))
            {
              v62 = 0;
            }
          }

          else
          {
            v62 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_322:
        *(a1 + 24) = v62;
        goto LABEL_297;
      case 0xEu:
        *(a1 + 164) |= 0x8000uLL;
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
              goto LABEL_343;
            }

            v122 += 7;
            ++v126;
            v14 = v123++ > 8;
          }

          while (!v14);
LABEL_262:
          LODWORD(v124) = 0;
          goto LABEL_343;
        }

        v225 = 0;
        v226 = 0;
        v124 = 0;
        v17 = v119 >= v120;
        v227 = v119 - v120;
        if (!v17)
        {
          v227 = 0;
        }

        v228 = (v121 + v120);
        v229 = v120 + 1;
        while (2)
        {
          if (v227)
          {
            v230 = *v228;
            *(this + 1) = v229;
            v124 |= (v230 & 0x7F) << v225;
            if (v230 < 0)
            {
              v225 += 7;
              --v227;
              ++v228;
              ++v229;
              v14 = v226++ > 8;
              if (v14)
              {
                goto LABEL_262;
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

LABEL_343:
        *(a1 + 92) = v124;
        goto LABEL_297;
      case 0xFu:
        *(a1 + 164) |= 0x20000uLL;
        v46 = *(this + 1);
        if (v46 > 0xFFFFFFFFFFFFFFFBLL || v46 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 100) = *(*this + v46);
        goto LABEL_296;
      case 0x10u:
        *(a1 + 164) |= 0x10000uLL;
        v87 = *(this + 1);
        v86 = *(this + 2);
        v88 = *this;
        if (v87 <= 0xFFFFFFFFFFFFFFF5 && v87 + 10 <= v86)
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v92 = (v88 + v87);
          v93 = v87 + 1;
          do
          {
            *(this + 1) = v93;
            v94 = *v92++;
            v91 |= (v94 & 0x7F) << v89;
            if ((v94 & 0x80) == 0)
            {
              goto LABEL_331;
            }

            v89 += 7;
            ++v93;
            v14 = v90++ > 8;
          }

          while (!v14);
LABEL_228:
          LODWORD(v91) = 0;
          goto LABEL_331;
        }

        v201 = 0;
        v202 = 0;
        v91 = 0;
        v17 = v86 >= v87;
        v203 = v86 - v87;
        if (!v17)
        {
          v203 = 0;
        }

        v204 = (v88 + v87);
        v205 = v87 + 1;
        while (2)
        {
          if (v203)
          {
            v206 = *v204;
            *(this + 1) = v205;
            v91 |= (v206 & 0x7F) << v201;
            if (v206 < 0)
            {
              v201 += 7;
              --v203;
              ++v204;
              ++v205;
              v14 = v202++ > 8;
              if (v14)
              {
                goto LABEL_228;
              }

              continue;
            }

            if (*(this + 24))
            {
              LODWORD(v91) = 0;
            }
          }

          else
          {
            LODWORD(v91) = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_331:
        *(a1 + 96) = v91;
        goto LABEL_297;
      case 0x11u:
        *(a1 + 164) |= 0x40000uLL;
        v45 = *(this + 1);
        if (v45 > 0xFFFFFFFFFFFFFFFBLL || v45 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 104) = *(*this + v45);
        goto LABEL_296;
      case 0x12u:
        *(a1 + 164) |= 0x4000uLL;
        v115 = *(this + 1);
        if (v115 > 0xFFFFFFFFFFFFFFFBLL || v115 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 88) = *(*this + v115);
        goto LABEL_296;
      case 0x13u:
        *(a1 + 164) |= 0x40uLL;
        v129 = *(this + 1);
        if (v129 > 0xFFFFFFFFFFFFFFFBLL || v129 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 56) = *(*this + v129);
        goto LABEL_296;
      case 0x14u:
        *(a1 + 164) |= 0x80uLL;
        v151 = *(this + 1);
        v150 = *(this + 2);
        v152 = *this;
        if (v151 <= 0xFFFFFFFFFFFFFFF5 && v151 + 10 <= v150)
        {
          v153 = 0;
          v154 = 0;
          v155 = 0;
          v156 = (v152 + v151);
          v157 = v151 + 1;
          do
          {
            *(this + 1) = v157;
            v158 = *v156++;
            v155 |= (v158 & 0x7F) << v153;
            if ((v158 & 0x80) == 0)
            {
              goto LABEL_352;
            }

            v153 += 7;
            ++v157;
            v14 = v154++ > 8;
          }

          while (!v14);
LABEL_286:
          LODWORD(v155) = 0;
          goto LABEL_352;
        }

        v243 = 0;
        v244 = 0;
        v155 = 0;
        v17 = v150 >= v151;
        v245 = v150 - v151;
        if (!v17)
        {
          v245 = 0;
        }

        v246 = (v152 + v151);
        v247 = v151 + 1;
        while (2)
        {
          if (v245)
          {
            v248 = *v246;
            *(this + 1) = v247;
            v155 |= (v248 & 0x7F) << v243;
            if (v248 < 0)
            {
              v243 += 7;
              --v245;
              ++v246;
              ++v247;
              v14 = v244++ > 8;
              if (v14)
              {
                goto LABEL_286;
              }

              continue;
            }

            if (*(this + 24))
            {
              LODWORD(v155) = 0;
            }
          }

          else
          {
            LODWORD(v155) = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_352:
        *(a1 + 60) = v155;
        goto LABEL_297;
      case 0x15u:
        *(a1 + 164) |= 0x800uLL;
        v116 = *(this + 1);
        if (v116 > 0xFFFFFFFFFFFFFFFBLL || v116 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 76) = *(*this + v116);
        goto LABEL_296;
      case 0x16u:
        *(a1 + 164) |= 0x1000uLL;
        v118 = *(this + 1);
        if (v118 > 0xFFFFFFFFFFFFFFFBLL || v118 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 80) = *(*this + v118);
        goto LABEL_296;
      case 0x17u:
        *(a1 + 164) |= 0x2000uLL;
        v149 = *(this + 1);
        if (v149 > 0xFFFFFFFFFFFFFFFBLL || v149 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 84) = *(*this + v149);
        goto LABEL_296;
      case 0x18u:
        *(a1 + 164) |= 0x100uLL;
        v159 = *(this + 1);
        if (v159 > 0xFFFFFFFFFFFFFFFBLL || v159 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 64) = *(*this + v159);
        goto LABEL_296;
      case 0x19u:
        *(a1 + 164) |= 0x200uLL;
        v76 = *(this + 1);
        if (v76 > 0xFFFFFFFFFFFFFFFBLL || v76 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 68) = *(*this + v76);
        goto LABEL_296;
      case 0x1Au:
        *(a1 + 164) |= 0x400uLL;
        v75 = *(this + 1);
        if (v75 > 0xFFFFFFFFFFFFFFFBLL || v75 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 72) = *(*this + v75);
        goto LABEL_296;
      case 0x1Bu:
        *(a1 + 164) |= 0x8000000uLL;
        v170 = *(this + 1);
        if (v170 > 0xFFFFFFFFFFFFFFFBLL || v170 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 140) = *(*this + v170);
        goto LABEL_296;
      case 0x1Cu:
        *(a1 + 164) |= 0x800000uLL;
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
              goto LABEL_316;
            }

            v39 += 7;
            ++v43;
            v14 = v40++ > 8;
          }

          while (!v14);
LABEL_188:
          LODWORD(v41) = 0;
          goto LABEL_316;
        }

        v171 = 0;
        v172 = 0;
        v41 = 0;
        v17 = v36 >= v37;
        v173 = v36 - v37;
        if (!v17)
        {
          v173 = 0;
        }

        v174 = (v38 + v37);
        v175 = v37 + 1;
        while (2)
        {
          if (v173)
          {
            v176 = *v174;
            *(this + 1) = v175;
            v41 |= (v176 & 0x7F) << v171;
            if (v176 < 0)
            {
              v171 += 7;
              --v173;
              ++v174;
              ++v175;
              v14 = v172++ > 8;
              if (v14)
              {
                goto LABEL_188;
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

LABEL_316:
        *(a1 + 124) = v41;
        goto LABEL_297;
      case 0x1Du:
        *(a1 + 164) |= 0x20uLL;
        v161 = *(this + 1);
        v160 = *(this + 2);
        v162 = *this;
        if (v161 <= 0xFFFFFFFFFFFFFFF5 && v161 + 10 <= v160)
        {
          v163 = 0;
          v164 = 0;
          v165 = 0;
          v166 = (v162 + v161);
          v167 = v161 + 1;
          do
          {
            *(this + 1) = v167;
            v168 = *v166++;
            v165 |= (v168 & 0x7F) << v163;
            if ((v168 & 0x80) == 0)
            {
              goto LABEL_355;
            }

            v163 += 7;
            ++v167;
            v14 = v164++ > 8;
          }

          while (!v14);
LABEL_294:
          v165 = 0;
          goto LABEL_355;
        }

        v249 = 0;
        v250 = 0;
        v165 = 0;
        v17 = v160 >= v161;
        v251 = v160 - v161;
        if (!v17)
        {
          v251 = 0;
        }

        v252 = (v162 + v161);
        v253 = v161 + 1;
        while (2)
        {
          if (v251)
          {
            v254 = *v252;
            *(this + 1) = v253;
            v165 |= (v254 & 0x7F) << v249;
            if (v254 < 0)
            {
              v249 += 7;
              --v251;
              ++v252;
              ++v253;
              v14 = v250++ > 8;
              if (v14)
              {
                goto LABEL_294;
              }

              continue;
            }

            if (*(this + 24))
            {
              v165 = 0;
            }
          }

          else
          {
            v165 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_355:
        *(a1 + 48) = v165;
        goto LABEL_297;
      case 0x1Eu:
        *(a1 + 164) |= 0x2000000uLL;
        v169 = *(this + 1);
        if (v169 > 0xFFFFFFFFFFFFFFFBLL || v169 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 132) = *(*this + v169);
        goto LABEL_296;
      case 0x1Fu:
        *(a1 + 164) |= 0x40000000uLL;
        v148 = *(this + 1);
        if (v148 > 0xFFFFFFFFFFFFFFFBLL || v148 + 4 > *(this + 2))
        {
LABEL_178:
          *(this + 24) = 1;
        }

        else
        {
          *(a1 + 152) = *(*this + v148);
LABEL_296:
          *(this + 1) += 4;
        }

        goto LABEL_297;
      default:
        if (v22 == 201)
        {
          *(a1 + 164) |= 1uLL;
          v107 = *(this + 1);
          v106 = *(this + 2);
          v108 = *this;
          if (v107 > 0xFFFFFFFFFFFFFFF5 || v107 + 10 > v106)
          {
            v213 = 0;
            v214 = 0;
            v111 = 0;
            v17 = v106 >= v107;
            v215 = v106 - v107;
            if (!v17)
            {
              v215 = 0;
            }

            v216 = (v108 + v107);
            v217 = v107 + 1;
            while (1)
            {
              if (!v215)
              {
                v111 = 0;
                *(this + 24) = 1;
                goto LABEL_337;
              }

              v218 = *v216;
              *(this + 1) = v217;
              v111 |= (v218 & 0x7F) << v213;
              if ((v218 & 0x80) == 0)
              {
                break;
              }

              v213 += 7;
              --v215;
              ++v216;
              ++v217;
              v14 = v214++ > 8;
              if (v14)
              {
LABEL_244:
                v111 = 0;
                goto LABEL_337;
              }
            }

            if (*(this + 24))
            {
              v111 = 0;
            }
          }

          else
          {
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = (v108 + v107);
            v113 = v107 + 1;
            while (1)
            {
              *(this + 1) = v113;
              v114 = *v112++;
              v111 |= (v114 & 0x7F) << v109;
              if ((v114 & 0x80) == 0)
              {
                break;
              }

              v109 += 7;
              ++v113;
              v14 = v110++ > 8;
              if (v14)
              {
                goto LABEL_244;
              }
            }
          }

LABEL_337:
          *(a1 + 8) = v111;
          goto LABEL_297;
        }

        if (v22 == 202)
        {
          *(a1 + 164) |= 2uLL;
          v28 = *(this + 1);
          v27 = *(this + 2);
          v29 = *this;
          if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
          {
            v219 = 0;
            v220 = 0;
            v32 = 0;
            v17 = v27 >= v28;
            v221 = v27 - v28;
            if (!v17)
            {
              v221 = 0;
            }

            v222 = (v29 + v28);
            v223 = v28 + 1;
            while (1)
            {
              if (!v221)
              {
                v32 = 0;
                *(this + 24) = 1;
                goto LABEL_340;
              }

              v224 = *v222;
              *(this + 1) = v223;
              v32 |= (v224 & 0x7F) << v219;
              if ((v224 & 0x80) == 0)
              {
                break;
              }

              v219 += 7;
              --v221;
              ++v222;
              ++v223;
              v14 = v220++ > 8;
              if (v14)
              {
LABEL_254:
                v32 = 0;
                goto LABEL_340;
              }
            }

            if (*(this + 24))
            {
              v32 = 0;
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
                goto LABEL_254;
              }
            }
          }

LABEL_340:
          *(a1 + 16) = v32;
          goto LABEL_297;
        }

        if (PB::Reader::skip(this))
        {
LABEL_297:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_357;
          }

          continue;
        }

        v256 = 0;
        return v256 & 1;
    }
  }
}

uint64_t sub_19B4C4658(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 164);
  if ((v4 & 0x100000000) != 0)
  {
    v5 = *(result + 160);
    result = PB::Writer::write(this);
    v4 = *(v3 + 164);
    if ((v4 & 0x100000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((v4 & 0x100000) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 112);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x80000) == 0)
  {
LABEL_4:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  v7 = *(v3 + 108);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_5:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 164);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 148));
  v4 = *(v3 + 164);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_7:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 164);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_8:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 156));
  v4 = *(v3 + 164);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_9:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 164);
  if ((v4 & 0x200000) == 0)
  {
LABEL_10:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  v8 = *(v3 + 116);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x400000) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  v9 = *(v3 + 120);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  v10 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 8) == 0)
  {
LABEL_13:
    if ((v4 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  v11 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 4) == 0)
  {
LABEL_14:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  v12 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x8000) == 0)
  {
LABEL_15:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  v13 = *(v3 + 92);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x20000) == 0)
  {
LABEL_16:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 164);
  if ((v4 & 0x10000) == 0)
  {
LABEL_17:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  v14 = *(v3 + 96);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x40000) == 0)
  {
LABEL_18:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 164);
  if ((v4 & 0x4000) == 0)
  {
LABEL_19:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 164);
  if ((v4 & 0x40) == 0)
  {
LABEL_20:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 164);
  if ((v4 & 0x80) == 0)
  {
LABEL_21:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  v15 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x800) == 0)
  {
LABEL_22:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 164);
  if ((v4 & 0x1000) == 0)
  {
LABEL_23:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 164);
  if ((v4 & 0x2000) == 0)
  {
LABEL_24:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 164);
  if ((v4 & 0x100) == 0)
  {
LABEL_25:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 164);
  if ((v4 & 0x200) == 0)
  {
LABEL_26:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 164);
  if ((v4 & 0x400) == 0)
  {
LABEL_27:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 164);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_28:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = PB::Writer::write(this, *(v3 + 140));
  v4 = *(v3 + 164);
  if ((v4 & 0x800000) == 0)
  {
LABEL_29:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  v16 = *(v3 + 124);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x20) == 0)
  {
LABEL_30:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_64;
  }

LABEL_63:
  v17 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = PB::Writer::write(this, *(v3 + 132));
  v4 = *(v3 + 164);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v4 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_66:
    v18 = *(v3 + 8);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 164) & 2) == 0)
    {
      return result;
    }

    goto LABEL_67;
  }

LABEL_65:
  result = PB::Writer::write(this, *(v3 + 152));
  v4 = *(v3 + 164);
  if (v4)
  {
    goto LABEL_66;
  }

LABEL_33:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_67:
  v19 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B4C4A2C(uint64_t result)
{
  *result = &unk_1F0E2F230;
  *(result + 20) = 0;
  return result;
}

void sub_19B4C4A54(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4C4A8C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "attached");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4C4B08(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B4C4D14(uint64_t result, PB::Writer *this)
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

void sub_19B4C4D80(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_19B4C4DD4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_19B4C4DD4(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void *sub_19B4C4E40(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_19B4C4F6C(v6, v10);
    }

    sub_19B5BE690();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_19B4C4F6C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_19B4C4FA8(a1, a2);
  }

  sub_19B5BE690();
}

void sub_19B4C4FA8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_19B4C5080();
}

void sub_19B4C4FF0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_19B4C504C(exception, a1);
  __cxa_throw(exception, off_1E7532770, MEMORY[0x1E69E5278]);
}

std::logic_error *sub_19B4C504C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void sub_19B4C5080()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void sub_19B4C50B4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_19B4C50F0(a1, a2);
  }

  sub_19B5BE690();
}

void sub_19B4C50F0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_19B4C5080();
}

void *sub_19B4C5138(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_19B4C51DC();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_19B4C51F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x19EAE76F0);
  }
}

void ***sub_19B4C5250(void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    free(*v2);

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

void sub_19B4C52B0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_19B4C5080();
}

uint64_t sub_19B4C52F8(uint64_t a1)
{
  sub_19B4C5330(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_19B4C5330(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

id sub_19B4C53A4()
{
  if (qword_1EAFE3890 != -1)
  {
    sub_19B7A35A8();
  }

  v1 = qword_1EAFE3AA8;

  return v1;
}

uint64_t sub_19B4C53E8()
{
  qword_1EAFE3AA8 = dispatch_queue_create("com.apple.Msl.DefaultsQueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

void sub_19B4C5428(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1048576000;
  *(a2 + 8) = 0x3200015180;
  sub_19B428B50((a2 + 16), "/tmp/");
  sub_19B428B50((a2 + 40), "");
  sub_19B428B50((a2 + 64), "msl");
  *(a2 + 88) = 2;
  *(a2 + 96) = 300;
  v45 = objc_msgSend_allKeys(*(a1 + 16), v4, v5);
  if (objc_msgSend_containsObject_(v45, v6, @"FilePrefix"))
  {
    v8 = objc_msgSend_valueForKey_(*(a1 + 16), v7, @"FilePrefix");
    v9 = v8;
    v12 = objc_msgSend_UTF8String(v9, v10, v11);
    sub_19B43212C((a2 + 40), v12);
  }

  if (objc_msgSend_containsObject_(v45, v7, @"FileBasePath"))
  {
    v14 = objc_msgSend_valueForKey_(*(a1 + 16), v13, @"FileBasePath");
    v15 = v14;
    v18 = objc_msgSend_UTF8String(v15, v16, v17);
    sub_19B43212C((a2 + 16), v18);
  }

  if (objc_msgSend_containsObject_(v45, v13, @"FileExtension"))
  {
    v20 = objc_msgSend_valueForKey_(*(a1 + 16), v19, @"FileExtension");
    v21 = v20;
    v24 = objc_msgSend_UTF8String(v21, v22, v23);
    sub_19B43212C((a2 + 64), v24);
  }

  if (objc_msgSend_containsObject_(v45, v19, @"FileTimeInterval"))
  {
    v26 = objc_msgSend_valueForKey_(*(a1 + 16), v25, @"FileTimeInterval");
    *(a2 + 8) = objc_msgSend_unsignedIntValue(v26, v27, v28);
  }

  if (objc_msgSend_containsObject_(v45, v25, @"FilesToKeep"))
  {
    v30 = objc_msgSend_valueForKey_(*(a1 + 16), v29, @"FilesToKeep");
    *(a2 + 12) = objc_msgSend_unsignedIntValue(v30, v31, v32);
  }

  if (objc_msgSend_containsObject_(v45, v29, @"FileSize"))
  {
    v34 = objc_msgSend_valueForKey_(*(a1 + 16), v33, @"FileSize");
    *a2 = objc_msgSend_unsignedIntValue(v34, v35, v36);
  }

  if (objc_msgSend_containsObject_(v45, v33, @"ProtectionClass"))
  {
    v38 = objc_msgSend_valueForKey_(*(a1 + 16), v37, @"ProtectionClass");
    *(a2 + 88) = objc_msgSend_unsignedIntValue(v38, v39, v40);
  }

  if (objc_msgSend_containsObject_(v45, v37, @"FlushTimeout"))
  {
    v42 = objc_msgSend_valueForKey_(*(a1 + 16), v41, @"FlushTimeout");
    *(a2 + 96) = objc_msgSend_longLongValue(v42, v43, v44);
  }
}

uint64_t sub_19B4C5734(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_19B4C5788(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = objc_msgSend_copy(a3, v6, v7);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 16), v9, v8, v5);

  if ((*a1 & 1) == 0)
  {
    *a1 = 1;
    v10 = dispatch_time(0, 10000000000);
    v11 = sub_19B4C53A4();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B4C5894;
    block[3] = &unk_1E75327D8;
    block[4] = a1;
    dispatch_after(v10, v11, block);
  }
}

void sub_19B4C5894(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock((*(v1 + 8) + 24));
  v2 = *(v1 + 8);
  operator new();
}

void sub_19B4C5968(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B4C5734(va);
  MEMORY[0x19EAE76F0](v2, 0x1032C4044EE41C5);
  std::mutex::unlock((v3 + 24));
  _Unwind_Resume(a1);
}

uint64_t sub_19B4C5AE8()
{
  qword_1EAFE3898 = os_log_create("com.apple.MotionSensorLogging", "MSL");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_19B4C5B2C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_19B50A22C();

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

void *sub_19B4C5B78(void *result)
{
  *result = &unk_1F0E38BD0;
  result[1] = 0;
  return result;
}

void sub_19B4C5B98(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E38BD0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4C5C18(PB::Base *a1)
{
  sub_19B4C5B98(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4C5C50(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4C5CCC(int a1, PB::Reader *this)
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

double sub_19B4C5F10(uint64_t a1)
{
  *a1 = &unk_1F0E2C868;
  *(a1 + 44) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_19B4C5F40(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_19B4C5F5C(void *result)
{
  *result = &unk_1F0E38C08;
  result[1] = 0;
  return result;
}

void sub_19B4C5F7C(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E38C08;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4C5FFC(PB::Base *a1)
{
  sub_19B4C5F7C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4C6034(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4C60B0(int a1, PB::Reader *this)
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

uint64_t sub_19B4C62EC(uint64_t result)
{
  *result = &unk_1F0E38CB0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_19B4C6314(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_19B4C6330(uint64_t result)
{
  *result = &unk_1F0E2B6A8;
  *(result + 12) = 0;
  return result;
}

void sub_19B4C6358(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4C6390(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    PB::TextFormatter::format(this, "alsTrustedLux", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4C63F0(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B4C65B0(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    return PB::Writer::write(this, *(result + 8));
  }

  return result;
}

uint64_t sub_19B4C65CC(uint64_t result)
{
  *result = &unk_1F0E2B4E8;
  *(result + 20) = 0;
  return result;
}

void sub_19B4C65F4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4C662C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "lux", *(a1 + 16));
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4C66A8(uint64_t a1, PB::Reader *this)
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
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
        {
          *(a1 + 16) = *(*this + v2);
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
        *(a1 + 20) |= 1u;
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
              v26 = 0;
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
              v26 = 0;
              goto LABEL_48;
            }
          }

          if (*(this + 24))
          {
            v26 = 0;
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
              v26 = 0;
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

uint64_t sub_19B4C6974(uint64_t result, PB::Writer *this)
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

    return PB::Writer::write(this, v6);
  }

  return result;
}

void sub_19B4C6A04(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4C6A3C(int a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4C6A7C(int a1, PB::Reader *this)
{
  while (1)
  {
    v4 = *(this + 1);
    v3 = *(this + 2);
    v5 = *(this + 24);
    v6 = v3 - v4;
    if (v3 <= v4 || (*(this + 24) & 1) != 0)
    {
      goto LABEL_23;
    }

    v7 = *this;
    v8 = v4 > 0xFFFFFFFFFFFFFFF5 || v4 + 10 > v3;
    if (v8)
    {
      break;
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = (v7 + v4);
    v19 = v4 + 1;
    while (1)
    {
      *(this + 1) = v19;
      v20 = *v18++;
      v17 |= (v20 & 0x7F) << v15;
      if ((v20 & 0x80) == 0)
      {
        break;
      }

      v15 += 7;
      ++v19;
      v8 = v16++ > 8;
      if (v8)
      {
        goto LABEL_17;
      }
    }

LABEL_18:
    if ((v17 & 7) == 4)
    {
      v5 = 0;
LABEL_23:
      v21 = v5 ^ 1;
      return v21 & 1;
    }

    if ((PB::Reader::skip(this) & 1) == 0)
    {
      v21 = 0;
      return v21 & 1;
    }
  }

  v9 = 0;
  v10 = 0;
  v17 = 0;
  v11 = (v7 + v4);
  v12 = v4 + 1;
  while (v6)
  {
    v13 = *v11;
    *(this + 1) = v12;
    v17 |= (v13 & 0x7F) << v9;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    v9 += 7;
    --v6;
    ++v11;
    ++v12;
    if (v10++ >= 9)
    {
LABEL_17:
      LOBYTE(v17) = 0;
      goto LABEL_18;
    }
  }

  v21 = 0;
  *(this + 24) = 1;
  return v21 & 1;
}

void *sub_19B4C6BA8(void *result)
{
  *result = &unk_1F0E2B758;
  result[1] = 0;
  return result;
}

void sub_19B4C6BC8(PB::Base *this)
{
  *this = &unk_1F0E2B758;
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

void sub_19B4C6C2C(PB::Base *a1)
{
  sub_19B4C6BC8(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4C6C64(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4C6CC0(int a1, PB::Reader *this)
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

uint64_t sub_19B4C6E94(uint64_t result)
{
  if (*(result + 8))
  {
    return PB::Writer::write();
  }

  return result;
}

uint64_t sub_19B4C6EB0(uint64_t result)
{
  *result = &unk_1F0E2FCE8;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 56) = 0;
  return result;
}

void sub_19B4C6EDC(PB::Base *this)
{
  *this = &unk_1F0E2FCE8;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4C6F40(PB::Base *a1)
{
  sub_19B4C6EDC(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4C6F78(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "attitude", v7);
  }

  v8 = *(a1 + 56);
  if ((v8 & 2) != 0)
  {
    v9 = *(a1 + 40);
    PB::TextFormatter::format(this, "status");
    v8 = *(a1 + 56);
    if ((v8 & 1) == 0)
    {
LABEL_5:
      if ((v8 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 56) & 1) == 0)
  {
    goto LABEL_5;
  }

  PB::TextFormatter::format(this, "timestamp", *(a1 + 32));
  v8 = *(a1 + 56);
  if ((v8 & 4) == 0)
  {
LABEL_6:
    if ((v8 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "x", *(a1 + 44));
  v8 = *(a1 + 56);
  if ((v8 & 8) == 0)
  {
LABEL_7:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  PB::TextFormatter::format(this, "y", *(a1 + 48));
  if ((*(a1 + 56) & 0x10) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(this, "z", *(a1 + 52));
  }

LABEL_9:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4C7098(uint64_t a1, PB::Reader *this)
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
        goto LABEL_107;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 3)
      {
        break;
      }

      if (v22 == 4)
      {
        *(a1 + 56) |= 0x10u;
        v34 = *(this + 1);
        if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(this + 2))
        {
          goto LABEL_99;
        }

        *(a1 + 52) = *(*this + v34);
LABEL_50:
        v36 = *(this + 1) + 4;
LABEL_102:
        *(this + 1) = v36;
        goto LABEL_103;
      }

      if (v22 != 5)
      {
        if (v22 == 6)
        {
          *(a1 + 56) |= 2u;
          v25 = *(this + 1);
          v24 = *(this + 2);
          v26 = *this;
          if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
          {
            v53 = 0;
            v54 = 0;
            v29 = 0;
            v17 = v24 >= v25;
            v55 = v24 - v25;
            if (!v17)
            {
              v55 = 0;
            }

            v56 = (v26 + v25);
            v57 = v25 + 1;
            while (1)
            {
              if (!v55)
              {
                LODWORD(v29) = 0;
                *(this + 24) = 1;
                goto LABEL_92;
              }

              v58 = *v56;
              *(this + 1) = v57;
              v29 |= (v58 & 0x7F) << v53;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              --v55;
              ++v56;
              ++v57;
              v14 = v54++ > 8;
              if (v14)
              {
LABEL_78:
                LODWORD(v29) = 0;
                goto LABEL_92;
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
                goto LABEL_78;
              }
            }
          }

LABEL_92:
          *(a1 + 40) = v29;
          goto LABEL_103;
        }

LABEL_45:
        if ((PB::Reader::skip(this) & 1) == 0)
        {
          goto LABEL_109;
        }

        goto LABEL_103;
      }

      if ((v10 & 7) != 2)
      {
        v60 = *(a1 + 16);
        v59 = *(a1 + 24);
        if (v60 >= v59)
        {
          v62 = *(a1 + 8);
          v63 = v60 - v62;
          v64 = (v60 - v62) >> 3;
          v65 = v64 + 1;
          if ((v64 + 1) >> 61)
          {
LABEL_110:
            sub_19B5BE690();
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
            sub_19B4C50F0(a1 + 8, v67);
          }

          v68 = (v60 - v62) >> 3;
          v69 = (8 * v64);
          v70 = (8 * v64 - 8 * v68);
          *v69 = 0;
          v61 = v69 + 1;
          memcpy(v70, v62, v63);
          v71 = *(a1 + 8);
          *(a1 + 8) = v70;
          *(a1 + 16) = v61;
          *(a1 + 24) = 0;
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

        *(a1 + 16) = v61;
        v72 = *(this + 1);
        if (v72 > 0xFFFFFFFFFFFFFFF7 || v72 + 8 > *(this + 2))
        {
LABEL_99:
          *(this + 24) = 1;
          goto LABEL_103;
        }

        *(v61 - 1) = *(*this + v72);
LABEL_101:
        v36 = *(this + 1) + 8;
        goto LABEL_102;
      }

      if (PB::Reader::placeMark())
      {
LABEL_109:
        v73 = 0;
        return v73 & 1;
      }

      v37 = *(this + 1);
      v38 = *(this + 2);
      while (v37 < v38 && (*(this + 24) & 1) == 0)
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
            goto LABEL_110;
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
          *(this + 24) = 1;
          break;
        }

        *(v41 - 1) = *(*this + v52);
        v38 = *(this + 2);
        v37 = *(this + 1) + 8;
        *(this + 1) = v37;
      }

      PB::Reader::recallMark();
LABEL_103:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_107;
      }
    }

    switch(v22)
    {
      case 1:
        *(a1 + 56) |= 1u;
        v33 = *(this + 1);
        if (v33 > 0xFFFFFFFFFFFFFFF7 || v33 + 8 > *(this + 2))
        {
          goto LABEL_99;
        }

        *(a1 + 32) = *(*this + v33);
        goto LABEL_101;
      case 2:
        *(a1 + 56) |= 4u;
        v35 = *(this + 1);
        if (v35 > 0xFFFFFFFFFFFFFFFBLL || v35 + 4 > *(this + 2))
        {
          goto LABEL_99;
        }

        *(a1 + 44) = *(*this + v35);
        goto LABEL_50;
      case 3:
        *(a1 + 56) |= 8u;
        v23 = *(this + 1);
        if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(this + 2))
        {
          goto LABEL_99;
        }

        *(a1 + 48) = *(*this + v23);
        goto LABEL_50;
    }

    goto LABEL_45;
  }

LABEL_107:
  v73 = v4 ^ 1;
  return v73 & 1;
}

uint64_t sub_19B4C762C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 56);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 56);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_13:
      result = PB::Writer::write(this, *(v3 + 48));
      if ((*(v3 + 56) & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*(result + 56) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 56);
  if ((v4 & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v4 & 0x10) != 0)
  {
LABEL_5:
    result = PB::Writer::write(this, *(v3 + 52));
  }

LABEL_6:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  if ((*(v3 + 56) & 2) != 0)
  {
    v8 = *(v3 + 40);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

void *sub_19B4C771C(void *result)
{
  *result = &unk_1F0E2FCB0;
  result[1] = 0;
  return result;
}

void sub_19B4C7740(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4C7778(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "state");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4C77D8(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B4C7A4C(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    v2 = *(result + 8);
    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B4C7A6C(uint64_t result)
{
  *result = &unk_1F0E2B790;
  *(result + 32) = 0;
  return result;
}

void sub_19B4C7A94(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4C7ACC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "location");
    v5 = *(a1 + 32);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a1 + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  v5 = *(a1 + 32);
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
  PB::TextFormatter::format(this, "x", *(a1 + 20));
  v5 = *(a1 + 32);
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
  PB::TextFormatter::format(this, "y", *(a1 + 24));
  if ((*(a1 + 32) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(this, "z", *(a1 + 28));
  }

LABEL_7:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4C7BB0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_69;
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
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_47:
            *(this + 24) = 1;
            goto LABEL_65;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_59;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_47;
          }

          *(a1 + 20) = *(*this + v2);
LABEL_44:
          v2 = *(this + 1) + 4;
LABEL_59:
          *(this + 1) = v2;
          goto LABEL_65;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 32) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_47;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_44;
          case 4:
            *(a1 + 32) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_47;
            }

            *(a1 + 28) = *(*this + v2);
            goto LABEL_44;
          case 5:
            *(a1 + 32) |= 2u;
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
                  goto LABEL_64;
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
                  goto LABEL_63;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_63:
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

LABEL_64:
            *(a1 + 16) = v27;
            goto LABEL_65;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
LABEL_65:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_69:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_19B4C7F4C(uint64_t result, PB::Writer *this)
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

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 32);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = PB::Writer::write(this, *(v3 + 28));
    if ((*(v3 + 32) & 2) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 32);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_11:
  v5 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

void *sub_19B4C8010(void *result)
{
  *result = &unk_1F0E2B4B0;
  result[1] = 0;
  return result;
}

void sub_19B4C8030(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2B4B0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4C80B0(PB::Base *a1)
{
  sub_19B4C8030(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4C80E8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4C8164(int a1, PB::Reader *this)
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

uint64_t sub_19B4C839C(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_19B4C83B8(uint64_t result)
{
  *result = &unk_1F0E30A40;
  *(result + 32) = 0;
  return result;
}

void sub_19B4C83E0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4C8418(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "batch");
    v5 = *(a1 + 32);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a1 + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  v5 = *(a1 + 32);
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
  PB::TextFormatter::format(this, "x", *(a1 + 20));
  v5 = *(a1 + 32);
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
  PB::TextFormatter::format(this, "y", *(a1 + 24));
  if ((*(a1 + 32) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(this, "z", *(a1 + 28));
  }

LABEL_7:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4C84FC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_69;
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
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_47:
            *(this + 24) = 1;
            goto LABEL_65;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_59;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_47;
          }

          *(a1 + 20) = *(*this + v2);
LABEL_44:
          v2 = *(this + 1) + 4;
LABEL_59:
          *(this + 1) = v2;
          goto LABEL_65;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 32) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_47;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_44;
          case 4:
            *(a1 + 32) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_47;
            }

            *(a1 + 28) = *(*this + v2);
            goto LABEL_44;
          case 5:
            *(a1 + 32) |= 2u;
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
                  goto LABEL_64;
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
                  goto LABEL_63;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_63:
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

LABEL_64:
            *(a1 + 16) = v27;
            goto LABEL_65;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
LABEL_65:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_69:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_19B4C8898(uint64_t result, PB::Writer *this)
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

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 32);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = PB::Writer::write(this, *(v3 + 28));
    if ((*(v3 + 32) & 2) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 32);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_11:
  v5 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

double sub_19B4C895C(uint64_t a1)
{
  *a1 = &unk_1F0E38C40;
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_19B4C8990(PB::Base *this)
{
  *this = &unk_1F0E38C40;
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

void sub_19B4C8A04(PB::Base *a1)
{
  sub_19B4C8990(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4C8A3C(uint64_t a1, PB::TextFormatter *this, char *a3)
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

uint64_t sub_19B4C8B68(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B4C9270(uint64_t result, PB::Writer *this)
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

void *sub_19B4C9360(void *result)
{
  *result = &unk_1F0E305A8;
  result[1] = 0;
  return result;
}

void sub_19B4C9380(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E305A8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4C9400(PB::Base *a1)
{
  sub_19B4C9380(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4C9438(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4C94B4(int a1, PB::Reader *this)
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

uint64_t sub_19B4C96EC(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_19B4C9708(uint64_t result)
{
  *result = &unk_1F0E2B478;
  *(result + 28) = 0;
  return result;
}

void sub_19B4C9730(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4C9768(uint64_t a1, PB::TextFormatter *this, char *a3)
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

uint64_t sub_19B4C982C(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B4C9ABC(uint64_t result, PB::Writer *this)
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

void *sub_19B4C9B64(void *result)
{
  *result = &unk_1F0E301F0;
  result[1] = 0;
  return result;
}

void sub_19B4C9B84(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E301F0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4C9C04(PB::Base *a1)
{
  sub_19B4C9B84(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4C9C3C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4C9CB8(int a1, PB::Reader *this)
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

uint64_t sub_19B4C9EF0(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

double sub_19B4C9F0C(uint64_t a1)
{
  *a1 = &unk_1F0E301B8;
  *(a1 + 116) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

void sub_19B4C9F48(PB::Base *this)
{
  *this = &unk_1F0E301B8;
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

void sub_19B4C9FCC(PB::Base *a1)
{
  sub_19B4C9F48(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4CA004(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "B", v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "N", v10);
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "T", v13);
  }

  v14 = *(a1 + 116);
  if (v14)
  {
    PB::TextFormatter::format(this, "curvature", *(a1 + 80));
    v14 = *(a1 + 116);
    if ((v14 & 0x10) == 0)
    {
LABEL_9:
      if ((v14 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if ((*(a1 + 116) & 0x10) == 0)
  {
    goto LABEL_9;
  }

  v15 = *(a1 + 112);
  PB::TextFormatter::format(this, "isValid");
  v14 = *(a1 + 116);
  if ((v14 & 2) == 0)
  {
LABEL_10:
    if ((v14 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "jerkNorm", *(a1 + 88));
  v14 = *(a1 + 116);
  if ((v14 & 4) == 0)
  {
LABEL_11:
    if ((v14 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_19:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 96));
  if ((*(a1 + 116) & 8) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(this, "torsion", *(a1 + 104));
  }

LABEL_13:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4CA17C(uint64_t a1, PB::Reader *this)
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
            *(a1 + 116) |= 0x10u;
            v77 = *(this + 1);
            if (v77 >= *(this + 2))
            {
              v80 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v78 = v77 + 1;
              v79 = *(*this + v77);
              *(this + 1) = v78;
              v80 = v79 != 0;
            }

            *(a1 + 112) = v80;
            goto LABEL_158;
          }

          if (v23 == 8)
          {
            *(a1 + 116) |= 4u;
            v42 = *(this + 1);
            if (v42 > 0xFFFFFFFFFFFFFFF7 || v42 + 8 > *(this + 2))
            {
LABEL_155:
              *(this + 24) = 1;
              goto LABEL_158;
            }

            *(a1 + 96) = *(*this + v42);
LABEL_85:
            v60 = *(this + 1) + 8;
LABEL_157:
            *(this + 1) = v60;
            goto LABEL_158;
          }
        }

        else
        {
          if (v23 == 5)
          {
            *(a1 + 116) |= 1u;
            v59 = *(this + 1);
            if (v59 > 0xFFFFFFFFFFFFFFF7 || v59 + 8 > *(this + 2))
            {
              goto LABEL_155;
            }

            *(a1 + 80) = *(*this + v59);
            goto LABEL_85;
          }

          if (v23 == 6)
          {
            *(a1 + 116) |= 8u;
            v40 = *(this + 1);
            if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(this + 2))
            {
              goto LABEL_155;
            }

            *(a1 + 104) = *(*this + v40);
            goto LABEL_85;
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
              goto LABEL_164;
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
                  goto LABEL_165;
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
LABEL_118:
                *(this + 24) = 1;
                goto LABEL_119;
              }

              *(v65 - 1) = *(*this + v76);
              v62 = *(this + 2);
              v61 = *(this + 1) + 4;
              *(this + 1) = v61;
            }

            goto LABEL_119;
          }

          v85 = *(a1 + 16);
          v84 = *(a1 + 24);
          if (v85 >= v84)
          {
            v94 = *(a1 + 8);
            v95 = v85 - v94;
            v96 = (v85 - v94) >> 2;
            v97 = v96 + 1;
            if ((v96 + 1) >> 62)
            {
              goto LABEL_165;
            }

            v98 = v84 - v94;
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

            v110 = (v85 - v94) >> 2;
            v111 = (4 * v96);
            v112 = (4 * v96 - 4 * v110);
            *v111 = 0;
            v83 = v111 + 1;
            memcpy(v112, v94, v95);
            v113 = *(a1 + 8);
            *(a1 + 8) = v112;
            *(a1 + 16) = v83;
            *(a1 + 24) = 0;
            if (v113)
            {
              operator delete(v113);
            }
          }

          else
          {
            *v85 = 0;
            v83 = v85 + 4;
          }

          *(a1 + 16) = v83;
LABEL_153:
          v118 = *(this + 1);
          if (v118 > 0xFFFFFFFFFFFFFFFBLL || v118 + 4 > *(this + 2))
          {
            goto LABEL_155;
          }

          *(v83 - 1) = *(*this + v118);
          v60 = *(this + 1) + 4;
          goto LABEL_157;
        }

        if (v23 == 4)
        {
          *(a1 + 116) |= 2u;
          v41 = *(this + 1);
          if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(this + 2))
          {
            goto LABEL_155;
          }

          *(a1 + 88) = *(*this + v41);
          goto LABEL_85;
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
              goto LABEL_164;
            }

            v43 = *(this + 1);
            v44 = *(this + 2);
            while (v43 < v44 && (*(this + 24) & 1) == 0)
            {
              v46 = *(a1 + 64);
              v45 = *(a1 + 72);
              if (v46 >= v45)
              {
                v48 = *(a1 + 56);
                v49 = v46 - v48;
                v50 = (v46 - v48) >> 2;
                v51 = v50 + 1;
                if ((v50 + 1) >> 62)
                {
                  goto LABEL_165;
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
                  sub_19B4C4FA8(a1 + 56, v53);
                }

                v54 = (v46 - v48) >> 2;
                v55 = (4 * v50);
                v56 = (4 * v50 - 4 * v54);
                *v55 = 0;
                v47 = v55 + 1;
                memcpy(v56, v48, v49);
                v57 = *(a1 + 56);
                *(a1 + 56) = v56;
                *(a1 + 64) = v47;
                *(a1 + 72) = 0;
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

              *(a1 + 64) = v47;
              v58 = *(this + 1);
              if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(this + 2))
              {
                goto LABEL_118;
              }

              *(v47 - 1) = *(*this + v58);
              v44 = *(this + 2);
              v43 = *(this + 1) + 4;
              *(this + 1) = v43;
            }

            goto LABEL_119;
          }

          v82 = *(a1 + 64);
          v81 = *(a1 + 72);
          if (v82 >= v81)
          {
            v88 = *(a1 + 56);
            v89 = v82 - v88;
            v90 = (v82 - v88) >> 2;
            v91 = v90 + 1;
            if ((v90 + 1) >> 62)
            {
              goto LABEL_165;
            }

            v92 = v81 - v88;
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

            v106 = (v82 - v88) >> 2;
            v107 = (4 * v90);
            v108 = (4 * v90 - 4 * v106);
            *v107 = 0;
            v83 = v107 + 1;
            memcpy(v108, v88, v89);
            v109 = *(a1 + 56);
            *(a1 + 56) = v108;
            *(a1 + 64) = v83;
            *(a1 + 72) = 0;
            if (v109)
            {
              operator delete(v109);
            }
          }

          else
          {
            *v82 = 0;
            v83 = v82 + 4;
          }

          *(a1 + 64) = v83;
          goto LABEL_153;
        }

        if (v23 == 2)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_164;
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
                  goto LABEL_165;
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
                goto LABEL_118;
              }

              *(v28 - 1) = *(*this + v39);
              v25 = *(this + 2);
              v24 = *(this + 1) + 4;
              *(this + 1) = v24;
            }

LABEL_119:
            PB::Reader::recallMark();
            goto LABEL_158;
          }

          v87 = *(a1 + 40);
          v86 = *(a1 + 48);
          if (v87 >= v86)
          {
            v100 = *(a1 + 32);
            v101 = v87 - v100;
            v102 = (v87 - v100) >> 2;
            v103 = v102 + 1;
            if ((v102 + 1) >> 62)
            {
LABEL_165:
              sub_19B5BE690();
            }

            v104 = v86 - v100;
            if (v104 >> 1 > v103)
            {
              v103 = v104 >> 1;
            }

            if (v104 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v105 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v105 = v103;
            }

            if (v105)
            {
              sub_19B4C4FA8(a1 + 32, v105);
            }

            v114 = (v87 - v100) >> 2;
            v115 = (4 * v102);
            v116 = (4 * v102 - 4 * v114);
            *v115 = 0;
            v83 = v115 + 1;
            memcpy(v116, v100, v101);
            v117 = *(a1 + 32);
            *(a1 + 32) = v116;
            *(a1 + 40) = v83;
            *(a1 + 48) = 0;
            if (v117)
            {
              operator delete(v117);
            }
          }

          else
          {
            *v87 = 0;
            v83 = v87 + 4;
          }

          *(a1 + 40) = v83;
          goto LABEL_153;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_164:
        v119 = 0;
        return v119 & 1;
      }

LABEL_158:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v119 = v4 ^ 1;
  return v119 & 1;
}