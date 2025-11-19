uint64_t sub_19B45ED40(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) <= 5)
      {
        if (v23 <= 2)
        {
          if (v23 == 1)
          {
            *(a1 + 96) |= 2u;
            v51 = *(this + 1);
            if (v51 > 0xFFFFFFFFFFFFFFF7 || v51 + 8 > *(this + 2))
            {
LABEL_154:
              *(this + 24) = 1;
              goto LABEL_158;
            }

            *(a1 + 64) = *(*this + v51);
LABEL_72:
            v52 = *(this + 1) + 8;
            goto LABEL_157;
          }

          if (v23 == 2)
          {
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_164;
              }

              v35 = *(this + 1);
              v36 = *(this + 2);
              while (v35 < v36 && (*(this + 24) & 1) == 0)
              {
                v38 = *(a1 + 40);
                v37 = *(a1 + 48);
                if (v38 >= v37)
                {
                  v40 = *(a1 + 32);
                  v41 = v38 - v40;
                  v42 = (v38 - v40) >> 2;
                  v43 = v42 + 1;
                  if ((v42 + 1) >> 62)
                  {
                    goto LABEL_165;
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
                    sub_19B4C4FA8(a1 + 32, v45);
                  }

                  v46 = (v38 - v40) >> 2;
                  v47 = (4 * v42);
                  v48 = (4 * v42 - 4 * v46);
                  *v47 = 0;
                  v39 = v47 + 1;
                  memcpy(v48, v40, v41);
                  v49 = *(a1 + 32);
                  *(a1 + 32) = v48;
                  *(a1 + 40) = v39;
                  *(a1 + 48) = 0;
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

                *(a1 + 40) = v39;
                v50 = *(this + 1);
                if (v50 > 0xFFFFFFFFFFFFFFFBLL || v50 + 4 > *(this + 2))
                {
LABEL_124:
                  *(this + 24) = 1;
                  break;
                }

                *(v39 - 1) = *(*this + v50);
                v36 = *(this + 2);
                v35 = *(this + 1) + 4;
                *(this + 1) = v35;
              }

LABEL_125:
              PB::Reader::recallMark();
              goto LABEL_158;
            }

            v81 = *(a1 + 40);
            v80 = *(a1 + 48);
            if (v81 >= v80)
            {
              v91 = *(a1 + 32);
              v92 = v81 - v91;
              v93 = (v81 - v91) >> 2;
              v94 = v93 + 1;
              if ((v93 + 1) >> 62)
              {
                goto LABEL_165;
              }

              v95 = v80 - v91;
              if (v95 >> 1 > v94)
              {
                v94 = v95 >> 1;
              }

              if (v95 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v96 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v96 = v94;
              }

              if (v96)
              {
                sub_19B4C4FA8(a1 + 32, v96);
              }

              v103 = (v81 - v91) >> 2;
              v104 = (4 * v93);
              v105 = (4 * v93 - 4 * v103);
              *v104 = 0;
              v82 = v104 + 1;
              memcpy(v105, v91, v92);
              v106 = *(a1 + 32);
              *(a1 + 32) = v105;
              *(a1 + 40) = v82;
              *(a1 + 48) = 0;
              if (v106)
              {
                operator delete(v106);
              }
            }

            else
            {
              *v81 = 0;
              v82 = v81 + 4;
            }

            *(a1 + 40) = v82;
LABEL_152:
            v111 = *(this + 1);
            if (v111 > 0xFFFFFFFFFFFFFFFBLL || v111 + 4 > *(this + 2))
            {
              goto LABEL_154;
            }

            *(v82 - 1) = *(*this + v111);
LABEL_156:
            v52 = *(this + 1) + 4;
LABEL_157:
            *(this + 1) = v52;
            goto LABEL_158;
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
                  goto LABEL_164;
                }

                v59 = *(this + 1);
                v60 = *(this + 2);
                while (v59 < v60 && (*(this + 24) & 1) == 0)
                {
                  v62 = *(a1 + 16);
                  v61 = *(a1 + 24);
                  if (v62 >= v61)
                  {
                    v64 = *(a1 + 8);
                    v65 = v62 - v64;
                    v66 = (v62 - v64) >> 2;
                    v67 = v66 + 1;
                    if ((v66 + 1) >> 62)
                    {
                      goto LABEL_165;
                    }

                    v68 = v61 - v64;
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

                    v70 = (v62 - v64) >> 2;
                    v71 = (4 * v66);
                    v72 = (4 * v66 - 4 * v70);
                    *v71 = 0;
                    v63 = v71 + 1;
                    memcpy(v72, v64, v65);
                    v73 = *(a1 + 8);
                    *(a1 + 8) = v72;
                    *(a1 + 16) = v63;
                    *(a1 + 24) = 0;
                    if (v73)
                    {
                      operator delete(v73);
                    }
                  }

                  else
                  {
                    *v62 = 0;
                    v63 = v62 + 4;
                  }

                  *(a1 + 16) = v63;
                  v74 = *(this + 1);
                  if (v74 > 0xFFFFFFFFFFFFFFFBLL || v74 + 4 > *(this + 2))
                  {
                    goto LABEL_124;
                  }

                  *(v63 - 1) = *(*this + v74);
                  v60 = *(this + 2);
                  v59 = *(this + 1) + 4;
                  *(this + 1) = v59;
                }

                goto LABEL_125;
              }

              v84 = *(a1 + 16);
              v83 = *(a1 + 24);
              if (v84 >= v83)
              {
                v97 = *(a1 + 8);
                v98 = v84 - v97;
                v99 = (v84 - v97) >> 2;
                v100 = v99 + 1;
                if ((v99 + 1) >> 62)
                {
LABEL_165:
                  sub_19B5BE690();
                }

                v101 = v83 - v97;
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
                  sub_19B4C4FA8(a1 + 8, v102);
                }

                v107 = (v84 - v97) >> 2;
                v108 = (4 * v99);
                v109 = (4 * v99 - 4 * v107);
                *v108 = 0;
                v82 = v108 + 1;
                memcpy(v109, v97, v98);
                v110 = *(a1 + 8);
                *(a1 + 8) = v109;
                *(a1 + 16) = v82;
                *(a1 + 24) = 0;
                if (v110)
                {
                  operator delete(v110);
                }
              }

              else
              {
                *v84 = 0;
                v82 = v84 + 4;
              }

              *(a1 + 16) = v82;
              goto LABEL_152;
            case 4:
              *(a1 + 96) |= 8u;
              v53 = *(this + 1);
              if (v53 > 0xFFFFFFFFFFFFFFFBLL || v53 + 4 > *(this + 2))
              {
                goto LABEL_154;
              }

              *(a1 + 76) = *(*this + v53);
              goto LABEL_156;
            case 5:
              *(a1 + 96) |= 0x10u;
              v33 = *(this + 1);
              if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(this + 2))
              {
                goto LABEL_154;
              }

              *(a1 + 80) = *(*this + v33);
              goto LABEL_156;
          }
        }
      }

      else if (v23 > 8)
      {
        switch(v23)
        {
          case 9:
            *(a1 + 96) |= 0x20u;
            v79 = *(this + 1);
            if (v79 > 0xFFFFFFFFFFFFFFFBLL || v79 + 4 > *(this + 2))
            {
              goto LABEL_154;
            }

            *(a1 + 84) = *(*this + v79);
            goto LABEL_156;
          case 0xA:
            *(a1 + 96) |= 0x40u;
            v58 = *(this + 1);
            if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(this + 2))
            {
              goto LABEL_154;
            }

            *(a1 + 88) = *(*this + v58);
            goto LABEL_156;
          case 0xB:
            *(a1 + 96) |= 1u;
            v34 = *(this + 1);
            if (v34 > 0xFFFFFFFFFFFFFFF7 || v34 + 8 > *(this + 2))
            {
              goto LABEL_154;
            }

            *(a1 + 56) = *(*this + v34);
            goto LABEL_72;
        }
      }

      else
      {
        switch(v23)
        {
          case 6:
            *(a1 + 96) |= 0x80u;
            v75 = *(this + 1);
            if (v75 >= *(this + 2))
            {
              v78 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v76 = v75 + 1;
              v77 = *(*this + v75);
              *(this + 1) = v76;
              v78 = v77 != 0;
            }

            *(a1 + 92) = v78;
            goto LABEL_158;
          case 7:
            *(a1 + 96) |= 0x100u;
            v54 = *(this + 1);
            if (v54 >= *(this + 2))
            {
              v57 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v55 = v54 + 1;
              v56 = *(*this + v54);
              *(this + 1) = v55;
              v57 = v56 != 0;
            }

            *(a1 + 93) = v57;
            goto LABEL_158;
          case 8:
            *(a1 + 96) |= 4u;
            v25 = *(this + 1);
            v24 = *(this + 2);
            v26 = *this;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
            {
              v85 = 0;
              v86 = 0;
              v29 = 0;
              v17 = v24 >= v25;
              v87 = v24 - v25;
              if (!v17)
              {
                v87 = 0;
              }

              v88 = (v26 + v25);
              v89 = v25 + 1;
              while (1)
              {
                if (!v87)
                {
                  LODWORD(v29) = 0;
                  *(this + 24) = 1;
                  goto LABEL_145;
                }

                v90 = *v88;
                *(this + 1) = v89;
                v29 |= (v90 & 0x7F) << v85;
                if ((v90 & 0x80) == 0)
                {
                  break;
                }

                v85 += 7;
                --v87;
                ++v88;
                ++v89;
                v14 = v86++ > 8;
                if (v14)
                {
LABEL_121:
                  LODWORD(v29) = 0;
                  goto LABEL_145;
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
                  goto LABEL_121;
                }
              }
            }

LABEL_145:
            *(a1 + 72) = v29;
            goto LABEL_158;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_164:
        v112 = 0;
        return v112 & 1;
      }

LABEL_158:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v112 = v4 ^ 1;
  return v112 & 1;
}

uint64_t sub_19B45F5AC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if ((*(result + 96) & 2) != 0)
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

  v10 = *(v3 + 96);
  if ((v10 & 8) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 76));
    v10 = *(v3 + 96);
    if ((v10 & 0x10) == 0)
    {
LABEL_11:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  else if ((v10 & 0x10) == 0)
  {
    goto LABEL_11;
  }

  result = PB::Writer::write(this, *(v3 + 80));
  v10 = *(v3 + 96);
  if ((v10 & 0x80) == 0)
  {
LABEL_12:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = *(v3 + 92);
  result = PB::Writer::write(this);
  v10 = *(v3 + 96);
  if ((v10 & 0x100) == 0)
  {
LABEL_13:
    if ((v10 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12 = *(v3 + 93);
  result = PB::Writer::write(this);
  v10 = *(v3 + 96);
  if ((v10 & 4) == 0)
  {
LABEL_14:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

LABEL_22:
  v13 = *(v3 + 72);
  result = PB::Writer::writeVarInt(this);
  v10 = *(v3 + 96);
  if ((v10 & 0x20) == 0)
  {
LABEL_15:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_16;
    }

LABEL_24:
    result = PB::Writer::write(this, *(v3 + 88));
    if ((*(v3 + 96) & 1) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 84));
  v10 = *(v3 + 96);
  if ((v10 & 0x40) != 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((v10 & 1) == 0)
  {
    return result;
  }

LABEL_25:
  v14 = *(v3 + 56);

  return PB::Writer::write(this, v14);
}

uint64_t sub_19B45F728(uint64_t result)
{
  *result = &unk_1F0E2B440;
  *(result + 140) = 0;
  return result;
}

void sub_19B45F750(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B45F788(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 140);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "aperture", *(a1 + 24));
    v5 = *(a1 + 140);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "confidence", *(a1 + 28));
  v5 = *(a1 + 140);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "ev", *(a1 + 32));
  v5 = *(a1 + 140);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "exposureDuration", *(a1 + 36));
  v5 = *(a1 + 140);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  v6 = *(a1 + 40);
  PB::TextFormatter::format(this, "failureCode");
  v5 = *(a1 + 140);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "gaze_x", *(a1 + 44));
  v5 = *(a1 + 140);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "gaze_y", *(a1 + 48));
  v5 = *(a1 + 140);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "gaze_z", *(a1 + 52));
  v5 = *(a1 + 140);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "iso", *(a1 + 56));
  v5 = *(a1 + 140);
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "left_eye_x", *(a1 + 60));
  v5 = *(a1 + 140);
  if ((v5 & 0x1000) == 0)
  {
LABEL_12:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "left_eye_y", *(a1 + 64));
  v5 = *(a1 + 140);
  if ((v5 & 0x2000) == 0)
  {
LABEL_13:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "left_eye_z", *(a1 + 68));
  v5 = *(a1 + 140);
  if ((v5 & 0x4000) == 0)
  {
LABEL_14:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "lidAngle", *(a1 + 72));
  v5 = *(a1 + 140);
  if ((v5 & 0x8000) == 0)
  {
LABEL_15:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "lux", *(a1 + 76));
  v5 = *(a1 + 140);
  if ((v5 & 0x10000) == 0)
  {
LABEL_16:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  v7 = *(a1 + 80);
  PB::TextFormatter::format(this, "numberOfDetectedFaces");
  v5 = *(a1 + 140);
  if ((v5 & 0x20000) == 0)
  {
LABEL_17:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  v8 = *(a1 + 84);
  PB::TextFormatter::format(this, "orientation");
  v5 = *(a1 + 140);
  if ((v5 & 0x40000) == 0)
  {
LABEL_18:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  v9 = *(a1 + 88);
  PB::TextFormatter::format(this, "poseLibrary");
  v5 = *(a1 + 140);
  if ((v5 & 0x80000) == 0)
  {
LABEL_19:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "qw", *(a1 + 92));
  v5 = *(a1 + 140);
  if ((v5 & 0x100000) == 0)
  {
LABEL_20:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "qx", *(a1 + 96));
  v5 = *(a1 + 140);
  if ((v5 & 0x200000) == 0)
  {
LABEL_21:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "qy", *(a1 + 100));
  v5 = *(a1 + 140);
  if ((v5 & 0x400000) == 0)
  {
LABEL_22:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "qz", *(a1 + 104));
  v5 = *(a1 + 140);
  if ((v5 & 0x800000) == 0)
  {
LABEL_23:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "right_eye_x", *(a1 + 108));
  v5 = *(a1 + 140);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(this, "right_eye_y", *(a1 + 112));
  v5 = *(a1 + 140);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_25:
    if ((v5 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(this, "right_eye_z", *(a1 + 116));
  v5 = *(a1 + 140);
  if ((v5 & 1) == 0)
  {
LABEL_26:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(this, "rollValue", *(a1 + 8));
  v5 = *(a1 + 140);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_27:
    if ((v5 & 2) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  v10 = *(a1 + 136);
  PB::TextFormatter::format(this, "sensorCovered");
  v5 = *(a1 + 140);
  if ((v5 & 2) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  v5 = *(a1 + 140);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  v11 = *(a1 + 137);
  PB::TextFormatter::format(this, "tooDark");
  v5 = *(a1 + 140);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  v12 = *(a1 + 120);
  PB::TextFormatter::format(this, "type");
  v5 = *(a1 + 140);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(this, "x", *(a1 + 124));
  v5 = *(a1 + 140);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_67:
  PB::TextFormatter::format(this, "y", *(a1 + 128));
  if ((*(a1 + 140) & 0x20000000) != 0)
  {
LABEL_33:
    PB::TextFormatter::format(this, "z", *(a1 + 132));
  }

LABEL_34:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B45FBCC(uint64_t a1, PB::Reader *this)
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
        goto LABEL_216;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 140) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_94;
        case 2u:
          *(a1 + 140) |= 0x4000000u;
          v46 = *(this + 1);
          v2 = *(this + 2);
          v47 = *this;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v87 = 0;
            v88 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(this + 1);
            }

            v89 = v2 - v46;
            v90 = (v47 + v46);
            v91 = v46 + 1;
            while (1)
            {
              if (!v89)
              {
                LODWORD(v50) = 0;
                *(this + 24) = 1;
                goto LABEL_210;
              }

              v92 = v91;
              v93 = *v90;
              *(this + 1) = v92;
              v50 |= (v93 & 0x7F) << v87;
              if ((v93 & 0x80) == 0)
              {
                break;
              }

              v87 += 7;
              --v89;
              ++v90;
              v91 = v92 + 1;
              v14 = v88++ > 8;
              if (v14)
              {
                LODWORD(v50) = 0;
LABEL_209:
                v2 = v92;
                goto LABEL_210;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_209;
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
              goto LABEL_210;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_210:
          *(a1 + 120) = v50;
          goto LABEL_187;
        case 3u:
          *(a1 + 140) |= 0x20000u;
          v30 = *(this + 1);
          v2 = *(this + 2);
          v31 = *this;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v73 = 0;
            v74 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(this + 1);
            }

            v75 = v2 - v30;
            v76 = (v31 + v30);
            v77 = v30 + 1;
            while (1)
            {
              if (!v75)
              {
                LODWORD(v34) = 0;
                *(this + 24) = 1;
                goto LABEL_202;
              }

              v78 = v77;
              v79 = *v76;
              *(this + 1) = v78;
              v34 |= (v79 & 0x7F) << v73;
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
                LODWORD(v34) = 0;
LABEL_201:
                v2 = v78;
                goto LABEL_202;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_201;
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
              goto LABEL_202;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_202:
          *(a1 + 84) = v34;
          goto LABEL_187;
        case 4u:
          *(a1 + 140) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_185;
        case 5u:
          *(a1 + 140) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 100) = *(*this + v2);
          goto LABEL_185;
        case 6u:
          *(a1 + 140) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_185;
        case 7u:
          *(a1 + 140) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 92) = *(*this + v2);
          goto LABEL_185;
        case 8u:
          *(a1 + 140) |= 0x8000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 124) = *(*this + v2);
          goto LABEL_185;
        case 9u:
          *(a1 + 140) |= 0x10000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 128) = *(*this + v2);
          goto LABEL_185;
        case 0xAu:
          *(a1 + 140) |= 0x20000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 132) = *(*this + v2);
          goto LABEL_185;
        case 0xBu:
          *(a1 + 140) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_185;
        case 0xCu:
          *(a1 + 140) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_185;
        case 0xDu:
          *(a1 + 140) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_185;
        case 0xEu:
          *(a1 + 140) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_185;
        case 0xFu:
          *(a1 + 140) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_185;
        case 0x10u:
          *(a1 + 140) |= 0x40000u;
          v38 = *(this + 1);
          v2 = *(this + 2);
          v39 = *this;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v80 = 0;
            v81 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(this + 1);
            }

            v82 = v2 - v38;
            v83 = (v39 + v38);
            v84 = v38 + 1;
            while (1)
            {
              if (!v82)
              {
                LODWORD(v42) = 0;
                *(this + 24) = 1;
                goto LABEL_206;
              }

              v85 = v84;
              v86 = *v83;
              *(this + 1) = v85;
              v42 |= (v86 & 0x7F) << v80;
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
                LODWORD(v42) = 0;
LABEL_205:
                v2 = v85;
                goto LABEL_206;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_205;
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
              goto LABEL_206;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_206:
          *(a1 + 88) = v42;
          goto LABEL_187;
        case 0x11u:
          *(a1 + 140) |= 0x40u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v66 = 0;
            v67 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v68 = v2 - v22;
            v69 = (v23 + v22);
            v70 = v22 + 1;
            while (1)
            {
              if (!v68)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_198;
              }

              v71 = v70;
              v72 = *v69;
              *(this + 1) = v71;
              v26 |= (v72 & 0x7F) << v66;
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
                LODWORD(v26) = 0;
LABEL_197:
                v2 = v71;
                goto LABEL_198;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_197;
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
              goto LABEL_198;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_198:
          *(a1 + 40) = v26;
          goto LABEL_187;
        case 0x12u:
          *(a1 + 140) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 8) = *(*this + v2);
LABEL_94:
          v2 = *(this + 1) + 8;
          goto LABEL_186;
        case 0x13u:
          *(a1 + 140) |= 0x80000000;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v63 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v62 = *(*this + v2++);
            *(this + 1) = v2;
            v63 = v62 != 0;
          }

          *(a1 + 137) = v63;
          goto LABEL_187;
        case 0x14u:
          *(a1 + 140) |= 0x40000000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v65 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v64 = *(*this + v2++);
            *(this + 1) = v2;
            v65 = v64 != 0;
          }

          *(a1 + 136) = v65;
          goto LABEL_187;
        case 0x15u:
          *(a1 + 140) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_185;
        case 0x16u:
          *(a1 + 140) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_185;
        case 0x17u:
          *(a1 + 140) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_185;
        case 0x18u:
          *(a1 + 140) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_185;
        case 0x19u:
          *(a1 + 140) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_185;
        case 0x1Au:
          *(a1 + 140) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_185;
        case 0x1Bu:
          *(a1 + 140) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_185;
        case 0x1Cu:
          *(a1 + 140) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_185;
        case 0x1Du:
          *(a1 + 140) |= 0x800000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 108) = *(*this + v2);
          goto LABEL_185;
        case 0x1Eu:
          *(a1 + 140) |= 0x1000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_185;
        case 0x1Fu:
          *(a1 + 140) |= 0x2000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_139:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 116) = *(*this + v2);
LABEL_185:
            v2 = *(this + 1) + 4;
LABEL_186:
            *(this + 1) = v2;
          }

          goto LABEL_187;
        case 0x20u:
          *(a1 + 140) |= 0x10000u;
          v54 = *(this + 1);
          v2 = *(this + 2);
          v55 = *this;
          if (v54 > 0xFFFFFFFFFFFFFFF5 || v54 + 10 > v2)
          {
            v94 = 0;
            v95 = 0;
            v58 = 0;
            if (v2 <= v54)
            {
              v2 = *(this + 1);
            }

            v96 = v2 - v54;
            v97 = (v55 + v54);
            v98 = v54 + 1;
            while (1)
            {
              if (!v96)
              {
                LODWORD(v58) = 0;
                *(this + 24) = 1;
                goto LABEL_214;
              }

              v99 = v98;
              v100 = *v97;
              *(this + 1) = v99;
              v58 |= (v100 & 0x7F) << v94;
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
                LODWORD(v58) = 0;
LABEL_213:
                v2 = v99;
                goto LABEL_214;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v58) = 0;
            }

            goto LABEL_213;
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
              goto LABEL_214;
            }

            v56 += 7;
            ++v60;
            v14 = v57++ > 8;
          }

          while (!v14);
          LODWORD(v58) = 0;
LABEL_214:
          *(a1 + 80) = v58;
          goto LABEL_187;
        default:
          if (!PB::Reader::skip(this))
          {
            v101 = 0;
            return v101 & 1;
          }

          v2 = *(this + 1);
LABEL_187:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_216;
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

LABEL_216:
  v101 = v4 ^ 1;
  return v101 & 1;
}

uint64_t sub_19B4608A8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 140);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 140);
    if ((v4 & 0x4000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x20000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v4 & 0x4000000) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 120);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 140);
  if ((v4 & 0x20000) == 0)
  {
LABEL_4:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  v6 = *(v3 + 84);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 140);
  if ((v4 & 0x100000) == 0)
  {
LABEL_5:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 140);
  if ((v4 & 0x200000) == 0)
  {
LABEL_6:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 140);
  if ((v4 & 0x400000) == 0)
  {
LABEL_7:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 140);
  if ((v4 & 0x80000) == 0)
  {
LABEL_8:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 92));
  v4 = *(v3 + 140);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_9:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 124));
  v4 = *(v3 + 140);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_10:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 140);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_11:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 132));
  v4 = *(v3 + 140);
  if ((v4 & 0x8000) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 140);
  if ((v4 & 0x20) == 0)
  {
LABEL_13:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 140);
  if ((v4 & 0x400) == 0)
  {
LABEL_14:
    if ((v4 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 140);
  if ((v4 & 4) == 0)
  {
LABEL_15:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 140);
  if ((v4 & 0x10) == 0)
  {
LABEL_16:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 140);
  if ((v4 & 0x40000) == 0)
  {
LABEL_17:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  v7 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 140);
  if ((v4 & 0x40) == 0)
  {
LABEL_18:
    if ((v4 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  v8 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 140);
  if ((v4 & 1) == 0)
  {
LABEL_19:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 140);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_20:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  v9 = *(v3 + 137);
  result = PB::Writer::write(this);
  v4 = *(v3 + 140);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_21:
    if ((v4 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  v10 = *(v3 + 136);
  result = PB::Writer::write(this);
  v4 = *(v3 + 140);
  if ((v4 & 8) == 0)
  {
LABEL_22:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 140);
  if ((v4 & 0x4000) == 0)
  {
LABEL_23:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 140);
  if ((v4 & 0x80) == 0)
  {
LABEL_24:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 140);
  if ((v4 & 0x100) == 0)
  {
LABEL_25:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 140);
  if ((v4 & 0x200) == 0)
  {
LABEL_26:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 140);
  if ((v4 & 0x800) == 0)
  {
LABEL_27:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 140);
  if ((v4 & 0x1000) == 0)
  {
LABEL_28:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 140);
  if ((v4 & 0x2000) == 0)
  {
LABEL_29:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 140);
  if ((v4 & 0x800000) == 0)
  {
LABEL_30:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 140);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_64:
    result = PB::Writer::write(this, *(v3 + 116));
    if ((*(v3 + 140) & 0x10000) == 0)
    {
      return result;
    }

    goto LABEL_65;
  }

LABEL_63:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 140);
  if ((v4 & 0x2000000) != 0)
  {
    goto LABEL_64;
  }

LABEL_32:
  if ((v4 & 0x10000) == 0)
  {
    return result;
  }

LABEL_65:
  v11 = *(v3 + 80);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B460C60(uint64_t result)
{
  *result = &unk_1F0E2E040;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void sub_19B460C88(PB::Base *this)
{
  *this = &unk_1F0E2E040;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B460D0C(PB::Base *a1)
{
  sub_19B460C88(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B460D44(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if (v5)
  {
    PB::TextFormatter::format(this, "globalMachtime", *(a1 + 8));
    v5 = *(a1 + 32);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "localMachtime", *(a1 + 16));
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B460DF8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_40;
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
        goto LABEL_40;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        operator new();
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(a1 + 32) |= 2u;
        v23 = *(this + 1);
        if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
        {
          goto LABEL_30;
        }

        *(a1 + 16) = *(*this + v23);
LABEL_35:
        *(this + 1) += 8;
        goto LABEL_36;
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v26 = 0;
        return v26 & 1;
      }

LABEL_36:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_40;
      }
    }

    *(a1 + 32) |= 1u;
    v24 = *(this + 1);
    if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
    {
LABEL_30:
      *(this + 24) = 1;
      goto LABEL_36;
    }

    *(a1 + 8) = *(*this + v24);
    goto LABEL_35;
  }

LABEL_40:
  v26 = v4 ^ 1;
  return v26 & 1;
}

uint64_t sub_19B4610D0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 32);
  }

  if (v4)
  {
    result = PB::Writer::write(this, *(v3 + 8));
  }

  v5 = *(v3 + 24);
  if (v5)
  {

    return PB::Writer::writeSubmessage(this, v5);
  }

  return result;
}

uint64_t sub_19B461150(uint64_t result)
{
  if (!*(result + 24))
  {
    operator new();
  }

  return result;
}

uint64_t sub_19B4611FC(uint64_t result)
{
  *result = &unk_1F0E2BBF0;
  *(result + 32) = 0;
  return result;
}

void sub_19B461224(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B46125C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "cyclingState");
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
  PB::TextFormatter::format(this, "cyclingStateSummary");
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
  PB::TextFormatter::format(this, "distanceTraveledOverTimeWindow", *(a1 + 24));
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
  v9 = *(a1 + 28);
  PB::TextFormatter::format(this, "motionType");
  if (*(a1 + 32))
  {
LABEL_6:
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_7:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B461340(uint64_t a1, PB::Reader *this)
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
            goto LABEL_118;
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
          v47 = *(this + 1);
          v2 = *(this + 2);
          v48 = *this;
          if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
          {
            v69 = 0;
            v70 = 0;
            v51 = 0;
            if (v2 <= v47)
            {
              v2 = *(this + 1);
            }

            v71 = v2 - v47;
            v72 = (v48 + v47);
            v73 = v47 + 1;
            while (1)
            {
              if (!v71)
              {
                v51 = 0;
                *(this + 24) = 1;
                goto LABEL_109;
              }

              v74 = v73;
              v75 = *v72;
              *(this + 1) = v74;
              v51 |= (v75 & 0x7F) << v69;
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
                v51 = 0;
                goto LABEL_108;
              }
            }

            if (*(this + 24))
            {
              v51 = 0;
            }

LABEL_108:
            v2 = v74;
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

LABEL_109:
          *(a1 + 8) = v51;
          goto LABEL_114;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 0x10u;
          v23 = *(this + 1);
          v2 = *(this + 2);
          v24 = *this;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v76 = 0;
            v77 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(this + 1);
            }

            v78 = v2 - v23;
            v79 = (v24 + v23);
            v80 = v23 + 1;
            while (1)
            {
              if (!v78)
              {
                LODWORD(v27) = 0;
                *(this + 24) = 1;
                goto LABEL_113;
              }

              v81 = v80;
              v82 = *v79;
              *(this + 1) = v81;
              v27 |= (v82 & 0x7F) << v76;
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
                LODWORD(v27) = 0;
                goto LABEL_112;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_112:
            v2 = v81;
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

LABEL_113:
          *(a1 + 28) = v27;
          goto LABEL_114;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 32) |= 2u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v55 = 0;
              v56 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v57 = v2 - v31;
              v58 = (v32 + v31);
              v59 = v31 + 1;
              while (1)
              {
                if (!v57)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_101;
                }

                v60 = v59;
                v61 = *v58;
                *(this + 1) = v60;
                v35 |= (v61 & 0x7F) << v55;
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
                  LODWORD(v35) = 0;
                  goto LABEL_100;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_100:
              v2 = v60;
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

LABEL_101:
            *(a1 + 16) = v35;
            goto LABEL_114;
          case 4:
            *(a1 + 32) |= 4u;
            v39 = *(this + 1);
            v2 = *(this + 2);
            v40 = *this;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v62 = 0;
              v63 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(this + 1);
              }

              v64 = v2 - v39;
              v65 = (v40 + v39);
              v66 = v39 + 1;
              while (1)
              {
                if (!v64)
                {
                  LODWORD(v43) = 0;
                  *(this + 24) = 1;
                  goto LABEL_105;
                }

                v67 = v66;
                v68 = *v65;
                *(this + 1) = v67;
                v43 |= (v68 & 0x7F) << v62;
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
                  LODWORD(v43) = 0;
                  goto LABEL_104;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_104:
              v2 = v67;
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

LABEL_105:
            *(a1 + 20) = v43;
            goto LABEL_114;
          case 5:
            *(a1 + 32) |= 8u;
            v2 = *(this + 1);
            if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
            {
              *(a1 + 24) = *(*this + v2);
              v2 = *(this + 1) + 4;
              *(this + 1) = v2;
            }

            else
            {
              *(this + 24) = 1;
            }

            goto LABEL_114;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v83 = 0;
        return v83 & 1;
      }

      v2 = *(this + 1);
LABEL_114:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_118:
  v83 = v4 ^ 1;
  return v83 & 1;
}

uint64_t sub_19B461938(uint64_t result, PB::Writer *this)
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
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = *(v3 + 20);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 32) & 8) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  v7 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
  if ((v4 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_11:
  v9 = *(v3 + 24);

  return PB::Writer::write(this, v9);
}

void *sub_19B4619FC(void *result)
{
  *result = &unk_1F0E2DB00;
  *(result + 156) = 0;
  return result;
}

void sub_19B461A24(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B461A5C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 156);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(this, "abruptGravityChangeAngle", *(a1 + 32));
    v5 = *(a1 + 156);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "accelPathLength", *(a1 + 36));
  v5 = *(a1 + 156);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "angleChangePostImpact", *(a1 + 40));
  v5 = *(a1 + 156);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "angleChangePreImpact", *(a1 + 44));
  v5 = *(a1 + 156);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  v7 = *(a1 + 48);
  PB::TextFormatter::format(this, "crown");
  v5 = *(a1 + 156);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "crownVariance", *(a1 + 52));
  v5 = *(a1 + 156);
  if ((v5 & 0x200) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "gravityVariance", *(a1 + 56));
  v5 = *(a1 + 156);
  if ((v5 & 1) == 0)
  {
LABEL_9:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "iostime", *(a1 + 8));
  v5 = *(a1 + 156);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  v8 = *(a1 + 152);
  PB::TextFormatter::format(this, "isFall");
  v5 = *(a1 + 156);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  v9 = *(a1 + 153);
  PB::TextFormatter::format(this, "isNearFall");
  v5 = *(a1 + 156);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "maxAbsX", *(a1 + 60));
  v5 = *(a1 + 156);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "maxAbsY", *(a1 + 64));
  v5 = *(a1 + 156);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "maxAbsZ", *(a1 + 68));
  v5 = *(a1 + 156);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "maxAccelNorm", *(a1 + 72));
  v5 = *(a1 + 156);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "maxAngleChangePostImpact", *(a1 + 76));
  v5 = *(a1 + 156);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "maxAngleChangePreImpact", *(a1 + 80));
  v5 = *(a1 + 156);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "maxJerkVM", *(a1 + 84));
  v5 = *(a1 + 156);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(this, "maxMinusMin", *(a1 + 88));
  v5 = *(a1 + 156);
  if ((v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(this, "medianAbsGravityY", *(a1 + 92));
  v5 = *(a1 + 156);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(this, "minInertialZ", *(a1 + 96));
  v5 = *(a1 + 156);
  if ((v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "minInertialZHighFreq", *(a1 + 100));
  v5 = *(a1 + 156);
  if ((v5 & 0x200000) == 0)
  {
LABEL_23:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(this, "multiPeakAccelPathLengthWithPeak", *(a1 + 104));
  v5 = *(a1 + 156);
  if ((v5 & 0x400000) == 0)
  {
LABEL_24:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(this, "multiPeakPathLengthDecorrelation", *(a1 + 108));
  v5 = *(a1 + 156);
  if ((v5 & 0x800000) == 0)
  {
LABEL_25:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(this, "multiPeakPathLengthDelaySpread", *(a1 + 112));
  v5 = *(a1 + 156);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(this, "multiPeakPathLengthHarmonicMean", *(a1 + 116));
  v5 = *(a1 + 156);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v5 & 2) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

LABEL_67:
  v10 = *(a1 + 120);
  PB::TextFormatter::format(this, "operatingMode");
  v5 = *(a1 + 156);
  if ((v5 & 2) == 0)
  {
LABEL_28:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

LABEL_68:
  v11 = *(a1 + 16);
  PB::TextFormatter::format(this, "peakTimestamp");
  v5 = *(a1 + 156);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(this, "poseAtImpact", *(a1 + 124));
  v5 = *(a1 + 156);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_30:
    if ((v5 & 4) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(this, "posteriorRatio", *(a1 + 128));
  v5 = *(a1 + 156);
  if ((v5 & 4) == 0)
  {
LABEL_31:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_72;
  }

LABEL_71:
  v12 = *(a1 + 24);
  PB::TextFormatter::format(this, "sensorTime");
  v5 = *(a1 + 156);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(this, "sumDeltaAngles", *(a1 + 132));
  v5 = *(a1 + 156);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(this, "swingAngle", *(a1 + 136));
  v5 = *(a1 + 156);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(this, "tiltAngle", *(a1 + 140));
  v5 = *(a1 + 156);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_76;
  }

LABEL_75:
  PB::TextFormatter::format(this, "timeto3rdZC", *(a1 + 144));
  v5 = *(a1 + 156);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_77;
  }

LABEL_76:
  v13 = *(a1 + 148);
  PB::TextFormatter::format(this, "type");
  v5 = *(a1 + 156);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_37:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_77:
  v14 = *(a1 + 154);
  PB::TextFormatter::format(this, "withinCyclingImpactThresholds");
  if ((*(a1 + 156) & 0x1000000000) != 0)
  {
LABEL_38:
    v6 = *(a1 + 155);
    PB::TextFormatter::format(this, "withinHardThresholds");
  }

LABEL_39:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B461F40(uint64_t a1, PB::Reader *this)
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
        goto LABEL_232;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 156) |= 1uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_202;
        case 2u:
          *(a1 + 156) |= 4uLL;
          v42 = *(this + 1);
          v2 = *(this + 2);
          v43 = *this;
          if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v2)
          {
            v84 = 0;
            v85 = 0;
            v46 = 0;
            if (v2 <= v42)
            {
              v2 = *(this + 1);
            }

            v86 = v2 - v42;
            v87 = (v43 + v42);
            v88 = v42 + 1;
            while (1)
            {
              if (!v86)
              {
                v46 = 0;
                *(this + 24) = 1;
                goto LABEL_222;
              }

              v89 = v88;
              v90 = *v87;
              *(this + 1) = v89;
              v46 |= (v90 & 0x7F) << v84;
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
                v46 = 0;
LABEL_221:
                v2 = v89;
                goto LABEL_222;
              }
            }

            if (*(this + 24))
            {
              v46 = 0;
            }

            goto LABEL_221;
          }

          v44 = 0;
          v45 = 0;
          v46 = 0;
          v47 = (v43 + v42);
          v48 = v42 + 1;
          do
          {
            v2 = v48;
            *(this + 1) = v48;
            v49 = *v47++;
            v46 |= (v49 & 0x7F) << v44;
            if ((v49 & 0x80) == 0)
            {
              goto LABEL_222;
            }

            v44 += 7;
            ++v48;
            v14 = v45++ > 8;
          }

          while (!v14);
          v46 = 0;
LABEL_222:
          *(a1 + 24) = v46;
          goto LABEL_203;
        case 3u:
          *(a1 + 156) |= 2uLL;
          v34 = *(this + 1);
          v2 = *(this + 2);
          v35 = *this;
          if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v2)
          {
            v77 = 0;
            v78 = 0;
            v38 = 0;
            if (v2 <= v34)
            {
              v2 = *(this + 1);
            }

            v79 = v2 - v34;
            v80 = (v35 + v34);
            v81 = v34 + 1;
            while (1)
            {
              if (!v79)
              {
                v38 = 0;
                *(this + 24) = 1;
                goto LABEL_218;
              }

              v82 = v81;
              v83 = *v80;
              *(this + 1) = v82;
              v38 |= (v83 & 0x7F) << v77;
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
                v38 = 0;
LABEL_217:
                v2 = v82;
                goto LABEL_218;
              }
            }

            if (*(this + 24))
            {
              v38 = 0;
            }

            goto LABEL_217;
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = (v35 + v34);
          v40 = v34 + 1;
          do
          {
            v2 = v40;
            *(this + 1) = v40;
            v41 = *v39++;
            v38 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              goto LABEL_218;
            }

            v36 += 7;
            ++v40;
            v14 = v37++ > 8;
          }

          while (!v14);
          v38 = 0;
LABEL_218:
          *(a1 + 16) = v38;
          goto LABEL_203;
        case 4u:
          *(a1 + 156) |= 0x40uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_201;
        case 5u:
          *(a1 + 156) |= 0x20uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_201;
        case 6u:
          *(a1 + 156) |= 0x20000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_201;
        case 7u:
          *(a1 + 156) |= 0x2000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_201;
        case 8u:
          *(a1 + 156) |= 0x10000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 84) = *(*this + v2);
          goto LABEL_201;
        case 9u:
          *(a1 + 156) |= 0x80000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_201;
        case 0xAu:
          *(a1 + 156) |= 0x10uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_201;
        case 0xBu:
          *(a1 + 156) |= 0x8000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_201;
        case 0xCu:
          *(a1 + 156) |= 0x4000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_201;
        case 0xDu:
          *(a1 + 156) |= 0x4000000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 124) = *(*this + v2);
          goto LABEL_201;
        case 0xEu:
          *(a1 + 156) |= 0x10000000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 132) = *(*this + v2);
          goto LABEL_201;
        case 0xFu:
          *(a1 + 156) |= 0x40000000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 140) = *(*this + v2);
          goto LABEL_201;
        case 0x10u:
          *(a1 + 156) |= 0x20000000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 136) = *(*this + v2);
          goto LABEL_201;
        case 0x11u:
          *(a1 + 156) |= 0x80uLL;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v70 = 0;
            v71 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(this + 1);
            }

            v72 = v2 - v24;
            v73 = (v25 + v24);
            v74 = v24 + 1;
            while (1)
            {
              if (!v72)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_214;
              }

              v75 = v74;
              v76 = *v73;
              *(this + 1) = v75;
              v28 |= (v76 & 0x7F) << v70;
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
                LODWORD(v28) = 0;
LABEL_213:
                v2 = v75;
                goto LABEL_214;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_213;
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
              goto LABEL_214;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_214:
          *(a1 + 48) = v28;
          goto LABEL_203;
        case 0x12u:
          *(a1 + 156) |= 0x8000000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 128) = *(*this + v2);
          goto LABEL_201;
        case 0x13u:
          *(a1 + 156) |= 0x200000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v59 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v58 = *(*this + v2++);
            *(this + 1) = v2;
            v59 = v58 != 0;
          }

          *(a1 + 152) = v59;
          goto LABEL_203;
        case 0x14u:
          *(a1 + 156) |= 0x100000000uLL;
          v60 = *(this + 1);
          v2 = *(this + 2);
          v61 = *this;
          if (v60 > 0xFFFFFFFFFFFFFFF5 || v60 + 10 > v2)
          {
            v98 = 0;
            v99 = 0;
            v64 = 0;
            if (v2 <= v60)
            {
              v2 = *(this + 1);
            }

            v100 = v2 - v60;
            v101 = (v61 + v60);
            v102 = v60 + 1;
            while (1)
            {
              if (!v100)
              {
                LODWORD(v64) = 0;
                *(this + 24) = 1;
                goto LABEL_230;
              }

              v103 = v102;
              v104 = *v101;
              *(this + 1) = v103;
              v64 |= (v104 & 0x7F) << v98;
              if ((v104 & 0x80) == 0)
              {
                break;
              }

              v98 += 7;
              --v100;
              ++v101;
              v102 = v103 + 1;
              v14 = v99++ > 8;
              if (v14)
              {
                LODWORD(v64) = 0;
LABEL_229:
                v2 = v103;
                goto LABEL_230;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v64) = 0;
            }

            goto LABEL_229;
          }

          v62 = 0;
          v63 = 0;
          v64 = 0;
          v65 = (v61 + v60);
          v66 = v60 + 1;
          do
          {
            v2 = v66;
            *(this + 1) = v66;
            v67 = *v65++;
            v64 |= (v67 & 0x7F) << v62;
            if ((v67 & 0x80) == 0)
            {
              goto LABEL_230;
            }

            v62 += 7;
            ++v66;
            v14 = v63++ > 8;
          }

          while (!v14);
          LODWORD(v64) = 0;
LABEL_230:
          *(a1 + 148) = v64;
          goto LABEL_203;
        case 0x15u:
          *(a1 + 156) |= 0x80000000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 144) = *(*this + v2);
          goto LABEL_201;
        case 0x16u:
          *(a1 + 156) |= 0x400uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_201;
        case 0x17u:
          *(a1 + 156) |= 0x800uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_201;
        case 0x18u:
          *(a1 + 156) |= 0x1000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_201;
        case 0x19u:
          *(a1 + 156) |= 0x400000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v33 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v32 = *(*this + v2++);
            *(this + 1) = v2;
            v33 = v32 != 0;
          }

          *(a1 + 153) = v33;
          goto LABEL_203;
        case 0x1Au:
          *(a1 + 156) |= 0x800000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_201;
        case 0x1Bu:
          *(a1 + 156) |= 0x400000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 108) = *(*this + v2);
          goto LABEL_201;
        case 0x1Cu:
          *(a1 + 156) |= 0x1000000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 116) = *(*this + v2);
          goto LABEL_201;
        case 0x1Du:
          *(a1 + 156) |= 0x200000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_201;
        case 0x1Eu:
          *(a1 + 156) |= 0x1000000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v69 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v68 = *(*this + v2++);
            *(this + 1) = v2;
            v69 = v68 != 0;
          }

          *(a1 + 155) = v69;
          goto LABEL_203;
        case 0x1Fu:
          *(a1 + 156) |= 0x100000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 100) = *(*this + v2);
          goto LABEL_201;
        case 0x20u:
          *(a1 + 156) |= 0x2000000uLL;
          v50 = *(this + 1);
          v2 = *(this + 2);
          v51 = *this;
          if (v50 > 0xFFFFFFFFFFFFFFF5 || v50 + 10 > v2)
          {
            v91 = 0;
            v92 = 0;
            v54 = 0;
            if (v2 <= v50)
            {
              v2 = *(this + 1);
            }

            v93 = v2 - v50;
            v94 = (v51 + v50);
            v95 = v50 + 1;
            while (1)
            {
              if (!v93)
              {
                LODWORD(v54) = 0;
                *(this + 24) = 1;
                goto LABEL_226;
              }

              v96 = v95;
              v97 = *v94;
              *(this + 1) = v96;
              v54 |= (v97 & 0x7F) << v91;
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
                LODWORD(v54) = 0;
LABEL_225:
                v2 = v96;
                goto LABEL_226;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v54) = 0;
            }

            goto LABEL_225;
          }

          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = (v51 + v50);
          v56 = v50 + 1;
          do
          {
            v2 = v56;
            *(this + 1) = v56;
            v57 = *v55++;
            v54 |= (v57 & 0x7F) << v52;
            if ((v57 & 0x80) == 0)
            {
              goto LABEL_226;
            }

            v52 += 7;
            ++v56;
            v14 = v53++ > 8;
          }

          while (!v14);
          LODWORD(v54) = 0;
LABEL_226:
          *(a1 + 120) = v54;
          goto LABEL_203;
        case 0x21u:
          *(a1 + 156) |= 0x200uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_201;
        case 0x22u:
          *(a1 + 156) |= 0x100uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_201;
        case 0x23u:
          *(a1 + 156) |= 0x800000000uLL;
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

          *(a1 + 154) = v23;
          goto LABEL_203;
        case 0x24u:
          *(a1 + 156) |= 0x40000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 92) = *(*this + v2);
          goto LABEL_201;
        case 0x25u:
          *(a1 + 156) |= 8uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_149:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 32) = *(*this + v2);
LABEL_201:
            v2 = *(this + 1) + 4;
LABEL_202:
            *(this + 1) = v2;
          }

          goto LABEL_203;
        default:
          if (!PB::Reader::skip(this))
          {
            v105 = 0;
            return v105 & 1;
          }

          v2 = *(this + 1);
LABEL_203:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_232;
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

LABEL_232:
  v105 = v4 ^ 1;
  return v105 & 1;
}

uint64_t sub_19B462D54(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 156);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 156);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  v6 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x40) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 156);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 156);
  if ((v4 & 0x20000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 156);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 156);
  if ((v4 & 0x10000) == 0)
  {
LABEL_9:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 156);
  if ((v4 & 0x80000) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 156);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 156);
  if ((v4 & 0x8000) == 0)
  {
LABEL_12:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 156);
  if ((v4 & 0x4000) == 0)
  {
LABEL_13:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 156);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 124));
  v4 = *(v3 + 156);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 132));
  v4 = *(v3 + 156);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_16:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = PB::Writer::write(this, *(v3 + 140));
  v4 = *(v3 + 156);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 156);
  if ((v4 & 0x80) == 0)
  {
LABEL_18:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_55:
  v7 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_19:
    if ((v4 & 0x200000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 156);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_20:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

LABEL_57:
  v8 = *(v3 + 152);
  result = PB::Writer::write(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_21:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_58:
  v9 = *(v3 + 148);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 156);
  if ((v4 & 0x400) == 0)
  {
LABEL_23:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 156);
  if ((v4 & 0x800) == 0)
  {
LABEL_24:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 156);
  if ((v4 & 0x1000) == 0)
  {
LABEL_25:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 156);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_26:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_64;
  }

LABEL_63:
  v10 = *(v3 + 153);
  result = PB::Writer::write(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x800000) == 0)
  {
LABEL_27:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 156);
  if ((v4 & 0x400000) == 0)
  {
LABEL_28:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 156);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 156);
  if ((v4 & 0x200000) == 0)
  {
LABEL_30:
    if ((v4 & 0x1000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 156);
  if ((v4 & 0x1000000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_69;
  }

LABEL_68:
  v11 = *(v3 + 155);
  result = PB::Writer::write(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x100000) == 0)
  {
LABEL_32:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 156);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_33:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_71;
  }

LABEL_70:
  v12 = *(v3 + 120);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x200) == 0)
  {
LABEL_34:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_72;
  }

LABEL_71:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 156);
  if ((v4 & 0x100) == 0)
  {
LABEL_35:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_73;
  }

LABEL_72:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 156);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_36:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_37;
    }

LABEL_74:
    result = PB::Writer::write(this, *(v3 + 92));
    if ((*(v3 + 156) & 8) == 0)
    {
      return result;
    }

    goto LABEL_75;
  }

LABEL_73:
  v13 = *(v3 + 154);
  result = PB::Writer::write(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x40000) != 0)
  {
    goto LABEL_74;
  }

LABEL_37:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_75:
  v14 = *(v3 + 32);

  return PB::Writer::write(this, v14);
}

uint64_t sub_19B463198(uint64_t result)
{
  *result = &unk_1F0E2BF00;
  *(result + 20) = 0;
  return result;
}

void sub_19B4631C0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4631F8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "gyroOn");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    v7 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B463274(uint64_t a1, PB::Reader *this)
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
            goto LABEL_56;
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
        v3 = *(this + 1);
        v2 = *(this + 2);
        if (v3 >= v2)
        {
          v32 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v31 = *(*this + v3++);
          *(this + 1) = v3;
          v32 = v31 != 0;
        }

        *(a1 + 16) = v32;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 1u;
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
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v35 = v3 - v23;
          v36 = (v24 + v23);
          v37 = v23 + 1;
          while (1)
          {
            if (!v35)
            {
              v27 = 0;
              *(this + 24) = 1;
              goto LABEL_51;
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
              v27 = 0;
              goto LABEL_50;
            }
          }

          if (*(this + 24))
          {
            v27 = 0;
          }

LABEL_50:
          v3 = v38;
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

LABEL_51:
        *(a1 + 8) = v27;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v40 = 0;
          return v40 & 1;
        }

        v3 = *(this + 1);
        v2 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_56:
  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t sub_19B463534(uint64_t result, PB::Writer *this)
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

    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_19B4635A0(uint64_t result)
{
  *result = &unk_1F0E2E008;
  *(result + 52) = 0;
  return result;
}

void sub_19B4635C8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B463600(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 52);
  if ((v5 & 0x40) != 0)
  {
    v7 = *(a1 + 44);
    PB::TextFormatter::format(this, "consideredAlert");
    v5 = *(a1 + 52);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 45);
  PB::TextFormatter::format(this, "consideredRecovery");
  v5 = *(a1 + 52);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a1 + 46);
  PB::TextFormatter::format(this, "consideredSOS");
  v5 = *(a1 + 52);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(a1 + 47);
  PB::TextFormatter::format(this, "droppedAlert");
  v5 = *(a1 + 52);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(a1 + 48);
  PB::TextFormatter::format(this, "droppedRecovery");
  v5 = *(a1 + 52);
  if ((v5 & 0x800) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = *(a1 + 49);
  PB::TextFormatter::format(this, "droppedSOS");
  v5 = *(a1 + 52);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = *(a1 + 8);
  PB::TextFormatter::format(this, "fallTime");
  v5 = *(a1 + 52);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v14 = *(a1 + 32);
  PB::TextFormatter::format(this, "impactOperatingMode");
  v5 = *(a1 + 52);
  if ((v5 & 2) == 0)
  {
LABEL_10:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "iostime", *(a1 + 16));
  v5 = *(a1 + 52);
  if ((v5 & 0x1000) == 0)
  {
LABEL_11:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v15 = *(a1 + 50);
  PB::TextFormatter::format(this, "isOtherStateMachineProcessingNearbyImpact");
  v5 = *(a1 + 52);
  if ((v5 & 0x10) == 0)
  {
LABEL_12:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = *(a1 + 36);
  PB::TextFormatter::format(this, "refereeCyclingStateDecision");
  v5 = *(a1 + 52);
  if ((v5 & 0x20) == 0)
  {
LABEL_13:
    if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  v17 = *(a1 + 40);
  PB::TextFormatter::format(this, "refereeOperatingMode");
  if ((*(a1 + 52) & 4) != 0)
  {
LABEL_14:
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "sensorTime");
  }

LABEL_15:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4637E4(uint64_t a1, PB::Reader *this)
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
        goto LABEL_161;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 52) |= 2u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
          {
            *(a1 + 16) = *(*this + v2);
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          else
          {
            *(this + 24) = 1;
          }

          goto LABEL_157;
        case 2u:
          *(a1 + 52) |= 4u;
          v60 = *(this + 1);
          v2 = *(this + 2);
          v61 = *this;
          if (v60 > 0xFFFFFFFFFFFFFFF5 || v60 + 10 > v2)
          {
            v104 = 0;
            v105 = 0;
            v64 = 0;
            if (v2 <= v60)
            {
              v2 = *(this + 1);
            }

            v106 = v2 - v60;
            v107 = (v61 + v60);
            v108 = v60 + 1;
            while (1)
            {
              if (!v106)
              {
                v64 = 0;
                *(this + 24) = 1;
                goto LABEL_156;
              }

              v109 = v108;
              v110 = *v107;
              *(this + 1) = v109;
              v64 |= (v110 & 0x7F) << v104;
              if ((v110 & 0x80) == 0)
              {
                break;
              }

              v104 += 7;
              --v106;
              ++v107;
              v108 = v109 + 1;
              v14 = v105++ > 8;
              if (v14)
              {
                v64 = 0;
LABEL_155:
                v2 = v109;
                goto LABEL_156;
              }
            }

            if (*(this + 24))
            {
              v64 = 0;
            }

            goto LABEL_155;
          }

          v62 = 0;
          v63 = 0;
          v64 = 0;
          v65 = (v61 + v60);
          v66 = v60 + 1;
          do
          {
            v2 = v66;
            *(this + 1) = v66;
            v67 = *v65++;
            v64 |= (v67 & 0x7F) << v62;
            if ((v67 & 0x80) == 0)
            {
              goto LABEL_156;
            }

            v62 += 7;
            ++v66;
            v14 = v63++ > 8;
          }

          while (!v14);
          v64 = 0;
LABEL_156:
          *(a1 + 24) = v64;
          goto LABEL_157;
        case 3u:
          *(a1 + 52) |= 1u;
          v52 = *(this + 1);
          v2 = *(this + 2);
          v53 = *this;
          if (v52 > 0xFFFFFFFFFFFFFFF5 || v52 + 10 > v2)
          {
            v97 = 0;
            v98 = 0;
            v56 = 0;
            if (v2 <= v52)
            {
              v2 = *(this + 1);
            }

            v99 = v2 - v52;
            v100 = (v53 + v52);
            v101 = v52 + 1;
            while (1)
            {
              if (!v99)
              {
                v56 = 0;
                *(this + 24) = 1;
                goto LABEL_152;
              }

              v102 = v101;
              v103 = *v100;
              *(this + 1) = v102;
              v56 |= (v103 & 0x7F) << v97;
              if ((v103 & 0x80) == 0)
              {
                break;
              }

              v97 += 7;
              --v99;
              ++v100;
              v101 = v102 + 1;
              v14 = v98++ > 8;
              if (v14)
              {
                v56 = 0;
LABEL_151:
                v2 = v102;
                goto LABEL_152;
              }
            }

            if (*(this + 24))
            {
              v56 = 0;
            }

            goto LABEL_151;
          }

          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = (v53 + v52);
          v58 = v52 + 1;
          do
          {
            v2 = v58;
            *(this + 1) = v58;
            v59 = *v57++;
            v56 |= (v59 & 0x7F) << v54;
            if ((v59 & 0x80) == 0)
            {
              goto LABEL_152;
            }

            v54 += 7;
            ++v58;
            v14 = v55++ > 8;
          }

          while (!v14);
          v56 = 0;
LABEL_152:
          *(a1 + 8) = v56;
          goto LABEL_157;
        case 4u:
          *(a1 + 52) |= 8u;
          v44 = *(this + 1);
          v2 = *(this + 2);
          v45 = *this;
          if (v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v2)
          {
            v90 = 0;
            v91 = 0;
            v48 = 0;
            if (v2 <= v44)
            {
              v2 = *(this + 1);
            }

            v92 = v2 - v44;
            v93 = (v45 + v44);
            v94 = v44 + 1;
            while (1)
            {
              if (!v92)
              {
                LODWORD(v48) = 0;
                *(this + 24) = 1;
                goto LABEL_148;
              }

              v95 = v94;
              v96 = *v93;
              *(this + 1) = v95;
              v48 |= (v96 & 0x7F) << v90;
              if ((v96 & 0x80) == 0)
              {
                break;
              }

              v90 += 7;
              --v92;
              ++v93;
              v94 = v95 + 1;
              v14 = v91++ > 8;
              if (v14)
              {
                LODWORD(v48) = 0;
LABEL_147:
                v2 = v95;
                goto LABEL_148;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v48) = 0;
            }

            goto LABEL_147;
          }

          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = (v45 + v44);
          v50 = v44 + 1;
          do
          {
            v2 = v50;
            *(this + 1) = v50;
            v51 = *v49++;
            v48 |= (v51 & 0x7F) << v46;
            if ((v51 & 0x80) == 0)
            {
              goto LABEL_148;
            }

            v46 += 7;
            ++v50;
            v14 = v47++ > 8;
          }

          while (!v14);
          LODWORD(v48) = 0;
LABEL_148:
          *(a1 + 32) = v48;
          goto LABEL_157;
        case 5u:
          *(a1 + 52) |= 0x20u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v76 = 0;
            v77 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(this + 1);
            }

            v78 = v2 - v24;
            v79 = (v25 + v24);
            v80 = v24 + 1;
            while (1)
            {
              if (!v78)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_140;
              }

              v81 = v80;
              v82 = *v79;
              *(this + 1) = v81;
              v28 |= (v82 & 0x7F) << v76;
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
                LODWORD(v28) = 0;
LABEL_139:
                v2 = v81;
                goto LABEL_140;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_139;
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
              goto LABEL_140;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_140:
          *(a1 + 40) = v28;
          goto LABEL_157;
        case 6u:
          *(a1 + 52) |= 0x10u;
          v34 = *(this + 1);
          v2 = *(this + 2);
          v35 = *this;
          if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v2)
          {
            v83 = 0;
            v84 = 0;
            v38 = 0;
            if (v2 <= v34)
            {
              v2 = *(this + 1);
            }

            v85 = v2 - v34;
            v86 = (v35 + v34);
            v87 = v34 + 1;
            while (1)
            {
              if (!v85)
              {
                LODWORD(v38) = 0;
                *(this + 24) = 1;
                goto LABEL_144;
              }

              v88 = v87;
              v89 = *v86;
              *(this + 1) = v88;
              v38 |= (v89 & 0x7F) << v83;
              if ((v89 & 0x80) == 0)
              {
                break;
              }

              v83 += 7;
              --v85;
              ++v86;
              v87 = v88 + 1;
              v14 = v84++ > 8;
              if (v14)
              {
                LODWORD(v38) = 0;
LABEL_143:
                v2 = v88;
                goto LABEL_144;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v38) = 0;
            }

            goto LABEL_143;
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = (v35 + v34);
          v40 = v34 + 1;
          do
          {
            v2 = v40;
            *(this + 1) = v40;
            v41 = *v39++;
            v38 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              goto LABEL_144;
            }

            v36 += 7;
            ++v40;
            v14 = v37++ > 8;
          }

          while (!v14);
          LODWORD(v38) = 0;
LABEL_144:
          *(a1 + 36) = v38;
          goto LABEL_157;
        case 7u:
          *(a1 + 52) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v69 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v68 = *(*this + v2++);
            *(this + 1) = v2;
            v69 = v68 != 0;
          }

          *(a1 + 50) = v69;
          goto LABEL_157;
        case 0xBu:
          *(a1 + 52) |= 0x40u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v71 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v70 = *(*this + v2++);
            *(this + 1) = v2;
            v71 = v70 != 0;
          }

          *(a1 + 44) = v71;
          goto LABEL_157;
        case 0xCu:
          *(a1 + 52) |= 0x80u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v75 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v74 = *(*this + v2++);
            *(this + 1) = v2;
            v75 = v74 != 0;
          }

          *(a1 + 45) = v75;
          goto LABEL_157;
        case 0xDu:
          *(a1 + 52) |= 0x100u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v73 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v72 = *(*this + v2++);
            *(this + 1) = v2;
            v73 = v72 != 0;
          }

          *(a1 + 46) = v73;
          goto LABEL_157;
        case 0x15u:
          *(a1 + 52) |= 0x200u;
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

          *(a1 + 47) = v23;
          goto LABEL_157;
        case 0x16u:
          *(a1 + 52) |= 0x400u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v43 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v42 = *(*this + v2++);
            *(this + 1) = v2;
            v43 = v42 != 0;
          }

          *(a1 + 48) = v43;
          goto LABEL_157;
        case 0x17u:
          *(a1 + 52) |= 0x800u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v33 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v32 = *(*this + v2++);
            *(this + 1) = v2;
            v33 = v32 != 0;
          }

          *(a1 + 49) = v33;
          goto LABEL_157;
        default:
          if (!PB::Reader::skip(this))
          {
            v111 = 0;
            return v111 & 1;
          }

          v2 = *(this + 1);
LABEL_157:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_161;
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

LABEL_161:
  v111 = v4 ^ 1;
  return v111 & 1;
}

uint64_t sub_19B4640B8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 52);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 52);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(v3 + 36);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x1000) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(v3 + 50);
  result = PB::Writer::write(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(v3 + 44);
  result = PB::Writer::write(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = *(v3 + 45);
  result = PB::Writer::write(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x100) == 0)
  {
LABEL_11:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = *(v3 + 46);
  result = PB::Writer::write(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x200) == 0)
  {
LABEL_12:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v15 = *(v3 + 48);
    result = PB::Writer::write(this);
    if ((*(v3 + 52) & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_25:
  v14 = *(v3 + 47);
  result = PB::Writer::write(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v4 & 0x800) == 0)
  {
    return result;
  }

LABEL_27:
  v16 = *(v3 + 49);

  return PB::Writer::write(this);
}

void *sub_19B46425C(void *result)
{
  *result = &unk_1F0E2E4D8;
  *(result + 364) = 0;
  return result;
}

void sub_19B464288(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4642C0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = (a1 + 364);
  v6 = *(a1 + 364);
  if (v6)
  {
    v8 = *(a1 + 8);
    PB::TextFormatter::format(this, "alertCanceledBecauseOfAbsenceOfQuiessence");
    v6 = *v5;
    if ((*v5 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(a1 + 16);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfActive");
  v6 = *v5;
  if ((*v5 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  v10 = *(a1 + 24);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfChargerState");
  v6 = *v5;
  if ((*v5 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_53:
  v11 = *(a1 + 32);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfCyclingPostImpact");
  v6 = *v5;
  if ((*v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_54:
  v12 = *(a1 + 40);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfDecimatedLowFrequencyFFT");
  v6 = *v5;
  if ((*v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

LABEL_55:
  v13 = *(a1 + 48);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfDistanceTraveledPostImpact");
  v6 = *v5;
  if ((*v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_56:
  v14 = *(a1 + 56);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfHighFrequencyFFT");
  v6 = *v5;
  if ((*v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_57:
  v15 = *(a1 + 64);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfLockedNoMotionPre");
  v6 = *v5;
  if ((*v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

LABEL_58:
  v16 = *(a1 + 72);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfLowFrequencyFFT");
  v6 = *v5;
  if ((*v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_60;
  }

LABEL_59:
  v17 = *(a1 + 80);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfNumberOfPeaksFFT");
  v6 = *v5;
  if ((*v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_61;
  }

LABEL_60:
  v18 = *(a1 + 88);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfOffBody");
  v6 = *v5;
  if ((*v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_62;
  }

LABEL_61:
  v19 = *(a1 + 96);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfRepetitiveMotion");
  v6 = *v5;
  if ((*v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_63;
  }

LABEL_62:
  v20 = *(a1 + 104);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfRetraction");
  v6 = *v5;
  if ((*v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_64;
  }

LABEL_63:
  v21 = *(a1 + 112);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfSimilarPeaks");
  v6 = *v5;
  if ((*v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_65;
  }

LABEL_64:
  v22 = *(a1 + 120);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfStand");
  v6 = *v5;
  if ((*v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_66;
  }

LABEL_65:
  v23 = *(a1 + 128);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfSteps");
  v6 = *v5;
  if ((*v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_67;
  }

LABEL_66:
  v24 = *(a1 + 136);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfWristState");
  v6 = *v5;
  if ((*v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_68;
  }

LABEL_67:
  v25 = *(a1 + 144);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfWristStatePost");
  v6 = *v5;
  if ((*v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_69;
  }

LABEL_68:
  v26 = *(a1 + 152);
  PB::TextFormatter::format(this, "alertCanceledBecauseOfWristStatePre");
  v6 = *v5;
  if ((*v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_70;
  }

LABEL_69:
  v27 = *(a1 + 160);
  PB::TextFormatter::format(this, "fallStatsDispatchResetOnAccelSensorTime");
  v6 = *v5;
  if ((*v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_71;
  }

LABEL_70:
  v28 = *(a1 + 168);
  PB::TextFormatter::format(this, "fallStatsDispatchRestoredOnAccelSensorTime");
  v6 = *v5;
  if ((*v5 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_72;
  }

LABEL_71:
  v29 = *(a1 + 176);
  PB::TextFormatter::format(this, "hkWorkoutId");
  v6 = *v5;
  if ((*v5 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_73;
  }

LABEL_72:
  v30 = *(a1 + 184);
  PB::TextFormatter::format(this, "impactCanceledBecauseOfExistingAlert");
  v6 = *v5;
  if ((*v5 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_74;
  }

LABEL_73:
  v31 = *(a1 + 192);
  PB::TextFormatter::format(this, "impactNotConsideredBecauseOfCyclingImpactThresholds");
  v6 = *v5;
  if ((*v5 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_75;
  }

LABEL_74:
  v32 = *(a1 + 200);
  PB::TextFormatter::format(this, "impactNotConsideredBecauseOfMaxAccelNormThreshold");
  v6 = *v5;
  if ((*v5 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_76;
  }

LABEL_75:
  v33 = *(a1 + 208);
  PB::TextFormatter::format(this, "impactNotConsideredBecauseOfMultiPeaks");
  v6 = *v5;
  if ((*v5 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_77;
  }

LABEL_76:
  v34 = *(a1 + 216);
  PB::TextFormatter::format(this, "impactNotConsideredBecauseOfNaiveBayesClassifier");
  v6 = *v5;
  if ((*v5 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_78;
  }

LABEL_77:
  v35 = *(a1 + 224);
  PB::TextFormatter::format(this, "impactNotConsideredBecauseOfOtherHardThresholds");
  v6 = *v5;
  if ((*v5 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_79;
  }

LABEL_78:
  v36 = *(a1 + 232);
  PB::TextFormatter::format(this, "leavingImpactBecauseOfNewImpactNewImpact");
  v6 = *v5;
  if ((*v5 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x100000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_80;
  }

LABEL_79:
  v37 = *(a1 + 240);
  PB::TextFormatter::format(this, "leavingImpactBecauseOfNewImpactOldImpact");
  v6 = *v5;
  if ((*v5 & 0x100000000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_81;
  }

LABEL_80:
  v38 = *(a1 + 360);
  PB::TextFormatter::format(this, "operatingMode");
  v6 = *v5;
  if ((*v5 & 0x40000000) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_82;
  }

LABEL_81:
  v39 = *(a1 + 248);
  PB::TextFormatter::format(this, "skippedFallStatsSensorTime");
  v6 = *v5;
  if ((*v5 & 0x80000000) == 0)
  {
LABEL_34:
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_83;
  }

LABEL_82:
  v40 = *(a1 + 256);
  PB::TextFormatter::format(this, "skippedGyroSensorTime");
  v6 = *v5;
  if ((*v5 & 0x100000000) == 0)
  {
LABEL_35:
    if ((v6 & 0x200000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_84;
  }

LABEL_83:
  v41 = *(a1 + 264);
  PB::TextFormatter::format(this, "sosCanceledBecauseOfAbsenceOfLongLie");
  v6 = *v5;
  if ((*v5 & 0x200000000) == 0)
  {
LABEL_36:
    if ((v6 & 0x400000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_85;
  }

LABEL_84:
  v42 = *(a1 + 272);
  PB::TextFormatter::format(this, "sosCanceledBecauseOfActive");
  v6 = *v5;
  if ((*v5 & 0x400000000) == 0)
  {
LABEL_37:
    if ((v6 & 0x800000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_86;
  }

LABEL_85:
  v43 = *(a1 + 280);
  PB::TextFormatter::format(this, "sosCanceledBecauseOfStand");
  v6 = *v5;
  if ((*v5 & 0x800000000) == 0)
  {
LABEL_38:
    if ((v6 & 0x1000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_87;
  }

LABEL_86:
  v44 = *(a1 + 288);
  PB::TextFormatter::format(this, "sosCanceledBecauseOfSteps");
  v6 = *v5;
  if ((*v5 & 0x1000000000) == 0)
  {
LABEL_39:
    if ((v6 & 0x2000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_88;
  }

LABEL_87:
  v45 = *(a1 + 296);
  PB::TextFormatter::format(this, "sosConsideredFallTimestamp");
  v6 = *v5;
  if ((*v5 & 0x2000000000) == 0)
  {
LABEL_40:
    if ((v6 & 0x4000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_89;
  }

LABEL_88:
  PB::TextFormatter::format(this, "sosConsideredIOSTime", *(a1 + 304));
  v6 = *v5;
  if ((*v5 & 0x4000000000) == 0)
  {
LABEL_41:
    if ((v6 & 0x8000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_90;
  }

LABEL_89:
  v46 = *(a1 + 312);
  PB::TextFormatter::format(this, "sosConsideredSensorTime");
  v6 = *v5;
  if ((*v5 & 0x8000000000) == 0)
  {
LABEL_42:
    if ((v6 & 0x10000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_91;
  }

LABEL_90:
  v47 = *(a1 + 320);
  PB::TextFormatter::format(this, "workoutId");
  v6 = *v5;
  if ((*v5 & 0x10000000000) == 0)
  {
LABEL_43:
    if ((v6 & 0x20000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_92;
  }

LABEL_91:
  v48 = *(a1 + 328);
  PB::TextFormatter::format(this, "workoutTransitionPause");
  v6 = *v5;
  if ((*v5 & 0x20000000000) == 0)
  {
LABEL_44:
    if ((v6 & 0x40000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_93;
  }

LABEL_92:
  v49 = *(a1 + 336);
  PB::TextFormatter::format(this, "workoutTransitionResume");
  v6 = *v5;
  if ((*v5 & 0x40000000000) == 0)
  {
LABEL_45:
    if ((v6 & 0x80000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_93:
  v50 = *(a1 + 344);
  PB::TextFormatter::format(this, "workoutTransitionStart");
  if ((*v5 & 0x80000000000) != 0)
  {
LABEL_46:
    v7 = *(a1 + 352);
    PB::TextFormatter::format(this, "workoutTransitionStop");
  }

LABEL_47:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4648B0(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    v7 = (a1 + 364);
    do
    {
      v8 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v16 = 0;
        v17 = 0;
        v11 = 0;
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v8 + v2);
        v21 = v2 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_869;
          }

          v22 = *v20;
          *(this + 1) = v21;
          v11 |= (v22 & 0x7F) << v16;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v19;
          ++v20;
          ++v21;
          v15 = v17++ > 8;
          if (v15)
          {
LABEL_18:
            v11 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v11 = 0;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = (v8 + v2);
        v13 = v2 + 1;
        while (1)
        {
          *(this + 1) = v13;
          v14 = *v12++;
          v11 |= (v14 & 0x7F) << v9;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v9 += 7;
          ++v13;
          v15 = v10++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v11 & 7) == 4))
      {
        break;
      }

      switch((v11 >> 3))
      {
        case 1u:
          *v7 |= 0x40000000uLL;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v576 = 0;
            v577 = 0;
            v28 = 0;
            v18 = v23 >= v24;
            v578 = v23 - v24;
            if (!v18)
            {
              v578 = 0;
            }

            v579 = (v25 + v24);
            v580 = v24 + 1;
            do
            {
              if (!v578)
              {
                v28 = 0;
                *(this + 24) = 1;
                goto LABEL_813;
              }

              v581 = *v579;
              *(this + 1) = v580;
              v28 |= (v581 & 0x7F) << v576;
              if ((v581 & 0x80) == 0)
              {
                if (*(this + 24))
                {
                  v28 = 0;
                }

                goto LABEL_813;
              }

              v576 += 7;
              --v578;
              ++v579;
              ++v580;
              v15 = v577++ > 8;
            }

            while (!v15);
LABEL_551:
            v28 = 0;
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
              v15 = v27++ > 8;
              if (v15)
              {
                goto LABEL_551;
              }
            }
          }

LABEL_813:
          *(a1 + 248) = v28;
          goto LABEL_865;
        case 2u:
          *v7 |= 0x80000000uLL;
          v187 = *(this + 1);
          v186 = *(this + 2);
          v188 = *this;
          if (v187 <= 0xFFFFFFFFFFFFFFF5 && v187 + 10 <= v186)
          {
            v189 = 0;
            v190 = 0;
            v191 = 0;
            v192 = (v188 + v187);
            v193 = v187 + 1;
            do
            {
              *(this + 1) = v193;
              v194 = *v192++;
              v191 |= (v194 & 0x7F) << v189;
              if ((v194 & 0x80) == 0)
              {
                goto LABEL_786;
              }

              v189 += 7;
              ++v193;
              v15 = v190++ > 8;
            }

            while (!v15);
LABEL_479:
            v191 = 0;
            goto LABEL_786;
          }

          v522 = 0;
          v523 = 0;
          v191 = 0;
          v18 = v186 >= v187;
          v524 = v186 - v187;
          if (!v18)
          {
            v524 = 0;
          }

          v525 = (v188 + v187);
          v526 = v187 + 1;
          while (2)
          {
            if (v524)
            {
              v527 = *v525;
              *(this + 1) = v526;
              v191 |= (v527 & 0x7F) << v522;
              if (v527 < 0)
              {
                v522 += 7;
                --v524;
                ++v525;
                ++v526;
                v15 = v523++ > 8;
                if (v15)
                {
                  goto LABEL_479;
                }

                continue;
              }

              if (*(this + 24))
              {
                v191 = 0;
              }
            }

            else
            {
              v191 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_786:
          *(a1 + 256) = v191;
          goto LABEL_865;
        case 0x15u:
          *v7 |= 0x80000uLL;
          v277 = *(this + 1);
          v276 = *(this + 2);
          v278 = *this;
          if (v277 <= 0xFFFFFFFFFFFFFFF5 && v277 + 10 <= v276)
          {
            v279 = 0;
            v280 = 0;
            v281 = 0;
            v282 = (v278 + v277);
            v283 = v277 + 1;
            do
            {
              *(this + 1) = v283;
              v284 = *v282++;
              v281 |= (v284 & 0x7F) << v279;
              if ((v284 & 0x80) == 0)
              {
                goto LABEL_819;
              }

              v279 += 7;
              ++v283;
              v15 = v280++ > 8;
            }

            while (!v15);
LABEL_567:
            v281 = 0;
            goto LABEL_819;
          }

          v588 = 0;
          v589 = 0;
          v281 = 0;
          v18 = v276 >= v277;
          v590 = v276 - v277;
          if (!v18)
          {
            v590 = 0;
          }

          v591 = (v278 + v277);
          v592 = v277 + 1;
          while (2)
          {
            if (v590)
            {
              v593 = *v591;
              *(this + 1) = v592;
              v281 |= (v593 & 0x7F) << v588;
              if (v593 < 0)
              {
                v588 += 7;
                --v590;
                ++v591;
                ++v592;
                v15 = v589++ > 8;
                if (v15)
                {
                  goto LABEL_567;
                }

                continue;
              }

              if (*(this + 24))
              {
                v281 = 0;
              }
            }

            else
            {
              v281 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_819:
          *(a1 + 160) = v281;
          goto LABEL_865;
        case 0x16u:
          *v7 |= 0x100000uLL;
          v178 = *(this + 1);
          v177 = *(this + 2);
          v179 = *this;
          if (v178 <= 0xFFFFFFFFFFFFFFF5 && v178 + 10 <= v177)
          {
            v180 = 0;
            v181 = 0;
            v182 = 0;
            v183 = (v179 + v178);
            v184 = v178 + 1;
            do
            {
              *(this + 1) = v184;
              v185 = *v183++;
              v182 |= (v185 & 0x7F) << v180;
              if ((v185 & 0x80) == 0)
              {
                goto LABEL_783;
              }

              v180 += 7;
              ++v184;
              v15 = v181++ > 8;
            }

            while (!v15);
LABEL_471:
            v182 = 0;
            goto LABEL_783;
          }

          v516 = 0;
          v517 = 0;
          v182 = 0;
          v18 = v177 >= v178;
          v518 = v177 - v178;
          if (!v18)
          {
            v518 = 0;
          }

          v519 = (v179 + v178);
          v520 = v178 + 1;
          while (2)
          {
            if (v518)
            {
              v521 = *v519;
              *(this + 1) = v520;
              v182 |= (v521 & 0x7F) << v516;
              if (v521 < 0)
              {
                v516 += 7;
                --v518;
                ++v519;
                ++v520;
                v15 = v517++ > 8;
                if (v15)
                {
                  goto LABEL_471;
                }

                continue;
              }

              if (*(this + 24))
              {
                v182 = 0;
              }
            }

            else
            {
              v182 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_783:
          *(a1 + 168) = v182;
          goto LABEL_865;
        case 0x2Cu:
          *v7 |= 0x200000uLL;
          v241 = *(this + 1);
          v240 = *(this + 2);
          v242 = *this;
          if (v241 <= 0xFFFFFFFFFFFFFFF5 && v241 + 10 <= v240)
          {
            v243 = 0;
            v244 = 0;
            v245 = 0;
            v246 = (v242 + v241);
            v247 = v241 + 1;
            do
            {
              *(this + 1) = v247;
              v248 = *v246++;
              v245 |= (v248 & 0x7F) << v243;
              if ((v248 & 0x80) == 0)
              {
                goto LABEL_804;
              }

              v243 += 7;
              ++v247;
              v15 = v244++ > 8;
            }

            while (!v15);
LABEL_527:
            v245 = 0;
            goto LABEL_804;
          }

          v558 = 0;
          v559 = 0;
          v245 = 0;
          v18 = v240 >= v241;
          v560 = v240 - v241;
          if (!v18)
          {
            v560 = 0;
          }

          v561 = (v242 + v241);
          v562 = v241 + 1;
          while (2)
          {
            if (v560)
            {
              v563 = *v561;
              *(this + 1) = v562;
              v245 |= (v563 & 0x7F) << v558;
              if (v563 < 0)
              {
                v558 += 7;
                --v560;
                ++v561;
                ++v562;
                v15 = v559++ > 8;
                if (v15)
                {
                  goto LABEL_527;
                }

                continue;
              }

              if (*(this + 24))
              {
                v245 = 0;
              }
            }

            else
            {
              v245 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_804:
          *(a1 + 176) = v245;
          goto LABEL_865;
        case 0x2Du:
          *v7 |= 0x8000000000uLL;
          v268 = *(this + 1);
          v267 = *(this + 2);
          v269 = *this;
          if (v268 <= 0xFFFFFFFFFFFFFFF5 && v268 + 10 <= v267)
          {
            v270 = 0;
            v271 = 0;
            v272 = 0;
            v273 = (v269 + v268);
            v274 = v268 + 1;
            do
            {
              *(this + 1) = v274;
              v275 = *v273++;
              v272 |= (v275 & 0x7F) << v270;
              if ((v275 & 0x80) == 0)
              {
                goto LABEL_816;
              }

              v270 += 7;
              ++v274;
              v15 = v271++ > 8;
            }

            while (!v15);
LABEL_559:
            v272 = 0;
            goto LABEL_816;
          }

          v582 = 0;
          v583 = 0;
          v272 = 0;
          v18 = v267 >= v268;
          v584 = v267 - v268;
          if (!v18)
          {
            v584 = 0;
          }

          v585 = (v269 + v268);
          v586 = v268 + 1;
          while (2)
          {
            if (v584)
            {
              v587 = *v585;
              *(this + 1) = v586;
              v272 |= (v587 & 0x7F) << v582;
              if (v587 < 0)
              {
                v582 += 7;
                --v584;
                ++v585;
                ++v586;
                v15 = v583++ > 8;
                if (v15)
                {
                  goto LABEL_559;
                }

                continue;
              }

              if (*(this + 24))
              {
                v272 = 0;
              }
            }

            else
            {
              v272 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_816:
          *(a1 + 320) = v272;
          goto LABEL_865;
        case 0x2Eu:
          *v7 |= 0x40000000000uLL;
          v331 = *(this + 1);
          v330 = *(this + 2);
          v332 = *this;
          if (v331 <= 0xFFFFFFFFFFFFFFF5 && v331 + 10 <= v330)
          {
            v333 = 0;
            v334 = 0;
            v335 = 0;
            v336 = (v332 + v331);
            v337 = v331 + 1;
            do
            {
              *(this + 1) = v337;
              v338 = *v336++;
              v335 |= (v338 & 0x7F) << v333;
              if ((v338 & 0x80) == 0)
              {
                goto LABEL_837;
              }

              v333 += 7;
              ++v337;
              v15 = v334++ > 8;
            }

            while (!v15);
LABEL_615:
            v335 = 0;
            goto LABEL_837;
          }

          v624 = 0;
          v625 = 0;
          v335 = 0;
          v18 = v330 >= v331;
          v626 = v330 - v331;
          if (!v18)
          {
            v626 = 0;
          }

          v627 = (v332 + v331);
          v628 = v331 + 1;
          while (2)
          {
            if (v626)
            {
              v629 = *v627;
              *(this + 1) = v628;
              v335 |= (v629 & 0x7F) << v624;
              if (v629 < 0)
              {
                v624 += 7;
                --v626;
                ++v627;
                ++v628;
                v15 = v625++ > 8;
                if (v15)
                {
                  goto LABEL_615;
                }

                continue;
              }

              if (*(this + 24))
              {
                v335 = 0;
              }
            }

            else
            {
              v335 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_837:
          *(a1 + 344) = v335;
          goto LABEL_865;
        case 0x2Fu:
          *v7 |= 0x10000000000uLL;
          v340 = *(this + 1);
          v339 = *(this + 2);
          v341 = *this;
          if (v340 <= 0xFFFFFFFFFFFFFFF5 && v340 + 10 <= v339)
          {
            v342 = 0;
            v343 = 0;
            v344 = 0;
            v345 = (v341 + v340);
            v346 = v340 + 1;
            do
            {
              *(this + 1) = v346;
              v347 = *v345++;
              v344 |= (v347 & 0x7F) << v342;
              if ((v347 & 0x80) == 0)
              {
                goto LABEL_840;
              }

              v342 += 7;
              ++v346;
              v15 = v343++ > 8;
            }

            while (!v15);
LABEL_623:
            v344 = 0;
            goto LABEL_840;
          }

          v630 = 0;
          v631 = 0;
          v344 = 0;
          v18 = v339 >= v340;
          v632 = v339 - v340;
          if (!v18)
          {
            v632 = 0;
          }

          v633 = (v341 + v340);
          v634 = v340 + 1;
          while (2)
          {
            if (v632)
            {
              v635 = *v633;
              *(this + 1) = v634;
              v344 |= (v635 & 0x7F) << v630;
              if (v635 < 0)
              {
                v630 += 7;
                --v632;
                ++v633;
                ++v634;
                v15 = v631++ > 8;
                if (v15)
                {
                  goto LABEL_623;
                }

                continue;
              }

              if (*(this + 24))
              {
                v344 = 0;
              }
            }

            else
            {
              v344 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_840:
          *(a1 + 328) = v344;
          goto LABEL_865;
        case 0x30u:
          *v7 |= 0x20000000000uLL;
          v133 = *(this + 1);
          v132 = *(this + 2);
          v134 = *this;
          if (v133 <= 0xFFFFFFFFFFFFFFF5 && v133 + 10 <= v132)
          {
            v135 = 0;
            v136 = 0;
            v137 = 0;
            v138 = (v134 + v133);
            v139 = v133 + 1;
            do
            {
              *(this + 1) = v139;
              v140 = *v138++;
              v137 |= (v140 & 0x7F) << v135;
              if ((v140 & 0x80) == 0)
              {
                goto LABEL_768;
              }

              v135 += 7;
              ++v139;
              v15 = v136++ > 8;
            }

            while (!v15);
LABEL_431:
            v137 = 0;
            goto LABEL_768;
          }

          v486 = 0;
          v487 = 0;
          v137 = 0;
          v18 = v132 >= v133;
          v488 = v132 - v133;
          if (!v18)
          {
            v488 = 0;
          }

          v489 = (v134 + v133);
          v490 = v133 + 1;
          while (2)
          {
            if (v488)
            {
              v491 = *v489;
              *(this + 1) = v490;
              v137 |= (v491 & 0x7F) << v486;
              if (v491 < 0)
              {
                v486 += 7;
                --v488;
                ++v489;
                ++v490;
                v15 = v487++ > 8;
                if (v15)
                {
                  goto LABEL_431;
                }

                continue;
              }

              if (*(this + 24))
              {
                v137 = 0;
              }
            }

            else
            {
              v137 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_768:
          *(a1 + 336) = v137;
          goto LABEL_865;
        case 0x31u:
          *v7 |= 0x80000000000uLL;
          v349 = *(this + 1);
          v348 = *(this + 2);
          v350 = *this;
          if (v349 <= 0xFFFFFFFFFFFFFFF5 && v349 + 10 <= v348)
          {
            v351 = 0;
            v352 = 0;
            v353 = 0;
            v354 = (v350 + v349);
            v355 = v349 + 1;
            do
            {
              *(this + 1) = v355;
              v356 = *v354++;
              v353 |= (v356 & 0x7F) << v351;
              if ((v356 & 0x80) == 0)
              {
                goto LABEL_843;
              }

              v351 += 7;
              ++v355;
              v15 = v352++ > 8;
            }

            while (!v15);
LABEL_631:
            v353 = 0;
            goto LABEL_843;
          }

          v636 = 0;
          v637 = 0;
          v353 = 0;
          v18 = v348 >= v349;
          v638 = v348 - v349;
          if (!v18)
          {
            v638 = 0;
          }

          v639 = (v350 + v349);
          v640 = v349 + 1;
          while (2)
          {
            if (v638)
            {
              v641 = *v639;
              *(this + 1) = v640;
              v353 |= (v641 & 0x7F) << v636;
              if (v641 < 0)
              {
                v636 += 7;
                --v638;
                ++v639;
                ++v640;
                v15 = v637++ > 8;
                if (v15)
                {
                  goto LABEL_631;
                }

                continue;
              }

              if (*(this + 24))
              {
                v353 = 0;
              }
            }

            else
            {
              v353 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_843:
          *(a1 + 352) = v353;
          goto LABEL_865;
        case 0x32u:
          *v7 |= 0x100000000000uLL;
          v160 = *(this + 1);
          v159 = *(this + 2);
          v161 = *this;
          if (v160 <= 0xFFFFFFFFFFFFFFF5 && v160 + 10 <= v159)
          {
            v162 = 0;
            v163 = 0;
            v164 = 0;
            v165 = (v161 + v160);
            v166 = v160 + 1;
            do
            {
              *(this + 1) = v166;
              v167 = *v165++;
              v164 |= (v167 & 0x7F) << v162;
              if ((v167 & 0x80) == 0)
              {
                goto LABEL_777;
              }

              v162 += 7;
              ++v166;
              v15 = v163++ > 8;
            }

            while (!v15);
LABEL_455:
            LODWORD(v164) = 0;
            goto LABEL_777;
          }

          v504 = 0;
          v505 = 0;
          v164 = 0;
          v18 = v159 >= v160;
          v506 = v159 - v160;
          if (!v18)
          {
            v506 = 0;
          }

          v507 = (v161 + v160);
          v508 = v160 + 1;
          while (2)
          {
            if (v506)
            {
              v509 = *v507;
              *(this + 1) = v508;
              v164 |= (v509 & 0x7F) << v504;
              if (v509 < 0)
              {
                v504 += 7;
                --v506;
                ++v507;
                ++v508;
                v15 = v505++ > 8;
                if (v15)
                {
                  goto LABEL_455;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v164) = 0;
              }
            }

            else
            {
              LODWORD(v164) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_777:
          *(a1 + 360) = v164;
          goto LABEL_865;
        case 0x33u:
          *v7 |= 0x1000000uLL;
          v250 = *(this + 1);
          v249 = *(this + 2);
          v251 = *this;
          if (v250 <= 0xFFFFFFFFFFFFFFF5 && v250 + 10 <= v249)
          {
            v252 = 0;
            v253 = 0;
            v254 = 0;
            v255 = (v251 + v250);
            v256 = v250 + 1;
            do
            {
              *(this + 1) = v256;
              v257 = *v255++;
              v254 |= (v257 & 0x7F) << v252;
              if ((v257 & 0x80) == 0)
              {
                goto LABEL_807;
              }

              v252 += 7;
              ++v256;
              v15 = v253++ > 8;
            }

            while (!v15);
LABEL_535:
            v254 = 0;
            goto LABEL_807;
          }

          v564 = 0;
          v565 = 0;
          v254 = 0;
          v18 = v249 >= v250;
          v566 = v249 - v250;
          if (!v18)
          {
            v566 = 0;
          }

          v567 = (v251 + v250);
          v568 = v250 + 1;
          while (2)
          {
            if (v566)
            {
              v569 = *v567;
              *(this + 1) = v568;
              v254 |= (v569 & 0x7F) << v564;
              if (v569 < 0)
              {
                v564 += 7;
                --v566;
                ++v567;
                ++v568;
                v15 = v565++ > 8;
                if (v15)
                {
                  goto LABEL_535;
                }

                continue;
              }

              if (*(this + 24))
              {
                v254 = 0;
              }
            }

            else
            {
              v254 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_807:
          *(a1 + 200) = v254;
          goto LABEL_865;
        case 0x34u:
          *v7 |= 0x8000000uLL;
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
                goto LABEL_798;
              }

              v225 += 7;
              ++v229;
              v15 = v226++ > 8;
            }

            while (!v15);
LABEL_511:
            v227 = 0;
            goto LABEL_798;
          }

          v546 = 0;
          v547 = 0;
          v227 = 0;
          v18 = v222 >= v223;
          v548 = v222 - v223;
          if (!v18)
          {
            v548 = 0;
          }

          v549 = (v224 + v223);
          v550 = v223 + 1;
          while (2)
          {
            if (v548)
            {
              v551 = *v549;
              *(this + 1) = v550;
              v227 |= (v551 & 0x7F) << v546;
              if (v551 < 0)
              {
                v546 += 7;
                --v548;
                ++v549;
                ++v550;
                v15 = v547++ > 8;
                if (v15)
                {
                  goto LABEL_511;
                }

                continue;
              }

              if (*(this + 24))
              {
                v227 = 0;
              }
            }

            else
            {
              v227 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_798:
          *(a1 + 224) = v227;
          goto LABEL_865;
        case 0x35u:
          *v7 |= 0x2000000uLL;
          v115 = *(this + 1);
          v114 = *(this + 2);
          v116 = *this;
          if (v115 <= 0xFFFFFFFFFFFFFFF5 && v115 + 10 <= v114)
          {
            v117 = 0;
            v118 = 0;
            v119 = 0;
            v120 = (v116 + v115);
            v121 = v115 + 1;
            do
            {
              *(this + 1) = v121;
              v122 = *v120++;
              v119 |= (v122 & 0x7F) << v117;
              if ((v122 & 0x80) == 0)
              {
                goto LABEL_762;
              }

              v117 += 7;
              ++v121;
              v15 = v118++ > 8;
            }

            while (!v15);
LABEL_415:
            v119 = 0;
            goto LABEL_762;
          }

          v474 = 0;
          v475 = 0;
          v119 = 0;
          v18 = v114 >= v115;
          v476 = v114 - v115;
          if (!v18)
          {
            v476 = 0;
          }

          v477 = (v116 + v115);
          v478 = v115 + 1;
          while (2)
          {
            if (v476)
            {
              v479 = *v477;
              *(this + 1) = v478;
              v119 |= (v479 & 0x7F) << v474;
              if (v479 < 0)
              {
                v474 += 7;
                --v476;
                ++v477;
                ++v478;
                v15 = v475++ > 8;
                if (v15)
                {
                  goto LABEL_415;
                }

                continue;
              }

              if (*(this + 24))
              {
                v119 = 0;
              }
            }

            else
            {
              v119 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_762:
          *(a1 + 208) = v119;
          goto LABEL_865;
        case 0x36u:
          *v7 |= 0x4000000uLL;
          v313 = *(this + 1);
          v312 = *(this + 2);
          v314 = *this;
          if (v313 <= 0xFFFFFFFFFFFFFFF5 && v313 + 10 <= v312)
          {
            v315 = 0;
            v316 = 0;
            v317 = 0;
            v318 = (v314 + v313);
            v319 = v313 + 1;
            do
            {
              *(this + 1) = v319;
              v320 = *v318++;
              v317 |= (v320 & 0x7F) << v315;
              if ((v320 & 0x80) == 0)
              {
                goto LABEL_831;
              }

              v315 += 7;
              ++v319;
              v15 = v316++ > 8;
            }

            while (!v15);
LABEL_599:
            v317 = 0;
            goto LABEL_831;
          }

          v612 = 0;
          v613 = 0;
          v317 = 0;
          v18 = v312 >= v313;
          v614 = v312 - v313;
          if (!v18)
          {
            v614 = 0;
          }

          v615 = (v314 + v313);
          v616 = v313 + 1;
          while (2)
          {
            if (v614)
            {
              v617 = *v615;
              *(this + 1) = v616;
              v317 |= (v617 & 0x7F) << v612;
              if (v617 < 0)
              {
                v612 += 7;
                --v614;
                ++v615;
                ++v616;
                v15 = v613++ > 8;
                if (v15)
                {
                  goto LABEL_599;
                }

                continue;
              }

              if (*(this + 24))
              {
                v317 = 0;
              }
            }

            else
            {
              v317 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_831:
          *(a1 + 216) = v317;
          goto LABEL_865;
        case 0x37u:
          *v7 |= 0x400000uLL;
          v322 = *(this + 1);
          v321 = *(this + 2);
          v323 = *this;
          if (v322 <= 0xFFFFFFFFFFFFFFF5 && v322 + 10 <= v321)
          {
            v324 = 0;
            v325 = 0;
            v326 = 0;
            v327 = (v323 + v322);
            v328 = v322 + 1;
            do
            {
              *(this + 1) = v328;
              v329 = *v327++;
              v326 |= (v329 & 0x7F) << v324;
              if ((v329 & 0x80) == 0)
              {
                goto LABEL_834;
              }

              v324 += 7;
              ++v328;
              v15 = v325++ > 8;
            }

            while (!v15);
LABEL_607:
            v326 = 0;
            goto LABEL_834;
          }

          v618 = 0;
          v619 = 0;
          v326 = 0;
          v18 = v321 >= v322;
          v620 = v321 - v322;
          if (!v18)
          {
            v620 = 0;
          }

          v621 = (v323 + v322);
          v622 = v322 + 1;
          while (2)
          {
            if (v620)
            {
              v623 = *v621;
              *(this + 1) = v622;
              v326 |= (v623 & 0x7F) << v618;
              if (v623 < 0)
              {
                v618 += 7;
                --v620;
                ++v621;
                ++v622;
                v15 = v619++ > 8;
                if (v15)
                {
                  goto LABEL_607;
                }

                continue;
              }

              if (*(this + 24))
              {
                v326 = 0;
              }
            }

            else
            {
              v326 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_834:
          *(a1 + 184) = v326;
          goto LABEL_865;
        case 0x38u:
          *v7 |= 0x800000uLL;
          v376 = *(this + 1);
          v375 = *(this + 2);
          v377 = *this;
          if (v376 <= 0xFFFFFFFFFFFFFFF5 && v376 + 10 <= v375)
          {
            v378 = 0;
            v379 = 0;
            v380 = 0;
            v381 = (v377 + v376);
            v382 = v376 + 1;
            do
            {
              *(this + 1) = v382;
              v383 = *v381++;
              v380 |= (v383 & 0x7F) << v378;
              if ((v383 & 0x80) == 0)
              {
                goto LABEL_852;
              }

              v378 += 7;
              ++v382;
              v15 = v379++ > 8;
            }

            while (!v15);
LABEL_655:
            v380 = 0;
            goto LABEL_852;
          }

          v654 = 0;
          v655 = 0;
          v380 = 0;
          v18 = v375 >= v376;
          v656 = v375 - v376;
          if (!v18)
          {
            v656 = 0;
          }

          v657 = (v377 + v376);
          v658 = v376 + 1;
          while (2)
          {
            if (v656)
            {
              v659 = *v657;
              *(this + 1) = v658;
              v380 |= (v659 & 0x7F) << v654;
              if (v659 < 0)
              {
                v654 += 7;
                --v656;
                ++v657;
                ++v658;
                v15 = v655++ > 8;
                if (v15)
                {
                  goto LABEL_655;
                }

                continue;
              }

              if (*(this + 24))
              {
                v380 = 0;
              }
            }

            else
            {
              v380 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_852:
          *(a1 + 192) = v380;
          goto LABEL_865;
        case 0x3Bu:
          *v7 |= 0x20uLL;
          v367 = *(this + 1);
          v366 = *(this + 2);
          v368 = *this;
          if (v367 <= 0xFFFFFFFFFFFFFFF5 && v367 + 10 <= v366)
          {
            v369 = 0;
            v370 = 0;
            v371 = 0;
            v372 = (v368 + v367);
            v373 = v367 + 1;
            do
            {
              *(this + 1) = v373;
              v374 = *v372++;
              v371 |= (v374 & 0x7F) << v369;
              if ((v374 & 0x80) == 0)
              {
                goto LABEL_849;
              }

              v369 += 7;
              ++v373;
              v15 = v370++ > 8;
            }

            while (!v15);
LABEL_647:
            v371 = 0;
            goto LABEL_849;
          }

          v648 = 0;
          v649 = 0;
          v371 = 0;
          v18 = v366 >= v367;
          v650 = v366 - v367;
          if (!v18)
          {
            v650 = 0;
          }

          v651 = (v368 + v367);
          v652 = v367 + 1;
          while (2)
          {
            if (v650)
            {
              v653 = *v651;
              *(this + 1) = v652;
              v371 |= (v653 & 0x7F) << v648;
              if (v653 < 0)
              {
                v648 += 7;
                --v650;
                ++v651;
                ++v652;
                v15 = v649++ > 8;
                if (v15)
                {
                  goto LABEL_647;
                }

                continue;
              }

              if (*(this + 24))
              {
                v371 = 0;
              }
            }

            else
            {
              v371 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_849:
          *(a1 + 48) = v371;
          goto LABEL_865;
        case 0x3Cu:
          *v7 |= 8uLL;
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
                goto LABEL_753;
              }

              v90 += 7;
              ++v94;
              v15 = v91++ > 8;
            }

            while (!v15);
LABEL_391:
            v92 = 0;
            goto LABEL_753;
          }

          v456 = 0;
          v457 = 0;
          v92 = 0;
          v18 = v87 >= v88;
          v458 = v87 - v88;
          if (!v18)
          {
            v458 = 0;
          }

          v459 = (v89 + v88);
          v460 = v88 + 1;
          while (2)
          {
            if (v458)
            {
              v461 = *v459;
              *(this + 1) = v460;
              v92 |= (v461 & 0x7F) << v456;
              if (v461 < 0)
              {
                v456 += 7;
                --v458;
                ++v459;
                ++v460;
                v15 = v457++ > 8;
                if (v15)
                {
                  goto LABEL_391;
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

LABEL_753:
          *(a1 + 32) = v92;
          goto LABEL_865;
        case 0x3Du:
          *v7 |= 1uLL;
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
                goto LABEL_801;
              }

              v234 += 7;
              ++v238;
              v15 = v235++ > 8;
            }

            while (!v15);
LABEL_519:
            v236 = 0;
            goto LABEL_801;
          }

          v552 = 0;
          v553 = 0;
          v236 = 0;
          v18 = v231 >= v232;
          v554 = v231 - v232;
          if (!v18)
          {
            v554 = 0;
          }

          v555 = (v233 + v232);
          v556 = v232 + 1;
          while (2)
          {
            if (v554)
            {
              v557 = *v555;
              *(this + 1) = v556;
              v236 |= (v557 & 0x7F) << v552;
              if (v557 < 0)
              {
                v552 += 7;
                --v554;
                ++v555;
                ++v556;
                v15 = v553++ > 8;
                if (v15)
                {
                  goto LABEL_519;
                }

                continue;
              }

              if (*(this + 24))
              {
                v236 = 0;
              }
            }

            else
            {
              v236 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_801:
          *(a1 + 8) = v236;
          goto LABEL_865;
        case 0x3Eu:
          *v7 |= 0x40uLL;
          v394 = *(this + 1);
          v393 = *(this + 2);
          v395 = *this;
          if (v394 <= 0xFFFFFFFFFFFFFFF5 && v394 + 10 <= v393)
          {
            v396 = 0;
            v397 = 0;
            v398 = 0;
            v399 = (v395 + v394);
            v400 = v394 + 1;
            do
            {
              *(this + 1) = v400;
              v401 = *v399++;
              v398 |= (v401 & 0x7F) << v396;
              if ((v401 & 0x80) == 0)
              {
                goto LABEL_858;
              }

              v396 += 7;
              ++v400;
              v15 = v397++ > 8;
            }

            while (!v15);
LABEL_671:
            v398 = 0;
            goto LABEL_858;
          }

          v666 = 0;
          v667 = 0;
          v398 = 0;
          v18 = v393 >= v394;
          v668 = v393 - v394;
          if (!v18)
          {
            v668 = 0;
          }

          v669 = (v395 + v394);
          v670 = v394 + 1;
          while (2)
          {
            if (v668)
            {
              v671 = *v669;
              *(this + 1) = v670;
              v398 |= (v671 & 0x7F) << v666;
              if (v671 < 0)
              {
                v666 += 7;
                --v668;
                ++v669;
                ++v670;
                v15 = v667++ > 8;
                if (v15)
                {
                  goto LABEL_671;
                }

                continue;
              }

              if (*(this + 24))
              {
                v398 = 0;
              }
            }

            else
            {
              v398 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_858:
          *(a1 + 56) = v398;
          goto LABEL_865;
        case 0x3Fu:
          *v7 |= 0x100uLL;
          v106 = *(this + 1);
          v105 = *(this + 2);
          v107 = *this;
          if (v106 <= 0xFFFFFFFFFFFFFFF5 && v106 + 10 <= v105)
          {
            v108 = 0;
            v109 = 0;
            v110 = 0;
            v111 = (v107 + v106);
            v112 = v106 + 1;
            do
            {
              *(this + 1) = v112;
              v113 = *v111++;
              v110 |= (v113 & 0x7F) << v108;
              if ((v113 & 0x80) == 0)
              {
                goto LABEL_759;
              }

              v108 += 7;
              ++v112;
              v15 = v109++ > 8;
            }

            while (!v15);
LABEL_407:
            v110 = 0;
            goto LABEL_759;
          }

          v468 = 0;
          v469 = 0;
          v110 = 0;
          v18 = v105 >= v106;
          v470 = v105 - v106;
          if (!v18)
          {
            v470 = 0;
          }

          v471 = (v107 + v106);
          v472 = v106 + 1;
          while (2)
          {
            if (v470)
            {
              v473 = *v471;
              *(this + 1) = v472;
              v110 |= (v473 & 0x7F) << v468;
              if (v473 < 0)
              {
                v468 += 7;
                --v470;
                ++v471;
                ++v472;
                v15 = v469++ > 8;
                if (v15)
                {
                  goto LABEL_407;
                }

                continue;
              }

              if (*(this + 24))
              {
                v110 = 0;
              }
            }

            else
            {
              v110 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_759:
          *(a1 + 72) = v110;
          goto LABEL_865;
        case 0x40u:
          *v7 |= 0x10uLL;
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
                goto LABEL_795;
              }

              v216 += 7;
              ++v220;
              v15 = v217++ > 8;
            }

            while (!v15);
LABEL_503:
            v218 = 0;
            goto LABEL_795;
          }

          v540 = 0;
          v541 = 0;
          v218 = 0;
          v18 = v213 >= v214;
          v542 = v213 - v214;
          if (!v18)
          {
            v542 = 0;
          }

          v543 = (v215 + v214);
          v544 = v214 + 1;
          while (2)
          {
            if (v542)
            {
              v545 = *v543;
              *(this + 1) = v544;
              v218 |= (v545 & 0x7F) << v540;
              if (v545 < 0)
              {
                v540 += 7;
                --v542;
                ++v543;
                ++v544;
                v15 = v541++ > 8;
                if (v15)
                {
                  goto LABEL_503;
                }

                continue;
              }

              if (*(this + 24))
              {
                v218 = 0;
              }
            }

            else
            {
              v218 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_795:
          *(a1 + 40) = v218;
          goto LABEL_865;
        case 0x41u:
          *v7 |= 0x200uLL;
          v142 = *(this + 1);
          v141 = *(this + 2);
          v143 = *this;
          if (v142 <= 0xFFFFFFFFFFFFFFF5 && v142 + 10 <= v141)
          {
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v147 = (v143 + v142);
            v148 = v142 + 1;
            do
            {
              *(this + 1) = v148;
              v149 = *v147++;
              v146 |= (v149 & 0x7F) << v144;
              if ((v149 & 0x80) == 0)
              {
                goto LABEL_771;
              }

              v144 += 7;
              ++v148;
              v15 = v145++ > 8;
            }

            while (!v15);
LABEL_439:
            v146 = 0;
            goto LABEL_771;
          }

          v492 = 0;
          v493 = 0;
          v146 = 0;
          v18 = v141 >= v142;
          v494 = v141 - v142;
          if (!v18)
          {
            v494 = 0;
          }

          v495 = (v143 + v142);
          v496 = v142 + 1;
          while (2)
          {
            if (v494)
            {
              v497 = *v495;
              *(this + 1) = v496;
              v146 |= (v497 & 0x7F) << v492;
              if (v497 < 0)
              {
                v492 += 7;
                --v494;
                ++v495;
                ++v496;
                v15 = v493++ > 8;
                if (v15)
                {
                  goto LABEL_439;
                }

                continue;
              }

              if (*(this + 24))
              {
                v146 = 0;
              }
            }

            else
            {
              v146 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_771:
          *(a1 + 80) = v146;
          goto LABEL_865;
        case 0x42u:
          *v7 |= 0x400uLL;
          v286 = *(this + 1);
          v285 = *(this + 2);
          v287 = *this;
          if (v286 <= 0xFFFFFFFFFFFFFFF5 && v286 + 10 <= v285)
          {
            v288 = 0;
            v289 = 0;
            v290 = 0;
            v291 = (v287 + v286);
            v292 = v286 + 1;
            do
            {
              *(this + 1) = v292;
              v293 = *v291++;
              v290 |= (v293 & 0x7F) << v288;
              if ((v293 & 0x80) == 0)
              {
                goto LABEL_822;
              }

              v288 += 7;
              ++v292;
              v15 = v289++ > 8;
            }

            while (!v15);
LABEL_575:
            v290 = 0;
            goto LABEL_822;
          }

          v594 = 0;
          v595 = 0;
          v290 = 0;
          v18 = v285 >= v286;
          v596 = v285 - v286;
          if (!v18)
          {
            v596 = 0;
          }

          v597 = (v287 + v286);
          v598 = v286 + 1;
          while (2)
          {
            if (v596)
            {
              v599 = *v597;
              *(this + 1) = v598;
              v290 |= (v599 & 0x7F) << v594;
              if (v599 < 0)
              {
                v594 += 7;
                --v596;
                ++v597;
                ++v598;
                v15 = v595++ > 8;
                if (v15)
                {
                  goto LABEL_575;
                }

                continue;
              }

              if (*(this + 24))
              {
                v290 = 0;
              }
            }

            else
            {
              v290 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_822:
          *(a1 + 88) = v290;
          goto LABEL_865;
        case 0x43u:
          *v7 |= 0x800uLL;
          v124 = *(this + 1);
          v123 = *(this + 2);
          v125 = *this;
          if (v124 <= 0xFFFFFFFFFFFFFFF5 && v124 + 10 <= v123)
          {
            v126 = 0;
            v127 = 0;
            v128 = 0;
            v129 = (v125 + v124);
            v130 = v124 + 1;
            do
            {
              *(this + 1) = v130;
              v131 = *v129++;
              v128 |= (v131 & 0x7F) << v126;
              if ((v131 & 0x80) == 0)
              {
                goto LABEL_765;
              }

              v126 += 7;
              ++v130;
              v15 = v127++ > 8;
            }

            while (!v15);
LABEL_423:
            v128 = 0;
            goto LABEL_765;
          }

          v480 = 0;
          v481 = 0;
          v128 = 0;
          v18 = v123 >= v124;
          v482 = v123 - v124;
          if (!v18)
          {
            v482 = 0;
          }

          v483 = (v125 + v124);
          v484 = v124 + 1;
          while (2)
          {
            if (v482)
            {
              v485 = *v483;
              *(this + 1) = v484;
              v128 |= (v485 & 0x7F) << v480;
              if (v485 < 0)
              {
                v480 += 7;
                --v482;
                ++v483;
                ++v484;
                v15 = v481++ > 8;
                if (v15)
                {
                  goto LABEL_423;
                }

                continue;
              }

              if (*(this + 24))
              {
                v128 = 0;
              }
            }

            else
            {
              v128 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_765:
          *(a1 + 96) = v128;
          goto LABEL_865;
        case 0x44u:
          *v7 |= 0x4000uLL;
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
                goto LABEL_750;
              }

              v80 += 7;
              ++v84;
              v15 = v81++ > 8;
            }

            while (!v15);
LABEL_383:
            v82 = 0;
            goto LABEL_750;
          }

          v450 = 0;
          v451 = 0;
          v82 = 0;
          v18 = v77 >= v78;
          v452 = v77 - v78;
          if (!v18)
          {
            v452 = 0;
          }

          v453 = (v79 + v78);
          v454 = v78 + 1;
          while (2)
          {
            if (v452)
            {
              v455 = *v453;
              *(this + 1) = v454;
              v82 |= (v455 & 0x7F) << v450;
              if (v455 < 0)
              {
                v450 += 7;
                --v452;
                ++v453;
                ++v454;
                v15 = v451++ > 8;
                if (v15)
                {
                  goto LABEL_383;
                }

                continue;
              }

              if (*(this + 24))
              {
                v82 = 0;
              }
            }

            else
            {
              v82 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_750:
          *(a1 + 120) = v82;
          goto LABEL_865;
        case 0x45u:
          *v7 |= 2uLL;
          v403 = *(this + 1);
          v402 = *(this + 2);
          v404 = *this;
          if (v403 <= 0xFFFFFFFFFFFFFFF5 && v403 + 10 <= v402)
          {
            v405 = 0;
            v406 = 0;
            v407 = 0;
            v408 = (v404 + v403);
            v409 = v403 + 1;
            do
            {
              *(this + 1) = v409;
              v410 = *v408++;
              v407 |= (v410 & 0x7F) << v405;
              if ((v410 & 0x80) == 0)
              {
                goto LABEL_861;
              }

              v405 += 7;
              ++v409;
              v15 = v406++ > 8;
            }

            while (!v15);
LABEL_679:
            v407 = 0;
            goto LABEL_861;
          }

          v672 = 0;
          v673 = 0;
          v407 = 0;
          v18 = v402 >= v403;
          v674 = v402 - v403;
          if (!v18)
          {
            v674 = 0;
          }

          v675 = (v404 + v403);
          v676 = v403 + 1;
          while (2)
          {
            if (v674)
            {
              v677 = *v675;
              *(this + 1) = v676;
              v407 |= (v677 & 0x7F) << v672;
              if (v677 < 0)
              {
                v672 += 7;
                --v674;
                ++v675;
                ++v676;
                v15 = v673++ > 8;
                if (v15)
                {
                  goto LABEL_679;
                }

                continue;
              }

              if (*(this + 24))
              {
                v407 = 0;
              }
            }

            else
            {
              v407 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_861:
          *(a1 + 16) = v407;
          goto LABEL_865;
        case 0x46u:
          *v7 |= 0x8000uLL;
          v169 = *(this + 1);
          v168 = *(this + 2);
          v170 = *this;
          if (v169 <= 0xFFFFFFFFFFFFFFF5 && v169 + 10 <= v168)
          {
            v171 = 0;
            v172 = 0;
            v173 = 0;
            v174 = (v170 + v169);
            v175 = v169 + 1;
            do
            {
              *(this + 1) = v175;
              v176 = *v174++;
              v173 |= (v176 & 0x7F) << v171;
              if ((v176 & 0x80) == 0)
              {
                goto LABEL_780;
              }

              v171 += 7;
              ++v175;
              v15 = v172++ > 8;
            }

            while (!v15);
LABEL_463:
            v173 = 0;
            goto LABEL_780;
          }

          v510 = 0;
          v511 = 0;
          v173 = 0;
          v18 = v168 >= v169;
          v512 = v168 - v169;
          if (!v18)
          {
            v512 = 0;
          }

          v513 = (v170 + v169);
          v514 = v169 + 1;
          while (2)
          {
            if (v512)
            {
              v515 = *v513;
              *(this + 1) = v514;
              v173 |= (v515 & 0x7F) << v510;
              if (v515 < 0)
              {
                v510 += 7;
                --v512;
                ++v513;
                ++v514;
                v15 = v511++ > 8;
                if (v15)
                {
                  goto LABEL_463;
                }

                continue;
              }

              if (*(this + 24))
              {
                v173 = 0;
              }
            }

            else
            {
              v173 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_780:
          *(a1 + 128) = v173;
          goto LABEL_865;
        case 0x47u:
          *v7 |= 0x800000000uLL;
          v196 = *(this + 1);
          v195 = *(this + 2);
          v197 = *this;
          if (v196 <= 0xFFFFFFFFFFFFFFF5 && v196 + 10 <= v195)
          {
            v198 = 0;
            v199 = 0;
            v200 = 0;
            v201 = (v197 + v196);
            v202 = v196 + 1;
            do
            {
              *(this + 1) = v202;
              v203 = *v201++;
              v200 |= (v203 & 0x7F) << v198;
              if ((v203 & 0x80) == 0)
              {
                goto LABEL_789;
              }

              v198 += 7;
              ++v202;
              v15 = v199++ > 8;
            }

            while (!v15);
LABEL_487:
            v200 = 0;
            goto LABEL_789;
          }

          v528 = 0;
          v529 = 0;
          v200 = 0;
          v18 = v195 >= v196;
          v530 = v195 - v196;
          if (!v18)
          {
            v530 = 0;
          }

          v531 = (v197 + v196);
          v532 = v196 + 1;
          while (2)
          {
            if (v530)
            {
              v533 = *v531;
              *(this + 1) = v532;
              v200 |= (v533 & 0x7F) << v528;
              if (v533 < 0)
              {
                v528 += 7;
                --v530;
                ++v531;
                ++v532;
                v15 = v529++ > 8;
                if (v15)
                {
                  goto LABEL_487;
                }

                continue;
              }

              if (*(this + 24))
              {
                v200 = 0;
              }
            }

            else
            {
              v200 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_789:
          *(a1 + 288) = v200;
          goto LABEL_865;
        case 0x48u:
          *v7 |= 0x400000000uLL;
          v304 = *(this + 1);
          v303 = *(this + 2);
          v305 = *this;
          if (v304 <= 0xFFFFFFFFFFFFFFF5 && v304 + 10 <= v303)
          {
            v306 = 0;
            v307 = 0;
            v308 = 0;
            v309 = (v305 + v304);
            v310 = v304 + 1;
            do
            {
              *(this + 1) = v310;
              v311 = *v309++;
              v308 |= (v311 & 0x7F) << v306;
              if ((v311 & 0x80) == 0)
              {
                goto LABEL_828;
              }

              v306 += 7;
              ++v310;
              v15 = v307++ > 8;
            }

            while (!v15);
LABEL_591:
            v308 = 0;
            goto LABEL_828;
          }

          v606 = 0;
          v607 = 0;
          v308 = 0;
          v18 = v303 >= v304;
          v608 = v303 - v304;
          if (!v18)
          {
            v608 = 0;
          }

          v609 = (v305 + v304);
          v610 = v304 + 1;
          while (2)
          {
            if (v608)
            {
              v611 = *v609;
              *(this + 1) = v610;
              v308 |= (v611 & 0x7F) << v606;
              if (v611 < 0)
              {
                v606 += 7;
                --v608;
                ++v609;
                ++v610;
                v15 = v607++ > 8;
                if (v15)
                {
                  goto LABEL_591;
                }

                continue;
              }

              if (*(this + 24))
              {
                v308 = 0;
              }
            }

            else
            {
              v308 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_828:
          *(a1 + 280) = v308;
          goto LABEL_865;
        case 0x49u:
          *v7 |= 0x200000000uLL;
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
                goto LABEL_792;
              }

              v207 += 7;
              ++v211;
              v15 = v208++ > 8;
            }

            while (!v15);
LABEL_495:
            v209 = 0;
            goto LABEL_792;
          }

          v534 = 0;
          v535 = 0;
          v209 = 0;
          v18 = v204 >= v205;
          v536 = v204 - v205;
          if (!v18)
          {
            v536 = 0;
          }

          v537 = (v206 + v205);
          v538 = v205 + 1;
          while (2)
          {
            if (v536)
            {
              v539 = *v537;
              *(this + 1) = v538;
              v209 |= (v539 & 0x7F) << v534;
              if (v539 < 0)
              {
                v534 += 7;
                --v536;
                ++v537;
                ++v538;
                v15 = v535++ > 8;
                if (v15)
                {
                  goto LABEL_495;
                }

                continue;
              }

              if (*(this + 24))
              {
                v209 = 0;
              }
            }

            else
            {
              v209 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_792:
          *(a1 + 272) = v209;
          goto LABEL_865;
        case 0x4Au:
          *v7 |= 0x100000000uLL;
          v42 = *(this + 1);
          v41 = *(this + 2);
          v43 = *this;
          if (v42 <= 0xFFFFFFFFFFFFFFF5 && v42 + 10 <= v41)
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v47 = (v43 + v42);
            v48 = v42 + 1;
            do
            {
              *(this + 1) = v48;
              v49 = *v47++;
              v46 |= (v49 & 0x7F) << v44;
              if ((v49 & 0x80) == 0)
              {
                goto LABEL_738;
              }

              v44 += 7;
              ++v48;
              v15 = v45++ > 8;
            }

            while (!v15);
LABEL_351:
            v46 = 0;
            goto LABEL_738;
          }

          v426 = 0;
          v427 = 0;
          v46 = 0;
          v18 = v41 >= v42;
          v428 = v41 - v42;
          if (!v18)
          {
            v428 = 0;
          }

          v429 = (v43 + v42);
          v430 = v42 + 1;
          while (2)
          {
            if (v428)
            {
              v431 = *v429;
              *(this + 1) = v430;
              v46 |= (v431 & 0x7F) << v426;
              if (v431 < 0)
              {
                v426 += 7;
                --v428;
                ++v429;
                ++v430;
                v15 = v427++ > 8;
                if (v15)
                {
                  goto LABEL_351;
                }

                continue;
              }

              if (*(this + 24))
              {
                v46 = 0;
              }
            }

            else
            {
              v46 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_738:
          *(a1 + 264) = v46;
          goto LABEL_865;
        case 0x51u:
          *v7 |= 0x20000000uLL;
          v97 = *(this + 1);
          v96 = *(this + 2);
          v98 = *this;
          if (v97 <= 0xFFFFFFFFFFFFFFF5 && v97 + 10 <= v96)
          {
            v99 = 0;
            v100 = 0;
            v101 = 0;
            v102 = (v98 + v97);
            v103 = v97 + 1;
            do
            {
              *(this + 1) = v103;
              v104 = *v102++;
              v101 |= (v104 & 0x7F) << v99;
              if ((v104 & 0x80) == 0)
              {
                goto LABEL_756;
              }

              v99 += 7;
              ++v103;
              v15 = v100++ > 8;
            }

            while (!v15);
LABEL_399:
            v101 = 0;
            goto LABEL_756;
          }

          v462 = 0;
          v463 = 0;
          v101 = 0;
          v18 = v96 >= v97;
          v464 = v96 - v97;
          if (!v18)
          {
            v464 = 0;
          }

          v465 = (v98 + v97);
          v466 = v97 + 1;
          while (2)
          {
            if (v464)
            {
              v467 = *v465;
              *(this + 1) = v466;
              v101 |= (v467 & 0x7F) << v462;
              if (v467 < 0)
              {
                v462 += 7;
                --v464;
                ++v465;
                ++v466;
                v15 = v463++ > 8;
                if (v15)
                {
                  goto LABEL_399;
                }

                continue;
              }

              if (*(this + 24))
              {
                v101 = 0;
              }
            }

            else
            {
              v101 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_756:
          *(a1 + 240) = v101;
          goto LABEL_865;
        case 0x52u:
          *v7 |= 0x10000000uLL;
          v358 = *(this + 1);
          v357 = *(this + 2);
          v359 = *this;
          if (v358 <= 0xFFFFFFFFFFFFFFF5 && v358 + 10 <= v357)
          {
            v360 = 0;
            v361 = 0;
            v362 = 0;
            v363 = (v359 + v358);
            v364 = v358 + 1;
            do
            {
              *(this + 1) = v364;
              v365 = *v363++;
              v362 |= (v365 & 0x7F) << v360;
              if ((v365 & 0x80) == 0)
              {
                goto LABEL_846;
              }

              v360 += 7;
              ++v364;
              v15 = v361++ > 8;
            }

            while (!v15);
LABEL_639:
            v362 = 0;
            goto LABEL_846;
          }

          v642 = 0;
          v643 = 0;
          v362 = 0;
          v18 = v357 >= v358;
          v644 = v357 - v358;
          if (!v18)
          {
            v644 = 0;
          }

          v645 = (v359 + v358);
          v646 = v358 + 1;
          while (2)
          {
            if (v644)
            {
              v647 = *v645;
              *(this + 1) = v646;
              v362 |= (v647 & 0x7F) << v642;
              if (v647 < 0)
              {
                v642 += 7;
                --v644;
                ++v645;
                ++v646;
                v15 = v643++ > 8;
                if (v15)
                {
                  goto LABEL_639;
                }

                continue;
              }

              if (*(this + 24))
              {
                v362 = 0;
              }
            }

            else
            {
              v362 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_846:
          *(a1 + 232) = v362;
          goto LABEL_865;
        case 0x53u:
          *v7 |= 0x2000uLL;
          v412 = *(this + 1);
          v411 = *(this + 2);
          v413 = *this;
          if (v412 <= 0xFFFFFFFFFFFFFFF5 && v412 + 10 <= v411)
          {
            v414 = 0;
            v415 = 0;
            v416 = 0;
            v417 = (v413 + v412);
            v418 = v412 + 1;
            do
            {
              *(this + 1) = v418;
              v419 = *v417++;
              v416 |= (v419 & 0x7F) << v414;
              if ((v419 & 0x80) == 0)
              {
                goto LABEL_864;
              }

              v414 += 7;
              ++v418;
              v15 = v415++ > 8;
            }

            while (!v15);
LABEL_687:
            v416 = 0;
            goto LABEL_864;
          }

          v678 = 0;
          v679 = 0;
          v416 = 0;
          v18 = v411 >= v412;
          v680 = v411 - v412;
          if (!v18)
          {
            v680 = 0;
          }

          v681 = (v413 + v412);
          v682 = v412 + 1;
          while (2)
          {
            if (v680)
            {
              v683 = *v681;
              *(this + 1) = v682;
              v416 |= (v683 & 0x7F) << v678;
              if (v683 < 0)
              {
                v678 += 7;
                --v680;
                ++v681;
                ++v682;
                v15 = v679++ > 8;
                if (v15)
                {
                  goto LABEL_687;
                }

                continue;
              }

              if (*(this + 24))
              {
                v416 = 0;
              }
            }

            else
            {
              v416 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_864:
          *(a1 + 112) = v416;
          goto LABEL_865;
        case 0x54u:
          *v7 |= 0x10000uLL;
          v69 = *(this + 1);
          v68 = *(this + 2);
          v70 = *this;
          if (v69 <= 0xFFFFFFFFFFFFFFF5 && v69 + 10 <= v68)
          {
            v71 = 0;
            v72 = 0;
            v73 = 0;
            v74 = (v70 + v69);
            v75 = v69 + 1;
            do
            {
              *(this + 1) = v75;
              v76 = *v74++;
              v73 |= (v76 & 0x7F) << v71;
              if ((v76 & 0x80) == 0)
              {
                goto LABEL_747;
              }

              v71 += 7;
              ++v75;
              v15 = v72++ > 8;
            }

            while (!v15);
LABEL_375:
            v73 = 0;
            goto LABEL_747;
          }

          v444 = 0;
          v445 = 0;
          v73 = 0;
          v18 = v68 >= v69;
          v446 = v68 - v69;
          if (!v18)
          {
            v446 = 0;
          }

          v447 = (v70 + v69);
          v448 = v69 + 1;
          while (2)
          {
            if (v446)
            {
              v449 = *v447;
              *(this + 1) = v448;
              v73 |= (v449 & 0x7F) << v444;
              if (v449 < 0)
              {
                v444 += 7;
                --v446;
                ++v447;
                ++v448;
                v15 = v445++ > 8;
                if (v15)
                {
                  goto LABEL_375;
                }

                continue;
              }

              if (*(this + 24))
              {
                v73 = 0;
              }
            }

            else
            {
              v73 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_747:
          *(a1 + 136) = v73;
          goto LABEL_865;
        case 0x55u:
          *v7 |= 4uLL;
          v295 = *(this + 1);
          v294 = *(this + 2);
          v296 = *this;
          if (v295 <= 0xFFFFFFFFFFFFFFF5 && v295 + 10 <= v294)
          {
            v297 = 0;
            v298 = 0;
            v299 = 0;
            v300 = (v296 + v295);
            v301 = v295 + 1;
            do
            {
              *(this + 1) = v301;
              v302 = *v300++;
              v299 |= (v302 & 0x7F) << v297;
              if ((v302 & 0x80) == 0)
              {
                goto LABEL_825;
              }

              v297 += 7;
              ++v301;
              v15 = v298++ > 8;
            }

            while (!v15);
LABEL_583:
            v299 = 0;
            goto LABEL_825;
          }

          v600 = 0;
          v601 = 0;
          v299 = 0;
          v18 = v294 >= v295;
          v602 = v294 - v295;
          if (!v18)
          {
            v602 = 0;
          }

          v603 = (v296 + v295);
          v604 = v295 + 1;
          while (2)
          {
            if (v602)
            {
              v605 = *v603;
              *(this + 1) = v604;
              v299 |= (v605 & 0x7F) << v600;
              if (v605 < 0)
              {
                v600 += 7;
                --v602;
                ++v603;
                ++v604;
                v15 = v601++ > 8;
                if (v15)
                {
                  goto LABEL_583;
                }

                continue;
              }

              if (*(this + 24))
              {
                v299 = 0;
              }
            }

            else
            {
              v299 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_825:
          *(a1 + 24) = v299;
          goto LABEL_865;
        case 0x56u:
          *v7 |= 0x40000uLL;
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
                goto LABEL_744;
              }

              v62 += 7;
              ++v66;
              v15 = v63++ > 8;
            }

            while (!v15);
LABEL_367:
            v64 = 0;
            goto LABEL_744;
          }

          v438 = 0;
          v439 = 0;
          v64 = 0;
          v18 = v59 >= v60;
          v440 = v59 - v60;
          if (!v18)
          {
            v440 = 0;
          }

          v441 = (v61 + v60);
          v442 = v60 + 1;
          while (2)
          {
            if (v440)
            {
              v443 = *v441;
              *(this + 1) = v442;
              v64 |= (v443 & 0x7F) << v438;
              if (v443 < 0)
              {
                v438 += 7;
                --v440;
                ++v441;
                ++v442;
                v15 = v439++ > 8;
                if (v15)
                {
                  goto LABEL_367;
                }

                continue;
              }

              if (*(this + 24))
              {
                v64 = 0;
              }
            }

            else
            {
              v64 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_744:
          *(a1 + 152) = v64;
          goto LABEL_865;
        case 0x57u:
          *v7 |= 0x20000uLL;
          v51 = *(this + 1);
          v50 = *(this + 2);
          v52 = *this;
          if (v51 <= 0xFFFFFFFFFFFFFFF5 && v51 + 10 <= v50)
          {
            v53 = 0;
            v54 = 0;
            v55 = 0;
            v56 = (v52 + v51);
            v57 = v51 + 1;
            do
            {
              *(this + 1) = v57;
              v58 = *v56++;
              v55 |= (v58 & 0x7F) << v53;
              if ((v58 & 0x80) == 0)
              {
                goto LABEL_741;
              }

              v53 += 7;
              ++v57;
              v15 = v54++ > 8;
            }

            while (!v15);
LABEL_359:
            v55 = 0;
            goto LABEL_741;
          }

          v432 = 0;
          v433 = 0;
          v55 = 0;
          v18 = v50 >= v51;
          v434 = v50 - v51;
          if (!v18)
          {
            v434 = 0;
          }

          v435 = (v52 + v51);
          v436 = v51 + 1;
          while (2)
          {
            if (v434)
            {
              v437 = *v435;
              *(this + 1) = v436;
              v55 |= (v437 & 0x7F) << v432;
              if (v437 < 0)
              {
                v432 += 7;
                --v434;
                ++v435;
                ++v436;
                v15 = v433++ > 8;
                if (v15)
                {
                  goto LABEL_359;
                }

                continue;
              }

              if (*(this + 24))
              {
                v55 = 0;
              }
            }

            else
            {
              v55 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_741:
          *(a1 + 144) = v55;
          goto LABEL_865;
        case 0x58u:
          *v7 |= 0x80uLL;
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
                goto LABEL_774;
              }

              v153 += 7;
              ++v157;
              v15 = v154++ > 8;
            }

            while (!v15);
LABEL_447:
            v155 = 0;
            goto LABEL_774;
          }

          v498 = 0;
          v499 = 0;
          v155 = 0;
          v18 = v150 >= v151;
          v500 = v150 - v151;
          if (!v18)
          {
            v500 = 0;
          }

          v501 = (v152 + v151);
          v502 = v151 + 1;
          while (2)
          {
            if (v500)
            {
              v503 = *v501;
              *(this + 1) = v502;
              v155 |= (v503 & 0x7F) << v498;
              if (v503 < 0)
              {
                v498 += 7;
                --v500;
                ++v501;
                ++v502;
                v15 = v499++ > 8;
                if (v15)
                {
                  goto LABEL_447;
                }

                continue;
              }

              if (*(this + 24))
              {
                v155 = 0;
              }
            }

            else
            {
              v155 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_774:
          *(a1 + 64) = v155;
          goto LABEL_865;
        case 0x59u:
          *v7 |= 0x1000uLL;
          v259 = *(this + 1);
          v258 = *(this + 2);
          v260 = *this;
          if (v259 <= 0xFFFFFFFFFFFFFFF5 && v259 + 10 <= v258)
          {
            v261 = 0;
            v262 = 0;
            v263 = 0;
            v264 = (v260 + v259);
            v265 = v259 + 1;
            do
            {
              *(this + 1) = v265;
              v266 = *v264++;
              v263 |= (v266 & 0x7F) << v261;
              if ((v266 & 0x80) == 0)
              {
                goto LABEL_810;
              }

              v261 += 7;
              ++v265;
              v15 = v262++ > 8;
            }

            while (!v15);
LABEL_543:
            v263 = 0;
            goto LABEL_810;
          }

          v570 = 0;
          v571 = 0;
          v263 = 0;
          v18 = v258 >= v259;
          v572 = v258 - v259;
          if (!v18)
          {
            v572 = 0;
          }

          v573 = (v260 + v259);
          v574 = v259 + 1;
          while (2)
          {
            if (v572)
            {
              v575 = *v573;
              *(this + 1) = v574;
              v263 |= (v575 & 0x7F) << v570;
              if (v575 < 0)
              {
                v570 += 7;
                --v572;
                ++v573;
                ++v574;
                v15 = v571++ > 8;
                if (v15)
                {
                  goto LABEL_543;
                }

                continue;
              }

              if (*(this + 24))
              {
                v263 = 0;
              }
            }

            else
            {
              v263 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_810:
          *(a1 + 104) = v263;
          goto LABEL_865;
        case 0x64u:
          *v7 |= 0x4000000000uLL;
          v385 = *(this + 1);
          v384 = *(this + 2);
          v386 = *this;
          if (v385 <= 0xFFFFFFFFFFFFFFF5 && v385 + 10 <= v384)
          {
            v387 = 0;
            v388 = 0;
            v389 = 0;
            v390 = (v386 + v385);
            v391 = v385 + 1;
            do
            {
              *(this + 1) = v391;
              v392 = *v390++;
              v389 |= (v392 & 0x7F) << v387;
              if ((v392 & 0x80) == 0)
              {
                goto LABEL_855;
              }

              v387 += 7;
              ++v391;
              v15 = v388++ > 8;
            }

            while (!v15);
LABEL_663:
            v389 = 0;
            goto LABEL_855;
          }

          v660 = 0;
          v661 = 0;
          v389 = 0;
          v18 = v384 >= v385;
          v662 = v384 - v385;
          if (!v18)
          {
            v662 = 0;
          }

          v663 = (v386 + v385);
          v664 = v385 + 1;
          while (2)
          {
            if (v662)
            {
              v665 = *v663;
              *(this + 1) = v664;
              v389 |= (v665 & 0x7F) << v660;
              if (v665 < 0)
              {
                v660 += 7;
                --v662;
                ++v663;
                ++v664;
                v15 = v661++ > 8;
                if (v15)
                {
                  goto LABEL_663;
                }

                continue;
              }

              if (*(this + 24))
              {
                v389 = 0;
              }
            }

            else
            {
              v389 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_855:
          *(a1 + 312) = v389;
          goto LABEL_865;
        case 0x65u:
          *v7 |= 0x1000000000uLL;
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
                goto LABEL_735;
              }

              v35 += 7;
              ++v39;
              v15 = v36++ > 8;
            }

            while (!v15);
LABEL_343:
            v37 = 0;
            goto LABEL_735;
          }

          v420 = 0;
          v421 = 0;
          v37 = 0;
          v18 = v32 >= v33;
          v422 = v32 - v33;
          if (!v18)
          {
            v422 = 0;
          }

          v423 = (v34 + v33);
          v424 = v33 + 1;
          break;
        case 0x66u:
          *v7 |= 0x2000000000uLL;
          v86 = *(this + 1);
          if (v86 <= 0xFFFFFFFFFFFFFFF7 && v86 + 8 <= *(this + 2))
          {
            *(a1 + 304) = *(*this + v86);
            *(this + 1) += 8;
          }

          else
          {
            *(this + 24) = 1;
          }

          goto LABEL_865;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_865;
          }

          v685 = 0;
          return v685 & 1;
      }

      while (1)
      {
        if (!v422)
        {
          v37 = 0;
          *(this + 24) = 1;
          goto LABEL_735;
        }

        v425 = *v423;
        *(this + 1) = v424;
        v37 |= (v425 & 0x7F) << v420;
        if ((v425 & 0x80) == 0)
        {
          break;
        }

        v420 += 7;
        --v422;
        ++v423;
        ++v424;
        v15 = v421++ > 8;
        if (v15)
        {
          goto LABEL_343;
        }
      }

      if (*(this + 24))
      {
        v37 = 0;
      }

LABEL_735:
      *(a1 + 296) = v37;
LABEL_865:
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

LABEL_869:
  v685 = v4 ^ 1;
  return v685 & 1;
}