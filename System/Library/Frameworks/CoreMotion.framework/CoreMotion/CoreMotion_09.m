double sub_19B491C9C(void *a1)
{
  *a1 = &unk_1F0E2F6C8;
  result = 0.0;
  a1[2] = 0;
  *(a1 + 28) = 0;
  return result;
}

void sub_19B491CCC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B491D04(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "eventTag");
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
  PB::TextFormatter::format(this, "from");
  v5 = *(a1 + 32);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = *(a1 + 24);
  PB::TextFormatter::format(this, "location");
  v5 = *(a1 + 32);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 32) & 0x10) != 0)
  {
LABEL_6:
    v6 = *(a1 + 28);
    PB::TextFormatter::format(this, "to");
  }

LABEL_7:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B491DE8(uint64_t a1, PB::Reader *this)
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

          goto LABEL_114;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 8u;
          v31 = *(this + 1);
          v2 = *(this + 2);
          v32 = *this;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v76 = 0;
            v77 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(this + 1);
            }

            v78 = v2 - v31;
            v79 = (v32 + v31);
            v80 = v31 + 1;
            while (1)
            {
              if (!v78)
              {
                LODWORD(v35) = 0;
                *(this + 24) = 1;
                goto LABEL_113;
              }

              v81 = v80;
              v82 = *v79;
              *(this + 1) = v81;
              v35 |= (v82 & 0x7F) << v76;
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
                LODWORD(v35) = 0;
                goto LABEL_112;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_112:
            v2 = v81;
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

LABEL_113:
          *(a1 + 24) = v35;
          goto LABEL_114;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 32) |= 4u;
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
                  goto LABEL_101;
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
                  goto LABEL_100;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_100:
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

LABEL_101:
            *(a1 + 20) = v43;
            goto LABEL_114;
          case 4:
            *(a1 + 32) |= 2u;
            v47 = *(this + 1);
            v2 = *(this + 2);
            v48 = *this;
            if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
            {
              v62 = 0;
              v63 = 0;
              v51 = 0;
              if (v2 <= v47)
              {
                v2 = *(this + 1);
              }

              v64 = v2 - v47;
              v65 = (v48 + v47);
              v66 = v47 + 1;
              while (1)
              {
                if (!v64)
                {
                  LODWORD(v51) = 0;
                  *(this + 24) = 1;
                  goto LABEL_105;
                }

                v67 = v66;
                v68 = *v65;
                *(this + 1) = v67;
                v51 |= (v68 & 0x7F) << v62;
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
                  LODWORD(v51) = 0;
                  goto LABEL_104;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v51) = 0;
              }

LABEL_104:
              v2 = v67;
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

LABEL_105:
            *(a1 + 16) = v51;
            goto LABEL_114;
          case 5:
            *(a1 + 32) |= 0x10u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v69 = 0;
              v70 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v71 = v2 - v23;
              v72 = (v24 + v23);
              v73 = v23 + 1;
              while (1)
              {
                if (!v71)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_109;
                }

                v74 = v73;
                v75 = *v72;
                *(this + 1) = v74;
                v27 |= (v75 & 0x7F) << v69;
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
                  LODWORD(v27) = 0;
                  goto LABEL_108;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_108:
              v2 = v74;
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

LABEL_109:
            *(a1 + 28) = v27;
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

uint64_t sub_19B4923E0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 32);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = *(v3 + 16);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 32) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  v6 = *(v3 + 20);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v8 = *(v3 + 28);

  return PB::Writer::writeVarInt(this);
}

double sub_19B4924A4(uint64_t a1)
{
  *a1 = &unk_1F0E2DF60;
  *(a1 + 124) = 0;
  *(a1 + 132) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

void sub_19B4924EC(uint64_t a1)
{
  *a1 = &unk_1F0E2DF60;
  v6 = (a1 + 96);
  sub_19B4C4D80(&v6);
  v6 = (a1 + 72);
  sub_19B4C4D80(&v6);
  v2 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    *(a1 + 40) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    *(a1 + 16) = v5;
    operator delete(v5);
  }

  PB::Base::~Base(a1);
}

void sub_19B4925DC(uint64_t a1)
{
  sub_19B4924EC(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B492614(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "baseline");
  }

  if (*(a1 + 132))
  {
    v6 = *(a1 + 120);
    PB::TextFormatter::format(this, "location");
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    (*(*v7 + 32))(v7, this, "minimum");
  }

  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, this, "optical");
  }

  v11 = *(a1 + 132);
  if ((v11 & 4) != 0)
  {
    v22 = *(a1 + 128);
    PB::TextFormatter::format(this, "ringBufferUpdated");
    v11 = *(a1 + 132);
    if ((v11 & 8) == 0)
    {
LABEL_11:
      if ((v11 & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a1 + 132) & 8) == 0)
  {
    goto LABEL_11;
  }

  v23 = *(a1 + 129);
  PB::TextFormatter::format(this, "runningMinAccepted");
  if ((*(a1 + 132) & 2) != 0)
  {
LABEL_12:
    v12 = *(a1 + 124);
    PB::TextFormatter::format(this, "state");
  }

LABEL_13:
  v13 = *(a1 + 96);
  v14 = *(a1 + 104);
  while (v13 != v14)
  {
    v15 = *v13++;
    (*(*v15 + 32))(v15, this, "temp");
  }

  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  while (v16 != v17)
  {
    v18 = *v16++;
    PB::TextFormatter::format(this, "tilt", v18);
  }

  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  while (v19 != v20)
  {
    v21 = *v19++;
    PB::TextFormatter::format(this, "tip", v21);
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B492844(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) > 5)
      {
        if (v23 <= 7)
        {
          if (v23 == 6)
          {
            operator new();
          }

          if (v23 == 7)
          {
            operator new();
          }
        }

        else
        {
          switch(v23)
          {
            case 8:
              *(a1 + 132) |= 8u;
              v58 = *(this + 1);
              if (v58 >= *(this + 2))
              {
                v61 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v59 = v58 + 1;
                v60 = *(*this + v58);
                *(this + 1) = v59;
                v61 = v60 != 0;
              }

              *(a1 + 129) = v61;
              goto LABEL_74;
            case 9:
              *(a1 + 132) |= 4u;
              v78 = *(this + 1);
              if (v78 >= *(this + 2))
              {
                v81 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v79 = v78 + 1;
                v80 = *(*this + v78);
                *(this + 1) = v79;
                v81 = v80 != 0;
              }

              *(a1 + 128) = v81;
              goto LABEL_74;
            case 0xA:
              sub_19B493154();
          }
        }
      }

      else if (v23 <= 2)
      {
        if (v23 == 1)
        {
          *(a1 + 132) |= 1u;
          v50 = *(this + 1);
          v49 = *(this + 2);
          v51 = *this;
          if (v50 > 0xFFFFFFFFFFFFFFF5 || v50 + 10 > v49)
          {
            v88 = 0;
            v89 = 0;
            v54 = 0;
            v17 = v49 >= v50;
            v90 = v49 - v50;
            if (!v17)
            {
              v90 = 0;
            }

            v91 = (v51 + v50);
            v92 = v50 + 1;
            while (1)
            {
              if (!v90)
              {
                LODWORD(v54) = 0;
                *(this + 24) = 1;
                goto LABEL_151;
              }

              v93 = *v91;
              *(this + 1) = v92;
              v54 |= (v93 & 0x7F) << v88;
              if ((v93 & 0x80) == 0)
              {
                break;
              }

              v88 += 7;
              --v90;
              ++v91;
              ++v92;
              v14 = v89++ > 8;
              if (v14)
              {
LABEL_118:
                LODWORD(v54) = 0;
                goto LABEL_151;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v54) = 0;
            }
          }

          else
          {
            v52 = 0;
            v53 = 0;
            v54 = 0;
            v55 = (v51 + v50);
            v56 = v50 + 1;
            while (1)
            {
              *(this + 1) = v56;
              v57 = *v55++;
              v54 |= (v57 & 0x7F) << v52;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              ++v56;
              v14 = v53++ > 8;
              if (v14)
              {
                goto LABEL_118;
              }
            }
          }

LABEL_151:
          *(a1 + 120) = v54;
          goto LABEL_74;
        }

        if (v23 == 2)
        {
          *(a1 + 132) |= 2u;
          v41 = *(this + 1);
          v40 = *(this + 2);
          v42 = *this;
          if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v40)
          {
            v82 = 0;
            v83 = 0;
            v45 = 0;
            v17 = v40 >= v41;
            v84 = v40 - v41;
            if (!v17)
            {
              v84 = 0;
            }

            v85 = (v42 + v41);
            v86 = v41 + 1;
            while (1)
            {
              if (!v84)
              {
                LODWORD(v45) = 0;
                *(this + 24) = 1;
                goto LABEL_148;
              }

              v87 = *v85;
              *(this + 1) = v86;
              v45 |= (v87 & 0x7F) << v82;
              if ((v87 & 0x80) == 0)
              {
                break;
              }

              v82 += 7;
              --v84;
              ++v85;
              ++v86;
              v14 = v83++ > 8;
              if (v14)
              {
LABEL_110:
                LODWORD(v45) = 0;
                goto LABEL_148;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v45) = 0;
            }
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
                goto LABEL_110;
              }
            }
          }

LABEL_148:
          *(a1 + 124) = v45;
          goto LABEL_74;
        }
      }

      else
      {
        switch(v23)
        {
          case 3:
            sub_19B48E17C();
          case 4:
            if (v22 != 2)
            {
              v98 = *(a1 + 40);
              v97 = *(a1 + 48);
              if (v98 >= v97)
              {
                v105 = *(a1 + 32);
                v106 = v98 - v105;
                v107 = (v98 - v105) >> 2;
                v108 = v107 + 1;
                if ((v107 + 1) >> 62)
                {
LABEL_166:
                  sub_19B5BE690();
                }

                v109 = v97 - v105;
                if (v109 >> 1 > v108)
                {
                  v108 = v109 >> 1;
                }

                if (v109 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v110 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v110 = v108;
                }

                if (v110)
                {
                  sub_19B4C4FA8(a1 + 32, v110);
                }

                v115 = (v98 - v105) >> 2;
                v116 = (4 * v107);
                v117 = (4 * v107 - 4 * v115);
                *v116 = 0;
                v96 = v116 + 1;
                memcpy(v117, v105, v106);
                v118 = *(a1 + 32);
                *(a1 + 32) = v117;
                *(a1 + 40) = v96;
                *(a1 + 48) = 0;
                if (v118)
                {
                  operator delete(v118);
                }
              }

              else
              {
                *v98 = 0;
                v96 = v98 + 4;
              }

              *(a1 + 40) = v96;
              goto LABEL_158;
            }

            if (PB::Reader::placeMark())
            {
              goto LABEL_165;
            }

            v62 = *(this + 1);
            v63 = *(this + 2);
            while (v62 < v63 && (*(this + 24) & 1) == 0)
            {
              v65 = *(a1 + 40);
              v64 = *(a1 + 48);
              if (v65 >= v64)
              {
                v67 = *(a1 + 32);
                v68 = v65 - v67;
                v69 = (v65 - v67) >> 2;
                v70 = v69 + 1;
                if ((v69 + 1) >> 62)
                {
                  goto LABEL_166;
                }

                v71 = v64 - v67;
                if (v71 >> 1 > v70)
                {
                  v70 = v71 >> 1;
                }

                if (v71 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v72 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v72 = v70;
                }

                if (v72)
                {
                  sub_19B4C4FA8(a1 + 32, v72);
                }

                v73 = (v65 - v67) >> 2;
                v74 = (4 * v69);
                v75 = (4 * v69 - 4 * v73);
                *v74 = 0;
                v66 = v74 + 1;
                memcpy(v75, v67, v68);
                v76 = *(a1 + 32);
                *(a1 + 32) = v75;
                *(a1 + 40) = v66;
                *(a1 + 48) = 0;
                if (v76)
                {
                  operator delete(v76);
                }
              }

              else
              {
                *v65 = 0;
                v66 = v65 + 4;
              }

              *(a1 + 40) = v66;
              v77 = *(this + 1);
              if (v77 > 0xFFFFFFFFFFFFFFFBLL || v77 + 4 > *(this + 2))
              {
LABEL_127:
                *(this + 24) = 1;
                goto LABEL_73;
              }

              *(v66 - 1) = *(*this + v77);
              v63 = *(this + 2);
              v62 = *(this + 1) + 4;
              *(this + 1) = v62;
            }

            goto LABEL_73;
          case 5:
            if (v22 != 2)
            {
              v95 = *(a1 + 16);
              v94 = *(a1 + 24);
              if (v95 >= v94)
              {
                v99 = *(a1 + 8);
                v100 = v95 - v99;
                v101 = (v95 - v99) >> 2;
                v102 = v101 + 1;
                if ((v101 + 1) >> 62)
                {
                  goto LABEL_166;
                }

                v103 = v94 - v99;
                if (v103 >> 1 > v102)
                {
                  v102 = v103 >> 1;
                }

                if (v103 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v104 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v104 = v102;
                }

                if (v104)
                {
                  sub_19B4C4FA8(a1 + 8, v104);
                }

                v111 = (v95 - v99) >> 2;
                v112 = (4 * v101);
                v113 = (4 * v101 - 4 * v111);
                *v112 = 0;
                v96 = v112 + 1;
                memcpy(v113, v99, v100);
                v114 = *(a1 + 8);
                *(a1 + 8) = v113;
                *(a1 + 16) = v96;
                *(a1 + 24) = 0;
                if (v114)
                {
                  operator delete(v114);
                }
              }

              else
              {
                *v95 = 0;
                v96 = v95 + 4;
              }

              *(a1 + 16) = v96;
LABEL_158:
              v119 = *(this + 1);
              if (v119 <= 0xFFFFFFFFFFFFFFFBLL && v119 + 4 <= *(this + 2))
              {
                *(v96 - 1) = *(*this + v119);
                *(this + 1) += 4;
              }

              else
              {
                *(this + 24) = 1;
              }

              goto LABEL_74;
            }

            if (PB::Reader::placeMark())
            {
              goto LABEL_165;
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
                  goto LABEL_166;
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
                goto LABEL_127;
              }

              *(v28 - 1) = *(*this + v39);
              v25 = *(this + 2);
              v24 = *(this + 1) + 4;
              *(this + 1) = v24;
            }

LABEL_73:
            PB::Reader::recallMark();
            goto LABEL_74;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_165:
        v120 = 0;
        return v120 & 1;
      }

LABEL_74:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v120 = v4 ^ 1;
  return v120 & 1;
}

uint64_t sub_19B4932A0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 132);
  if (v4)
  {
    v5 = *(result + 120);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 132);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 124);
    result = PB::Writer::writeVarInt(this);
  }

  v7 = *(v3 + 72);
  v8 = *(v3 + 80);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::writeSubmessage(this, v9);
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

  v16 = *(v3 + 64);
  if (v16)
  {
    result = PB::Writer::writeSubmessage(this, v16);
  }

  v17 = *(v3 + 56);
  if (v17)
  {
    result = PB::Writer::writeSubmessage(this, v17);
  }

  v18 = *(v3 + 132);
  if ((v18 & 8) != 0)
  {
    v19 = *(v3 + 129);
    result = PB::Writer::write(this);
    v18 = *(v3 + 132);
  }

  if ((v18 & 4) != 0)
  {
    v20 = *(v3 + 128);
    result = PB::Writer::write(this);
  }

  v22 = *(v3 + 96);
  v21 = *(v3 + 104);
  while (v22 != v21)
  {
    v23 = *v22++;
    result = PB::Writer::writeSubmessage(this, v23);
  }

  return result;
}

uint64_t sub_19B4933D4(uint64_t result)
{
  *result = &unk_1F0E38788;
  *(result + 68) = 0;
  return result;
}

void sub_19B4933FC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B493434(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "deltaPositionX", *(a1 + 16));
    v5 = *(a1 + 68);
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

  PB::TextFormatter::format(this, "deltaPositionY", *(a1 + 20));
  v5 = *(a1 + 68);
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
  PB::TextFormatter::format(this, "deltaPositionZ", *(a1 + 24));
  v5 = *(a1 + 68);
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
  PB::TextFormatter::format(this, "deltaVelocityX", *(a1 + 28));
  v5 = *(a1 + 68);
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
  PB::TextFormatter::format(this, "deltaVelocityY", *(a1 + 32));
  v5 = *(a1 + 68);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "deltaVelocityZ", *(a1 + 36));
  v5 = *(a1 + 68);
  if ((v5 & 0x2000) == 0)
  {
LABEL_8:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v6 = *(a1 + 64);
  PB::TextFormatter::format(this, "isBIO");
  v5 = *(a1 + 68);
  if ((v5 & 0x4000) == 0)
  {
LABEL_9:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v7 = *(a1 + 65);
  PB::TextFormatter::format(this, "isDOTBiasChangePossible");
  v5 = *(a1 + 68);
  if ((v5 & 0x8000) == 0)
  {
LABEL_10:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v8 = *(a1 + 66);
  PB::TextFormatter::format(this, "isMounted");
  v5 = *(a1 + 68);
  if ((v5 & 0x10000) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v9 = *(a1 + 67);
  PB::TextFormatter::format(this, "isZUPT");
  v5 = *(a1 + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "quaternionW", *(a1 + 40));
  v5 = *(a1 + 68);
  if ((v5 & 0x100) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "quaternionX", *(a1 + 44));
  v5 = *(a1 + 68);
  if ((v5 & 0x200) == 0)
  {
LABEL_14:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "quaternionY", *(a1 + 48));
  v5 = *(a1 + 68);
  if ((v5 & 0x400) == 0)
  {
LABEL_15:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "quaternionZ", *(a1 + 52));
  v5 = *(a1 + 68);
  if ((v5 & 0x800) == 0)
  {
LABEL_16:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v10 = *(a1 + 56);
  PB::TextFormatter::format(this, "referenceFrame");
  v5 = *(a1 + 68);
  if ((v5 & 0x1000) == 0)
  {
LABEL_17:
    if ((v5 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  v11 = *(a1 + 60);
  PB::TextFormatter::format(this, "staticFlag");
  if (*(a1 + 68))
  {
LABEL_18:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_19:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B493698(uint64_t a1, PB::Reader *this)
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
          *(a1 + 68) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_106;
        case 2u:
          *(a1 + 68) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_105;
        case 3u:
          *(a1 + 68) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_105;
        case 4u:
          *(a1 + 68) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_105;
        case 5u:
          *(a1 + 68) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_105;
        case 6u:
          *(a1 + 68) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_105;
        case 7u:
          *(a1 + 68) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_105;
        case 8u:
          *(a1 + 68) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_105;
        case 9u:
          *(a1 + 68) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_105;
        case 0xAu:
          *(a1 + 68) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_105;
        case 0xBu:
          *(a1 + 68) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_79:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 40) = *(*this + v2);
LABEL_105:
            v2 = *(this + 1) + 4;
LABEL_106:
            *(this + 1) = v2;
          }

          goto LABEL_117;
        case 0xCu:
          *(a1 + 68) |= 0x800u;
          v26 = *(this + 1);
          v2 = *(this + 2);
          v27 = *this;
          if (v26 > 0xFFFFFFFFFFFFFFF5 || v26 + 10 > v2)
          {
            v46 = 0;
            v47 = 0;
            v30 = 0;
            if (v2 <= v26)
            {
              v2 = *(this + 1);
            }

            v48 = v2 - v26;
            v49 = (v27 + v26);
            v50 = v26 + 1;
            while (1)
            {
              if (!v48)
              {
                LODWORD(v30) = 0;
                *(this + 24) = 1;
                goto LABEL_112;
              }

              v51 = v50;
              v52 = *v49;
              *(this + 1) = v51;
              v30 |= (v52 & 0x7F) << v46;
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
                LODWORD(v30) = 0;
LABEL_111:
                v2 = v51;
                goto LABEL_112;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v30) = 0;
            }

            goto LABEL_111;
          }

          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = (v27 + v26);
          v32 = v26 + 1;
          do
          {
            v2 = v32;
            *(this + 1) = v32;
            v33 = *v31++;
            v30 |= (v33 & 0x7F) << v28;
            if ((v33 & 0x80) == 0)
            {
              goto LABEL_112;
            }

            v28 += 7;
            ++v32;
            v14 = v29++ > 8;
          }

          while (!v14);
          LODWORD(v30) = 0;
LABEL_112:
          *(a1 + 56) = v30;
          goto LABEL_117;
        case 0xDu:
          *(a1 + 68) |= 0x1000u;
          v34 = *(this + 1);
          v2 = *(this + 2);
          v35 = *this;
          if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v2)
          {
            v53 = 0;
            v54 = 0;
            v38 = 0;
            if (v2 <= v34)
            {
              v2 = *(this + 1);
            }

            v55 = v2 - v34;
            v56 = (v35 + v34);
            v57 = v34 + 1;
            while (1)
            {
              if (!v55)
              {
                LODWORD(v38) = 0;
                *(this + 24) = 1;
                goto LABEL_116;
              }

              v58 = v57;
              v59 = *v56;
              *(this + 1) = v58;
              v38 |= (v59 & 0x7F) << v53;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              --v55;
              ++v56;
              v57 = v58 + 1;
              v14 = v54++ > 8;
              if (v14)
              {
                LODWORD(v38) = 0;
LABEL_115:
                v2 = v58;
                goto LABEL_116;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v38) = 0;
            }

            goto LABEL_115;
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
              goto LABEL_116;
            }

            v36 += 7;
            ++v40;
            v14 = v37++ > 8;
          }

          while (!v14);
          LODWORD(v38) = 0;
LABEL_116:
          *(a1 + 60) = v38;
          goto LABEL_117;
        case 0xEu:
          *(a1 + 68) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v45 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v44 = *(*this + v2++);
            *(this + 1) = v2;
            v45 = v44 != 0;
          }

          *(a1 + 64) = v45;
          goto LABEL_117;
        case 0xFu:
          *(a1 + 68) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v25 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v24 = *(*this + v2++);
            *(this + 1) = v2;
            v25 = v24 != 0;
          }

          *(a1 + 65) = v25;
          goto LABEL_117;
        case 0x10u:
          *(a1 + 68) |= 0x8000u;
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

          *(a1 + 66) = v43;
          goto LABEL_117;
        case 0x11u:
          *(a1 + 68) |= 0x10000u;
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

          *(a1 + 67) = v23;
          goto LABEL_117;
        default:
          if (!PB::Reader::skip(this))
          {
            v60 = 0;
            return v60 & 1;
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
  v60 = v4 ^ 1;
  return v60 & 1;
}

uint64_t sub_19B493DCC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 68);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 68);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 68);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 68);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 68);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 68);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 68);
  if ((v4 & 0x400) == 0)
  {
LABEL_11:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 68);
  if ((v4 & 0x80) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 68);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v5 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x1000) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v6 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x2000) == 0)
  {
LABEL_15:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  v7 = *(v3 + 64);
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x4000) == 0)
  {
LABEL_16:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    v9 = *(v3 + 66);
    result = PB::Writer::write(this);
    if ((*(v3 + 68) & 0x10000) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

LABEL_33:
  v8 = *(v3 + 65);
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x8000) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v4 & 0x10000) == 0)
  {
    return result;
  }

LABEL_35:
  v10 = *(v3 + 67);

  return PB::Writer::write(this);
}

double sub_19B493FE0(uint64_t a1)
{
  *a1 = &unk_1F0E387C0;
  *(a1 + 88) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

void sub_19B49401C(PB::Base *this)
{
  *this = &unk_1F0E387C0;
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

void sub_19B4940A0(PB::Base *a1)
{
  sub_19B49401C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4940D8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "historicalMeanSeaLevelPressure", v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "historicalTimestamp", v10);
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "historicalUncertainty", v13);
  }

  if (*(a1 + 88))
  {
    PB::TextFormatter::format(this, "refreshTime", *(a1 + 80));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4941CC(uint64_t a1, PB::Reader *this)
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
        goto LABEL_142;
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
        goto LABEL_142;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        break;
      }

      if (v23 == 3)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
LABEL_144:
            v111 = 0;
            return v111 & 1;
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
              v64 = (v60 - v62) >> 3;
              v65 = v64 + 1;
              if ((v64 + 1) >> 61)
              {
                goto LABEL_145;
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
                sub_19B4C50F0(a1 + 56, v67);
              }

              v68 = (v60 - v62) >> 3;
              v69 = (8 * v64);
              v70 = (8 * v64 - 8 * v68);
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
              v61 = v60 + 8;
            }

            *(a1 + 64) = v61;
            v72 = *(this + 1);
            if (v72 > 0xFFFFFFFFFFFFFFF7 || v72 + 8 > *(this + 2))
            {
LABEL_98:
              *(this + 24) = 1;
              goto LABEL_99;
            }

            *(v61 - 1) = *(*this + v72);
            v58 = *(this + 2);
            v57 = *(this + 1) + 8;
            *(this + 1) = v57;
          }

          goto LABEL_99;
        }

        v79 = *(a1 + 64);
        v78 = *(a1 + 72);
        if (v79 >= v78)
        {
          v92 = *(a1 + 56);
          v93 = v79 - v92;
          v94 = (v79 - v92) >> 3;
          v95 = v94 + 1;
          if ((v94 + 1) >> 61)
          {
LABEL_145:
            sub_19B5BE690();
          }

          v96 = v78 - v92;
          if (v96 >> 2 > v95)
          {
            v95 = v96 >> 2;
          }

          if (v96 >= 0x7FFFFFFFFFFFFFF8)
          {
            v97 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v97 = v95;
          }

          if (v97)
          {
            sub_19B4C50F0(a1 + 56, v97);
          }

          v106 = (v79 - v92) >> 3;
          v107 = (8 * v94);
          v108 = (8 * v94 - 8 * v106);
          *v107 = 0;
          v75 = v107 + 1;
          memcpy(v108, v92, v93);
          v109 = *(a1 + 56);
          *(a1 + 56) = v108;
          *(a1 + 64) = v75;
          *(a1 + 72) = 0;
          if (v109)
          {
            operator delete(v109);
          }
        }

        else
        {
          *v79 = 0;
          v75 = v79 + 8;
        }

        *(a1 + 64) = v75;
LABEL_133:
        v110 = *(this + 1);
        if (v110 > 0xFFFFFFFFFFFFFFF7 || v110 + 8 > *(this + 2))
        {
          goto LABEL_135;
        }

        *(v75 - 1) = *(*this + v110);
        goto LABEL_137;
      }

      if (v23 != 4)
      {
LABEL_50:
        if ((PB::Reader::skip(this) & 1) == 0)
        {
          goto LABEL_144;
        }

        goto LABEL_138;
      }

      *(a1 + 88) |= 1u;
      v40 = *(this + 1);
      if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(this + 2))
      {
LABEL_135:
        *(this + 24) = 1;
        goto LABEL_138;
      }

      *(a1 + 80) = *(*this + v40);
LABEL_137:
      *(this + 1) += 8;
LABEL_138:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_142;
      }
    }

    if (v23 == 1)
    {
      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_144;
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
            v48 = (v44 - v46) >> 3;
            v49 = v48 + 1;
            if ((v48 + 1) >> 61)
            {
              goto LABEL_145;
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
              sub_19B4C50F0(a1 + 32, v51);
            }

            v52 = (v44 - v46) >> 3;
            v53 = (8 * v48);
            v54 = (8 * v48 - 8 * v52);
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
            v45 = v44 + 8;
          }

          *(a1 + 40) = v45;
          v56 = *(this + 1);
          if (v56 > 0xFFFFFFFFFFFFFFF7 || v56 + 8 > *(this + 2))
          {
            goto LABEL_98;
          }

          *(v45 - 1) = *(*this + v56);
          v42 = *(this + 2);
          v41 = *(this + 1) + 8;
          *(this + 1) = v41;
        }

        goto LABEL_99;
      }

      v77 = *(a1 + 40);
      v76 = *(a1 + 48);
      if (v77 >= v76)
      {
        v86 = *(a1 + 32);
        v87 = v77 - v86;
        v88 = (v77 - v86) >> 3;
        v89 = v88 + 1;
        if ((v88 + 1) >> 61)
        {
          goto LABEL_145;
        }

        v90 = v76 - v86;
        if (v90 >> 2 > v89)
        {
          v89 = v90 >> 2;
        }

        if (v90 >= 0x7FFFFFFFFFFFFFF8)
        {
          v91 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v91 = v89;
        }

        if (v91)
        {
          sub_19B4C50F0(a1 + 32, v91);
        }

        v102 = (v77 - v86) >> 3;
        v103 = (8 * v88);
        v104 = (8 * v88 - 8 * v102);
        *v103 = 0;
        v75 = v103 + 1;
        memcpy(v104, v86, v87);
        v105 = *(a1 + 32);
        *(a1 + 32) = v104;
        *(a1 + 40) = v75;
        *(a1 + 48) = 0;
        if (v105)
        {
          operator delete(v105);
        }
      }

      else
      {
        *v77 = 0;
        v75 = v77 + 8;
      }

      *(a1 + 40) = v75;
    }

    else
    {
      if (v23 != 2)
      {
        goto LABEL_50;
      }

      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_144;
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
              goto LABEL_145;
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
            goto LABEL_98;
          }

          *(v28 - 1) = *(*this + v39);
          v25 = *(this + 2);
          v24 = *(this + 1) + 8;
          *(this + 1) = v24;
        }

LABEL_99:
        PB::Reader::recallMark();
        goto LABEL_138;
      }

      v74 = *(a1 + 16);
      v73 = *(a1 + 24);
      if (v74 >= v73)
      {
        v80 = *(a1 + 8);
        v81 = v74 - v80;
        v82 = (v74 - v80) >> 3;
        v83 = v82 + 1;
        if ((v82 + 1) >> 61)
        {
          goto LABEL_145;
        }

        v84 = v73 - v80;
        if (v84 >> 2 > v83)
        {
          v83 = v84 >> 2;
        }

        if (v84 >= 0x7FFFFFFFFFFFFFF8)
        {
          v85 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v85 = v83;
        }

        if (v85)
        {
          sub_19B4C50F0(a1 + 8, v85);
        }

        v98 = (v74 - v80) >> 3;
        v99 = (8 * v82);
        v100 = (8 * v82 - 8 * v98);
        *v99 = 0;
        v75 = v99 + 1;
        memcpy(v100, v80, v81);
        v101 = *(a1 + 8);
        *(a1 + 8) = v100;
        *(a1 + 16) = v75;
        *(a1 + 24) = 0;
        if (v101)
        {
          operator delete(v101);
        }
      }

      else
      {
        *v74 = 0;
        v75 = v74 + 8;
      }

      *(a1 + 16) = v75;
    }

    goto LABEL_133;
  }

LABEL_142:
  v111 = v4 ^ 1;
  return v111 & 1;
}

uint64_t sub_19B494900(uint64_t result, PB::Writer *this)
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

  v10 = *(v3 + 56);
  v11 = *(v3 + 64);
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::write(this, v12);
  }

  if (*(v3 + 88))
  {
    v13 = *(v3 + 80);

    return PB::Writer::write(this, v13);
  }

  return result;
}

void *sub_19B4949C0(void *result)
{
  *result = &unk_1F0E2CA98;
  result[1] = 0;
  return result;
}

void sub_19B4949E0(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2CA98;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B494A60(PB::Base *a1)
{
  sub_19B4949E0(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B494A98(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B494B14(int a1, PB::Reader *this)
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

uint64_t sub_19B494D30(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_19B494D4C(void *result)
{
  *result = &unk_1F0E2D9E8;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_19B494D70(uint64_t a1)
{
  *a1 = &unk_1F0E2D9E8;
  v4 = *(a1 + 24);
  v2 = (a1 + 24);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_19B4C51F4(v2, v3);
  }

  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v5)
  {
    sub_19B4C51F4(a1 + 16, v5);
  }

  sub_19B4C5250((a1 + 8), 0);

  PB::Base::~Base(a1);
}

void sub_19B494DF4(uint64_t a1)
{
  sub_19B494D70(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B494E2C(void *a1, PB::TextFormatter *this, char *a3)
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

  if (a1[3])
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B494EB8(int a1, PB::Reader *this)
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
      if ((v9 >> 3) == 4)
      {
        operator new();
      }

      if (v21 == 3)
      {
        operator new();
      }

      if (v21 == 2)
      {
        operator new();
      }

      if (!PB::Reader::skip(this))
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

uint64_t sub_19B495130(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = PB::Writer::write();
  }

  if (*(v1 + 24))
  {
    result = PB::Writer::write();
  }

  if (*(v1 + 8))
  {

    return PB::Writer::write();
  }

  return result;
}

uint64_t sub_19B4951A8(uint64_t result)
{
  *result = &unk_1F0E2ED98;
  *(result + 20) = 0;
  return result;
}

void sub_19B4951D0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B495208(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if (v5)
  {
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "level");
    v5 = *(a1 + 20);
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

  else if ((*(a1 + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 12);
  PB::TextFormatter::format(this, "threshold");
  if ((*(a1 + 20) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4952AC(uint64_t a1, PB::Reader *this)
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
        *(a1 + 20) |= 2u;
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
        *(a1 + 12) = v35;
      }

      else if (v22 == 2)
      {
        *(a1 + 20) |= 1u;
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
        *(a1 + 8) = v27;
      }

      else if (v22 == 1)
      {
        *(a1 + 20) |= 4u;
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

uint64_t sub_19B495684(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if ((v4 & 4) == 0)
  {
    if ((*(result + 20) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = *(v3 + 8);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 20) & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 16));
  v4 = *(v3 + 20);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_7:
  v6 = *(v3 + 12);

  return PB::Writer::writeVarInt(this);
}

void *sub_19B495710(void *result)
{
  *result = &unk_1F0E2E7E8;
  result[1] = 0;
  return result;
}

void sub_19B495730(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2E7E8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4957B0(PB::Base *a1)
{
  sub_19B495730(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4957E8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B495864(int a1, PB::Reader *this)
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

uint64_t sub_19B495A80(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_19B495A9C(void *result)
{
  *result = &unk_1F0E2C750;
  result[1] = 0;
  return result;
}

void sub_19B495ABC(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2C750;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B495B3C(PB::Base *a1)
{
  sub_19B495ABC(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B495B74(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B495BF0(int a1, PB::Reader *this)
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

uint64_t sub_19B495E0C(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_19B495E28(uint64_t result)
{
  *result = &unk_1F0E2CFD8;
  *(result + 52) = 0;
  return result;
}

void sub_19B495E50(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B495E88(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 52);
  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
    v5 = *(a1 + 52);
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

  PB::TextFormatter::format(this, "timestampPast", *(a1 + 16));
  v5 = *(a1 + 52);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = *(a1 + 48);
  PB::TextFormatter::format(this, "validX");
  v5 = *(a1 + 52);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = *(a1 + 49);
  PB::TextFormatter::format(this, "validY");
  v5 = *(a1 + 52);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a1 + 50);
  PB::TextFormatter::format(this, "validZ");
  v5 = *(a1 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "velocityUncX", *(a1 + 24));
  v5 = *(a1 + 52);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "velocityUncY", *(a1 + 28));
  v5 = *(a1 + 52);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "velocityUncZ", *(a1 + 32));
  v5 = *(a1 + 52);
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
  PB::TextFormatter::format(this, "velocityX", *(a1 + 36));
  v5 = *(a1 + 52);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PB::TextFormatter::format(this, "velocityY", *(a1 + 40));
  if ((*(a1 + 52) & 0x80) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(this, "velocityZ", *(a1 + 44));
  }

LABEL_13:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B49602C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_82;
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
            *(a1 + 52) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_64:
              *(this + 24) = 1;
              goto LABEL_78;
            }

            *(a1 + 8) = *(*this + v2);
LABEL_50:
            v2 = *(this + 1) + 8;
            goto LABEL_77;
          }

          if (v22 == 2)
          {
            *(a1 + 52) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 36) = *(*this + v2);
LABEL_76:
            v2 = *(this + 1) + 4;
LABEL_77:
            *(this + 1) = v2;
            goto LABEL_78;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 52) |= 0x40u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_64;
              }

              *(a1 + 40) = *(*this + v2);
              goto LABEL_76;
            case 4:
              *(a1 + 52) |= 0x80u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_64;
              }

              *(a1 + 44) = *(*this + v2);
              goto LABEL_76;
            case 5:
              *(a1 + 52) |= 4u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_64;
              }

              *(a1 + 24) = *(*this + v2);
              goto LABEL_76;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(a1 + 52) |= 0x200u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v28 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v27 = *(*this + v2++);
              *(this + 1) = v2;
              v28 = v27 != 0;
            }

            *(a1 + 49) = v28;
            goto LABEL_78;
          case 0xA:
            *(a1 + 52) |= 0x400u;
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

            *(a1 + 50) = v26;
            goto LABEL_78;
          case 0xB:
            *(a1 + 52) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_50;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 52) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 28) = *(*this + v2);
            goto LABEL_76;
          case 7:
            *(a1 + 52) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_76;
          case 8:
            *(a1 + 52) |= 0x100u;
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

            *(a1 + 48) = v24;
            goto LABEL_78;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v29 = 0;
        return v29 & 1;
      }

      v2 = *(this + 1);
LABEL_78:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_82:
  v29 = v4 ^ 1;
  return v29 & 1;
}

uint64_t sub_19B4964B0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 52);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 52);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
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

  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 52);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 52);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 52);
  if ((v4 & 4) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 52);
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 52);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v5 = *(v3 + 48);
  result = PB::Writer::write(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v7 = *(v3 + 50);
    result = PB::Writer::write(this);
    if ((*(v3 + 52) & 2) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  v6 = *(v3 + 49);
  result = PB::Writer::write(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_23:
  v8 = *(v3 + 16);

  return PB::Writer::write(this, v8);
}

double sub_19B49661C(uint64_t a1)
{
  *a1 = &unk_1F0E387F8;
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

void sub_19B49665C(PB::Base *this)
{
  *this = &unk_1F0E387F8;
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

void sub_19B4966F0(PB::Base *a1)
{
  sub_19B49665C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B496728(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if ((*(a1 + 140) & 4) != 0)
  {
    v5 = *(a1 + 120);
    PB::TextFormatter::format(this, "armTimeActivityHints");
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "armTimeImuConfidences", v8);
  }

  v9 = *(a1 + 140);
  if ((v9 & 8) != 0)
  {
    PB::TextFormatter::format(this, "sessionBtHintPercentage", *(a1 + 124));
    v9 = *(a1 + 140);
    if ((v9 & 0x10) == 0)
    {
LABEL_7:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(a1 + 140) & 0x10) == 0)
  {
    goto LABEL_7;
  }

  PB::TextFormatter::format(this, "sessionGpsHintPercentage", *(a1 + 128));
  if ((*(a1 + 140) & 0x20) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(this, "sessionImuHintPercentage", *(a1 + 132));
  }

LABEL_9:
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(this, "sessionSwivelAngleDegHistogram");
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  while (v13 != v14)
  {
    v15 = *v13++;
    PB::TextFormatter::format(this, "sessionTiltAngleDegHistogram");
  }

  v16 = *(a1 + 140);
  if ((v16 & 0x40) != 0)
  {
    PB::TextFormatter::format(this, "sessionWifiHintPercentage", *(a1 + 136));
    v16 = *(a1 + 140);
    if ((v16 & 1) == 0)
    {
LABEL_15:
      if ((v16 & 2) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*(a1 + 140) & 1) == 0)
  {
    goto LABEL_15;
  }

  v21 = *(a1 + 104);
  PB::TextFormatter::format(this, "timestamp");
  if ((*(a1 + 140) & 2) != 0)
  {
LABEL_16:
    v17 = *(a1 + 112);
    PB::TextFormatter::format(this, "triggerTimeLastHighImuDrivingConfidenceTimestamp");
  }

LABEL_17:
  v18 = *(a1 + 80);
  v19 = *(a1 + 88);
  while (v18 != v19)
  {
    v20 = *v18++;
    PB::TextFormatter::format(this, "windowAfterArmImuConfidences", v20);
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B496908(uint64_t a1, PB::Reader *this)
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
          v92 = v15++ > 8;
          if (v92)
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
        v92 = v9++ > 8;
        if (v92)
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
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(a1 + 140) |= 1u;
            v51 = *(this + 1);
            v50 = *(this + 2);
            v52 = *this;
            if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v50)
            {
              v139 = 0;
              v140 = 0;
              v55 = 0;
              v16 = v50 >= v51;
              v141 = v50 - v51;
              if (!v16)
              {
                v141 = 0;
              }

              v142 = (v52 + v51);
              v143 = v51 + 1;
              while (1)
              {
                if (!v141)
                {
                  v55 = 0;
                  *(this + 24) = 1;
                  goto LABEL_261;
                }

                v144 = *v142;
                *(this + 1) = v143;
                v55 |= (v144 & 0x7F) << v139;
                if ((v144 & 0x80) == 0)
                {
                  break;
                }

                v139 += 7;
                --v141;
                ++v142;
                ++v143;
                v92 = v140++ > 8;
                if (v92)
                {
LABEL_196:
                  v55 = 0;
                  goto LABEL_261;
                }
              }

              if (*(this + 24))
              {
                v55 = 0;
              }
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
                *(this + 1) = v57;
                v58 = *v56++;
                v55 |= (v58 & 0x7F) << v53;
                if ((v58 & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                ++v57;
                v92 = v54++ > 8;
                if (v92)
                {
                  goto LABEL_196;
                }
              }
            }

LABEL_261:
            *(a1 + 104) = v55;
            goto LABEL_317;
          }

          if (v22 == 2)
          {
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_323;
              }

              v34 = *(this + 1);
              v35 = *(this + 2);
              while (v34 < v35 && (*(this + 24) & 1) == 0)
              {
                v37 = *(a1 + 16);
                v36 = *(a1 + 24);
                if (v37 >= v36)
                {
                  v39 = *(a1 + 8);
                  v40 = v37 - v39;
                  v41 = (v37 - v39) >> 2;
                  v42 = v41 + 1;
                  if ((v41 + 1) >> 62)
                  {
                    goto LABEL_324;
                  }

                  v43 = v36 - v39;
                  if (v43 >> 1 > v42)
                  {
                    v42 = v43 >> 1;
                  }

                  if (v43 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v44 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v44 = v42;
                  }

                  if (v44)
                  {
                    sub_19B4C4FA8(a1 + 8, v44);
                  }

                  v45 = (v37 - v39) >> 2;
                  v46 = (4 * v41);
                  v47 = (4 * v41 - 4 * v45);
                  *v46 = 0;
                  v38 = v46 + 1;
                  memcpy(v47, v39, v40);
                  v48 = *(a1 + 8);
                  *(a1 + 8) = v47;
                  *(a1 + 16) = v38;
                  *(a1 + 24) = 0;
                  if (v48)
                  {
                    operator delete(v48);
                  }
                }

                else
                {
                  *v37 = 0;
                  v38 = v37 + 4;
                }

                *(a1 + 16) = v38;
                v49 = *(this + 1);
                if (v49 > 0xFFFFFFFFFFFFFFFBLL || v49 + 4 > *(this + 2))
                {
LABEL_222:
                  *(this + 24) = 1;
                  break;
                }

                *(v38 - 1) = *(*this + v49);
                v35 = *(this + 2);
                v34 = *(this + 1) + 4;
                *(this + 1) = v34;
              }

LABEL_223:
              PB::Reader::recallMark();
              goto LABEL_317;
            }

            v146 = *(a1 + 16);
            v145 = *(a1 + 24);
            if (v146 >= v145)
            {
              v167 = *(a1 + 8);
              v168 = v146 - v167;
              v169 = (v146 - v167) >> 2;
              v170 = v169 + 1;
              if ((v169 + 1) >> 62)
              {
                goto LABEL_324;
              }

              v171 = v145 - v167;
              if (v171 >> 1 > v170)
              {
                v170 = v171 >> 1;
              }

              if (v171 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v172 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v172 = v170;
              }

              if (v172)
              {
                sub_19B4C4FA8(a1 + 8, v172);
              }

              v191 = (v146 - v167) >> 2;
              v192 = (4 * v169);
              v193 = (4 * v169 - 4 * v191);
              *v192 = 0;
              v147 = v192 + 1;
              memcpy(v193, v167, v168);
              v194 = *(a1 + 8);
              *(a1 + 8) = v193;
              *(a1 + 16) = v147;
              *(a1 + 24) = 0;
              if (v194)
              {
                operator delete(v194);
              }
            }

            else
            {
              *v146 = 0;
              v147 = v146 + 4;
            }

            *(a1 + 16) = v147;
LABEL_274:
            v199 = *(this + 1);
            if (v199 > 0xFFFFFFFFFFFFFFFBLL || v199 + 4 > *(this + 2))
            {
LABEL_276:
              *(this + 24) = 1;
              goto LABEL_317;
            }

            *(v147 - 1) = *(*this + v199);
LABEL_278:
            *(this + 1) += 4;
            goto LABEL_317;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 140) |= 4u;
              v104 = *(this + 1);
              v103 = *(this + 2);
              v105 = *this;
              if (v104 > 0xFFFFFFFFFFFFFFF5 || v104 + 10 > v103)
              {
                v159 = 0;
                v160 = 0;
                v108 = 0;
                v16 = v103 >= v104;
                v161 = v103 - v104;
                if (!v16)
                {
                  v161 = 0;
                }

                v162 = (v105 + v104);
                v163 = v104 + 1;
                while (1)
                {
                  if (!v161)
                  {
                    LODWORD(v108) = 0;
                    *(this + 24) = 1;
                    goto LABEL_267;
                  }

                  v164 = *v162;
                  *(this + 1) = v163;
                  v108 |= (v164 & 0x7F) << v159;
                  if ((v164 & 0x80) == 0)
                  {
                    break;
                  }

                  v159 += 7;
                  --v161;
                  ++v162;
                  ++v163;
                  v92 = v160++ > 8;
                  if (v92)
                  {
LABEL_218:
                    LODWORD(v108) = 0;
                    goto LABEL_267;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v108) = 0;
                }
              }

              else
              {
                v106 = 0;
                v107 = 0;
                v108 = 0;
                v109 = (v105 + v104);
                v110 = v104 + 1;
                while (1)
                {
                  *(this + 1) = v110;
                  v111 = *v109++;
                  v108 |= (v111 & 0x7F) << v106;
                  if ((v111 & 0x80) == 0)
                  {
                    break;
                  }

                  v106 += 7;
                  ++v110;
                  v92 = v107++ > 8;
                  if (v92)
                  {
                    goto LABEL_218;
                  }
                }
              }

LABEL_267:
              *(a1 + 120) = v108;
              goto LABEL_317;
            case 4:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_323;
                }

                v59 = *(this + 1);
                v60 = *(this + 2);
                while (v59 < v60 && (*(this + 24) & 1) == 0)
                {
                  v62 = *(a1 + 88);
                  v61 = *(a1 + 96);
                  if (v62 >= v61)
                  {
                    v64 = *(a1 + 80);
                    v65 = v62 - v64;
                    v66 = (v62 - v64) >> 2;
                    v67 = v66 + 1;
                    if ((v66 + 1) >> 62)
                    {
                      goto LABEL_324;
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
                      sub_19B4C4FA8(a1 + 80, v69);
                    }

                    v70 = (v62 - v64) >> 2;
                    v71 = (4 * v66);
                    v72 = (4 * v66 - 4 * v70);
                    *v71 = 0;
                    v63 = v71 + 1;
                    memcpy(v72, v64, v65);
                    v73 = *(a1 + 80);
                    *(a1 + 80) = v72;
                    *(a1 + 88) = v63;
                    *(a1 + 96) = 0;
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

                  *(a1 + 88) = v63;
                  v74 = *(this + 1);
                  if (v74 > 0xFFFFFFFFFFFFFFFBLL || v74 + 4 > *(this + 2))
                  {
                    goto LABEL_222;
                  }

                  *(v63 - 1) = *(*this + v74);
                  v60 = *(this + 2);
                  v59 = *(this + 1) + 4;
                  *(this + 1) = v59;
                }

                goto LABEL_223;
              }

              v149 = *(a1 + 88);
              v148 = *(a1 + 96);
              if (v149 >= v148)
              {
                v173 = *(a1 + 80);
                v174 = v149 - v173;
                v175 = (v149 - v173) >> 2;
                v176 = v175 + 1;
                if ((v175 + 1) >> 62)
                {
LABEL_324:
                  sub_19B5BE690();
                }

                v177 = v148 - v173;
                if (v177 >> 1 > v176)
                {
                  v176 = v177 >> 1;
                }

                if (v177 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v178 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v178 = v176;
                }

                if (v178)
                {
                  sub_19B4C4FA8(a1 + 80, v178);
                }

                v195 = (v149 - v173) >> 2;
                v196 = (4 * v175);
                v197 = (4 * v175 - 4 * v195);
                *v196 = 0;
                v147 = v196 + 1;
                memcpy(v197, v173, v174);
                v198 = *(a1 + 80);
                *(a1 + 80) = v197;
                *(a1 + 88) = v147;
                *(a1 + 96) = 0;
                if (v198)
                {
                  operator delete(v198);
                }
              }

              else
              {
                *v149 = 0;
                v147 = v149 + 4;
              }

              *(a1 + 88) = v147;
              goto LABEL_274;
            case 5:
              *(a1 + 140) |= 2u;
              v25 = *(this + 1);
              v24 = *(this + 2);
              v26 = *this;
              if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
              {
                v153 = 0;
                v154 = 0;
                v29 = 0;
                v16 = v24 >= v25;
                v155 = v24 - v25;
                if (!v16)
                {
                  v155 = 0;
                }

                v156 = (v26 + v25);
                v157 = v25 + 1;
                while (1)
                {
                  if (!v155)
                  {
                    v29 = 0;
                    *(this + 24) = 1;
                    goto LABEL_264;
                  }

                  v158 = *v156;
                  *(this + 1) = v157;
                  v29 |= (v158 & 0x7F) << v153;
                  if ((v158 & 0x80) == 0)
                  {
                    break;
                  }

                  v153 += 7;
                  --v155;
                  ++v156;
                  ++v157;
                  v92 = v154++ > 8;
                  if (v92)
                  {
LABEL_210:
                    v29 = 0;
                    goto LABEL_264;
                  }
                }

                if (*(this + 24))
                {
                  v29 = 0;
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
                  v92 = v28++ > 8;
                  if (v92)
                  {
                    goto LABEL_210;
                  }
                }
              }

LABEL_264:
              *(a1 + 112) = v29;
              goto LABEL_317;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(a1 + 140) |= 8u;
            v138 = *(this + 1);
            if (v138 > 0xFFFFFFFFFFFFFFFBLL || v138 + 4 > *(this + 2))
            {
              goto LABEL_276;
            }

            *(a1 + 124) = *(*this + v138);
            goto LABEL_278;
          case 0xA:
            *(a1 + 140) |= 0x10u;
            v102 = *(this + 1);
            if (v102 > 0xFFFFFFFFFFFFFFFBLL || v102 + 4 > *(this + 2))
            {
              goto LABEL_276;
            }

            *(a1 + 128) = *(*this + v102);
            goto LABEL_278;
          case 0xB:
            *(a1 + 140) |= 0x40u;
            v33 = *(this + 1);
            if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(this + 2))
            {
              goto LABEL_276;
            }

            *(a1 + 136) = *(*this + v33);
            goto LABEL_278;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_323;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v75 = *(a1 + 40);
                while (1)
                {
                  v112 = *(a1 + 48);
                  if (v75 >= v112)
                  {
                    v113 = *(a1 + 32);
                    v114 = v75 - v113;
                    v115 = (v75 - v113) >> 2;
                    v116 = v115 + 1;
                    if ((v115 + 1) >> 62)
                    {
                      goto LABEL_325;
                    }

                    v117 = v112 - v113;
                    if (v117 >> 1 > v116)
                    {
                      v116 = v117 >> 1;
                    }

                    if (v117 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v118 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v118 = v116;
                    }

                    if (v118)
                    {
                      sub_19B4C4FA8(a1 + 32, v118);
                    }

                    v119 = (v75 - v113) >> 2;
                    v120 = (4 * v115);
                    v121 = (4 * v115 - 4 * v119);
                    *v120 = 0;
                    v75 = (v120 + 1);
                    memcpy(v121, v113, v114);
                    v122 = *(a1 + 32);
                    *(a1 + 32) = v121;
                    *(a1 + 40) = v75;
                    *(a1 + 48) = 0;
                    if (v122)
                    {
                      operator delete(v122);
                    }
                  }

                  else
                  {
                    *v75 = 0;
                    v75 += 4;
                  }

                  *(a1 + 40) = v75;
                  v124 = *(this + 1);
                  v123 = *(this + 2);
                  v125 = *this;
                  v126 = 0;
                  v127 = 0;
                  if (v124 > 0xFFFFFFFFFFFFFFF5 || v124 + 10 > v123)
                  {
                    break;
                  }

                  v134 = 0;
                  v135 = (v125 + v124);
                  v136 = v124 + 1;
                  while (1)
                  {
                    v132 = v136;
                    *(this + 1) = v136;
                    v137 = *v135++;
                    v134 |= (v137 & 0x7F) << v126;
                    if ((v137 & 0x80) == 0)
                    {
                      break;
                    }

                    v126 += 7;
                    ++v136;
                    v92 = v127++ > 8;
                    if (v92)
                    {
                      goto LABEL_178;
                    }
                  }

LABEL_181:
                  *(v75 - 1) = v134;
                  if (v132 >= v123 || (*(this + 24) & 1) != 0)
                  {
                    goto LABEL_223;
                  }
                }

                v134 = 0;
                v129 = v123 - v124;
                if (v123 < v124)
                {
                  v129 = 0;
                }

                v130 = (v125 + v124);
                v131 = v124 + 1;
                while (v129)
                {
                  v132 = v131;
                  v133 = *v130;
                  *(this + 1) = v132;
                  v134 |= (v133 & 0x7F) << v126;
                  if ((v133 & 0x80) == 0)
                  {
                    if (*(this + 24))
                    {
                      LODWORD(v134) = 0;
                    }

                    goto LABEL_181;
                  }

                  v126 += 7;
                  --v129;
                  ++v130;
                  v131 = v132 + 1;
                  v92 = v127++ > 8;
                  if (v92)
                  {
LABEL_178:
                    LODWORD(v134) = 0;
                    goto LABEL_181;
                  }
                }

LABEL_221:
                *(this + 24) = 1;
                *(v75 - 1) = 0;
              }

              goto LABEL_223;
            }

            v166 = *(a1 + 40);
            v165 = *(a1 + 48);
            if (v166 >= v165)
            {
              v185 = *(a1 + 32);
              v186 = v166 - v185;
              v187 = (v166 - v185) >> 2;
              v188 = v187 + 1;
              if ((v187 + 1) >> 62)
              {
LABEL_325:
                sub_19B5BE690();
              }

              v189 = v165 - v185;
              if (v189 >> 1 > v188)
              {
                v188 = v189 >> 1;
              }

              if (v189 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v190 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v190 = v188;
              }

              if (v190)
              {
                sub_19B4C4FA8(a1 + 32, v190);
              }

              v219 = (v166 - v185) >> 2;
              v220 = (4 * v187);
              v221 = (4 * v187 - 4 * v219);
              *v220 = 0;
              v152 = v220 + 1;
              memcpy(v221, v185, v186);
              v222 = *(a1 + 32);
              *(a1 + 32) = v221;
              *(a1 + 40) = v152;
              *(a1 + 48) = 0;
              if (v222)
              {
                operator delete(v222);
              }
            }

            else
            {
              *v166 = 0;
              v152 = v166 + 4;
            }

            *(a1 + 40) = v152;
            v224 = *(this + 1);
            v223 = *(this + 2);
            v225 = *this;
            if (v224 <= 0xFFFFFFFFFFFFFFF5 && v224 + 10 <= v223)
            {
              v226 = 0;
              v227 = 0;
              v209 = 0;
              v228 = (v225 + v224);
              v229 = v224 + 1;
              while (1)
              {
                *(this + 1) = v229;
                v230 = *v228++;
                v209 |= (v230 & 0x7F) << v226;
                if ((v230 & 0x80) == 0)
                {
                  goto LABEL_316;
                }

                v226 += 7;
                ++v229;
                v92 = v227++ > 8;
                if (v92)
                {
                  goto LABEL_312;
                }
              }
            }

            v231 = 0;
            v232 = 0;
            v209 = 0;
            v16 = v223 >= v224;
            v233 = v223 - v224;
            if (!v16)
            {
              v233 = 0;
            }

            v234 = (v225 + v224);
            v235 = v224 + 1;
            while (v233)
            {
              v236 = *v234;
              *(this + 1) = v235;
              v209 |= (v236 & 0x7F) << v231;
              if ((v236 & 0x80) == 0)
              {
LABEL_314:
                if (*(this + 24))
                {
                  LODWORD(v209) = 0;
                }

                goto LABEL_316;
              }

              v231 += 7;
              --v233;
              ++v234;
              ++v235;
              v92 = v232++ > 8;
              if (v92)
              {
LABEL_312:
                LODWORD(v209) = 0;
                goto LABEL_316;
              }
            }

            goto LABEL_313;
          case 7:
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_323;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v75 = *(a1 + 64);
                do
                {
                  v76 = *(a1 + 72);
                  if (v75 >= v76)
                  {
                    v77 = *(a1 + 56);
                    v78 = v75 - v77;
                    v79 = (v75 - v77) >> 2;
                    v80 = v79 + 1;
                    if ((v79 + 1) >> 62)
                    {
                      goto LABEL_325;
                    }

                    v81 = v76 - v77;
                    if (v81 >> 1 > v80)
                    {
                      v80 = v81 >> 1;
                    }

                    if (v81 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v82 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v82 = v80;
                    }

                    if (v82)
                    {
                      sub_19B4C4FA8(a1 + 56, v82);
                    }

                    v83 = (v75 - v77) >> 2;
                    v84 = (4 * v79);
                    v85 = (4 * v79 - 4 * v83);
                    *v84 = 0;
                    v75 = (v84 + 1);
                    memcpy(v85, v77, v78);
                    v86 = *(a1 + 56);
                    *(a1 + 56) = v85;
                    *(a1 + 64) = v75;
                    *(a1 + 72) = 0;
                    if (v86)
                    {
                      operator delete(v86);
                    }
                  }

                  else
                  {
                    *v75 = 0;
                    v75 += 4;
                  }

                  *(a1 + 64) = v75;
                  v88 = *(this + 1);
                  v87 = *(this + 2);
                  v89 = *this;
                  v90 = 0;
                  v91 = 0;
                  v92 = v88 > 0xFFFFFFFFFFFFFFF5 || v88 + 10 > v87;
                  if (v92)
                  {
                    v98 = 0;
                    v93 = v87 - v88;
                    if (v87 < v88)
                    {
                      v93 = 0;
                    }

                    v94 = (v89 + v88);
                    v95 = v88 + 1;
                    while (1)
                    {
                      if (!v93)
                      {
                        goto LABEL_221;
                      }

                      v96 = v95;
                      v97 = *v94;
                      *(this + 1) = v96;
                      v98 |= (v97 & 0x7F) << v90;
                      if ((v97 & 0x80) == 0)
                      {
                        break;
                      }

                      v90 += 7;
                      --v93;
                      ++v94;
                      v95 = v96 + 1;
                      v92 = v91++ > 8;
                      if (v92)
                      {
LABEL_129:
                        LODWORD(v98) = 0;
                        goto LABEL_132;
                      }
                    }

                    if (*(this + 24))
                    {
                      LODWORD(v98) = 0;
                    }
                  }

                  else
                  {
                    v98 = 0;
                    v99 = (v89 + v88);
                    v100 = v88 + 1;
                    while (1)
                    {
                      v96 = v100;
                      *(this + 1) = v100;
                      v101 = *v99++;
                      v98 |= (v101 & 0x7F) << v90;
                      if ((v101 & 0x80) == 0)
                      {
                        break;
                      }

                      v90 += 7;
                      ++v100;
                      v92 = v91++ > 8;
                      if (v92)
                      {
                        goto LABEL_129;
                      }
                    }
                  }

LABEL_132:
                  *(v75 - 1) = v98;
                }

                while (v96 < v87 && (*(this + 24) & 1) == 0);
              }

              goto LABEL_223;
            }

            v151 = *(a1 + 64);
            v150 = *(a1 + 72);
            if (v151 >= v150)
            {
              v179 = *(a1 + 56);
              v180 = v151 - v179;
              v181 = (v151 - v179) >> 2;
              v182 = v181 + 1;
              if ((v181 + 1) >> 62)
              {
                goto LABEL_325;
              }

              v183 = v150 - v179;
              if (v183 >> 1 > v182)
              {
                v182 = v183 >> 1;
              }

              if (v183 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v184 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v184 = v182;
              }

              if (v184)
              {
                sub_19B4C4FA8(a1 + 56, v184);
              }

              v200 = (v151 - v179) >> 2;
              v201 = (4 * v181);
              v202 = (4 * v181 - 4 * v200);
              *v201 = 0;
              v152 = v201 + 1;
              memcpy(v202, v179, v180);
              v203 = *(a1 + 56);
              *(a1 + 56) = v202;
              *(a1 + 64) = v152;
              *(a1 + 72) = 0;
              if (v203)
              {
                operator delete(v203);
              }
            }

            else
            {
              *v151 = 0;
              v152 = v151 + 4;
            }

            *(a1 + 64) = v152;
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
              while (1)
              {
                *(this + 1) = v211;
                v212 = *v210++;
                v209 |= (v212 & 0x7F) << v207;
                if ((v212 & 0x80) == 0)
                {
                  goto LABEL_316;
                }

                v207 += 7;
                ++v211;
                v92 = v208++ > 8;
                if (v92)
                {
                  goto LABEL_312;
                }
              }
            }

            v213 = 0;
            v214 = 0;
            v209 = 0;
            v16 = v204 >= v205;
            v215 = v204 - v205;
            if (!v16)
            {
              v215 = 0;
            }

            v216 = (v206 + v205);
            v217 = v205 + 1;
            while (v215)
            {
              v218 = *v216;
              *(this + 1) = v217;
              v209 |= (v218 & 0x7F) << v213;
              if ((v218 & 0x80) == 0)
              {
                goto LABEL_314;
              }

              v213 += 7;
              --v215;
              ++v216;
              ++v217;
              v92 = v214++ > 8;
              if (v92)
              {
                goto LABEL_312;
              }
            }

LABEL_313:
            LODWORD(v209) = 0;
            *(this + 24) = 1;
LABEL_316:
            *(v152 - 1) = v209;
            goto LABEL_317;
          case 8:
            *(a1 + 140) |= 0x20u;
            v23 = *(this + 1);
            if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(this + 2))
            {
              goto LABEL_276;
            }

            *(a1 + 132) = *(*this + v23);
            goto LABEL_278;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_323:
        v237 = 0;
        return v237 & 1;
      }

LABEL_317:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v237 = v4 ^ 1;
  return v237 & 1;
}

uint64_t sub_19B4978B0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 140))
  {
    v4 = *(result + 104);
    result = PB::Writer::writeVarInt(this);
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  if ((*(v3 + 140) & 4) != 0)
  {
    v8 = *(v3 + 120);
    result = PB::Writer::writeVarInt(this);
  }

  v9 = *(v3 + 80);
  v10 = *(v3 + 88);
  while (v9 != v10)
  {
    v11 = *v9++;
    result = PB::Writer::write(this, v11);
  }

  if ((*(v3 + 140) & 2) != 0)
  {
    v12 = *(v3 + 112);
    result = PB::Writer::writeVarInt(this);
  }

  v13 = *(v3 + 32);
  v14 = *(v3 + 40);
  while (v13 != v14)
  {
    v15 = *v13++;
    result = PB::Writer::writeVarInt(this);
  }

  v16 = *(v3 + 56);
  v17 = *(v3 + 64);
  while (v16 != v17)
  {
    v18 = *v16++;
    result = PB::Writer::writeVarInt(this);
  }

  v19 = *(v3 + 140);
  if ((v19 & 0x20) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 132));
    v19 = *(v3 + 140);
    if ((v19 & 8) == 0)
    {
LABEL_21:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_22;
      }

LABEL_26:
      result = PB::Writer::write(this, *(v3 + 128));
      if ((*(v3 + 140) & 0x40) == 0)
      {
        return result;
      }

      goto LABEL_27;
    }
  }

  else if ((*(v3 + 140) & 8) == 0)
  {
    goto LABEL_21;
  }

  result = PB::Writer::write(this, *(v3 + 124));
  v19 = *(v3 + 140);
  if ((v19 & 0x10) != 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  if ((v19 & 0x40) == 0)
  {
    return result;
  }

LABEL_27:
  v20 = *(v3 + 136);

  return PB::Writer::write(this, v20);
}

double sub_19B497A2C(uint64_t a1)
{
  *a1 = &unk_1F0E38830;
  *(a1 + 104) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_19B497A60(PB::Base *this)
{
  *this = &unk_1F0E38830;
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

void sub_19B497AD4(PB::Base *a1)
{
  sub_19B497A60(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B497B0C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 104);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(this, "sessionGreenFieldPercentage", *(a1 + 80));
    v5 = *(a1 + 104);
  }

  if ((v5 & 0x10) != 0)
  {
    PB::TextFormatter::format(this, "sessionHighRotationPercentage", *(a1 + 84));
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "sessionMeanPoseAngleXHistogram");
  }

  v9 = *(a1 + 104);
  if (v9)
  {
    v13 = *(a1 + 56);
    PB::TextFormatter::format(this, "timestamp");
    v9 = *(a1 + 104);
    if ((v9 & 0x20) == 0)
    {
LABEL_9:
      if ((v9 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v9 & 0x20) == 0)
  {
    goto LABEL_9;
  }

  v14 = *(a1 + 88);
  PB::TextFormatter::format(this, "triggerTimeInternalDrivingState");
  v9 = *(a1 + 104);
  if ((v9 & 2) == 0)
  {
LABEL_10:
    if ((v9 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v15 = *(a1 + 64);
  PB::TextFormatter::format(this, "triggerTimeLastHighElevationGainTimestamp");
  v9 = *(a1 + 104);
  if ((v9 & 4) == 0)
  {
LABEL_11:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  v16 = *(a1 + 72);
  PB::TextFormatter::format(this, "triggerTimeLastHighImuDrivingConfidenceTimestamp");
  v9 = *(a1 + 104);
  if ((v9 & 0x40) == 0)
  {
LABEL_12:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "windowAfterArmGreenFieldPercentage", *(a1 + 92));
  v9 = *(a1 + 104);
  if ((v9 & 0x80) == 0)
  {
LABEL_13:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_25:
  PB::TextFormatter::format(this, "windowAfterArmHighImuDrivingConfidencePercentage", *(a1 + 96));
  if ((*(a1 + 104) & 0x100) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(this, "windowAfterArmHighRotationPercentage", *(a1 + 100));
  }

LABEL_15:
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(this, "windowAfterArmMeanPoseAngleXHistogram");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B497CD0(uint64_t a1, PB::Reader *this)
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
          v51 = v15++ > 8;
          if (v51)
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
        v51 = v9++ > 8;
        if (v51)
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
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(a1 + 104) |= 1u;
            v62 = *(this + 1);
            v61 = *(this + 2);
            v63 = *this;
            if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v61)
            {
              v117 = 0;
              v118 = 0;
              v66 = 0;
              v16 = v61 >= v62;
              v119 = v61 - v62;
              if (!v16)
              {
                v119 = 0;
              }

              v120 = (v63 + v62);
              v121 = v62 + 1;
              while (1)
              {
                if (!v119)
                {
                  v66 = 0;
                  *(this + 24) = 1;
                  goto LABEL_221;
                }

                v122 = *v120;
                *(this + 1) = v121;
                v66 |= (v122 & 0x7F) << v117;
                if ((v122 & 0x80) == 0)
                {
                  break;
                }

                v117 += 7;
                --v119;
                ++v120;
                ++v121;
                v51 = v118++ > 8;
                if (v51)
                {
LABEL_166:
                  v66 = 0;
                  goto LABEL_221;
                }
              }

              if (*(this + 24))
              {
                v66 = 0;
              }
            }

            else
            {
              v64 = 0;
              v65 = 0;
              v66 = 0;
              v67 = (v63 + v62);
              v68 = v62 + 1;
              while (1)
              {
                *(this + 1) = v68;
                v69 = *v67++;
                v66 |= (v69 & 0x7F) << v64;
                if ((v69 & 0x80) == 0)
                {
                  break;
                }

                v64 += 7;
                ++v68;
                v51 = v65++ > 8;
                if (v51)
                {
                  goto LABEL_166;
                }
              }
            }

LABEL_221:
            *(a1 + 56) = v66;
            goto LABEL_269;
          }

          if (v22 == 2)
          {
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_275;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v34 = *(a1 + 40);
                while (1)
                {
                  v35 = *(a1 + 48);
                  if (v34 >= v35)
                  {
                    v36 = *(a1 + 32);
                    v37 = v34 - v36;
                    v38 = (v34 - v36) >> 2;
                    v39 = v38 + 1;
                    if ((v38 + 1) >> 62)
                    {
                      goto LABEL_276;
                    }

                    v40 = v35 - v36;
                    if (v40 >> 1 > v39)
                    {
                      v39 = v40 >> 1;
                    }

                    if (v40 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v41 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v41 = v39;
                    }

                    if (v41)
                    {
                      sub_19B4C4FA8(a1 + 32, v41);
                    }

                    v42 = (v34 - v36) >> 2;
                    v43 = (4 * v38);
                    v44 = (4 * v38 - 4 * v42);
                    *v43 = 0;
                    v34 = (v43 + 1);
                    memcpy(v44, v36, v37);
                    v45 = *(a1 + 32);
                    *(a1 + 32) = v44;
                    *(a1 + 40) = v34;
                    *(a1 + 48) = 0;
                    if (v45)
                    {
                      operator delete(v45);
                    }
                  }

                  else
                  {
                    *v34 = 0;
                    v34 += 4;
                  }

                  *(a1 + 40) = v34;
                  v47 = *(this + 1);
                  v46 = *(this + 2);
                  v48 = *this;
                  v49 = 0;
                  v50 = 0;
                  v51 = v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v46;
                  if (v51)
                  {
                    break;
                  }

                  v57 = 0;
                  v58 = (v48 + v47);
                  v59 = v47 + 1;
                  while (1)
                  {
                    v55 = v59;
                    *(this + 1) = v59;
                    v60 = *v58++;
                    v57 |= (v60 & 0x7F) << v49;
                    if ((v60 & 0x80) == 0)
                    {
                      break;
                    }

                    v49 += 7;
                    ++v59;
                    v51 = v50++ > 8;
                    if (v51)
                    {
                      goto LABEL_82;
                    }
                  }

LABEL_85:
                  *(v34 - 1) = v57;
                  if (v55 >= v46 || (*(this + 24) & 1) != 0)
                  {
                    goto LABEL_196;
                  }
                }

                v57 = 0;
                v52 = v46 - v47;
                if (v46 < v47)
                {
                  v52 = 0;
                }

                v53 = (v48 + v47);
                v54 = v47 + 1;
                while (v52)
                {
                  v55 = v54;
                  v56 = *v53;
                  *(this + 1) = v55;
                  v57 |= (v56 & 0x7F) << v49;
                  if ((v56 & 0x80) == 0)
                  {
                    if (*(this + 24))
                    {
                      LODWORD(v57) = 0;
                    }

                    goto LABEL_85;
                  }

                  v49 += 7;
                  --v52;
                  ++v53;
                  v54 = v55 + 1;
                  v51 = v50++ > 8;
                  if (v51)
                  {
LABEL_82:
                    LODWORD(v57) = 0;
                    goto LABEL_85;
                  }
                }

LABEL_195:
                *(this + 24) = 1;
                *(v34 - 1) = 0;
              }

LABEL_196:
              PB::Reader::recallMark();
              goto LABEL_269;
            }

            v124 = *(a1 + 40);
            v123 = *(a1 + 48);
            if (v124 >= v123)
            {
              v146 = *(a1 + 32);
              v147 = v124 - v146;
              v148 = (v124 - v146) >> 2;
              v149 = v148 + 1;
              if ((v148 + 1) >> 62)
              {
                goto LABEL_276;
              }

              v150 = v123 - v146;
              if (v150 >> 1 > v149)
              {
                v149 = v150 >> 1;
              }

              if (v150 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v151 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v151 = v149;
              }

              if (v151)
              {
                sub_19B4C4FA8(a1 + 32, v151);
              }

              v158 = (v124 - v146) >> 2;
              v159 = (4 * v148);
              v160 = (4 * v148 - 4 * v158);
              *v159 = 0;
              v125 = v159 + 1;
              memcpy(v160, v146, v147);
              v161 = *(a1 + 32);
              *(a1 + 32) = v160;
              *(a1 + 40) = v125;
              *(a1 + 48) = 0;
              if (v161)
              {
                operator delete(v161);
              }
            }

            else
            {
              *v124 = 0;
              v125 = v124 + 4;
            }

            *(a1 + 40) = v125;
            v163 = *(this + 1);
            v162 = *(this + 2);
            v164 = *this;
            if (v163 <= 0xFFFFFFFFFFFFFFF5 && v163 + 10 <= v162)
            {
              v165 = 0;
              v166 = 0;
              v167 = 0;
              v168 = (v164 + v163);
              v169 = v163 + 1;
              while (1)
              {
                *(this + 1) = v169;
                v170 = *v168++;
                v167 |= (v170 & 0x7F) << v165;
                if ((v170 & 0x80) == 0)
                {
                  goto LABEL_268;
                }

                v165 += 7;
                ++v169;
                v51 = v166++ > 8;
                if (v51)
                {
                  goto LABEL_264;
                }
              }
            }

            v171 = 0;
            v172 = 0;
            v167 = 0;
            v16 = v162 >= v163;
            v173 = v162 - v163;
            if (!v16)
            {
              v173 = 0;
            }

            v174 = (v164 + v163);
            v175 = v163 + 1;
            while (v173)
            {
              v176 = *v174;
              *(this + 1) = v175;
              v167 |= (v176 & 0x7F) << v171;
              if ((v176 & 0x80) == 0)
              {
LABEL_266:
                if (*(this + 24))
                {
                  LODWORD(v167) = 0;
                }

                goto LABEL_268;
              }

              v171 += 7;
              --v173;
              ++v174;
              ++v175;
              v51 = v172++ > 8;
              if (v51)
              {
LABEL_264:
                LODWORD(v167) = 0;
                goto LABEL_268;
              }
            }

LABEL_265:
            LODWORD(v167) = 0;
            *(this + 24) = 1;
            goto LABEL_268;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 104) |= 0x100u;
              v81 = *(this + 1);
              if (v81 > 0xFFFFFFFFFFFFFFFBLL || v81 + 4 > *(this + 2))
              {
LABEL_110:
                *(this + 24) = 1;
                goto LABEL_269;
              }

              *(a1 + 100) = *(*this + v81);
              goto LABEL_206;
            case 4:
              *(a1 + 104) |= 0x40u;
              v70 = *(this + 1);
              if (v70 > 0xFFFFFFFFFFFFFFFBLL || v70 + 4 > *(this + 2))
              {
                goto LABEL_110;
              }

              *(a1 + 92) = *(*this + v70);
              goto LABEL_206;
            case 5:
              *(a1 + 104) |= 0x80u;
              v32 = *(this + 1);
              if (v32 > 0xFFFFFFFFFFFFFFFBLL || v32 + 4 > *(this + 2))
              {
                goto LABEL_110;
              }

              *(a1 + 96) = *(*this + v32);
              goto LABEL_206;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_275;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v34 = *(a1 + 16);
                do
                {
                  v91 = *(a1 + 24);
                  if (v34 >= v91)
                  {
                    v92 = *(a1 + 8);
                    v93 = v34 - v92;
                    v94 = (v34 - v92) >> 2;
                    v95 = v94 + 1;
                    if ((v94 + 1) >> 62)
                    {
                      goto LABEL_276;
                    }

                    v96 = v91 - v92;
                    if (v96 >> 1 > v95)
                    {
                      v95 = v96 >> 1;
                    }

                    if (v96 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v97 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v97 = v95;
                    }

                    if (v97)
                    {
                      sub_19B4C4FA8(a1 + 8, v97);
                    }

                    v98 = (v34 - v92) >> 2;
                    v99 = (4 * v94);
                    v100 = (4 * v94 - 4 * v98);
                    *v99 = 0;
                    v34 = (v99 + 1);
                    memcpy(v100, v92, v93);
                    v101 = *(a1 + 8);
                    *(a1 + 8) = v100;
                    *(a1 + 16) = v34;
                    *(a1 + 24) = 0;
                    if (v101)
                    {
                      operator delete(v101);
                    }
                  }

                  else
                  {
                    *v34 = 0;
                    v34 += 4;
                  }

                  *(a1 + 16) = v34;
                  v103 = *(this + 1);
                  v102 = *(this + 2);
                  v104 = *this;
                  v105 = 0;
                  v106 = 0;
                  if (v103 > 0xFFFFFFFFFFFFFFF5 || v103 + 10 > v102)
                  {
                    v113 = 0;
                    v108 = v102 - v103;
                    if (v102 < v103)
                    {
                      v108 = 0;
                    }

                    v109 = (v104 + v103);
                    v110 = v103 + 1;
                    while (1)
                    {
                      if (!v108)
                      {
                        goto LABEL_195;
                      }

                      v111 = v110;
                      v112 = *v109;
                      *(this + 1) = v111;
                      v113 |= (v112 & 0x7F) << v105;
                      if ((v112 & 0x80) == 0)
                      {
                        break;
                      }

                      v105 += 7;
                      --v108;
                      ++v109;
                      v110 = v111 + 1;
                      v51 = v106++ > 8;
                      if (v51)
                      {
LABEL_151:
                        LODWORD(v113) = 0;
                        goto LABEL_154;
                      }
                    }

                    if (*(this + 24))
                    {
                      LODWORD(v113) = 0;
                    }
                  }

                  else
                  {
                    v113 = 0;
                    v114 = (v104 + v103);
                    v115 = v103 + 1;
                    while (1)
                    {
                      v111 = v115;
                      *(this + 1) = v115;
                      v116 = *v114++;
                      v113 |= (v116 & 0x7F) << v105;
                      if ((v116 & 0x80) == 0)
                      {
                        break;
                      }

                      v105 += 7;
                      ++v115;
                      v51 = v106++ > 8;
                      if (v51)
                      {
                        goto LABEL_151;
                      }
                    }
                  }

LABEL_154:
                  *(v34 - 1) = v113;
                }

                while (v111 < v102 && (*(this + 24) & 1) == 0);
              }

              goto LABEL_196;
            }

            v145 = *(a1 + 16);
            v144 = *(a1 + 24);
            if (v145 >= v144)
            {
              v152 = *(a1 + 8);
              v153 = v145 - v152;
              v154 = (v145 - v152) >> 2;
              v155 = v154 + 1;
              if ((v154 + 1) >> 62)
              {
LABEL_276:
                sub_19B5BE690();
              }

              v156 = v144 - v152;
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
                sub_19B4C4FA8(a1 + 8, v157);
              }

              v177 = (v145 - v152) >> 2;
              v178 = (4 * v154);
              v179 = (4 * v154 - 4 * v177);
              *v178 = 0;
              v125 = v178 + 1;
              memcpy(v179, v152, v153);
              v180 = *(a1 + 8);
              *(a1 + 8) = v179;
              *(a1 + 16) = v125;
              *(a1 + 24) = 0;
              if (v180)
              {
                operator delete(v180);
              }
            }

            else
            {
              *v145 = 0;
              v125 = v145 + 4;
            }

            *(a1 + 16) = v125;
            v182 = *(this + 1);
            v181 = *(this + 2);
            v183 = *this;
            if (v182 > 0xFFFFFFFFFFFFFFF5 || v182 + 10 > v181)
            {
              v189 = 0;
              v190 = 0;
              v167 = 0;
              v16 = v181 >= v182;
              v191 = v181 - v182;
              if (!v16)
              {
                v191 = 0;
              }

              v192 = (v183 + v182);
              v193 = v182 + 1;
              while (v191)
              {
                v194 = *v192;
                *(this + 1) = v193;
                v167 |= (v194 & 0x7F) << v189;
                if ((v194 & 0x80) == 0)
                {
                  goto LABEL_266;
                }

                v189 += 7;
                --v191;
                ++v192;
                ++v193;
                v51 = v190++ > 8;
                if (v51)
                {
                  goto LABEL_264;
                }
              }

              goto LABEL_265;
            }

            v184 = 0;
            v185 = 0;
            v167 = 0;
            v186 = (v183 + v182);
            v187 = v182 + 1;
            while (1)
            {
              *(this + 1) = v187;
              v188 = *v186++;
              v167 |= (v188 & 0x7F) << v184;
              if ((v188 & 0x80) == 0)
              {
                break;
              }

              v184 += 7;
              ++v187;
              v51 = v185++ > 8;
              if (v51)
              {
                goto LABEL_264;
              }
            }

LABEL_268:
            *(v125 - 1) = v167;
            goto LABEL_269;
          case 0xA:
            *(a1 + 104) |= 0x10u;
            v80 = *(this + 1);
            if (v80 > 0xFFFFFFFFFFFFFFFBLL || v80 + 4 > *(this + 2))
            {
              goto LABEL_110;
            }

            *(a1 + 84) = *(*this + v80);
            goto LABEL_206;
          case 0xB:
            *(a1 + 104) |= 8u;
            v33 = *(this + 1);
            if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(this + 2))
            {
              goto LABEL_110;
            }

            *(a1 + 80) = *(*this + v33);
LABEL_206:
            *(this + 1) += 4;
            goto LABEL_269;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 104) |= 0x20u;
            v83 = *(this + 1);
            v82 = *(this + 2);
            v84 = *this;
            if (v83 > 0xFFFFFFFFFFFFFFF5 || v83 + 10 > v82)
            {
              v138 = 0;
              v139 = 0;
              v87 = 0;
              v16 = v82 >= v83;
              v140 = v82 - v83;
              if (!v16)
              {
                v140 = 0;
              }

              v141 = (v84 + v83);
              v142 = v83 + 1;
              while (1)
              {
                if (!v140)
                {
                  LODWORD(v87) = 0;
                  *(this + 24) = 1;
                  goto LABEL_230;
                }

                v143 = *v141;
                *(this + 1) = v142;
                v87 |= (v143 & 0x7F) << v138;
                if ((v143 & 0x80) == 0)
                {
                  break;
                }

                v138 += 7;
                --v140;
                ++v141;
                ++v142;
                v51 = v139++ > 8;
                if (v51)
                {
LABEL_192:
                  LODWORD(v87) = 0;
                  goto LABEL_230;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v87) = 0;
              }
            }

            else
            {
              v85 = 0;
              v86 = 0;
              v87 = 0;
              v88 = (v84 + v83);
              v89 = v83 + 1;
              while (1)
              {
                *(this + 1) = v89;
                v90 = *v88++;
                v87 |= (v90 & 0x7F) << v85;
                if ((v90 & 0x80) == 0)
                {
                  break;
                }

                v85 += 7;
                ++v89;
                v51 = v86++ > 8;
                if (v51)
                {
                  goto LABEL_192;
                }
              }
            }

LABEL_230:
            *(a1 + 88) = v87;
            goto LABEL_269;
          case 7:
            *(a1 + 104) |= 2u;
            v72 = *(this + 1);
            v71 = *(this + 2);
            v73 = *this;
            if (v72 > 0xFFFFFFFFFFFFFFF5 || v72 + 10 > v71)
            {
              v126 = 0;
              v127 = 0;
              v76 = 0;
              v16 = v71 >= v72;
              v128 = v71 - v72;
              if (!v16)
              {
                v128 = 0;
              }

              v129 = (v73 + v72);
              v130 = v72 + 1;
              while (1)
              {
                if (!v128)
                {
                  v76 = 0;
                  *(this + 24) = 1;
                  goto LABEL_224;
                }

                v131 = *v129;
                *(this + 1) = v130;
                v76 |= (v131 & 0x7F) << v126;
                if ((v131 & 0x80) == 0)
                {
                  break;
                }

                v126 += 7;
                --v128;
                ++v129;
                ++v130;
                v51 = v127++ > 8;
                if (v51)
                {
LABEL_176:
                  v76 = 0;
                  goto LABEL_224;
                }
              }

              if (*(this + 24))
              {
                v76 = 0;
              }
            }

            else
            {
              v74 = 0;
              v75 = 0;
              v76 = 0;
              v77 = (v73 + v72);
              v78 = v72 + 1;
              while (1)
              {
                *(this + 1) = v78;
                v79 = *v77++;
                v76 |= (v79 & 0x7F) << v74;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v74 += 7;
                ++v78;
                v51 = v75++ > 8;
                if (v51)
                {
                  goto LABEL_176;
                }
              }
            }

LABEL_224:
            *(a1 + 64) = v76;
            goto LABEL_269;
          case 8:
            *(a1 + 104) |= 4u;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v132 = 0;
              v133 = 0;
              v28 = 0;
              v16 = v23 >= v24;
              v134 = v23 - v24;
              if (!v16)
              {
                v134 = 0;
              }

              v135 = (v25 + v24);
              v136 = v24 + 1;
              while (1)
              {
                if (!v134)
                {
                  v28 = 0;
                  *(this + 24) = 1;
                  goto LABEL_227;
                }

                v137 = *v135;
                *(this + 1) = v136;
                v28 |= (v137 & 0x7F) << v132;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v132 += 7;
                --v134;
                ++v135;
                ++v136;
                v51 = v133++ > 8;
                if (v51)
                {
LABEL_184:
                  v28 = 0;
                  goto LABEL_227;
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
                v51 = v27++ > 8;
                if (v51)
                {
                  goto LABEL_184;
                }
              }
            }

LABEL_227:
            *(a1 + 72) = v28;
            goto LABEL_269;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_275:
        v195 = 0;
        return v195 & 1;
      }

LABEL_269:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v195 = v4 ^ 1;
  return v195 & 1;
}

uint64_t sub_19B498A1C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 104))
  {
    v4 = *(result + 56);
    result = PB::Writer::writeVarInt(this);
  }

  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::writeVarInt(this);
  }

  v8 = *(v3 + 104);
  if ((v8 & 0x100) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 100));
    v8 = *(v3 + 104);
    if ((v8 & 0x40) == 0)
    {
LABEL_8:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  result = PB::Writer::write(this, *(v3 + 92));
  v8 = *(v3 + 104);
  if ((v8 & 0x80) == 0)
  {
LABEL_9:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 96));
  v8 = *(v3 + 104);
  if ((v8 & 0x20) == 0)
  {
LABEL_10:
    if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_24:
    v15 = *(v3 + 64);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 104) & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_23:
  v14 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v8 = *(v3 + 104);
  if ((v8 & 2) != 0)
  {
    goto LABEL_24;
  }

LABEL_11:
  if ((v8 & 4) != 0)
  {
LABEL_12:
    v9 = *(v3 + 72);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_13:
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::writeVarInt(this);
  }

  v13 = *(v3 + 104);
  if ((v13 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 84));
    v13 = *(v3 + 104);
  }

  if ((v13 & 8) != 0)
  {
    v16 = *(v3 + 80);

    return PB::Writer::write(this, v16);
  }

  return result;
}

uint64_t sub_19B498B94(uint64_t result)
{
  *result = &unk_1F0E2ED60;
  *(result + 68) = 0;
  return result;
}

void sub_19B498BBC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B498BF4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if ((v5 & 0x10) != 0)
  {
    v6 = *(a1 + 40);
    PB::TextFormatter::format(this, "diffPeakTimestampTrigger");
    v5 = *(a1 + 68);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
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

  v7 = *(a1 + 8);
  PB::TextFormatter::format(this, "epochFirstTimestamp");
  v5 = *(a1 + 68);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "epochLastTimestamp");
  v5 = *(a1 + 68);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "maxAccelNormInWindow", *(a1 + 44));
  v5 = *(a1 + 68);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a1 + 64);
  PB::TextFormatter::format(this, "pass");
  v5 = *(a1 + 68);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "peakPressure", *(a1 + 48));
  v5 = *(a1 + 68);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a1 + 24);
  PB::TextFormatter::format(this, "peakTimestamp");
  v5 = *(a1 + 68);
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
  v11 = *(a1 + 52);
  PB::TextFormatter::format(this, "pressureODR");
  v5 = *(a1 + 68);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "riseTime", *(a1 + 56));
  v5 = *(a1 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_11:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  v12 = *(a1 + 32);
  PB::TextFormatter::format(this, "timestamp");
  if ((*(a1 + 68) & 0x200) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(this, "width", *(a1 + 60));
  }

LABEL_13:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B498D98(uint64_t a1, PB::Reader *this)
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
            goto LABEL_180;
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
            *(a1 + 68) |= 0x400u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v48 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v47 = *(*this + v2++);
              *(this + 1) = v2;
              v48 = v47 != 0;
            }

            *(a1 + 64) = v48;
            goto LABEL_176;
          }

          if (v22 == 2)
          {
            *(a1 + 68) |= 0x80u;
            v39 = *(this + 1);
            v2 = *(this + 2);
            v40 = *this;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v73 = 0;
              v74 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(this + 1);
              }

              v75 = v2 - v39;
              v76 = (v40 + v39);
              v77 = v39 + 1;
              while (1)
              {
                if (!v75)
                {
                  LODWORD(v43) = 0;
                  *(this + 24) = 1;
                  goto LABEL_155;
                }

                v78 = v77;
                v79 = *v76;
                *(this + 1) = v78;
                v43 |= (v79 & 0x7F) << v73;
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
                  LODWORD(v43) = 0;
                  goto LABEL_154;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_154:
              v2 = v78;
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

LABEL_155:
            *(a1 + 52) = v43;
            goto LABEL_176;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 68) |= 0x40u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
LABEL_77:
                *(this + 24) = 1;
                goto LABEL_176;
              }

              *(a1 + 48) = *(*this + v2);
              goto LABEL_145;
            case 4:
              *(a1 + 68) |= 0x200u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_77;
              }

              *(a1 + 60) = *(*this + v2);
              goto LABEL_145;
            case 5:
              *(a1 + 68) |= 0x100u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_77;
              }

              *(a1 + 56) = *(*this + v2);
              goto LABEL_145;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(a1 + 68) |= 2u;
            v65 = *(this + 1);
            v2 = *(this + 2);
            v66 = *this;
            if (v65 > 0xFFFFFFFFFFFFFFF5 || v65 + 10 > v2)
            {
              v108 = 0;
              v109 = 0;
              v69 = 0;
              if (v2 <= v65)
              {
                v2 = *(this + 1);
              }

              v110 = v2 - v65;
              v111 = (v66 + v65);
              v112 = v65 + 1;
              while (1)
              {
                if (!v110)
                {
                  v69 = 0;
                  *(this + 24) = 1;
                  goto LABEL_175;
                }

                v113 = v112;
                v114 = *v111;
                *(this + 1) = v113;
                v69 |= (v114 & 0x7F) << v108;
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
                  v69 = 0;
                  goto LABEL_174;
                }
              }

              if (*(this + 24))
              {
                v69 = 0;
              }

LABEL_174:
              v2 = v113;
            }

            else
            {
              v67 = 0;
              v68 = 0;
              v69 = 0;
              v70 = (v66 + v65);
              v71 = v65 + 1;
              while (1)
              {
                v2 = v71;
                *(this + 1) = v71;
                v72 = *v70++;
                v69 |= (v72 & 0x7F) << v67;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v67 += 7;
                ++v71;
                v14 = v68++ > 8;
                if (v14)
                {
                  v69 = 0;
                  break;
                }
              }
            }

LABEL_175:
            *(a1 + 16) = v69;
            goto LABEL_176;
          case 0xA:
            *(a1 + 68) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_77;
            }

            *(a1 + 44) = *(*this + v2);
LABEL_145:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
            goto LABEL_176;
          case 0xB:
            *(a1 + 68) |= 8u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v94 = 0;
              v95 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v96 = v2 - v31;
              v97 = (v32 + v31);
              v98 = v31 + 1;
              while (1)
              {
                if (!v96)
                {
                  v35 = 0;
                  *(this + 24) = 1;
                  goto LABEL_167;
                }

                v99 = v98;
                v100 = *v97;
                *(this + 1) = v99;
                v35 |= (v100 & 0x7F) << v94;
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
                  v35 = 0;
                  goto LABEL_166;
                }
              }

              if (*(this + 24))
              {
                v35 = 0;
              }

LABEL_166:
              v2 = v99;
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

LABEL_167:
            *(a1 + 32) = v35;
            goto LABEL_176;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 68) |= 4u;
            v57 = *(this + 1);
            v2 = *(this + 2);
            v58 = *this;
            if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v2)
            {
              v101 = 0;
              v102 = 0;
              v61 = 0;
              if (v2 <= v57)
              {
                v2 = *(this + 1);
              }

              v103 = v2 - v57;
              v104 = (v58 + v57);
              v105 = v57 + 1;
              while (1)
              {
                if (!v103)
                {
                  v61 = 0;
                  *(this + 24) = 1;
                  goto LABEL_171;
                }

                v106 = v105;
                v107 = *v104;
                *(this + 1) = v106;
                v61 |= (v107 & 0x7F) << v101;
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
                  v61 = 0;
                  goto LABEL_170;
                }
              }

              if (*(this + 24))
              {
                v61 = 0;
              }

LABEL_170:
              v2 = v106;
            }

            else
            {
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = (v58 + v57);
              v63 = v57 + 1;
              while (1)
              {
                v2 = v63;
                *(this + 1) = v63;
                v64 = *v62++;
                v61 |= (v64 & 0x7F) << v59;
                if ((v64 & 0x80) == 0)
                {
                  break;
                }

                v59 += 7;
                ++v63;
                v14 = v60++ > 8;
                if (v14)
                {
                  v61 = 0;
                  break;
                }
              }
            }

LABEL_171:
            *(a1 + 24) = v61;
            goto LABEL_176;
          case 7:
            *(a1 + 68) |= 0x10u;
            v49 = *(this + 1);
            v2 = *(this + 2);
            v50 = *this;
            if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
            {
              v80 = 0;
              v81 = 0;
              v53 = 0;
              if (v2 <= v49)
              {
                v2 = *(this + 1);
              }

              v82 = v2 - v49;
              v83 = (v50 + v49);
              v84 = v49 + 1;
              while (1)
              {
                if (!v82)
                {
                  LODWORD(v53) = 0;
                  *(this + 24) = 1;
                  goto LABEL_159;
                }

                v85 = v84;
                v86 = *v83;
                *(this + 1) = v85;
                v53 |= (v86 & 0x7F) << v80;
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
                  LODWORD(v53) = 0;
                  goto LABEL_158;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v53) = 0;
              }

LABEL_158:
              v2 = v85;
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

LABEL_159:
            *(a1 + 40) = v53;
            goto LABEL_176;
          case 8:
            *(a1 + 68) |= 1u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v87 = 0;
              v88 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v89 = v2 - v23;
              v90 = (v24 + v23);
              v91 = v23 + 1;
              while (1)
              {
                if (!v89)
                {
                  v27 = 0;
                  *(this + 24) = 1;
                  goto LABEL_163;
                }

                v92 = v91;
                v93 = *v90;
                *(this + 1) = v92;
                v27 |= (v93 & 0x7F) << v87;
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
                  v27 = 0;
                  goto LABEL_162;
                }
              }

              if (*(this + 24))
              {
                v27 = 0;
              }

LABEL_162:
              v2 = v92;
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

LABEL_163:
            *(a1 + 8) = v27;
            goto LABEL_176;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v115 = 0;
        return v115 & 1;
      }

      v2 = *(this + 1);
LABEL_176:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_180:
  v115 = v4 ^ 1;
  return v115 & 1;
}

uint64_t sub_19B4996C4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 68);
  if ((v4 & 0x400) != 0)
  {
    v5 = *(result + 64);
    result = PB::Writer::write(this);
    v4 = *(v3 + 68);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
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

  v6 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 68);
  if ((v4 & 0x200) == 0)
  {
LABEL_5:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 68);
  if ((v4 & 0x100) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    result = PB::Writer::write(this, *(v3 + 44));
    if ((*(v3 + 68) & 8) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  v10 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_23:
  v11 = *(v3 + 32);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B499830(uint64_t result)
{
  *result = &unk_1F0E2F348;
  *(result + 108) = 0;
  return result;
}

void sub_19B499858(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B499890(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 108);
  if (v5)
  {
    PB::TextFormatter::format(this, "configDelaySpreadFpThreshold", *(a1 + 8));
    v5 = *(a1 + 108);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 12);
  PB::TextFormatter::format(this, "configFeatureSamples");
  v5 = *(a1 + 108);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "configNonPlanarDelaySpreadThreshold", *(a1 + 16));
  v5 = *(a1 + 108);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "configNonPlanarPaprThreshold", *(a1 + 20));
  v5 = *(a1 + 108);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "configPeakEnergyFpThreshold", *(a1 + 24));
  v5 = *(a1 + 108);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "configPlanarDelaySpreadThreshold", *(a1 + 28));
  v5 = *(a1 + 108);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "configPlanarPaprThreshold", *(a1 + 32));
  v5 = *(a1 + 108);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  v7 = *(a1 + 36);
  PB::TextFormatter::format(this, "configPostTriggerLimitTime");
  v5 = *(a1 + 108);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  v8 = *(a1 + 40);
  PB::TextFormatter::format(this, "configPreTriggerLimitTime");
  v5 = *(a1 + 108);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "configRawRmsMaxFpThreshold", *(a1 + 44));
  v5 = *(a1 + 108);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "configRawRmsMeanFpThreshold", *(a1 + 48));
  v5 = *(a1 + 108);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "configRmsClipMinAmp", *(a1 + 52));
  v5 = *(a1 + 108);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "delaySpread", *(a1 + 56));
  v5 = *(a1 + 108);
  if ((v5 & 0x800000) == 0)
  {
LABEL_15:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  v9 = *(a1 + 100);
  PB::TextFormatter::format(this, "isAudioTPQ");
  v5 = *(a1 + 108);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  v10 = *(a1 + 101);
  PB::TextFormatter::format(this, "isFpThresholdsMet");
  v5 = *(a1 + 108);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  v11 = *(a1 + 102);
  PB::TextFormatter::format(this, "isNonPlanarTp");
  v5 = *(a1 + 108);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  v12 = *(a1 + 103);
  PB::TextFormatter::format(this, "isPlanarTp");
  v5 = *(a1 + 108);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_19:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  v13 = *(a1 + 104);
  PB::TextFormatter::format(this, "isTauBarWithinRange");
  v5 = *(a1 + 108);
  if ((v5 & 0x2000) == 0)
  {
LABEL_20:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "papr", *(a1 + 60));
  v5 = *(a1 + 108);
  if ((v5 & 0x4000) == 0)
  {
LABEL_21:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "peakEnergy", *(a1 + 64));
  v5 = *(a1 + 108);
  if ((v5 & 0x8000) == 0)
  {
LABEL_22:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "rawRmsMax", *(a1 + 68));
  v5 = *(a1 + 108);
  if ((v5 & 0x10000) == 0)
  {
LABEL_23:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "rawRmsMean", *(a1 + 72));
  v5 = *(a1 + 108);
  if ((v5 & 0x20000) == 0)
  {
LABEL_24:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "rawRmsSum", *(a1 + 76));
  v5 = *(a1 + 108);
  if ((v5 & 0x40000) == 0)
  {
LABEL_25:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "rmsClipSum", *(a1 + 80));
  v5 = *(a1 + 108);
  if ((v5 & 0x80000) == 0)
  {
LABEL_26:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  v14 = *(a1 + 84);
  PB::TextFormatter::format(this, "sampleCount");
  v5 = *(a1 + 108);
  if ((v5 & 0x100000) == 0)
  {
LABEL_27:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "t2TimesRmsClipSum", *(a1 + 88));
  v5 = *(a1 + 108);
  if ((v5 & 0x200000) == 0)
  {
LABEL_28:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_59:
  PB::TextFormatter::format(this, "tTimesRmsClipSum", *(a1 + 92));
  if ((*(a1 + 108) & 0x400000) != 0)
  {
LABEL_29:
    PB::TextFormatter::format(this, "tauBar", *(a1 + 96));
  }

LABEL_30:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B499C54(uint64_t a1, PB::Reader *this)
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
        goto LABEL_188;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 108) |= 0x800000u;
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

          *(a1 + 100) = v23;
          goto LABEL_164;
        case 2u:
          *(a1 + 108) |= 0x80000u;
          v38 = *(this + 1);
          v2 = *(this + 2);
          v39 = *this;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v71 = 0;
            v72 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(this + 1);
            }

            v73 = v2 - v38;
            v74 = (v39 + v38);
            v75 = v38 + 1;
            while (1)
            {
              if (!v73)
              {
                LODWORD(v42) = 0;
                *(this + 24) = 1;
                goto LABEL_178;
              }

              v76 = v75;
              v77 = *v74;
              *(this + 1) = v76;
              v42 |= (v77 & 0x7F) << v71;
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
                LODWORD(v42) = 0;
LABEL_177:
                v2 = v76;
                goto LABEL_178;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_177;
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
              goto LABEL_178;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_178:
          *(a1 + 84) = v42;
          goto LABEL_164;
        case 3u:
          *(a1 + 108) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_163;
        case 4u:
          *(a1 + 108) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_163;
        case 5u:
          *(a1 + 108) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_163;
        case 6u:
          *(a1 + 108) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 92) = *(*this + v2);
          goto LABEL_163;
        case 7u:
          *(a1 + 108) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_163;
        case 8u:
          *(a1 + 108) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_163;
        case 9u:
          *(a1 + 108) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_163;
        case 0xAu:
          *(a1 + 108) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_163;
        case 0xBu:
          *(a1 + 108) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_163;
        case 0xCu:
          *(a1 + 108) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_163;
        case 0xDu:
          *(a1 + 108) |= 0x4000000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v35 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v34 = *(*this + v2++);
            *(this + 1) = v2;
            v35 = v34 != 0;
          }

          *(a1 + 103) = v35;
          goto LABEL_164;
        case 0xEu:
          *(a1 + 108) |= 0x2000000u;
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

          *(a1 + 102) = v47;
          goto LABEL_164;
        case 0xFu:
          *(a1 + 108) |= 0x1000000u;
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

          *(a1 + 101) = v33;
          goto LABEL_164;
        case 0x10u:
          *(a1 + 108) |= 0x8000000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v37 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v36 = *(*this + v2++);
            *(this + 1) = v2;
            v37 = v36 != 0;
          }

          *(a1 + 104) = v37;
          goto LABEL_164;
        case 0x11u:
          *(a1 + 108) |= 2u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v64 = 0;
            v65 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(this + 1);
            }

            v66 = v2 - v24;
            v67 = (v25 + v24);
            v68 = v24 + 1;
            while (1)
            {
              if (!v66)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_174;
              }

              v69 = v68;
              v70 = *v67;
              *(this + 1) = v69;
              v28 |= (v70 & 0x7F) << v64;
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
                LODWORD(v28) = 0;
LABEL_173:
                v2 = v69;
                goto LABEL_174;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_173;
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
              goto LABEL_174;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_174:
          *(a1 + 12) = v28;
          goto LABEL_164;
        case 0x12u:
          *(a1 + 108) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_163;
        case 0x13u:
          *(a1 + 108) |= 0x100u;
          v48 = *(this + 1);
          v2 = *(this + 2);
          v49 = *this;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v78 = 0;
            v79 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v2 = *(this + 1);
            }

            v80 = v2 - v48;
            v81 = (v49 + v48);
            v82 = v48 + 1;
            while (1)
            {
              if (!v80)
              {
                LODWORD(v52) = 0;
                *(this + 24) = 1;
                goto LABEL_182;
              }

              v83 = v82;
              v84 = *v81;
              *(this + 1) = v83;
              v52 |= (v84 & 0x7F) << v78;
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
                LODWORD(v52) = 0;
LABEL_181:
                v2 = v83;
                goto LABEL_182;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_181;
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
              goto LABEL_182;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_182:
          *(a1 + 40) = v52;
          goto LABEL_164;
        case 0x14u:
          *(a1 + 108) |= 0x80u;
          v56 = *(this + 1);
          v2 = *(this + 2);
          v57 = *this;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v85 = 0;
            v86 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v2 = *(this + 1);
            }

            v87 = v2 - v56;
            v88 = (v57 + v56);
            v89 = v56 + 1;
            while (1)
            {
              if (!v87)
              {
                LODWORD(v60) = 0;
                *(this + 24) = 1;
                goto LABEL_186;
              }

              v90 = v89;
              v91 = *v88;
              *(this + 1) = v90;
              v60 |= (v91 & 0x7F) << v85;
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
                LODWORD(v60) = 0;
LABEL_185:
                v2 = v90;
                goto LABEL_186;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v60) = 0;
            }

            goto LABEL_185;
          }

          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = (v57 + v56);
          v62 = v56 + 1;
          do
          {
            v2 = v62;
            *(this + 1) = v62;
            v63 = *v61++;
            v60 |= (v63 & 0x7F) << v58;
            if ((v63 & 0x80) == 0)
            {
              goto LABEL_186;
            }

            v58 += 7;
            ++v62;
            v14 = v59++ > 8;
          }

          while (!v14);
          LODWORD(v60) = 0;
LABEL_186:
          *(a1 + 36) = v60;
          goto LABEL_164;
        case 0x15u:
          *(a1 + 108) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_163;
        case 0x16u:
          *(a1 + 108) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_163;
        case 0x17u:
          *(a1 + 108) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_163;
        case 0x18u:
          *(a1 + 108) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_163;
        case 0x19u:
          *(a1 + 108) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_163;
        case 0x1Au:
          *(a1 + 108) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_163;
        case 0x1Bu:
          *(a1 + 108) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_119;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_163;
        case 0x1Cu:
          *(a1 + 108) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_119:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 44) = *(*this + v2);
LABEL_163:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          goto LABEL_164;
        default:
          if (!PB::Reader::skip(this))
          {
            v92 = 0;
            return v92 & 1;
          }

          v2 = *(this + 1);
LABEL_164:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_188;
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

LABEL_188:
  v92 = v4 ^ 1;
  return v92 & 1;
}