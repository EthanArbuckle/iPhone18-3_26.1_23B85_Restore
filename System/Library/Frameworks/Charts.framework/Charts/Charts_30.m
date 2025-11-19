uint64_t sub_1AAEE73B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(result + 16);
  if (v5)
  {
    v7 = result + 32;
    sub_1AAEE2D40(result + 32 + 104 * v5 - 104, &v27);
    v8 = v27;
    v18 = v28;
    v26 = MEMORY[0x1E69E7CC0];

    sub_1AAD41644(0, v5, 0);
    v9 = v26;
    do
    {
      sub_1AAEE2D40(v7, &v22);
      v10 = v23;
      v11 = *(&v23 + 1);
      v20 = v25;
      v21 = v24;

      sub_1AAEE2D78(&v22);
      v26 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1AAD41644((v12 > 1), v13 + 1, 1);
        v9 = v26;
      }

      *(v9 + 16) = v13 + 1;
      v14 = v9 + 48 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      *(v14 + 48) = v21;
      *(v14 + 64) = v20;
      v7 += 104;
      --v5;
    }

    while (v5);
    sub_1AAEE3C30(&v22, v9, a2, a3, a4);

    sub_1AAEEBED8(&v29, a5 + 64, sub_1AAED9ED8);
    result = sub_1AAEE2D78(&v27);
    *a5 = v8;
    *(a5 + 8) = v18;
    v15 = v23;
    *(a5 + 16) = v22;
    *(a5 + 32) = v15;
    *(a5 + 48) = v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAEE754C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(result + 16);
  if (v5)
  {
    v8 = result;
    v10 = (result + 96 * v5);
    v11 = *(v10 - 1);
    v73[2] = *(v10 - 2);
    v73[3] = v11;
    v12 = v10[1];
    v73[4] = *v10;
    v73[5] = v12;
    v13 = *(v10 - 3);
    v73[0] = *(v10 - 4);
    v73[1] = v13;
    v71 = v73[0];
    v72 = v13;
    v68 = v12;
    sub_1AAEE2B2C(v73, v70);
    v70[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v5, 0);
    v14 = v70[0];
    v15 = *(v70[0] + 16);
    v16 = v8 + 8;
    v17 = v5;
    do
    {
      v18 = *v16;
      v70[0] = v14;
      v19 = *(v14 + 24);
      if (v15 >= v19 >> 1)
      {
        sub_1AAD1FAF4((v19 > 1), v15 + 1, 1);
        v14 = v70[0];
      }

      *(v14 + 16) = v15 + 1;
      *(v14 + 8 * v15 + 32) = v18;
      v16 += 12;
      ++v15;
      --v17;
    }

    while (v17);

    sub_1AAEE85D4(v14, a3, a4);
    v21 = v20;

    v70[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v5, 0);
    v22 = v70[0];
    v23 = *(v70[0] + 16);
    v24 = v8 + 9;
    v25 = v5;
    do
    {
      v26 = *v24;
      v70[0] = v22;
      v27 = *(v22 + 24);
      if (v23 >= v27 >> 1)
      {
        sub_1AAD1FAF4((v27 > 1), v23 + 1, 1);
        v22 = v70[0];
      }

      *(v22 + 16) = v23 + 1;
      *(v22 + 8 * v23 + 32) = v26;
      v24 += 12;
      ++v23;
      --v25;
    }

    while (v25);

    sub_1AAEE88D4(v22, a3, a4);
    v29 = v28;

    v70[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v5, 0);
    v30 = v70[0];
    v31 = *(v70[0] + 16);
    v32 = v8 + 10;
    v33 = v5;
    do
    {
      v34 = *v32;
      v70[0] = v30;
      v35 = *(v30 + 24);
      if (v31 >= v35 >> 1)
      {
        sub_1AAD1FAF4((v35 > 1), v31 + 1, 1);
        v30 = v70[0];
      }

      *(v30 + 16) = v31 + 1;
      *(v30 + 8 * v31 + 32) = v34;
      v32 += 12;
      ++v31;
      --v33;
    }

    while (v33);

    sub_1AAEE85D4(v30, a3, a4);
    v37 = v36;

    v70[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v5, 0);
    v38 = v70[0];
    v39 = *(v70[0] + 16);
    v40 = v8 + 11;
    v41 = v5;
    do
    {
      v42 = *v40;
      v70[0] = v38;
      v43 = *(v38 + 24);
      if (v39 >= v43 >> 1)
      {
        sub_1AAD1FAF4((v43 > 1), v39 + 1, 1);
        v38 = v70[0];
      }

      *(v38 + 16) = v39 + 1;
      *(v38 + 8 * v39 + 32) = v42;
      v40 += 12;
      ++v39;
      --v41;
    }

    while (v41);

    sub_1AAEE88D4(v38, a3, a4);
    v45 = v44;

    v70[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v5, 0);
    v46 = v70[0];
    v47 = *(v70[0] + 16);
    v48 = v8 + 12;
    v49 = v5;
    do
    {
      v50 = *v48;
      v70[0] = v46;
      v51 = *(v46 + 24);
      if (v47 >= v51 >> 1)
      {
        sub_1AAD1FAF4((v51 > 1), v47 + 1, 1);
        v46 = v70[0];
      }

      *(v46 + 16) = v47 + 1;
      *(v46 + 8 * v47 + 32) = v50;
      v48 += 12;
      ++v47;
      --v49;
    }

    while (v49);
    v52 = sub_1AAF453B8(v46, a2, 1, 1);

    v70[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v5, 0);
    v53 = v70[0];
    v54 = *(v70[0] + 16);
    v55 = v8 + 13;
    v56 = v5;
    do
    {
      v57 = *v55;
      v70[0] = v53;
      v58 = *(v53 + 24);
      if (v54 >= v58 >> 1)
      {
        sub_1AAD1FAF4((v58 > 1), v54 + 1, 1);
        v53 = v70[0];
      }

      *(v53 + 16) = v54 + 1;
      *(v53 + 8 * v54 + 32) = v57;
      v55 += 12;
      ++v54;
      --v56;
    }

    while (v56);
    v59 = sub_1AAF453B8(v53, a2, 1, 1);

    v70[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v5, 0);
    v60 = v70[0];
    v61 = *(v70[0] + 16);
    v62 = v8 + 15;
    do
    {
      v63 = *v62;
      v70[0] = v60;
      v64 = *(v60 + 24);
      if (v61 >= v64 >> 1)
      {
        sub_1AAD1FAF4((v64 > 1), v61 + 1, 1);
        v60 = v70[0];
      }

      *(v60 + 16) = v61 + 1;
      *(v60 + 8 * v61 + 32) = v63;
      v62 += 12;
      ++v61;
      --v5;
    }

    while (v5);
    sub_1AAD1FF48(v60, a2);
    v66 = v65;

    v67 = v72;
    *a5 = v71;
    *(a5 + 16) = v67;
    *(a5 + 32) = v21;
    *(a5 + 40) = v29;
    *(a5 + 48) = v37;
    *(a5 + 56) = v45;
    *(a5 + 64) = v52;
    *(a5 + 72) = v59;
    *(a5 + 80) = v68;
    *(a5 + 88) = v66;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAEE7AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = sub_1AAF8F044();
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1E69E7CC0];
  v10 = *(a1 + 16);
  if (v10)
  {
    v47 = a3;
    v46 = v8;
    v11 = 0;
    v12 = a1 + 32;
    v50 = a2 + 32;
    v13 = 1;
    v14 = 0.0;
    v15 = MEMORY[0x1E69E7CC0];
    v16 = MEMORY[0x1E69E7CC0];
LABEL_3:
    LODWORD(v49) = v13;
LABEL_4:
    v17 = v12;
    v18 = v12 + 48 * v11;
    v19 = v11;
    while (1)
    {
      if (v19 >= v10)
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      sub_1AAEEBB28(v18, &v55);
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_56;
      }

      v20 = *(a2 + 16);
      if (v19 == v20)
      {
        break;
      }

      if (v19 >= v20)
      {
        goto LABEL_57;
      }

      v21 = *(a2 + 8 * v19 + 32);
      *&v57[25] = *&v56[9];
      *v57 = v55;
      *&v57[16] = *v56;
      *&v56[9] = *&v57[25];
      *v56 = *&v57[16];
      if (v57[40])
      {
        sub_1AACBB198(&v55, v53);
        sub_1AAD45E1C(0, &qword_1ED9B2778);
        if (swift_dynamicCast())
        {
          v22 = v54;
        }

        else
        {
          v22 = 0;
        }

        if (!v22)
        {
LABEL_35:
          sub_1AAEEBB28(v17, &v55);
          v33 = *v56;
          *a4 = v55;
          *(a4 + 16) = v33;
          v32 = *&v56[9];
          goto LABEL_36;
        }
      }

      else if (!v55)
      {
        goto LABEL_35;
      }

      if (v21 > 0.0)
      {

        MEMORY[0x1AC598430](v23);
        if (*(v58 + 16) >= *(v58 + 24) >> 1)
        {
          sub_1AAF8F874();
        }

        sub_1AAF8F8C4();
        v24 = v58;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1AAD67B50(0, *(v15 + 2) + 1, 1, v15);
        }

        v26 = *(v15 + 2);
        v25 = *(v15 + 3);
        if (v26 >= v25 >> 1)
        {
          v15 = sub_1AAD67B50((v25 > 1), v26 + 1, 1, v15);
        }

        v14 = fmin(v14 + v21, 1.0);
        *(v15 + 2) = v26 + 1;
        *&v15[8 * v26 + 32] = v14;
        v16 = v24;
        if (*(v24 + 16))
        {

          v27 = sub_1AAF8EC64();

          v13 = v27 & v49;
          v12 = v17;
          if (v11 != v10)
          {
            goto LABEL_3;
          }
        }

        else
        {

          v12 = v17;
          if (v11 != v10)
          {
            goto LABEL_4;
          }

LABEL_37:
          LOBYTE(v13) = v49;
        }

        if ((v13 & 1) == 0)
        {
LABEL_39:
          v11 = *(v15 + 2);
          if (!v11)
          {
            goto LABEL_62;
          }

          v34 = *&v15[8 * v11 + 24];
          v44 = a4;
          if (v34 == 1.0)
          {
            goto LABEL_44;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            goto LABEL_64;
          }

          while (v11 <= *(v15 + 2))
          {
            *&v15[8 * v11 + 24] = 0x3FF0000000000000;
LABEL_44:
            v36 = *(v16 + 16);
            v37 = v36 != 0;
            if (v36)
            {
              v49 = v16;
              v38 = *(v16 + 32);
              v48 = v16 + 32;
              swift_retain_n();

              v45 = v38;
              if (v36 == 1)
              {
LABEL_53:

                v42 = v44;
                *v44 = v38;
                *(v42 + 40) = 0;
                goto LABEL_54;
              }

              v16 = v46 + 8;
              while (v36 != v37)
              {
                if (v37 >= *(v49 + 16))
                {
                  goto LABEL_59;
                }

                if (v37 >= *(a2 + 16))
                {
                  goto LABEL_60;
                }

                if (v37 >= *(v15 + 2))
                {
                  goto LABEL_61;
                }

                v11 = v15;
                v39 = v37 + 1;

                v40 = v51;
                sub_1AAF8F034();
                v38 = sub_1AAF8EC74();

                (*v16)(v40, v52);

                v37 = v39;
                v41 = v36 == v39;
                v15 = v11;
                if (v41)
                {
                  goto LABEL_53;
                }
              }

LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
            }

            __break(1u);
LABEL_64:
            result = sub_1AADB8144(v15);
            v15 = result;
          }

          __break(1u);
          return result;
        }

LABEL_34:
        sub_1AAEEBB28(v12, v57);
        v31 = *&v57[16];
        *a4 = *v57;
        *(a4 + 16) = v31;
        v32 = *&v57[25];
LABEL_36:
        *(a4 + 25) = v32;
        goto LABEL_54;
      }

      ++v19;
      v18 += 48;
      if (v11 == v10)
      {
        v12 = v17;
        goto LABEL_37;
      }
    }

    sub_1AAEEBC30(&v55);
    v12 = v17;
    if ((v49 & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_34;
  }

  v28 = MEMORY[0x1E69815C0];
  memset(v57, 0, 40);
  v57[40] = -1;
  v29 = sub_1AAF8ECE4();
  v30 = MEMORY[0x1E6981568];
  *(a4 + 24) = v28;
  *(a4 + 32) = v30;
  *a4 = v29;
  *(a4 + 40) = 1;
  if (v57[40] != 255)
  {
    sub_1AAEEBE24(v57, sub_1AAEEBBE0);
  }

LABEL_54:
}

void sub_1AAEE810C(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v47 = a2;
  v7 = type metadata accessor for ChartDisplayList.ClipRect(0) - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    v46 = a4;
    sub_1AAEEBED8(v12 + v13 * (v11 - 1), a4, type metadata accessor for ChartDisplayList.ClipRect);
    v48 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v11, 0);
    v14 = v48;
    v15 = v12;
    v16 = v11;
    do
    {
      sub_1AAEEBED8(v15, v10, type metadata accessor for ChartDisplayList.ClipRect);
      v17 = v10[3];
      sub_1AAEEBE24(v10, type metadata accessor for ChartDisplayList.ClipRect);
      v48 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1AAD1FAF4((v18 > 1), v19 + 1, 1);
        v14 = v48;
      }

      *(v14 + 16) = v19 + 1;
      *(v14 + 8 * v19 + 32) = v17;
      v15 += v13;
      --v16;
    }

    while (v16);

    sub_1AAEE85D4(v14, v47, a3);
    v21 = v20;

    v46[3] = v21;
    v48 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v11, 0);
    v22 = v48;
    v23 = v12;
    v24 = v11;
    do
    {
      sub_1AAEEBED8(v23, v10, type metadata accessor for ChartDisplayList.ClipRect);
      v25 = v10[4];
      sub_1AAEEBE24(v10, type metadata accessor for ChartDisplayList.ClipRect);
      v48 = v22;
      v27 = *(v22 + 16);
      v26 = *(v22 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1AAD1FAF4((v26 > 1), v27 + 1, 1);
        v22 = v48;
      }

      *(v22 + 16) = v27 + 1;
      *(v22 + 8 * v27 + 32) = v25;
      v23 += v13;
      --v24;
    }

    while (v24);

    sub_1AAEE85D4(v22, v47, a3);
    v29 = v28;

    v46[4] = v29;
    v48 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v11, 0);
    v30 = v48;
    v31 = v12;
    v32 = v11;
    do
    {
      sub_1AAEEBED8(v31, v10, type metadata accessor for ChartDisplayList.ClipRect);
      v33 = v10[5];
      sub_1AAEEBE24(v10, type metadata accessor for ChartDisplayList.ClipRect);
      v48 = v30;
      v35 = *(v30 + 16);
      v34 = *(v30 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1AAD1FAF4((v34 > 1), v35 + 1, 1);
        v30 = v48;
      }

      *(v30 + 16) = v35 + 1;
      *(v30 + 8 * v35 + 32) = v33;
      v31 += v13;
      --v32;
    }

    while (v32);

    sub_1AAEE88D4(v30, v47, a3);
    v37 = v36;

    v38 = v46;
    v46[5] = v37;
    v48 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v11, 0);
    v39 = v48;
    do
    {
      sub_1AAEEBED8(v12, v10, type metadata accessor for ChartDisplayList.ClipRect);
      v40 = v10[6];
      sub_1AAEEBE24(v10, type metadata accessor for ChartDisplayList.ClipRect);
      v48 = v39;
      v42 = *(v39 + 16);
      v41 = *(v39 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1AAD1FAF4((v41 > 1), v42 + 1, 1);
        v39 = v48;
      }

      *(v39 + 16) = v42 + 1;
      *(v39 + 8 * v42 + 32) = v40;
      v12 += v13;
      --v11;
    }

    while (v11);

    sub_1AAEE88D4(v39, v47, a3);
    v44 = v43;

    v38[6] = v44;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AAEE85D4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    v8 = v3 + 32;
    v9 = result + 32;
    v10 = a2 + 32;
    v11 = *(result + 16);
    v12 = a2 + 40;
    v13 = 0.0;
    v45 = *(v3 + 16);
    v46 = a3;
    v43 = result + 32;
    v44 = v3 + 32;
    v41 = v11;
    v42 = a2 + 32;
    v40 = *(a3 + 24);
    while (v6 < *(v3 + 16))
    {
      v14 = v6;
      v15 = *(v8 + 8 * v6++);
      if (v7 <= v5 + 1)
      {
        v16 = v5 + 1;
      }

      else
      {
        v16 = v7;
      }

      v17 = v16 - 1;
      while (v5 + 1 < v7)
      {
        if (v5 < -1)
        {
          __break(1u);
          goto LABEL_34;
        }

        v18 = *(v12 + 8 * v5++);
        if (v14 < v18)
        {
          --v5;
          goto LABEL_16;
        }
      }

      v5 = v17;
LABEL_16:
      if (v5 >= v11)
      {
        goto LABEL_35;
      }

      if (v5 >= v7)
      {
        goto LABEL_36;
      }

      v19 = *(v9 + 8 * v5);
      v20 = *(v10 + 8 * v5);
      if (v20 != v14)
      {
        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        v21 = *(a3 + 16);
        v22 = *(v21 + 16);
        if (v20 >= v22)
        {
          goto LABEL_38;
        }

        v23 = v21 + 32;
        v24 = v23 + 488 * v20;
        v25 = *(v24 + 208);
        v26 = *(v24 + 176);
        v52[1] = *(v24 + 192);
        v53 = v25;
        v52[0] = v26;
        v27 = *(v24 + 224);
        v28 = *(v24 + 240);
        v29 = *(v24 + 256);
        v57 = *(v24 + 272);
        v55 = v28;
        v56 = v29;
        v54 = v27;
        if (*&v52[0])
        {
          if (v14 >= v22)
          {
            goto LABEL_39;
          }

          v30 = v53;
          v31 = v23 + 488 * v14;
          v32 = *(v31 + 208);
          v33 = *(v31 + 176);
          v50[1] = *(v31 + 192);
          v50[2] = v32;
          v50[0] = v33;
          v34 = *(v31 + 224);
          v35 = *(v31 + 240);
          v36 = *(v31 + 256);
          v51 = *(v31 + 272);
          v50[4] = v35;
          v50[5] = v36;
          v50[3] = v34;
          v37 = *&v50[0];
          if (*&v50[0])
          {
            if (v53)
            {
              v49 = v19;
              v38 = MEMORY[0x1E69E6720];
              sub_1AAEEBC84(v52, &v47, &qword_1ED9B4068, sub_1AAEDD488, MEMORY[0x1E69E6720]);
              sub_1AAEEBC84(v50, &v47, &qword_1ED9B4068, sub_1AAEDD488, v38);
              sub_1AACBD93C(v30);
              v30(&v47, &v49);
              sub_1AACB4A98(v30);
              if (v48)
              {
                sub_1AAEDD4E0(v50);
                result = sub_1AAEDD4E0(v52);
              }

              else
              {
                v49 = v47;
                v37(&v47, &v49);
                sub_1AAEDD4E0(v52);
                result = sub_1AAEDD4E0(v50);
                v39 = v19 + -100.0;
                if (v19 + -100.0 > v19 + 100.0)
                {
                  goto LABEL_40;
                }

                if (v47 > v39)
                {
                  v39 = v47;
                }

                if (v19 + 100.0 >= v39)
                {
                  v19 = v39;
                }

                else
                {
                  v19 = v19 + 100.0;
                }
              }

              v4 = v45;
              a3 = v46;
              v9 = v43;
              v8 = v44;
              v11 = v41;
              v10 = v42;
              v3 = v40;
            }
          }
        }
      }

      v13 = v13 + v15 * v19;
      if (v6 == v4)
      {
        return result;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAEE88D4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    v8 = v3 + 32;
    v9 = result + 32;
    v10 = a2 + 32;
    v11 = *(result + 16);
    v12 = a2 + 40;
    v13 = 0.0;
    result = 488;
    v45 = *(v3 + 16);
    v46 = a3;
    v43 = v9;
    v44 = v3 + 32;
    v41 = v11;
    v42 = a2 + 32;
    v40 = *(a3 + 24);
    while (v6 < *(v3 + 16))
    {
      v14 = v6;
      v15 = *(v8 + 8 * v6++);
      if (v7 <= v5 + 1)
      {
        v16 = v5 + 1;
      }

      else
      {
        v16 = v7;
      }

      v17 = v16 - 1;
      while (v5 + 1 < v7)
      {
        if (v5 < -1)
        {
          __break(1u);
          goto LABEL_34;
        }

        v18 = *(v12 + 8 * v5++);
        if (v14 < v18)
        {
          --v5;
          goto LABEL_16;
        }
      }

      v5 = v17;
LABEL_16:
      if (v5 >= v11)
      {
        goto LABEL_35;
      }

      if (v5 >= v7)
      {
        goto LABEL_36;
      }

      v19 = *(v9 + 8 * v5);
      v20 = *(v10 + 8 * v5);
      if (v20 != v14)
      {
        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        v21 = *(a3 + 16);
        v22 = *(v21 + 16);
        if (v20 >= v22)
        {
          goto LABEL_38;
        }

        v23 = v21 + 32;
        v24 = v23 + 488 * v20;
        v25 = *(v24 + 312);
        v26 = *(v24 + 280);
        v52[1] = *(v24 + 296);
        v53 = v25;
        v52[0] = v26;
        v27 = *(v24 + 328);
        v28 = *(v24 + 344);
        v29 = *(v24 + 360);
        v57 = *(v24 + 376);
        v55 = v28;
        v56 = v29;
        v54 = v27;
        if (*&v52[0])
        {
          if (v14 >= v22)
          {
            goto LABEL_39;
          }

          v30 = v53;
          v31 = v23 + 488 * v14;
          v32 = *(v31 + 312);
          v33 = *(v31 + 280);
          v50[1] = *(v31 + 296);
          v50[2] = v32;
          v50[0] = v33;
          v34 = *(v31 + 328);
          v35 = *(v31 + 344);
          v36 = *(v31 + 360);
          v51 = *(v31 + 376);
          v50[4] = v35;
          v50[5] = v36;
          v50[3] = v34;
          v37 = *&v50[0];
          if (*&v50[0])
          {
            if (v53)
            {
              v49 = v19;
              v38 = MEMORY[0x1E69E6720];
              sub_1AAEEBC84(v52, &v47, &qword_1ED9B4068, sub_1AAEDD488, MEMORY[0x1E69E6720]);
              sub_1AAEEBC84(v50, &v47, &qword_1ED9B4068, sub_1AAEDD488, v38);
              sub_1AACBD93C(v30);
              v30(&v47, &v49);
              sub_1AACB4A98(v30);
              if (v48)
              {
                sub_1AAEDD4E0(v50);
                sub_1AAEDD4E0(v52);
              }

              else
              {
                v49 = v47;
                v37(&v47, &v49);
                sub_1AAEDD4E0(v52);
                result = sub_1AAEDD4E0(v50);
                v39 = v19 + -100.0;
                if (v19 + -100.0 > v19 + 100.0)
                {
                  goto LABEL_40;
                }

                if (v47 > v39)
                {
                  v39 = v47;
                }

                if (v19 + 100.0 >= v39)
                {
                  v19 = v39;
                }

                else
                {
                  v19 = v19 + 100.0;
                }
              }

              v4 = v45;
              a3 = v46;
              v9 = v43;
              v8 = v44;
              v11 = v41;
              v10 = v42;
              result = 488;
              v3 = v40;
            }
          }
        }
      }

      v13 = v13 + v15 * v19;
      if (v6 == v4)
      {
        return result;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAEE8C00()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAEE8C80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_1AAEE8DE0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 8] & ~v8;

  v18(v19);
}

uint64_t sub_1AAEE901C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAEE9070(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAEE90B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAEE9108()
{
  v0 = type metadata accessor for WeightedSum.Element();
  v1 = MEMORY[0x1E69E7360];
  swift_getTupleTypeMetadata2();
  v2 = sub_1AAF8F894();
  v3 = sub_1AAEFE9CC(v2, v1, v0, MEMORY[0x1E69E7370]);

  return v3;
}

double sub_1AAEE9190()
{
  type metadata accessor for WeightedSum.Element();
  sub_1AAF8F3B4();

  swift_getWitnessTable();
  sub_1AAF8F7C4();

  return v1;
}

uint64_t sub_1AAEE9260(double a1)
{
  v3 = *v1;
  v4 = type metadata accessor for WeightedSum.Element();
  v5 = nullsub_1(v3, MEMORY[0x1E69E7360]);
  v6 = v5;
  v7 = v5 + 64;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  while (v10)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v20 = *(*(v6 + 48) + ((v14 << 9) | (8 * v15)));
    sub_1AAF8F3F4();
    v16 = sub_1AAF8F404();
    v18 = v17;
    if (!(*(*(v4 - 8) + 48))(v17, 1, v4))
    {
      *v18 = *v18 * a1;
    }

    result = v16(v19, 0);
    v13 = v14;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAEE9410()
{
  type metadata accessor for WeightedSum.Element();

  sub_1AAF8F3D4();
  return sub_1AAF8F3C4();
}

uint64_t sub_1AAEE94E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, double *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v9 + *v10;
  v12 = type metadata accessor for WeightedSum.Element();
  (*(v6 + 16))(v8, a1 + *(v12 + 28), a2);
  *a3 = v11;
  return (*(v6 + 32))(a3 + *(v12 + 28), v8, a2);
}

BOOL sub_1AAEE9608(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for WeightedSum.Element();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18[-v11];
  *&v18[-v11] = *a1;
  v14 = *(v4 - 8);
  (*(v14 + 16))(&v18[*(v13 + 48) - v11], a2, v4, v10);
  (*(v6 + 32))(v8, v12, TupleTypeMetadata2);
  v15 = *(TupleTypeMetadata2 + 48);
  v16 = *&v8[v15];
  (*(v14 + 8))(&v8[v15], v4);
  return v16 != 0.0;
}

uint64_t sub_1AAEE97B0()
{
  v0 = type metadata accessor for WeightedSum();
  swift_getWitnessTable();
  sub_1AAF8B194(v0, &v3);
  v1 = sub_1AAEE9410();

  return v1;
}

uint64_t sub_1AAEE9850()
{
  swift_getKeyPath();
  type metadata accessor for WeightedSum.Element();
  v0 = sub_1AAF8F3E4();

  swift_getKeyPath();
  v1 = sub_1AAF8F3E4();

  v2 = sub_1AAD1BE80(v0, v1);

  return v2 & 1;
}

uint64_t sub_1AAEE99AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAEE9108();
  *a1 = result;
  return result;
}

uint64_t sub_1AAEE99D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAEE9410();
  *a1 = result;
  return result;
}

uint64_t sub_1AAEE9A10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAEE97B0();
  *a1 = result;
  return result;
}

uint64_t sub_1AAEE9A90(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v88 = a3;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v86 = *v85;
    if (!*v85)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_1AADAA0A4(v7);
      v7 = result;
    }

    v76 = (v7 + 16);
    v77 = *(v7 + 16);
    if (v77 >= 2)
    {
      while (*v88)
      {
        v78 = (v7 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1AAEEA078((*v88 + 552 * *v78), (*v88 + 552 * *v80), (*v88 + 552 * v81), v86);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_116;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_117;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_118;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_128;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*v88 + 552 * v6);
      v10 = 552 * v8;
      v11 = (*v88 + 552 * v8);
      v12 = *v11;
      v13 = v8 + 2;
      v14 = v11 + 138;
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v17 = (v9 < v12) ^ (*v14 >= v15);
        ++v13;
        v14 += 69;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_121;
      }

      if (v8 < v6)
      {
        v18 = 552 * v6 - 552;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v21 = *v88;
            if (!*v88)
            {
              goto LABEL_127;
            }

            memcpy(__dst, (v21 + v10), sizeof(__dst));
            memmove((v21 + v10), (v21 + v18), 0x228uLL);
            result = memcpy((v21 + v18), __dst, 0x228uLL);
          }

          ++v20;
          v18 -= 552;
          v10 += 552;
        }

        while (v20 < v19);
        v5 = v88[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_120;
      }

      if (v6 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v6 < v8)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AAD68568(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v29 = *(v7 + 16);
    v28 = *(v7 + 24);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_1AAD68568((v28 > 1), v29 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v30;
    v31 = v7 + 32;
    v32 = (v7 + 32 + 16 * v29);
    *v32 = v8;
    v32[1] = v6;
    v86 = *v85;
    if (!*v85)
    {
      goto LABEL_129;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v7 + 32);
          v35 = *(v7 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_59:
          if (v37)
          {
            goto LABEL_106;
          }

          v50 = (v7 + 16 * v30);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_108;
          }

          v56 = (v31 + 16 * v33);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_113;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v30 < 2)
        {
          goto LABEL_114;
        }

        v60 = (v7 + 16 * v30);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_74:
        if (v55)
        {
          goto LABEL_110;
        }

        v63 = (v31 + 16 * v33);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_112;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_81:
        if (v33 - 1 >= v30)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v88)
        {
          goto LABEL_126;
        }

        v71 = (v31 + 16 * (v33 - 1));
        v72 = *v71;
        v73 = (v31 + 16 * v33);
        v74 = v73[1];
        sub_1AAEEA078((*v88 + 552 * *v71), (*v88 + 552 * *v73), (*v88 + 552 * v74), v86);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_101;
        }

        if (v33 > *(v7 + 16))
        {
          goto LABEL_102;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v7 + 16);
        if (v33 >= v75)
        {
          goto LABEL_103;
        }

        v30 = v75 - 1;
        result = memmove((v31 + 16 * v33), v73 + 2, 16 * (v75 - 1 - v33));
        *(v7 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v31 + 16 * v30;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_104;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_105;
      }

      v45 = (v7 + 16 * v30);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_107;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_109;
      }

      if (v49 >= v41)
      {
        v67 = (v31 + 16 * v33);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_115;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_3:
    v5 = v88[1];
    if (v6 >= v5)
    {
      goto LABEL_90;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_122;
  }

  v86 = v7;
  if (v8 + a4 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v8 + a4;
  }

  if (v7 < v8)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v6 == v7)
  {
LABEL_38:
    v7 = v86;
    goto LABEL_39;
  }

  v22 = *v88;
  v23 = *v88 + 552 * v6;
  v83 = v8;
  v24 = v8 - v6;
LABEL_31:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (*v26 >= *(v26 - 69))
    {
LABEL_30:
      ++v6;
      v23 += 552;
      --v24;
      if (v6 != v7)
      {
        goto LABEL_31;
      }

      v6 = v7;
      v8 = v83;
      goto LABEL_38;
    }

    if (!v22)
    {
      break;
    }

    memcpy(__dst, v26, sizeof(__dst));
    memcpy(v26, v26 - 69, 0x228uLL);
    result = memcpy(v26 - 69, __dst, 0x228uLL);
    v26 -= 69;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}

uint64_t sub_1AAEEA078(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 552;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 552;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[552 * v11] <= a4)
    {
      memmove(a4, __src, 552 * v11);
    }

    v12 = &v4[552 * v11];
    if (v10 >= 552 && v6 > v7)
    {
LABEL_21:
      v15 = v6 - 552;
      v5 -= 552;
      do
      {
        v16 = v5 + 552;
        v17 = (v12 - 552);
        if (*(v12 - 69) < *v15)
        {
          if (v16 != v6)
          {
            memmove(v5, v6 - 552, 0x228uLL);
          }

          if (v12 <= v4 || (v6 -= 552, v15 <= v7))
          {
            v6 = v15;
            goto LABEL_33;
          }

          goto LABEL_21;
        }

        if (v16 != v12)
        {
          memmove(v5, v12 - 552, 0x228uLL);
        }

        v5 -= 552;
        v12 -= 552;
      }

      while (v17 > v4);
      v12 = v17;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[552 * v9] <= a4)
    {
      memmove(a4, __dst, 552 * v9);
    }

    v12 = &v4[552 * v9];
    if (v8 < 552)
    {
      v6 = v7;
    }

    else
    {
      if (v6 < v5)
      {
        while (*v6 < *v4)
        {
          v13 = v6;
          v14 = v7 == v6;
          v6 += 552;
          if (!v14)
          {
            goto LABEL_12;
          }

LABEL_13:
          v7 += 552;
          if (v4 >= v12 || v6 >= v5)
          {
            goto LABEL_15;
          }
        }

        v13 = v4;
        v14 = v7 == v4;
        v4 += 552;
        if (v14)
        {
          goto LABEL_13;
        }

LABEL_12:
        memmove(v7, v13, 0x228uLL);
        goto LABEL_13;
      }

LABEL_15:
      v6 = v7;
    }
  }

LABEL_33:
  v18 = (v12 - v4) / 552;
  if (v6 != v4 || v6 >= &v4[552 * v18])
  {
    memmove(v6, v4, 552 * v18);
  }

  return 1;
}

uint64_t sub_1AAEEA300(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v69 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v4, 0);
    v5 = v69;
    v6 = a1 + 56;
    v7 = v4;
    do
    {
      MinX = CGRectGetMinX(*(v6 - 24));
      v10 = *(v69 + 16);
      v9 = *(v69 + 24);
      if (v10 >= v9 >> 1)
      {
        v11 = MinX;
        sub_1AAD1FAF4((v9 > 1), v10 + 1, 1);
        MinX = v11;
      }

      *(v69 + 16) = v10 + 1;
      *(v69 + 8 * v10 + 32) = MinX;
      v6 += 32;
      --v7;
    }

    while (v7);
  }

  v12 = sub_1AAD1FCE0(v5, a2);
  v13 = *(v12 + 16);
  if (v13)
  {
    if (v13 <= 3)
    {
      v14 = 0;
      v15 = 0.0;
LABEL_13:
      v18 = v13 - v14;
      v19 = (v12 + 8 * v14 + 32);
      do
      {
        v20 = *v19++;
        v15 = v15 + v20;
        --v18;
      }

      while (v18);
      goto LABEL_15;
    }

    v14 = v13 & 0x7FFFFFFFFFFFFFFCLL;
    v16 = (v12 + 48);
    v15 = 0.0;
    v17 = v13 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v15 = v15 + *(v16 - 2) + *(v16 - 1) + *v16 + v16[1];
      v16 += 4;
      v17 -= 4;
    }

    while (v17);
    if (v13 != v14)
    {
      goto LABEL_13;
    }
  }

LABEL_15:

  v21 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v70 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v4, 0);
    v21 = v70;
    v22 = a1 + 56;
    v23 = v4;
    do
    {
      MinY = CGRectGetMinY(*(v22 - 24));
      v26 = *(v70 + 16);
      v25 = *(v70 + 24);
      if (v26 >= v25 >> 1)
      {
        v27 = MinY;
        sub_1AAD1FAF4((v25 > 1), v26 + 1, 1);
        MinY = v27;
      }

      *(v70 + 16) = v26 + 1;
      *(v70 + 8 * v26 + 32) = MinY;
      v22 += 32;
      --v23;
    }

    while (v23);
  }

  v28 = sub_1AAD1FCE0(v21, a2);
  v29 = *(v28 + 16);
  if (v29)
  {
    if (v29 <= 3)
    {
      v30 = 0;
      v31 = 0.0;
LABEL_27:
      v34 = v29 - v30;
      v35 = (v28 + 8 * v30 + 32);
      do
      {
        v36 = *v35++;
        v31 = v31 + v36;
        --v34;
      }

      while (v34);
      goto LABEL_29;
    }

    v30 = v29 & 0x7FFFFFFFFFFFFFFCLL;
    v32 = (v28 + 48);
    v31 = 0.0;
    v33 = v29 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v31 = v31 + *(v32 - 2) + *(v32 - 1) + *v32 + v32[1];
      v32 += 4;
      v33 -= 4;
    }

    while (v33);
    if (v29 != v30)
    {
      goto LABEL_27;
    }
  }

LABEL_29:

  v37 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v71 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v4, 0);
    v37 = v71;
    v38 = a1 + 56;
    v39 = v4;
    do
    {
      MaxX = CGRectGetMaxX(*(v38 - 24));
      v42 = *(v71 + 16);
      v41 = *(v71 + 24);
      if (v42 >= v41 >> 1)
      {
        v43 = MaxX;
        sub_1AAD1FAF4((v41 > 1), v42 + 1, 1);
        MaxX = v43;
      }

      *(v71 + 16) = v42 + 1;
      *(v71 + 8 * v42 + 32) = MaxX;
      v38 += 32;
      --v39;
    }

    while (v39);
  }

  v44 = sub_1AAD1FCE0(v37, a2);
  v45 = *(v44 + 16);
  if (v45)
  {
    if (v45 <= 3)
    {
      v46 = 0;
      v47 = 0.0;
LABEL_41:
      v50 = v45 - v46;
      v51 = (v44 + 8 * v46 + 32);
      do
      {
        v52 = *v51++;
        v47 = v47 + v52;
        --v50;
      }

      while (v50);
      goto LABEL_43;
    }

    v46 = v45 & 0x7FFFFFFFFFFFFFFCLL;
    v48 = (v44 + 48);
    v47 = 0.0;
    v49 = v45 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v47 = v47 + *(v48 - 2) + *(v48 - 1) + *v48 + v48[1];
      v48 += 4;
      v49 -= 4;
    }

    while (v49);
    if (v45 != v46)
    {
      goto LABEL_41;
    }
  }

LABEL_43:

  v53 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v72 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v4, 0);
    v53 = v72;
    v54 = a1 + 56;
    do
    {
      MaxY = CGRectGetMaxY(*(v54 - 24));
      v57 = *(v72 + 16);
      v56 = *(v72 + 24);
      if (v57 >= v56 >> 1)
      {
        v58 = MaxY;
        sub_1AAD1FAF4((v56 > 1), v57 + 1, 1);
        MaxY = v58;
      }

      *(v72 + 16) = v57 + 1;
      *(v72 + 8 * v57 + 32) = MaxY;
      v54 += 32;
      --v4;
    }

    while (v4);
  }

  v59 = sub_1AAD1FCE0(v53, a2);
  v60 = *(v59 + 16);
  if (v60)
  {
    if (v60 <= 3)
    {
      v61 = 0;
      v62 = 0.0;
LABEL_55:
      v65 = v60 - v61;
      v66 = (v59 + 8 * v61 + 32);
      do
      {
        v67 = *v66++;
        v62 = v62 + v67;
        --v65;
      }

      while (v65);
      goto LABEL_57;
    }

    v61 = v60 & 0x7FFFFFFFFFFFFFFCLL;
    v63 = (v59 + 48);
    v62 = 0.0;
    v64 = v60 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v62 = v62 + *(v63 - 2) + *(v63 - 1) + *v63 + v63[1];
      v63 += 4;
      v64 -= 4;
    }

    while (v64);
    if (v60 != v61)
    {
      goto LABEL_55;
    }
  }

LABEL_57:
}

uint64_t sub_1AAEEA848@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 16);
  if (v4)
  {
    v7 = result;
    v9 = (result + 32);
    v10 = result + 32 + 72 * v4;
    v11 = *(v10 - 56);
    v12 = *(v10 - 24);
    v34 = *(v10 - 40);
    v35 = v12;
    v36 = *(v10 - 8);
    v33[0] = *(v10 - 72);
    v33[1] = v11;
    v29 = v11;
    v30 = v34;
    v31 = v12;
    v32 = v36;
    sub_1AADEA050(v33, v28);
    v28[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v4, 0);
    v13 = v28[0];
    v14 = *(v28[0] + 16);
    v15 = v4;
    do
    {
      v16 = *v9;
      v28[0] = v13;
      v17 = *(v13 + 24);
      if (v14 >= v17 >> 1)
      {
        sub_1AAD1FAF4((v17 > 1), v14 + 1, 1);
        v13 = v28[0];
      }

      *(v13 + 16) = v14 + 1;
      *(v13 + 8 * v14 + 32) = v16;
      v9 += 9;
      ++v14;
      --v15;
    }

    while (v15);

    sub_1AAEE85D4(v13, a2, a3);
    v19 = v18;

    v28[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v4, 0);
    v20 = v28[0];
    v21 = (v7 + 40);
    v22 = *(v28[0] + 16);
    do
    {
      v23 = *v21;
      v28[0] = v20;
      v24 = *(v20 + 24);
      if (v22 >= v24 >> 1)
      {
        sub_1AAD1FAF4((v24 > 1), v22 + 1, 1);
        v20 = v28[0];
      }

      *(v20 + 16) = v22 + 1;
      *(v20 + 8 * v22 + 32) = v23;
      v21 += 9;
      ++v22;
      --v4;
    }

    while (v4);

    sub_1AAEE88D4(v20, a2, a3);
    v26 = v25;

    *a4 = v19;
    *(a4 + 8) = v26;
    v27 = v30;
    *(a4 + 16) = v29;
    *(a4 + 32) = v27;
    *(a4 + 48) = v31;
    *(a4 + 64) = v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1AAEEAA74(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result >> 62;
  if (result >> 62)
  {
    goto LABEL_48;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_49:
    type metadata accessor for ChartDisplayList.LineItem.Points();
    result = swift_allocObject();
    *(result + 16) = MEMORY[0x1E69E7CC0];
    return result;
  }

  while (1)
  {
    v6 = v3 & 0xC000000000000001;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1AC598D40](0, v3);
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_6;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v8 = *(v3 + 32);

LABEL_6:
    swift_beginAccess();
    v9 = *(v8 + 16);

    v10 = *(v9 + 16);

    v11 = 0;
    do
    {
      if (v6)
      {
        v12 = MEMORY[0x1AC598D40](v11, v3);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v11 >= *(v7 + 16))
        {
          goto LABEL_46;
        }

        v12 = *(v3 + 8 * v11 + 32);

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }
      }

      swift_beginAccess();
      if (*(*(v12 + 16) + 16) != v10)
      {
        if (v6)
        {
          v17 = MEMORY[0x1AC598D40](0, v3);
        }

        else
        {
          v17 = *(v3 + 32);
        }

        return v17;
      }

      ++v11;
    }

    while (v13 != v5);
    v14 = MEMORY[0x1E69E7CC0];
    if (!v10)
    {
      v15 = MEMORY[0x1E69E7CC0];
LABEL_23:
      type metadata accessor for ChartDisplayList.LineItem.Points();
      result = swift_allocObject();
      *(result + 16) = v15;
      return result;
    }

    v50 = MEMORY[0x1E69E7CC0];
    sub_1AAD416D4(0, v10, 0);
    v15 = v50;
    if (v4)
    {
      v16 = sub_1AAF8FFB4();
    }

    else
    {
      v16 = *(v7 + 16);
    }

    v18 = 0;
    v39 = v10;
    v4 = 72;
    while (v18 != v10)
    {
      v42 = v15;
      if (v16)
      {
        v49 = v14;
        sub_1AAD416D4(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
          goto LABEL_47;
        }

        v19 = 0;
        v20 = v49;
        while (1)
        {
          if (v6)
          {
            v21 = MEMORY[0x1AC598D40](v19, v3);
          }

          else
          {
            v21 = *(v3 + 8 * v19 + 32);
          }

          swift_beginAccess();
          v22 = *(v21 + 16);
          if (v18 >= *(v22 + 16))
          {
            break;
          }

          v23 = v22 + 72 * v18;
          v44 = *(v23 + 32);
          v24 = *(v23 + 48);
          v25 = *(v23 + 64);
          v26 = *(v23 + 80);
          v48 = *(v23 + 96);
          v46 = v25;
          v47 = v26;
          v45 = v24;
          sub_1AADEA050(&v44, v43);

          v49 = v20;
          v28 = *(v20 + 16);
          v27 = *(v20 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_1AAD416D4((v27 > 1), v28 + 1, 1);
            v20 = v49;
          }

          ++v19;
          *(v20 + 16) = v28 + 1;
          v29 = v20 + 72 * v28;
          *(v29 + 32) = v44;
          v30 = v45;
          v31 = v46;
          v32 = v47;
          *(v29 + 96) = v48;
          *(v29 + 64) = v31;
          *(v29 + 80) = v32;
          *(v29 + 48) = v30;
          if (v16 == v19)
          {
            v10 = v39;
            goto LABEL_39;
          }
        }

        __break(1u);
        goto LABEL_44;
      }

      v20 = v14;
LABEL_39:
      sub_1AAEEA848(v20, a2, a3, v51);

      v15 = v42;
      v50 = v42;
      v34 = *(v42 + 16);
      v33 = *(v42 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1AAD416D4((v33 > 1), v34 + 1, 1);
        v15 = v50;
      }

      ++v18;
      *(v15 + 16) = v34 + 1;
      v35 = v15 + 72 * v34;
      *(v35 + 32) = v51[0];
      v36 = v51[1];
      v37 = v51[2];
      v38 = v51[3];
      *(v35 + 96) = v52;
      *(v35 + 64) = v37;
      *(v35 + 80) = v38;
      *(v35 + 48) = v36;
      v14 = MEMORY[0x1E69E7CC0];
      if (v18 == v10)
      {
        goto LABEL_23;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    result = sub_1AAF8FFB4();
    v5 = result;
    if (!result)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAEEAE80(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v6 = result;
    v7 = MEMORY[0x1E69E7CC0];
    v28 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v3, 0);
    v8 = v6 + 4;
    v9 = *(v28 + 16);
    v10 = v3;
    do
    {
      v11 = *v8;
      v12 = *(v28 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_1AAD1FAF4((v12 > 1), v9 + 1, 1);
      }

      *(v28 + 16) = v9 + 1;
      *(v28 + 8 * v9 + 32) = v11;
      v8 += 4;
      ++v9;
      --v10;
    }

    while (v10);

    sub_1AAEE85D4(v28, a2, a3);

    sub_1AAD1FAF4(0, v3, 0);
    v13 = *(v7 + 16);
    v14 = v6 + 5;
    v15 = v3;
    do
    {
      v16 = *v14;
      v17 = *(v7 + 24);
      if (v13 >= v17 >> 1)
      {
        sub_1AAD1FAF4((v17 > 1), v13 + 1, 1);
      }

      *(v7 + 16) = v13 + 1;
      *(v7 + 8 * v13 + 32) = v16;
      v14 += 4;
      ++v13;
      --v15;
    }

    while (v15);

    sub_1AAEE85D4(v7, a2, a3);

    sub_1AAD1FAF4(0, v3, 0);
    v18 = *(v7 + 16);
    v19 = v6 + 6;
    v20 = v3;
    do
    {
      v21 = *v19;
      v22 = *(v7 + 24);
      if (v18 >= v22 >> 1)
      {
        sub_1AAD1FAF4((v22 > 1), v18 + 1, 1);
      }

      *(v7 + 16) = v18 + 1;
      *(v7 + 8 * v18 + 32) = v21;
      v19 += 4;
      ++v18;
      --v20;
    }

    while (v20);

    sub_1AAEE88D4(v7, a2, a3);

    sub_1AAD1FAF4(0, v3, 0);
    v23 = v7;
    v24 = *(v7 + 16);
    v25 = v6 + 7;
    do
    {
      v26 = *v25;
      v27 = *(v23 + 24);
      if (v24 >= v27 >> 1)
      {
        sub_1AAD1FAF4((v27 > 1), v24 + 1, 1);
      }

      *(v23 + 16) = v24 + 1;
      *(v23 + 8 * v24 + 32) = v26;
      v25 += 4;
      ++v24;
      --v3;
    }

    while (v3);

    sub_1AAEE88D4(v23, a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1AAEEB1B0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result >> 62;
  if (result >> 62)
  {
    goto LABEL_48;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_49:
    type metadata accessor for ChartDisplayList.AreaItem.Points();
    result = swift_allocObject();
    *(result + 16) = MEMORY[0x1E69E7CC0];
    return result;
  }

  while (1)
  {
    v6 = v3 & 0xC000000000000001;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1AC598D40](0, v3);
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_6;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v8 = *(v3 + 32);

LABEL_6:
    v9 = *(v8 + 16);

    v10 = *(v9 + 16);

    v11 = 0;
    do
    {
      if (v6)
      {
        v12 = MEMORY[0x1AC598D40](v11, v3);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v11 >= *(v7 + 16))
        {
          goto LABEL_46;
        }

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }
      }

      if (*(*(v12 + 16) + 16) != v10)
      {
        if (v6)
        {
          v17 = MEMORY[0x1AC598D40](0, v3);
        }

        else
        {
          v17 = *(v3 + 32);
        }

        return v17;
      }

      ++v11;
    }

    while (v13 != v5);
    v14 = MEMORY[0x1E69E7CC0];
    if (!v10)
    {
      v15 = MEMORY[0x1E69E7CC0];
LABEL_23:
      type metadata accessor for ChartDisplayList.AreaItem.Points();
      result = swift_allocObject();
      *(result + 16) = v15;
      return result;
    }

    v42 = MEMORY[0x1E69E7CC0];
    sub_1AAD416F4(0, v10, 0);
    v15 = v42;
    if (v4)
    {
      v16 = sub_1AAF8FFB4();
    }

    else
    {
      v16 = *(v7 + 16);
    }

    v4 = 0;
    while (v4 != v10)
    {
      if (v16)
      {
        v41 = v14;
        sub_1AAD416F4(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
          goto LABEL_47;
        }

        v18 = 0;
        v19 = v41;
        while (1)
        {

          v21 = *(v20 + 16);
          if (v4 >= *(v21 + 16))
          {
            break;
          }

          v22 = v21 + 32 * v4;
          v39 = *(v22 + 48);
          v40 = *(v22 + 32);

          v24 = *(v41 + 16);
          v23 = *(v41 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_1AAD416F4((v23 > 1), v24 + 1, 1);
          }

          ++v18;
          *(v41 + 16) = v24 + 1;
          v25 = v41 + 32 * v24;
          *(v25 + 32) = v40;
          *(v25 + 48) = v39;
          if (v16 == v18)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
        goto LABEL_44;
      }

      v19 = v14;
LABEL_39:
      sub_1AAEEAE80(v19, a2, a3);
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v35 = *(v42 + 16);
      v34 = *(v42 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1AAD416F4((v34 > 1), v35 + 1, 1);
      }

      ++v4;
      *(v42 + 16) = v35 + 1;
      v36 = (v42 + 32 * v35);
      v36[4] = v27;
      v36[5] = v29;
      v36[6] = v31;
      v36[7] = v33;
      v14 = MEMORY[0x1E69E7CC0];
      if (v4 == v10)
      {
        goto LABEL_23;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    result = sub_1AAF8FFB4();
    v5 = result;
    if (!result)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAEEB514(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1AAD41614(0, v6, 0);
  v7 = v19;
  for (i = (a1 + 32); ; ++i)
  {
    v17 = *i;

    sub_1AAEE4398(&v17, a2, a3, a4, &v18);
    if (v5)
    {
      break;
    }

    v5 = 0;

    v12 = v18;
    v19 = v7;
    v14 = *(v7 + 16);
    v13 = *(v7 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1AAD41614((v13 > 1), v14 + 1, 1);
      v7 = v19;
    }

    *(v7 + 16) = v14 + 1;
    *(v7 + 8 * v14 + 32) = v12;
    if (!--v6)
    {
      return v7;
    }
  }

  __break(1u);
  return result;
}

void sub_1AAEEB648(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) > 1uLL)
  {
    v7 = sub_1AAEE3A60(a1);
    v8 = v7[2];
    if (v8)
    {
      v33 = a2;
      v39 = MEMORY[0x1E69E7CC0];
      sub_1AAD41664(0, v8, 0);
      v9 = v39;
      v10 = v8 - 1;
      v11 = 4;
      for (i = v8 - 1; ; --i)
      {
        memcpy(__dst, &v7[v11], 0x220uLL);
        sub_1AAEEBC84(__dst, v38, &qword_1ED9AED80, sub_1AADAC01C, type metadata accessor for WeightedSum.Element);

        v39 = v9;
        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1AAD41664((v13 > 1), v14 + 1, 1);
          v9 = v39;
        }

        *(v9 + 16) = v14 + 1;
        memcpy((v9 + 488 * v14 + 32), &__dst[8], 0x1E8uLL);
        if (!i)
        {
          break;
        }

        v11 += 68;
      }

      v37 = MEMORY[0x1E69E7CC0];
      sub_1AAD41644(0, v8, 0);
      v15 = v37;
      for (j = 4; ; j += 68)
      {
        memcpy(v38, &v7[j], sizeof(v38));
        sub_1AAEEBC84(v38, v36, &qword_1ED9AED80, sub_1AADAC01C, type metadata accessor for WeightedSum.Element);
        sub_1AAEEBA60(v38 + 8);
        v37 = v15;
        v18 = *(v15 + 16);
        v17 = *(v15 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1AAD41644((v17 > 1), v18 + 1, 1);
          v15 = v37;
        }

        v19 = v38[31];
        v20 = *(&v38[31] + 1);
        v21 = v15 + 48 * v18;
        v22 = v38[32];
        v23 = v38[33];
        *(v15 + 16) = v18 + 1;
        *(v21 + 32) = v19;
        *(v21 + 40) = v20;
        *(v21 + 48) = v22;
        *(v21 + 64) = v23;
        if (!v10)
        {
          break;
        }

        --v10;
      }

      v36[0] = MEMORY[0x1E69E7CC0];
      sub_1AACEF664(0, v8, 0);
      v24 = v36[0];
      v25 = *(v36[0] + 16);
      v26 = 4;
      do
      {
        v27 = v7[v26];
        v36[0] = v24;
        v28 = *(v24 + 24);
        if (v25 >= v28 >> 1)
        {
          sub_1AACEF664((v28 > 1), v25 + 1, 1);
          v24 = v36[0];
        }

        *(v24 + 16) = v25 + 1;
        *(v24 + 8 * v25 + 32) = v27;
        v26 += 68;
        ++v25;
        --v8;
      }

      while (v8);

      a2 = v33;
    }

    else
    {

      v24 = MEMORY[0x1E69E7CC0];
      v15 = MEMORY[0x1E69E7CC0];
      v9 = MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for ChartDisplayListMerger.Context();
    v29 = swift_allocObject();
    *(v29 + 16) = v9;
    *(v29 + 24) = v24;
    v30 = *(v24 + 16);
    if (v30)
    {
      v31 = sub_1AAD1DBDC(*(v24 + 16), 0);
      if (sub_1AAD1DBF0(__dst, (v31 + 4), v30, 0, v30) == v30)
      {
LABEL_26:

        sub_1AAEE3C30(v15, v24, v31, v29, __dst);
        v3 = *__dst;
        v4 = *&__dst[8];
        v32 = *&__dst[16];
        v34 = *&__dst[32];

        v6 = v32;
        v5 = v34;
        goto LABEL_27;
      }

      __break(1u);
    }

    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  sub_1AADA69EC(a1, __dst);
  if (sub_1AAEEBAB4(__dst) == 1)
  {
    sub_1AAEE23A8(MEMORY[0x1E69E7CC0], v38);
    v3 = v38[0];
    v4 = *(&v38[0] + 1);
    v5 = v38[2];
    v6 = v38[1];
  }

  else
  {
    sub_1AAEEBA60(&__dst[16]);
    v3 = *&__dst[504];
    v4 = *&__dst[512];
    v6 = *&__dst[520];
    v5 = *&__dst[536];
  }

LABEL_27:
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 32) = v5;
}

uint64_t sub_1AAEEBAB4(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1AAEEBBE0()
{
  if (!qword_1EB426B58)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB426B58);
    }
  }
}

uint64_t sub_1AAEEBC84(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1AAEEBCF4(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1AAEEBCF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1AAEEBD58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAEEBDC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartDisplayList.ClipRect(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAEEBE24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAEEBED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1AAEEBF40@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2 * *a2;
  *a3 = result;
  return result;
}

uint64_t sub_1AAEEBFD8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (((v1 >> 1) & 0x3E) != 0)
  {
    return 64 - ((v1 >> 1) & 0x3E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAEEBFFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AAEEC040(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AAEEC0B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 795))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 480);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AAEEC10C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 794) = 0;
    *(result + 792) = 0;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 795) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 795) = 0;
    }

    if (a2)
    {
      *(result + 480) = a2;
    }
  }

  return result;
}

uint64_t sub_1AAEEC248(__int128 *a1)
{
  v2 = v1;
  v4 = a1[1];
  v41 = *a1;
  v42[0] = v4;
  *(v42 + 9) = *(a1 + 25);
  if (*(v1 + 24) == 1)
  {
    v5 = a1[1];
    *v1 = *a1;
    *(v1 + 16) = v5;
    *(v1 + 25) = *(a1 + 25);
    sub_1AAEECA70(&v41, &v39);
  }

  else
  {
    sub_1AAEF2A40(&v41);
  }

  v6 = a1[4];
  v39 = a1[3];
  v40[0] = v6;
  *(v40 + 9) = *(a1 + 73);
  if (*(v1 + 72) == 1)
  {
    v7 = a1[4];
    *(v1 + 48) = a1[3];
    *(v1 + 64) = v7;
    *(v1 + 73) = *(a1 + 73);
    sub_1AAEECA70(&v39, &v37);
  }

  else
  {
    sub_1AAEF2A40(&v39);
  }

  v8 = a1[10];
  v37 = a1[9];
  v38[0] = v8;
  *(v38 + 9) = *(a1 + 169);
  if (*(v1 + 168) == 1)
  {
    v9 = a1[10];
    *(v1 + 144) = a1[9];
    *(v1 + 160) = v9;
    *(v1 + 169) = *(a1 + 169);
    sub_1AAEECA70(&v37, &v35);
  }

  else
  {
    sub_1AAEF2A40(&v37);
  }

  v10 = a1[13];
  v35 = a1[12];
  v36[0] = v10;
  *(v36 + 9) = *(a1 + 217);
  if (*(v1 + 216) == 1)
  {
    v11 = a1[13];
    *(v1 + 192) = a1[12];
    *(v1 + 208) = v11;
    *(v1 + 217) = *(a1 + 217);
    sub_1AAEECA70(&v35, &v33);
  }

  else
  {
    sub_1AAEF2A40(&v35);
  }

  v12 = a1[19];
  v33 = a1[18];
  v34[0] = v12;
  *(v34 + 9) = *(a1 + 313);
  v13 = (v1 + 288);
  if (*(v2 + 312) == 1)
  {
    v14 = a1[19];
    *v13 = a1[18];
    *(v2 + 304) = v14;
    *(v2 + 313) = *(a1 + 313);
    sub_1AAEECA70(&v33, &v31);
  }

  else
  {
    sub_1AAEF2A40(&v33);
  }

  v15 = a1[22];
  v31 = a1[21];
  v32[0] = v15;
  *(v32 + 9) = *(a1 + 361);
  if (*(v2 + 360) == 1)
  {
    v16 = a1[22];
    *(v2 + 336) = a1[21];
    *(v2 + 352) = v16;
    *(v2 + 361) = *(a1 + 361);
    sub_1AAEECA70(&v31, &v29);
  }

  else
  {
    sub_1AAEF2A40(&v31);
  }

  v17 = a1[25];
  v29 = a1[24];
  v30[0] = v17;
  *(v30 + 9) = *(a1 + 409);
  if (*(v2 + 408) == 1)
  {
    v18 = a1[25];
    *(v2 + 384) = a1[24];
    *(v2 + 400) = v18;
    *(v2 + 409) = *(a1 + 409);
    sub_1AAEECA70(&v29, &v27);
  }

  else
  {
    sub_1AAEF2A40(&v29);
  }

  v19 = a1[28];
  v27 = a1[27];
  v28[0] = v19;
  *(v28 + 9) = *(a1 + 457);
  if (*(v2 + 456) == 1)
  {
    v20 = a1[28];
    *(v2 + 432) = a1[27];
    *(v2 + 448) = v20;
    *(v2 + 457) = *(a1 + 457);
    result = sub_1AAEECA70(&v27, v26);
    v22 = *(a1 + 60);
    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
    result = sub_1AAEF2A40(&v27);
    v22 = *(a1 + 60);
    if (!v22)
    {
      goto LABEL_28;
    }
  }

  if (!*(v2 + 480))
  {
    *(v2 + 480) = v22;

    if (*(v2 + 792))
    {
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26[0] = *(v2 + 480);
  sub_1AAEECB24(v22, sub_1AAEEC8BC, 0, isUniquelyReferenced_nonNull_native, v26);

  *(v2 + 480) = v26[0];
LABEL_28:
  if (*(v2 + 792))
  {
LABEL_29:
    v24 = 1;
    goto LABEL_32;
  }

LABEL_31:
  v24 = *(a1 + 792);
LABEL_32:
  *(v2 + 792) = v24;
  *(v2 + 793) = (*(v2 + 793) | *(a1 + 793)) & 1;
  if (*(v2 + 794))
  {
    v25 = 1;
  }

  else
  {
    v25 = *(a1 + 794);
  }

  *(v2 + 794) = v25;
  return result;
}

uint64_t sub_1AAEEC5A0()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v10 = *(v0 + 6);
  v11 = *(v0 + 5);
  v6 = *(v0 + 7);
  v7 = v0[32];
  v8 = v0[64];
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v1);
  sub_1AAF8E7A4();
  sub_1AAF906B4();
  MEMORY[0x1AC5992C0](v2);
  sub_1AAF0A240(v12, v3, v4, v5, v7);
  sub_1AAF04AC0(v12, v11, v10, v6, v8);
  return sub_1AAF906F4();
}

uint64_t sub_1AAEEC674(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v11 = *(v1 + 6);
  v12 = *(v1 + 5);
  v7 = *(v1 + 7);
  v8 = v1[32];
  v9 = v1[64];
  MEMORY[0x1AC5992C0](*v1);
  sub_1AAF8E7A4();
  sub_1AAF906B4();
  MEMORY[0x1AC5992C0](v3);
  sub_1AAF0A240(a1, v4, v5, v6, v8);

  return sub_1AAF04AC0(a1, v12, v11, v7, v9);
}

uint64_t sub_1AAEEC738()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v10 = *(v0 + 6);
  v11 = *(v0 + 5);
  v6 = *(v0 + 7);
  v7 = v0[32];
  v8 = v0[64];
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v1);
  sub_1AAF8E7A4();
  sub_1AAF906B4();
  MEMORY[0x1AC5992C0](v2);
  sub_1AAF0A240(v12, v3, v4, v5, v7);
  sub_1AAF04AC0(v12, v11, v10, v6, v8);
  return sub_1AAF906F4();
}

BOOL sub_1AAEEC808(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AAEEC910(v7, v9);
}

unint64_t sub_1AAEEC868()
{
  result = qword_1ED9B0440;
  if (!qword_1ED9B0440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0440);
  }

  return result;
}

uint64_t sub_1AAEEC8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v2;
  v11 = *(a1 + 64);
  v3 = v11;
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  *(a2 + 32) = v9;
  *(a2 + 48) = v2;
  *(a2 + 64) = v3;
  *a2 = v5;
  *(a2 + 16) = v4;
  *(a2 + 72) = *(a1 + 72);
  return sub_1AAD9B9C0(v8, v7);
}

BOOL sub_1AAEEC910(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = sub_1AAF8E7A4();
  if (v4 != sub_1AAF8E7A4() || a1[2] != a2[2] || !sub_1AAF0A518(*(a1 + 1), *(a1 + 2), *(a1 + 3), a1[32], *(a2 + 1), *(a2 + 2), *(a2 + 3), a2[32]))
  {
    return 0;
  }

  v5 = *(a1 + 5);
  v6 = *(a1 + 6);
  v7 = *(a1 + 7);
  v8 = a1[64];
  v9 = *(a2 + 5);
  v10 = *(a2 + 6);
  v11 = *(a2 + 7);
  v12 = a2[64];
  if (v8 > 0xFB)
  {
    if (v12 > 0xFB)
    {
      return 1;
    }

    goto LABEL_10;
  }

  if (v12 > 0xFB)
  {
LABEL_10:
    sub_1AADB3078(v5, v6, v7, v8);
    sub_1AADB3078(v9, v10, v11, v12);
    sub_1AADB3110(v5, v6, v7, v8);
    sub_1AADB3110(v9, v10, v11, v12);
    return 0;
  }

  return sub_1AAF0A518(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1AAEECA70(uint64_t a1, uint64_t a2)
{
  sub_1AAEECAD4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AAEECAD4()
{
  if (!qword_1ED9AE220)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AE220);
    }
  }
}

uint64_t sub_1AAEECB24(uint64_t a1, void (*a2)(_OWORD *__return_ptr, __int128 *), uint64_t a3, int a4, void *a5)
{
  v70 = a4;
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  for (i = 0; ; i = v19)
  {
    v18 = v10;
    v19 = i;
    if (!v10)
    {
      break;
    }

LABEL_12:
    v21 = __clz(__rbit64(v18)) | (v19 << 6);
    v22 = *(a1 + 56);
    v23 = *(a1 + 48) + 72 * v21;
    v57[0] = *v23;
    v25 = *(v23 + 32);
    v24 = *(v23 + 48);
    v26 = *(v23 + 16);
    v58 = *(v23 + 64);
    v57[2] = v25;
    v57[3] = v24;
    v57[1] = v26;
    v27 = *(v22 + 16 * v21);
    v28 = *(v23 + 48);
    v54 = *(v23 + 32);
    v55 = v28;
    v56[0] = *(v23 + 64);
    v29 = *(v23 + 16);
    v52 = *v23;
    v53 = v29;
    *&v56[8] = v27;
    sub_1AAD9B9C0(v57, v59);
    a2(v61, &v52);
    v59[2] = v54;
    v59[3] = v55;
    v59[4] = *v56;
    v60 = *&v56[16];
    v59[0] = v52;
    v59[1] = v53;
    sub_1AAEECE50(v59);
    if (BYTE1(v61[0]) << 8 == 512)
    {
LABEL_22:
      sub_1AACC9C00();
    }

    v67 = v61[2];
    v68 = v61[3];
    v69 = v62;
    v65 = v61[0];
    v66 = v61[1];
    v31 = v63;
    v30 = v64;
    v32 = *a5;
    v33 = sub_1AADB0454(&v65);
    v35 = v32[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_24;
    }

    v39 = v34;
    if (v32[3] >= v38)
    {
      if ((v70 & 1) == 0)
      {
        v49 = v33;
        sub_1AAD93DA0();
        v33 = v49;
      }
    }

    else
    {
      sub_1AAD88ADC(v38, v70 & 1);
      v33 = sub_1AADB0454(&v65);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_26;
      }
    }

    v10 = (v18 - 1) & v18;
    v41 = *a5;
    if (v39)
    {
      v13 = 16 * v33;
      v14 = (v41[7] + 16 * v33);
      v15 = *v14;
      v16 = v14[1];
      sub_1AADB3024(&v65);
      v17 = (v41[7] + v13);
      *v17 = v31 + v15;
      v17[1] = v30 + v16;
    }

    else
    {
      v41[(v33 >> 6) + 8] |= 1 << v33;
      v42 = v41[6] + 72 * v33;
      *v42 = v65;
      v43 = v66;
      v44 = v67;
      v45 = v68;
      *(v42 + 64) = v69;
      *(v42 + 32) = v44;
      *(v42 + 48) = v45;
      *(v42 + 16) = v43;
      v46 = (v41[7] + 16 * v33);
      *v46 = v31;
      v46[1] = v30;
      v47 = v41[2];
      v37 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v37)
      {
        goto LABEL_25;
      }

      v41[2] = v48;
    }

    v70 = 1;
  }

  v20 = i;
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v11)
    {
      goto LABEL_22;
    }

    v18 = *(v7 + 8 * v19);
    ++v20;
    if (v18)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

uint64_t sub_1AAEECE50(uint64_t a1)
{
  sub_1AAEECEAC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AAEECEAC()
{
  if (!qword_1EB426B60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB426B60);
    }
  }
}

unint64_t sub_1AAEECF24()
{
  result = qword_1EB426B68[0];
  if (!qword_1EB426B68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB426B68);
  }

  return result;
}

uint64_t sub_1AAEECF90()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AAEED038(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v8 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(a3[2] - 8) + 64) + v12;
  v17 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v15)
      {
LABEL_31:
        if (v6 == v15)
        {
          v25 = *(v5 + 48);

          return v25();
        }

        else
        {
          v27 = (a1 + v16) & ~v12;
          if (v9 == v15)
          {
            v28 = *(v8 + 48);
            v29 = *(v8 + 84);
            v30 = a3[3];
          }

          else
          {
            v28 = *(v11 + 48);
            v27 = (v27 + v13 + v14) & ~v14;
            v29 = *(v11 + 84);
            v30 = a3[4];
          }

          return v28(v27, v29, v30);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

char *sub_1AAEED2F0(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + *(*(v8 - 8) + 64);
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_53:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v13 + v14] & ~v14;
    if (v10 == v17)
    {
      v31 = *(v9 + 56);

      return v31(v30);
    }

    else
    {
      v32 = *(v12 + 56);
      v33 = (v30 + v15 + v16) & ~v16;

      return v32(v33);
    }
  }
}

uint64_t sub_1AAEED6A4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAEED738(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 84);
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v3 + 64);
  v7 = *(v5 + 80);
  if (v4 <= *(v5 + 84))
  {
    v8 = *(v5 + 84);
  }

  else
  {
    v8 = *(v3 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
    goto LABEL_31;
  }

  v10 = ((v7 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 72) & ~v7) + *(v5 + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((a2 - v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v14 < 2)
    {
LABEL_31:
      if (v4 == v9)
      {
        return (*(v3 + 48))();
      }

      v18 = (a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
      if ((v8 & 0x80000000) != 0)
      {
        return (*(v5 + 48))((v18 + v7 + 72) & ~v7);
      }

      v19 = *(v18 + 24);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_31;
  }

LABEL_18:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 <= 3)
    {
      v16 = ((v7 + ((v6 + 7) & 0xFFFFFFF8) + 72) & ~v7) + *(v5 + 64);
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v9 + (v17 | v15) + 1;
}

double sub_1AAEED94C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v4 + 64);
  v8 = *(v6 + 80);
  if (v5 <= *(v6 + 84))
  {
    v9 = *(v6 + 84);
  }

  else
  {
    v9 = *(v4 + 84);
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = ((v8 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 72) & ~v8) + *(v6 + 64);
  if (a3 > v10)
  {
    if (v11 <= 3)
    {
      v17 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v12 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v12 = v18;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v16 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v13 & ~(-1 << (8 * v11));
        v20 = a1;
        bzero(a1, v11);
        a1 = v20;
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *v20 = v19;
            if (v12 > 1)
            {
LABEL_52:
              if (v12 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return result;
            }
          }

          else
          {
            *v20 = v13;
            if (v12 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v12 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = a1;
      bzero(a1, v11);
      a1 = v14;
      *v14 = v13;
      v16 = 1;
      if (v12 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v12)
    {
      a1[v11] = v16;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v5 == v10)
  {
    v21 = *(v4 + 56);

    v21();
  }

  else
  {
    v22 = &a1[v7 + 7] & 0xFFFFFFFFFFFFFFF8;
    if ((v9 & 0x80000000) != 0)
    {
      v23 = *(v6 + 56);

      v23((v22 + v8 + 72) & ~v8);
    }

    else if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v22 + 40) = 0u;
      *(v22 + 24) = 0u;
      *(v22 + 8) = 0u;
      *(v22 + 56) = 0u;
      *v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v22 + 24) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1AAEEDCC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  v12 = type metadata accessor for CombinedModifiedChartContent_SymbolView();
  (*(*(a5 - 8) + 32))(a7 + *(v12 + 68), a2, a5);
  return (*(*(a6 - 8) + 32))(a7 + *(v12 + 72), a3, a6);
}

uint64_t sub_1AAEEDE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void *)@<X7>, uint64_t a9@<X8>)
{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v22[0] = a4;
  v22[1] = a5;
  v22[2] = a6;
  v22[3] = a7;
  v17 = a8(0, v22);
  v18 = a9 + *(v17 + 52);
  v19 = *(a2 + 48);
  *(v18 + 32) = *(a2 + 32);
  *(v18 + 48) = v19;
  *(v18 + 64) = *(a2 + 64);
  v20 = *(a2 + 16);
  *v18 = *a2;
  *(v18 + 16) = v20;
  return (*(*(a5 - 8) + 32))(a9 + *(v17 + 56), a3, a5);
}

uint64_t sub_1AAEEDF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a5;
  v23 = a2;
  v8 = sub_1AAF8D954();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = sub_1AAF8D954();
  v13 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v15 = &v20 - v14;
  v24 = a3;
  v25 = a4;
  sub_1AAF007E4(sub_1AAEF0A48, AssociatedTypeWitness, &v20 - v14);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  (*(v9 + 32))(v17 + v16, v11, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v15, v23, sub_1AAEF0A50, v17, AssociatedTypeWitness, AssociatedConformanceWitness);

  return (*(v13 + 8))(v15, v21);
}

uint64_t sub_1AAEEE180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 88))(v14);
  v6 = v5;
  v11[2] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AAF8D1C4();
  sub_1AACBE580(v6, sub_1AAD62CC4, v11, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  v9 = v13;
  v4(v14, 0);
  return v9;
}

uint64_t sub_1AAEEE27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1AAF8D954();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14[-v10];
  v15 = a3;
  v16 = a4;
  sub_1AAF8D954();
  sub_1AAF007E4(sub_1AAEF0AE8, AssociatedTypeWitness, v11);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(v11, a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1AAEEE408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 64))(v14);
  v6 = v5;
  v11[2] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AAF8D1C4();
  sub_1AACBE580(v6, sub_1AAD62594, v11, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  v9 = v13;
  v4(v14, 0);
  return v9;
}

uint64_t sub_1AAEEE504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v15[-v11];
  (*(a4 + 72))(a3, a4, v10);
  v16 = a3;
  v17 = a4;
  v18 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(v12, a2, sub_1AAEF0A3C, v15, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t sub_1AAEEE688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v14 - v10;
  (*(a4 + 48))(a3, a4, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 64))(v11, a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_1AAEEE934(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = *a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v9 = a1 + *(type metadata accessor for CombinedModifiedChartContent_ForegroundStyle() + 52);
  v11 = *(v9 + 32);
  v10 = *(v9 + 40);
  v12 = *(v9 + 48);
  v13 = *(v9 + 56);
  v14 = *(v9 + 64);
  if (v12 < 0)
  {
    v18 = *(v9 + 32);
    v19 = v11 & 0x7FF0000000000000;
    if (v12)
    {
      swift_beginAccess();
      if (v19 != 0x7FF0000000000000)
      {
        if (*(v26 + 432))
        {
          v20 = *&v11;
        }

        else
        {
          v20 = *(v26 + 416);
          if (v20 >= *&v11)
          {
            v20 = *&v11;
          }

          if (*(v26 + 424) >= *&v11)
          {
            v18 = *(v26 + 424);
          }
        }

        *(v26 + 416) = v20;
        *(v26 + 424) = v18;
        *(v26 + 432) = 0;
      }

      v15 = v26;
      if ((~*&v10 & 0x7FF0000000000000) != 0)
      {
        if (*(v26 + 432))
        {
          *(v26 + 416) = v10;
          *(v26 + 424) = v10;
          *(v26 + 432) = 0;
        }

        else
        {
          v23 = *(v26 + 416);
          v22 = *(v26 + 424);
          if (v23 >= v10)
          {
            v23 = v10;
          }

          if (v22 < v10)
          {
            v22 = v10;
          }

          *(v26 + 416) = v23;
          *(v26 + 424) = v22;
          *(v26 + 432) = 0;
        }
      }
    }

    else
    {
      swift_beginAccess();
      if (v19 != 0x7FF0000000000000)
      {
        if (*(v26 + 408))
        {
          v21 = *&v11;
        }

        else
        {
          v21 = *(v26 + 392);
          if (v21 >= *&v11)
          {
            v21 = *&v11;
          }

          if (*(v26 + 400) >= *&v11)
          {
            v18 = *(v26 + 400);
          }
        }

        *(v26 + 392) = v21;
        *(v26 + 400) = v18;
        *(v26 + 408) = 0;
      }

      v15 = v26;
      if ((~*&v10 & 0x7FF0000000000000) != 0)
      {
        if (*(v26 + 408))
        {
          *(v26 + 392) = v10;
          *(v26 + 400) = v10;
          *(v26 + 408) = 0;
        }

        else
        {
          v25 = *(v26 + 392);
          v24 = *(v26 + 400);
          if (v25 >= v10)
          {
            v25 = v10;
          }

          if (v24 < v10)
          {
            v24 = v10;
          }

          *(v26 + 392) = v25;
          *(v26 + 400) = v24;
          *(v26 + 408) = 0;
        }
      }
    }
  }

  else
  {
    swift_beginAccess();
    sub_1AACD3D44(v11, *&v10, v12);
    swift_endAccess();
    v15 = v26;
  }

  v16 = v15;
  swift_beginAccess();
  if (*(v16 + 457) << 8 == 512)
  {
    sub_1AAE082D0(v13, (v16 + 456), v13, v14);
  }

  swift_endAccess();
  v27 = v26;
  return (*(a5 + 32))(a1, &v27, a3, a5);
}

uint64_t sub_1AAEEEB8C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v38 = *a2;
  v12 = *(a2 + 1);
  v13 = v12 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  sub_1AAEF0BDC(v13, v49, qword_1ED9B52F0, &type metadata for SgShapeStyle.Shading);
  v40 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v14 = (v13 + *(v40 + 68));
  v16 = v14[2];
  v15 = v14[3];
  v17 = v14[1];
  v53 = *(v14 + 8);
  v52[0] = *v14;
  v52[1] = v17;
  v52[2] = v16;
  v52[3] = v15;
  memmove(v50, v14, 0x48uLL);
  *&v41 = a3;
  *(&v41 + 1) = a4;
  *&v42 = a5;
  *(&v42 + 1) = a6;
  v18 = a1 + *(type metadata accessor for CombinedModifiedChartContent_ForegroundStyle() + 52);
  v19 = *v18;
  v20 = *(v18 + 8);
  v55[0] = *(v18 + 17);
  *(v55 + 3) = *(v18 + 20);
  v21 = *(v18 + 24);
  v22 = *(v18 + 32);
  v23 = *(v18 + 40);
  *v54 = *(v18 + 49);
  *&v54[15] = *(v18 + 64);
  LOBYTE(a3) = *(v18 + 48);
  v24 = *(v18 + 16);
  sub_1AAEF0BDC(v52, &v41, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  v25 = sub_1AAE0BCD0(v22, v23, a3, 5);
  *(&v42 + 1) = MEMORY[0x1E697E0B8];
  *&v43 = MEMORY[0x1E697E0A8];
  *&v41 = v25;
  BYTE8(v43) = 1;
  swift_beginAccess();
  sub_1AAEF0CCC(&v41, v13, qword_1ED9B52F0, &type metadata for SgShapeStyle.Shading);
  v26 = v13 + *(v40 + 68);
  v56[0] = *v26;
  v27 = *(v26 + 64);
  v28 = *(v26 + 48);
  v29 = *(v26 + 16);
  v56[2] = *(v26 + 32);
  v56[3] = v28;
  v56[1] = v29;
  v57 = v27;
  *v26 = v19;
  *(v26 + 8) = v20;
  *(v26 + 16) = v24;
  *(v26 + 17) = v55[0];
  *(v26 + 20) = *(v55 + 3);
  *(v26 + 24) = v21;
  *(v26 + 32) = v22;
  *(v26 + 40) = v23;
  *(v26 + 48) = a3;
  *(v26 + 49) = *v54;
  *(v26 + 64) = *&v54[15];
  sub_1AACD7304(v19, v20, v24 & 1);

  sub_1AACD7C50(v22, v23, a3);
  swift_endAccess();
  sub_1AAEF0C5C(v56, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  LOBYTE(v41) = v38;
  *(&v41 + 1) = v12;
  (*(a5 + 40))(v60, a1, &v41);
  v30 = *&v60[0];
  sub_1AAEF0D4C(v49, &v41, &qword_1ED9AED60, qword_1ED9B52F0, &type metadata for SgShapeStyle.Shading);
  v58[2] = v46;
  v58[3] = v47;
  v59 = v48;
  v58[0] = v44;
  v58[1] = v45;
  sub_1AAEF0C5C(v58, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  swift_beginAccess();
  sub_1AAEF0CCC(&v41, v13, qword_1ED9B52F0, &type metadata for SgShapeStyle.Shading);
  v48 = v51;
  v46 = v50[2];
  v47 = v50[3];
  v44 = v50[0];
  v45 = v50[1];
  v42 = v49[1];
  v43 = v49[2];
  v41 = v49[0];
  v31 = (v13 + *(v40 + 68));
  v60[0] = *v31;
  v32 = v31[1];
  v33 = v31[2];
  v34 = v31[3];
  v61 = *(v31 + 8);
  v60[2] = v33;
  v60[3] = v34;
  v60[1] = v32;
  memmove(v31, v50, 0x48uLL);
  swift_endAccess();
  sub_1AAEF0C5C(v60, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  result = sub_1AAEF0C5C(&v41, qword_1ED9B52F0, &type metadata for SgShapeStyle.Shading);
  *a7 = v30;
  return result;
}

uint64_t sub_1AAEEF07C@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v44 = a8;
  v43 = a7;
  v47 = a6;
  v42 = a5;
  v48 = a3;
  v46 = a1;
  v50 = a9;
  sub_1AACDF9B8();
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(*&a4 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *a2;
  v22 = a2[1];
  v23 = *&v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  sub_1AAEF0BDC(v23 + 88, v58, qword_1ED9B3000, &type metadata for SgSymbol);
  v52 = a3;
  v53 = a4;
  v54 = v42;
  v55 = a6;
  v56 = v43;
  v57 = v44;
  v24 = type metadata accessor for CombinedModifiedChartContent_SymbolView();
  (*(v18 + 16))(v21, a1 + *(v24 + 68), COERCE_DOUBLE(*&a4));
  v25 = sub_1AAF8EF44();
  v45 = v22;
  v26 = *(*&v22 + 56);
  v44 = *(*(*&v22 + 16) + 24);

  v43 = sub_1AAF8DFB4();
  LOBYTE(v21) = v27;
  v42 = v28;
  LOBYTE(v18) = v29;
  KeyPath = swift_getKeyPath();
  v31 = OBJC_IVAR____TtC6Charts14SgMeasurements__dynamicTypeSize;
  swift_beginAccess();
  v32 = (v17 + *(v15 + 44));
  sub_1AACDFFDC();
  v34 = *(v33 + 28);
  v35 = sub_1AAF8DCD4();
  (*(*(v35 - 8) + 16))(v32 + v34, v26 + v31, v35);
  *v32 = KeyPath;
  *v17 = v25;

  LOBYTE(v52) = v21 & 1;
  LOBYTE(v51[0]) = v18 & 1;
  v36 = sub_1AACE0034(v17, v44, v43, v21 & 1, v42, v18 & 1);
  v38 = v37;

  sub_1AAEF0E60(v17, sub_1AACDF9B8);
  v52 = v25;
  v53 = v36;
  v54 = v38;
  LOBYTE(v57) = 1;
  swift_beginAccess();

  sub_1AAEF0CCC(&v52, v23 + 88, qword_1ED9B3000, &type metadata for SgSymbol);
  swift_endAccess();
  LOBYTE(v52) = v49;
  v53 = v45;
  (*(v47 + 40))(v51, v46, &v52);

  v39 = v51[0];
  swift_beginAccess();
  sub_1AAEF0CCC(v58, v23 + 88, qword_1ED9B3000, &type metadata for SgSymbol);
  result = swift_endAccess();
  *v50 = v39;
  return result;
}

uint64_t sub_1AAEEF5F0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = *a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v9 = a1 + *(type metadata accessor for CombinedModifiedChartContent_SymbolSize() + 52);
  v11 = *(v9 + 32);
  v10 = *(v9 + 40);
  v12 = *(v9 + 48);
  v13 = *(v9 + 56);
  v14 = *(v9 + 64);
  if (v12 < 0)
  {
    v18 = *(v9 + 32);
    v19 = v11 & 0x7FF0000000000000;
    if (v12)
    {
      swift_beginAccess();
      if (v19 != 0x7FF0000000000000)
      {
        if (*(v26 + 576))
        {
          v20 = *&v11;
        }

        else
        {
          v20 = *(v26 + 560);
          if (v20 >= *&v11)
          {
            v20 = *&v11;
          }

          if (*(v26 + 568) >= *&v11)
          {
            v18 = *(v26 + 568);
          }
        }

        *(v26 + 560) = v20;
        *(v26 + 568) = v18;
        *(v26 + 576) = 0;
      }

      v15 = v26;
      if ((~*&v10 & 0x7FF0000000000000) != 0)
      {
        if (*(v26 + 576))
        {
          *(v26 + 560) = v10;
          *(v26 + 568) = v10;
          *(v26 + 576) = 0;
        }

        else
        {
          v22 = *(v26 + 568);
          v23 = *(v26 + 560);
          if (v23 >= v10)
          {
            v23 = v10;
          }

          *(v26 + 560) = v23;
          if (v22 < v10)
          {
            v22 = v10;
          }

          *(v26 + 568) = v22;
          *(v26 + 576) = 0;
        }
      }
    }

    else
    {
      swift_beginAccess();
      if (v19 != 0x7FF0000000000000)
      {
        if (*(v26 + 552))
        {
          v21 = *&v11;
        }

        else
        {
          v21 = *(v26 + 536);
          if (v21 >= *&v11)
          {
            v21 = *&v11;
          }

          if (*(v26 + 544) >= *&v11)
          {
            v18 = *(v26 + 544);
          }
        }

        *(v26 + 536) = v21;
        *(v26 + 544) = v18;
        *(v26 + 552) = 0;
      }

      v15 = v26;
      if ((~*&v10 & 0x7FF0000000000000) != 0)
      {
        if (*(v26 + 552))
        {
          *(v26 + 536) = v10;
          *(v26 + 544) = v10;
          *(v26 + 552) = 0;
        }

        else
        {
          v24 = *(v26 + 544);
          v25 = *(v26 + 536);
          if (v25 >= v10)
          {
            v25 = v10;
          }

          *(v26 + 536) = v25;
          if (v24 < v10)
          {
            v24 = v10;
          }

          *(v26 + 544) = v24;
          *(v26 + 552) = 0;
        }
      }
    }
  }

  else
  {
    swift_beginAccess();
    sub_1AACD3D44(v11, *&v10, v12);
    swift_endAccess();
    v15 = v26;
  }

  v16 = v15;
  swift_beginAccess();
  if (*(v16 + 601) << 8 == 512)
  {
    sub_1AAE082D0(v13, (v16 + 600), v13, v14);
  }

  swift_endAccess();
  v27 = v26;
  return (*(a5 + 32))(a1, &v27, a3, a5);
}

uint64_t sub_1AAEEF870@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v59 = *a2;
  v13 = *(a2 + 1);
  v14 = v13 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v57 = *(v14 + 144);
  v58 = *(v14 + 136);
  v56 = *(v14 + 152);
  v55 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v15 = (v14 + *(v55 + 76));
  v78 = *v15;
  v17 = v15[2];
  v16 = v15[3];
  v18 = v15[1];
  v82 = *(v15 + 8);
  v80 = v17;
  v81 = v16;
  v79 = v18;
  *&v72 = a3;
  *(&v72 + 1) = a4;
  *&v73 = a5;
  *(&v73 + 1) = a6;
  v19 = a1 + *(type metadata accessor for CombinedModifiedChartContent_SymbolSize() + 52);
  v20 = *(v19 + 32);
  v61 = *(v19 + 40);
  v21 = *(v19 + 48);
  v60 = v13;
  v22 = (v13 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale);
  if (*(v13 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 104) == 255)
  {
    sub_1AAEF0BDC(&v78, &v72, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
    v31 = 0;
  }

  else
  {
    v52 = a1;
    v53 = a3;
    v23 = *v22;
    v24 = v22[2];
    v67 = v22[1];
    v68 = v24;
    v66 = v23;
    v25 = v22[3];
    v26 = v22[4];
    v27 = v22[5];
    *(v71 + 9) = *(v22 + 89);
    v70 = v26;
    v71[0] = v27;
    v69 = v25;
    v54 = a5;
    if (v21 < 0)
    {
      v28 = 0;
      v29 = (v20 + v61) * 0.5;
      v30 = v21 & 1;
    }

    else
    {
      v28 = *&v61;
      sub_1AACCAE10(*&v20, *&v61, v21);
      v29 = v20;
      v30 = v21;
    }

    v76 = v70;
    v77[0] = v71[0];
    *(v77 + 9) = *(v71 + 9);
    v72 = v66;
    v73 = v67;
    v74 = v68;
    v75 = v69;
    sub_1AAEF0BDC(&v78, v64, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
    sub_1AAEF0EC0(&v66, v64, sub_1AACCF364);
    v31 = sub_1AAE29640(*&v29, v28, v30);
    v33 = v32;
    sub_1AACCA728(*&v29, v28, v30);
    sub_1AAEF0E60(&v66, sub_1AACCF364);
    if (v33)
    {
      v31 = 0;
    }

    a3 = v53;
    a5 = v54;
    a1 = v52;
  }

  *(v14 + 136) = v31;
  *(v14 + 144) = 0;
  *(v14 + 152) = 0;
  v34 = *v19;
  v35 = *(v19 + 8);
  v37 = *(v19 + 24);
  v63 = *(v19 + 16);
  v36 = v63;
  v38 = v14 + *(v55 + 76);
  v39 = *(v19 + 56);
  v64[0] = *v38;
  v41 = *(v38 + 32);
  v40 = *(v38 + 48);
  v42 = *(v38 + 16);
  v65 = *(v38 + 64);
  v64[2] = v41;
  v64[3] = v40;
  v64[1] = v42;
  *v38 = v34;
  *(v38 + 8) = v35;
  *(v38 + 16) = v36;
  *(v38 + 24) = v37;
  *(v38 + 32) = v20;
  *(v38 + 40) = v61;
  *(v38 + 48) = v21;
  *(v38 + 56) = v39;
  sub_1AACD7304(v34, v35, v36);

  sub_1AACD7C50(*&v20, *&v61, v21);
  sub_1AAEF0C5C(v64, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  LOBYTE(v66) = v59;
  *(&v66 + 1) = v60;
  (*(a5 + 40))(&v62, a1, &v66, a3, a5);
  v43 = v62;
  *(v14 + 136) = v58;
  *(v14 + 144) = v57;
  *(v14 + 152) = v56;
  v44 = (v14 + *(v55 + 76));
  v66 = *v44;
  v45 = v44[1];
  v46 = v44[2];
  v47 = v44[3];
  *&v70 = *(v44 + 8);
  v68 = v46;
  v69 = v47;
  v67 = v45;
  v48 = v82;
  v49 = v81;
  v50 = v79;
  v44[2] = v80;
  v44[3] = v49;
  *(v44 + 8) = v48;
  v44[1] = v50;
  *v44 = v78;
  result = sub_1AAEF0C5C(&v66, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  *a7 = v43;
  return result;
}

uint64_t sub_1AAEEFD0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a2;
  v10 = a2[1];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v11 = a1 + *(type metadata accessor for CombinedModifiedChartContent_Symbol() + 52);
  if (*(v11 + 48) >= 2)
  {
    v14 = *(v11 + 32);
    v13 = *(v11 + 40);
    v15 = *(v11 + 56);
    v16 = *(v11 + 64);
    swift_beginAccess();
    sub_1AACD3D44(v14, v13, 2);
    if (*(v9 + 529) << 8 == 512)
    {
      sub_1AAE082D0(v15, (v9 + 528), v15, v16);
    }

    swift_endAccess();
    v17 = *(v9 + 1264);
    *(v9 + 1264) = 1;
    v18 = v9;
    v19 = v10;
    result = (*(a5 + 32))(a1, &v18, a3, a5);
    *(v9 + 1264) = v17;
  }

  else
  {
    sub_1AAF885A0(1);
    v18 = v9;
    v19 = v10;
    return (*(a5 + 32))(a1, &v18, a3, a5);
  }

  return result;
}

uint64_t sub_1AAEEFE58@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v11 = *a2;
  v12 = *(a2 + 1);
  *&v48 = a3;
  *(&v48 + 1) = a4;
  *&v49 = a5;
  *(&v49 + 1) = a6;
  v13 = a1 + *(type metadata accessor for CombinedModifiedChartContent_Symbol() + 52);
  if (*(v13 + 48) >= 2)
  {
    v38 = a1;
    v15 = *(v13 + 32);
    v36 = *(v13 + 40);
    v37 = v11;
    v16 = v12 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    sub_1AAEF0BDC(v16 + 88, &v48, qword_1ED9B3000, &type metadata for SgSymbol);
    v40 = type metadata accessor for ChartContentRenderContext.Environment(0);
    v17 = (v16 + *(v40 + 72));
    v53[0] = *v17;
    v19 = v17[2];
    v18 = v17[3];
    v20 = v17[1];
    v54 = *(v17 + 8);
    v53[2] = v19;
    v53[3] = v18;
    v53[1] = v20;
    memmove(v51, v17, 0x48uLL);
    v39 = a7;
    v21 = *v13;
    v22 = *(v13 + 8);
    v23 = *(v13 + 16);
    v24 = *(v13 + 24);
    v34 = *(v13 + 64);
    v35 = *(v13 + 56);
    v55 = v23;
    v62[0] = v21;
    v62[1] = v22;
    v63 = v23;
    v64 = v24;
    v65 = v15;
    v66 = v36;
    v67 = 2;
    v68 = v35;
    v69 = v34;
    sub_1AAEF0BDC(v53, v41, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
    sub_1AAE08B14(v62, 6, v41);
    BYTE8(v42) = 0;
    swift_beginAccess();
    sub_1AAEF0CCC(v41, v16 + 88, qword_1ED9B3000, &type metadata for SgSymbol);
    v25 = v16 + *(v40 + 72);
    v56[0] = *v25;
    v27 = *(v25 + 32);
    v26 = *(v25 + 48);
    v28 = *(v25 + 16);
    v57 = *(v25 + 64);
    v56[2] = v27;
    v56[3] = v26;
    v56[1] = v28;
    *v25 = v21;
    *(v25 + 8) = v22;
    *(v25 + 16) = v23;
    *(v25 + 24) = v24;
    *(v25 + 32) = v15;
    *(v25 + 40) = v36;
    *(v25 + 48) = 2;
    *(v25 + 56) = v35;
    *(v25 + 64) = v34;
    sub_1AACD7304(v21, v22, v23);

    sub_1AACD7C50(v15, v36, 2);
    swift_endAccess();
    sub_1AAEF0C5C(v56, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
    LOBYTE(v41[0]) = v37;
    *(&v41[0] + 1) = v12;
    (*(a5 + 40))(v60, v38, v41, a3, a5);
    v29 = *&v60[0];
    sub_1AAEF0D4C(&v48, v41, qword_1EB426CF0, qword_1ED9B3000, &type metadata for SgSymbol);
    v58[2] = v45;
    v58[3] = v46;
    v59 = v47;
    v58[0] = v43;
    v58[1] = v44;
    sub_1AAEF0C5C(v58, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
    swift_beginAccess();
    sub_1AAEF0CCC(v41, v16 + 88, qword_1ED9B3000, &type metadata for SgSymbol);
    v47 = v52;
    v45 = v51[2];
    v46 = v51[3];
    v43 = v51[0];
    v44 = v51[1];
    v41[1] = v49;
    v42 = v50;
    v41[0] = v48;
    v30 = (v16 + *(v40 + 72));
    v60[0] = *v30;
    v31 = v30[1];
    v32 = v30[2];
    v33 = v30[3];
    v61 = *(v30 + 8);
    v60[2] = v32;
    v60[3] = v33;
    v60[1] = v31;
    memmove(v30, v51, 0x48uLL);
    swift_endAccess();
    sub_1AAEF0C5C(v60, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
    result = sub_1AAEF0C5C(v41, qword_1ED9B3000, &type metadata for SgSymbol);
    *v39 = v29;
  }

  else
  {
    LOBYTE(v48) = v11;
    *(&v48 + 1) = v12;
    return (*(a5 + 40))(a1, &v48, a3, a5);
  }

  return result;
}

uint64_t sub_1AAEF034C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = *a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v9 = a1 + *(type metadata accessor for CombinedModifiedChartContent_LineStyle() + 52);
  v11 = *(v9 + 32);
  v10 = *(v9 + 40);
  v12 = *(v9 + 48);
  v13 = *(v9 + 56);
  v14 = *(v9 + 64);
  if (v12 < 0)
  {
    v18 = *(v9 + 32);
    v19 = v11 & 0x7FF0000000000000;
    if (v12)
    {
      swift_beginAccess();
      if (v19 != 0x7FF0000000000000)
      {
        if (*(v26 + 648))
        {
          v20 = *&v11;
        }

        else
        {
          v20 = *(v26 + 632);
          if (v20 >= *&v11)
          {
            v20 = *&v11;
          }

          if (*(v26 + 640) >= *&v11)
          {
            v18 = *(v26 + 640);
          }
        }

        *(v26 + 632) = v20;
        *(v26 + 640) = v18;
        *(v26 + 648) = 0;
      }

      v15 = v26;
      if ((~*&v10 & 0x7FF0000000000000) != 0)
      {
        if (*(v26 + 648))
        {
          *(v26 + 632) = v10;
          *(v26 + 640) = v10;
          *(v26 + 648) = 0;
        }

        else
        {
          v22 = *(v26 + 640);
          v23 = *(v26 + 632);
          if (v23 >= v10)
          {
            v23 = v10;
          }

          *(v26 + 632) = v23;
          if (v22 < v10)
          {
            v22 = v10;
          }

          *(v26 + 640) = v22;
          *(v26 + 648) = 0;
        }
      }
    }

    else
    {
      swift_beginAccess();
      if (v19 != 0x7FF0000000000000)
      {
        if (*(v26 + 624))
        {
          v21 = *&v11;
        }

        else
        {
          v21 = *(v26 + 608);
          if (v21 >= *&v11)
          {
            v21 = *&v11;
          }

          if (*(v26 + 616) >= *&v11)
          {
            v18 = *(v26 + 616);
          }
        }

        *(v26 + 608) = v21;
        *(v26 + 616) = v18;
        *(v26 + 624) = 0;
      }

      v15 = v26;
      if ((~*&v10 & 0x7FF0000000000000) != 0)
      {
        if (*(v26 + 624))
        {
          *(v26 + 608) = v10;
          *(v26 + 616) = v10;
          *(v26 + 624) = 0;
        }

        else
        {
          v24 = *(v26 + 616);
          v25 = *(v26 + 608);
          if (v25 >= v10)
          {
            v25 = v10;
          }

          *(v26 + 608) = v25;
          if (v24 < v10)
          {
            v24 = v10;
          }

          *(v26 + 616) = v24;
          *(v26 + 624) = 0;
        }
      }
    }
  }

  else
  {
    swift_beginAccess();
    sub_1AACD3D44(v11, *&v10, v12);
    swift_endAccess();
    v15 = v26;
  }

  v16 = v15;
  swift_beginAccess();
  if (*(v16 + 673) << 8 == 512)
  {
    sub_1AAE082D0(v13, (v16 + 672), v13, v14);
  }

  swift_endAccess();
  v27 = v26;
  return (*(a5 + 32))(a1, &v27, a3, a5);
}

uint64_t sub_1AAEF05CC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v43 = *a2;
  v12 = *(a2 + 1);
  v13 = v12 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v44 = *(v13 + 80);
  v14 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v15 = (v13 + *(v14 + 80));
  v42 = *(v13 + 48);
  v46 = *(v13 + 64);
  v17 = v15[1];
  v16 = v15[2];
  v18 = v15[3];
  v54 = *(v15 + 8);
  v53 = v18;
  v51 = v17;
  v50 = *v15;
  v52 = v16;
  *&v59 = a3;
  *(&v59 + 1) = a4;
  *&v60 = a5;
  *(&v60 + 1) = a6;
  v19 = a1 + *(type metadata accessor for CombinedModifiedChartContent_LineStyle() + 52);
  v20 = *v19;
  v21 = *(v19 + 8);
  v56[0] = *(v19 + 17);
  *(v56 + 3) = *(v19 + 20);
  v22 = *(v19 + 24);
  v23 = *(v19 + 32);
  v24 = *(v19 + 40);
  *v55 = *(v19 + 49);
  *&v55[15] = *(v19 + 64);
  LOBYTE(a4) = *(v19 + 48);
  LOBYTE(a3) = *(v19 + 16);

  sub_1AAEF0BDC(&v50, &v59, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  sub_1AAE0BA04(*&v23, *&v24, a4, 8, v48);
  v25 = v49;
  v26 = v48[1];
  *(v13 + 48) = v48[0];
  *(v13 + 64) = v26;
  *(v13 + 80) = v25;

  v27 = v13 + *(v14 + 80);
  v57[0] = *v27;
  v29 = *(v27 + 32);
  v28 = *(v27 + 48);
  v30 = *(v27 + 16);
  v58 = *(v27 + 64);
  v57[2] = v29;
  v57[3] = v28;
  v57[1] = v30;
  *v27 = v20;
  *(v27 + 8) = v21;
  *(v27 + 16) = a3;
  *(v27 + 17) = v56[0];
  *(v27 + 20) = *(v56 + 3);
  *(v27 + 24) = v22;
  *(v27 + 32) = v23;
  *(v27 + 40) = v24;
  *(v27 + 48) = a4;
  *(v27 + 49) = *v55;
  *(v27 + 64) = *&v55[15];
  sub_1AACD7304(v20, v21, a3 & 1);

  sub_1AACD7C50(v23, v24, a4);
  sub_1AAEF0C5C(v57, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  LOBYTE(v59) = v43;
  *(&v59 + 1) = v12;
  (*(a5 + 40))(v47, a1, &v59);
  v31 = v47[0];
  *(v13 + 48) = v42;
  *(v13 + 64) = v46;
  *(v13 + 80) = v44;

  v32 = (v13 + *(v14 + 80));
  v59 = *v32;
  v33 = v32[1];
  v34 = v32[2];
  v35 = v32[3];
  v63 = *(v32 + 8);
  v61 = v34;
  v62 = v35;
  v60 = v33;
  v36 = v54;
  v37 = v53;
  v38 = v51;
  v32[2] = v52;
  v32[3] = v37;
  *(v32 + 8) = v36;
  v32[1] = v38;
  *v32 = v50;
  sub_1AAEF0BDC(&v50, v47, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  sub_1AAEF0C5C(&v59, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  result = sub_1AAEF0C5C(&v50, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  *a7 = v31;
  return result;
}

uint64_t sub_1AAEF0A50(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_1AAF8D954() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1AAEEE27C(a1, v6, v3, v4);
}

uint64_t sub_1AAEF0B14(uint64_t a1)
{
  v2 = sub_1AAF8DCD4();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1AAF8E0A4();
}

uint64_t sub_1AAEF0BDC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AACAE3E8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AAEF0C5C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AACAE3E8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AAEF0CCC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AACAE3E8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AAEF0D4C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1AAEF0DBC(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1AAEF0DBC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = MEMORY[0x1E69E6720];
    sub_1AACAE3E8(255, a3, a4, MEMORY[0x1E69E6720]);
    sub_1AACAE3E8(255, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v5);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1AAEF0E60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAEF0EC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1AAEF0F28()
{
  result = qword_1ED9B1710;
  if (!qword_1ED9B1710)
  {
    sub_1AACDFFDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B1710);
  }

  return result;
}

uint64_t sub_1AAEF0FAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AAEF0FFC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 64) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 65) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 2 * -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0;
      return result;
    }

    *(a1 + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAEF1074(uint64_t result, char a2)
{
  v2 = *(result + 64) & 0x83 | (32 * (a2 & 3));
  *(result + 24) &= 1uLL;
  *(result + 64) = v2;
  return result;
}

uint64_t sub_1AAEF10B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F && *(a1 + 65))
  {
    return (*a1 + 31);
  }

  v3 = ((*(a1 + 64) >> 1) & 0x1E | (*(a1 + 64) >> 6) & 1) ^ 0x1F;
  if (v3 >= 0x1E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AAEF1108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 31;
    if (a3 >= 0x1F)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 64) = 4 * ((((-a2 >> 1) & 0xF) - 16 * a2) & 0x1F);
    }
  }

  return result;
}

uint64_t sub_1AAEF11C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 66))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 65);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAEF11FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 65) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AAEF1268(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AAEF12B8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      return result;
    }

    *(a1 + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_1AAEF1330(int8x16_t *a1, uint64_t a2)
{
  v2 = a1[4].i64[0] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  a1[1].i64[0] &= 1uLL;
  result = vandq_s8(a1[3], xmmword_1AAF92DB0);
  a1[3] = result;
  a1[4].i64[0] = v2;
  return result;
}

uint64_t sub_1AAEF1390(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 3) & 0xFFFFFFE0 | (*(a1 + 48) >> 2) & 0x1F;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AAEF13E4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 48) = (8 * -a2) & 0x7FFFFFF00 | (4 * (-a2 & 0x1FLL));
      return result;
    }

    *(a1 + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_1AAEF1460(int8x16_t *a1, uint64_t a2)
{
  v2 = a1[4].i64[0] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  result = vandq_s8(a1[3], xmmword_1AAF92DB0);
  a1[3] = result;
  a1[4].i64[0] = v2;
  return result;
}

void sub_1AAEF14A4()
{
  sub_1AAEF2468(319, &qword_1ED9AE220, &type metadata for PlottedValueCollectorV2, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1AAF8FE74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1AAEF1550(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 41) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if (v6 > 0x7FFFFFFD)
      {
        v19 = (*(v4 + 48))((a1 + v8 + 41) & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *(a1 + 3);
        if (v17 >= 0xFFFFFFFF)
        {
          LODWORD(v17) = -1;
        }

        v18 = v17 - 1;
        if (v18 < 0)
        {
          v18 = -1;
        }

        if ((v18 + 1) >= 2)
        {
          return v18;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_1AAEF172C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFD)
  {
    v10 = 2147483645;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 41) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 > 0x7FFFFFFD)
  {
    v21 = (&a1[v11 + 41] & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = &a1[v11 + 41] & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if (a2 > 0x7FFFFFFD)
  {
    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = a2 - 2147483646;
  }

  else
  {
    *(a1 + 3) = a2 + 1;
  }
}

uint64_t sub_1AAEF1A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AAEF23E8(a1 + 8, v20, &unk_1ED9B3898, &type metadata for ModifierForegroundStyle);
  if (v22 > 1u)
  {
    if (v22 == 2)
    {
      v29 = v20[2];
      v30 = v20[3];
      v31 = v21;
      v27 = v20[0];
      v28 = v20[1];
      sub_1AAF092C4(&v27, v23);
      v16 = 0uLL;
      v17 = 1;
      v18 = 0uLL;
      v19 = 3;
      v4 = v26;
      if ((v4 & 0x80000000) != 0)
      {
        v5 = *&v25;
        v6 = *(&v24 + 1);
        v4 = BYTE8(v25);
        sub_1AAE63EFC(v23, &v14);
        sub_1AAEF289C(v4, v6);
      }

      else
      {
        v5 = *(&v24 + 1);
        sub_1AAE63EFC(v23, &v14);
      }

      sub_1AAEF289C(v4, v5);
      v7 = *(&v28 + 1);
      v33 = v27;
      v34 = v28;
      sub_1AAD6E0DC(&v33);
      v32 = v7;
      sub_1AAE491F0(&v32);
      v14 = v29;
      v15 = v30;
      sub_1AAD6E18C(&v14);
      result = sub_1AAE63F58(v23);
      v8 = v17;
      v9 = v19;
      v10 = v16;
      v11 = v18;
      v12 = v25;
      *(a2 + 80) = v24;
      *(a2 + 96) = v12;
      *(a2 + 112) = v26;
      v13 = v23[1];
      *(a2 + 48) = v23[0];
      *(a2 + 64) = v13;
      *(a2 + 113) = 2;
      *a2 = v10;
      *(a2 + 16) = v8;
      *(a2 + 24) = v11;
      *(a2 + 40) = v9;
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 2;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 112) = 0;
    }
  }

  else
  {
    if (v22)
    {
      result = sub_1AACBB198(v20, a2 + 48);
      *(a2 + 113) = 1;
    }

    else
    {
      *(a2 + 48) = *&v20[0];
      *(a2 + 113) = 0;
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(a2 + 24) = xmmword_1AAF92AC0;
    *(a2 + 40) = 0;
  }

  return result;
}

uint64_t sub_1AAEF1C70@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v7 = *(result + 184);
  v9 = *(result + 216);
  v8 = *(result + 224);
  v10 = *(result + 232);
  v11 = 0uLL;
  if (v7 >> 1 == 0xFFFFFFFF && ((v10 | v8) & 0xF000000000000007 | v9 & 0xFFFFFFFFFFFFFF7CLL) == 0)
  {
    v16 = 0;
    v4 = 0;
    v3 = 0;
    v2 = 0;
    LOBYTE(v14) = 0;
    v18 = 0;
    v5 = 0.0;
    v6 = 0.0;
    v15 = 0uLL;
    v17 = 0x1FFFFFFFCLL;
    v13 = 0uLL;
  }

  else
  {
    v13 = *(result + 168);
    v14 = v10 >> 62;
    v15 = xmmword_1AAF92AC0;
    if (v10 >> 62)
    {
      if (v14 == 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        LOBYTE(v14) = 32;
      }

      else
      {
        v28 = a2;
        v20 = *(result + 192);
        v19 = *(result + 200);
        v21 = *(result + 208);
        v44 = *(result + 168);
        v45 = v7;
        v48 = HIBYTE(v7);
        v47 = HIDWORD(v7) >> 8;
        v46 = v7 >> 8;
        v49 = v20;
        v50 = v19;
        v51 = v21;
        v52 = v9;
        v53 = v8;
        v54 = v10 & 0x3FFFFFFFFFFFFFFFLL;
        v29 = v13;

        v26 = *(&v29 + 1);
        v27 = v29;
        sub_1AACD7304(v29, *(&v29 + 1), v7 & 1);
        sub_1AACD7C50(v19, v21, v9);
        sub_1AAF092C4(&v44, &v36);
        v30 = v36;
        v4 = v37;
        v25 = v38;
        v3 = v39;
        v5 = v40;
        v6 = v41;
        v2 = v42;
        v22 = v43;
        v32 = 0uLL;
        v33 = 1;
        v34 = 0uLL;
        v35 = 3;
        sub_1AAE63EFC(&v36, v31);
        if ((v22 & 0x80000000) != 0)
        {
          sub_1AAEF289C(v2, v5);
          v23 = v6;
          v24 = v2;
        }

        else
        {
          v23 = v5;
          v24 = v22;
        }

        sub_1AAEF289C(v24, v23);
        sub_1AAD04750(v27, v26, v7 & 1);

        sub_1AAD0E818(v19, v21, v9);
        result = sub_1AAE63F58(&v36);
        v11 = v32;
        v16 = v33;
        v15 = v34;
        v18 = v35;
        v17 = v25 & 1;
        LOBYTE(v14) = v22 & 0x83 | 0x40;
        a2 = v28;
        v13 = v30;
      }
    }

    else
    {
      v16 = v10 >> 62;
      v17 = v10 >> 62;
      v18 = v10 >> 62;
    }
  }

  *a2 = v11;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;
  *(a2 + 40) = v18;
  *(a2 + 48) = v13;
  *(a2 + 64) = v4;
  *(a2 + 72) = v17;
  *(a2 + 80) = v3;
  *(a2 + 88) = v5;
  *(a2 + 96) = v6;
  *(a2 + 104) = v2;
  *(a2 + 112) = v14;
  return result;
}

uint64_t sub_1AAEF1ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AAEF23E8(a1 + 88, &v21, qword_1ED9B3EA8, &type metadata for ModifierSymbol);
  if (v26 > 1u)
  {
    if (v26 == 2)
    {
      v33 = v23;
      v34 = v24;
      v35 = v25;
      v31 = v21;
      v32 = v22;
      sub_1AAF092C4(&v31, v27);
      v17 = 0uLL;
      v18 = 1;
      v19 = 0uLL;
      v20 = 3;
      v5 = v30;
      if ((v5 & 0x80000000) != 0)
      {
        v6 = *&v29;
        v7 = *(&v28 + 1);
        v5 = BYTE8(v29);
        sub_1AAE63EFC(v27, &v15);
        sub_1AAEF289C(v5, v7);
      }

      else
      {
        v6 = *(&v28 + 1);
        sub_1AAE63EFC(v27, &v15);
      }

      sub_1AAEF289C(v5, v6);
      v8 = *(&v32 + 1);
      v37 = v31;
      v38 = v32;
      sub_1AAD6E0DC(&v37);
      v36 = v8;
      sub_1AAE491F0(&v36);
      v15 = v33;
      v16 = v34;
      sub_1AAD6E18C(&v15);
      result = sub_1AAE63F58(v27);
      v9 = v18;
      v10 = v20;
      v11 = v17;
      v12 = v19;
      v13 = v29;
      *(a2 + 80) = v28;
      *(a2 + 96) = v13;
      *(a2 + 112) = v30;
      v14 = v27[1];
      *(a2 + 48) = v27[0];
      *(a2 + 64) = v14;
      *(a2 + 113) = 2;
      *a2 = v11;
      *(a2 + 16) = v9;
      *(a2 + 24) = v12;
      *(a2 + 40) = v10;
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 2;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 112) = 0;
    }
  }

  else
  {
    if (v26)
    {
      *(a2 + 48) = v21;
      *(a2 + 113) = 1;
    }

    else
    {
      v4 = v22;
      *(a2 + 48) = v21;
      *(a2 + 64) = v4;
      *(a2 + 80) = v23;
      *(a2 + 113) = 0;
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(a2 + 24) = xmmword_1AAF92AC0;
    *(a2 + 40) = 0;
  }

  return result;
}

uint64_t sub_1AAEF20F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v7 = *(result + 288);
  v6 = *(result + 296);
  v8 = *(result + 304);
  v9 = 0uLL;
  if ((v7 & 0xFFFFFFFFFFFFFF7CLL) == 0x7FFFFFF7CLL && ((v8 | v6) & 0xF000000000000007) == 0)
  {
    v18 = 0;
    v16 = 0;
    v14 = 0;
    v13 = 0;
    v2 = 0;
    v19 = 0;
    v20 = 0;
    v21 = xmmword_1AAFBE980;
    v3 = 0.0;
    v4 = 0.0;
    v17 = 0uLL;
  }

  else
  {
    v11 = *(result + 256);
    v12 = *(result + 257) | ((*(result + 261) | (*(result + 263) << 16)) << 32);
    v14 = *(result + 264);
    v13 = *(result + 272);
    v15 = *(result + 280);
    v29 = *(result + 240);
    if (v8 < 0)
    {
      v44 = *(result + 240);
      v45 = v11;
      v46 = v12;
      v48 = BYTE6(v12);
      v47 = WORD2(v12);
      v49 = v14;
      v50 = v13;
      v51 = v15;
      v52 = v7;
      v53 = v6;
      v54 = v8 & 0x7FFFFFFFFFFFFFFFLL;

      v25 = *(&v29 + 1);
      v26 = v29;
      sub_1AACD7304(v29, *(&v29 + 1), v11 & 1);
      sub_1AACD7C50(v13, v15, v7);
      sub_1AAF092C4(&v44, &v31);
      v30 = v31;
      v16 = v32;
      v27 = v34;
      v28 = v33;
      v3 = v35;
      v4 = v36;
      v2 = v37;
      v22 = v38;
      v40 = 0uLL;
      v41 = 1;
      v42 = 0uLL;
      v43 = 3;
      sub_1AAE63EFC(&v31, v39);
      if ((v22 & 0x80000000) != 0)
      {
        sub_1AAEF289C(v2, v3);
        v23 = v4;
        v24 = v2;
      }

      else
      {
        v23 = v3;
        v24 = v22;
      }

      sub_1AAEF289C(v24, v23);
      sub_1AAD04750(v26, v25, v11 & 1);

      sub_1AAD0E818(v13, v15, v7);
      result = sub_1AAE63F58(&v31);
      v9 = v40;
      v18 = v41;
      v21 = v42;
      v20 = v43;
      v19 = v22 & 0x83 | 0x40;
      v13 = v27;
      v14 = v28;
      v17 = v30;
    }

    else
    {
      v44 = *(result + 240);
      v45 = v11;
      v16 = v11 | (v12 << 8);
      v46 = v12;
      v48 = BYTE6(v12);
      v47 = WORD2(v12);
      v49 = v14;
      v50 = v13;
      v51 = v15;
      v52 = v7;
      v53 = v6;
      v54 = v8;
      result = sub_1AAEF238C(&v44, &v31);
      v9 = 0uLL;
      v17 = v29;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = xmmword_1AAF92AC0;
    }
  }

  *a2 = v9;
  *(a2 + 16) = v18;
  *(a2 + 24) = v21;
  *(a2 + 40) = v20;
  *(a2 + 48) = v17;
  *(a2 + 64) = v16;
  *(a2 + 72) = v14;
  *(a2 + 80) = v13;
  *(a2 + 88) = v3;
  *(a2 + 96) = v4;
  *(a2 + 104) = v2;
  *(a2 + 112) = v19;
  return result;
}

uint64_t sub_1AAEF23E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAEF2468(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1AAEF2468(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AAEF24B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AAEF2514(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1AAEF2584(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = sub_1AAF90684();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAEF26E4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1AAF90694();

    sub_1AAF8F6C4();
    v16 = sub_1AAF906F4();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1AAF904F4() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAEF289C(uint64_t result, double a2)
{
  v3 = *(v2 + 40);
  if (v3 == 3)
  {
    *(v2 + 40) = result;
  }

  else if (v3 != result)
  {
    return result;
  }

  if (result > 1u)
  {
    if (*(v2 + 24) && (v4 = *(v2 + 32)) != 0)
    {
      v5 = a2;
      result = sub_1AAD7778C(v4, a2);
      if ((result & 1) == 0)
      {
        sub_1AAD7ABF4(&v18, v5);
        v6 = v2;
        v7 = *(v2 + 24);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1AAD67B50(0, *(v7 + 16) + 1, 1, v7);
          v7 = result;
        }

        v8 = *(v7 + 16);
        v9 = *(v7 + 24);
        v10 = v8 + 1;
        if (v8 >= v9 >> 1)
        {
          v16 = v7;
          v17 = *(v7 + 16);
          result = sub_1AAD67B50((v9 > 1), v8 + 1, 1, v16);
          v8 = v17;
          v11 = v5;
          v7 = result;
        }

        else
        {
          v11 = v5;
        }

        *(v7 + 16) = v10;
        *(v7 + 8 * v8 + 32) = v11;
        *(v6 + 24) = v7;
      }
    }

    else
    {
      v12 = a2;
      sub_1AAEF2CE4();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1AAF92AB0;
      *(v13 + 32) = v12;

      v14 = (v2 + 32);
      *(v14 - 1) = v13;

      *v14 = MEMORY[0x1E69E7CD0];
      return sub_1AAD7ABF4(&v18, v12);
    }
  }

  else if (*(v2 + 16) == 1)
  {
    *v2 = a2;
    *(v2 + 8) = a2;
    *(v2 + 16) = 0;
  }

  else
  {
    v15 = *v2;
    if (*v2 >= a2)
    {
      v15 = a2;
    }

    if (*(v2 + 8) >= a2)
    {
      a2 = *(v2 + 8);
    }

    *v2 = v15;
    *(v2 + 8) = a2;
  }

  return result;
}

uint64_t sub_1AAEF2A40(uint64_t result)
{
  v2 = *(v1 + 40);
  if (v2 != 3)
  {
    v3 = *(result + 24);
    if (v3 != 1)
    {
      v4 = *(result + 40);
      if (v4 != 3 && v2 == v4)
      {
        if (v2 > 1)
        {
          v9 = *(result + 32);
          if (v3)
          {
            v10 = *(v1 + 32);
            v24 = v1;
            if (v10)
            {
              v11 = *(v3 + 16);
              if (v11)
              {
                v23 = *(result + 32);
                v12 = v10 + 56;

                v13 = 0;
                v14 = MEMORY[0x1E69E7CC0];
                do
                {
                  v17 = *(v3 + 32 + 8 * v13);
                  if (*(v10 + 16) && (v18 = sub_1AAF90684(), v19 = -1 << *(v10 + 32), v20 = v18 & ~v19, ((*(v12 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
                  {
                    v21 = ~v19;
                    while (*(*(v10 + 48) + 8 * v20) != v17)
                    {
                      v20 = (v20 + 1) & v21;
                      if (((*(v12 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
                      {
                        goto LABEL_24;
                      }
                    }
                  }

                  else
                  {
LABEL_24:
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1AACEF664(0, *(v14 + 16) + 1, 1);
                      v1 = v24;
                    }

                    v16 = *(v14 + 16);
                    v15 = *(v14 + 24);
                    if (v16 >= v15 >> 1)
                    {
                      sub_1AACEF664((v15 > 1), v16 + 1, 1);
                      v1 = v24;
                    }

                    *(v14 + 16) = v16 + 1;
                    *(v14 + 8 * v16 + 32) = v17;
                  }

                  ++v13;
                }

                while (v13 != v11);

                v9 = v23;
              }

              else
              {
                v14 = MEMORY[0x1E69E7CC0];
              }
            }

            else
            {

              v14 = v3;
            }

            if (*(v1 + 24))
            {
              result = sub_1AADC8AB4(v14);
              v1 = v24;
            }

            else
            {
            }
          }

          if (v9 && *(v1 + 32))
          {

            return sub_1AAD795F0(v22);
          }
        }

        else
        {
          v7 = *result;
          v6 = *(result + 8);
          v8 = *(result + 16);
          if (*(v1 + 16) == 1)
          {
            *v1 = v7;
            *(v1 + 8) = v6;
            *(v1 + 16) = v8;
          }

          else if ((*(result + 16) & 1) == 0)
          {
            if (v7 >= *v1)
            {
              v7 = *v1;
            }

            if (*(v1 + 8) > v6)
            {
              v6 = *(v1 + 8);
            }

            *v1 = v7;
            *(v1 + 8) = v6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AAEF2C98(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1AAEF2D34(&v5, &v7) & 1;
}

void sub_1AAEF2CE4()
{
  if (!qword_1ED9B28C0)
  {
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B28C0);
    }
  }
}

uint64_t sub_1AAEF2D34(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    if (*result != *a2 || *(result + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  v3 = *(result + 24);
  v4 = *(a2 + 24);
  if (!v3)
  {
    if (v4)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(v3 + 16);
  if (v5 != *(v4 + 16))
  {
    return 0;
  }

  if (v5)
  {
    v6 = v3 == v4;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
LABEL_23:
    v9 = *(a2 + 32);
    if (*(result + 32))
    {
      if (!v9)
      {
        return 0;
      }

      v10 = result;
      v11 = a2;
      v12 = sub_1AAEF2584(*(result + 32), *(a2 + 32));
      a2 = v11;
      v13 = v12;
      result = v10;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }

    v14 = *(result + 40);
    v15 = *(a2 + 40);
    if (v14 == 3)
    {
      if (v15 == 3)
      {
        return 1;
      }
    }

    else if (v14 == v15)
    {
      return 1;
    }

    return 0;
  }

  v7 = (v3 + 32);
  v8 = (v4 + 32);
  while (v5)
  {
    if (*v7 != *v8)
    {
      return 0;
    }

    ++v7;
    ++v8;
    if (!--v5)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAEF2E48@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = 0uLL;
  v32 = 1;
  v33 = 3;
  v4 = a1[7];
  v34[6] = a1[6];
  v35[0] = v4;
  *(v35 + 9) = *(a1 + 121);
  v5 = a1[3];
  v34[2] = a1[2];
  v34[3] = v5;
  v6 = a1[5];
  v34[4] = a1[4];
  v34[5] = v6;
  v7 = a1[1];
  v34[0] = *a1;
  v34[1] = v7;
  v8 = sub_1AAE63EF0(v34);
  result = sub_1AAD357A8(v34);
  if (v8 > 2)
  {
    if (v8 != 3)
    {
      if (v8 != 4)
      {
        if (*(result + 64) < 0)
        {
          v29 = *(result + 48);
          v30 = *(result + 56);
          sub_1AAEF289C(v30, *(result + 40));
          v22 = v29;
          v23 = v30;
        }

        else
        {
          v22 = *(result + 40);
          v23 = *(result + 64);
        }

        sub_1AAEF289C(v23, v22);
        result = sub_1AAE68190(a1);
        v33 = 0;
        v31 = 0uLL;
        goto LABEL_18;
      }

      if (*(result + 8) != 1)
      {
        goto LABEL_16;
      }

      if ((*(result + 24) & 1) == 0)
      {
        v24 = *(result + 16);
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    v17 = *(result + 112);
    v16 = *(result + 120);
    v18 = *(result + 128);
    v19 = *(result + 136);
    if (*(result + 64) < 0)
    {
      v27 = *(result + 48);
      v28 = *(result + 56);
      sub_1AAEF289C(v28, *(result + 40));
      v20 = v27;
      v21 = v28;
    }

    else
    {
      v20 = *(result + 40);
      v21 = *(result + 64);
    }

    sub_1AAEF289C(v21, v20);
    v14 = v17;
    if ((v19 & 0x80000000) != 0)
    {
      sub_1AAEF289C(v18, v17);
      v14 = v16;
      v15 = v18;
    }

    else
    {
      v15 = v19;
    }

LABEL_24:
    sub_1AAEF289C(v15, v14);
    result = sub_1AAE68190(a1);
    goto LABEL_25;
  }

  if (v8 != 1)
  {
    if (*(result + 64) < 0)
    {
      v25 = *(result + 48);
      v26 = *(result + 56);
      sub_1AAEF289C(v26, *(result + 40));
      v14 = v25;
      v15 = v26;
    }

    else
    {
      v14 = *(result + 40);
      v15 = *(result + 64);
    }

    goto LABEL_24;
  }

  if ((*(result + 8) & 1) == 0)
  {
LABEL_16:
    v24 = *result;
LABEL_17:
    v33 = 0;
    *&v31 = v24;
    *(&v31 + 1) = v24;
LABEL_18:
    v32 = 0;
LABEL_25:
    v13 = v31;
    v10 = v32;
    v12 = 0uLL;
    v11 = v33;
    goto LABEL_26;
  }

LABEL_9:
  v10 = 0;
  v11 = 0;
  v12 = xmmword_1AAF92AC0;
  v13 = 0uLL;
LABEL_26:
  *a2 = v13;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 40) = v11;
  return result;
}

uint64_t sub_1AAEF30EC@<X0>(double *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v9 = *a1;
  v8 = *(a1 + 1);
  v10 = *(a1 + 2);
  v11 = *(a1 + 3);
  if (v10)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = a4;
    *(v12 + 32) = v10;
    *(v12 + 40) = v11;

    v13 = sub_1AAEF3F3C;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v8;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  v22 = *(a1 + 4);
  sub_1AACDE7DC(0, &qword_1ED9B28C0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AAF9E2B0;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;

  sub_1AACDE754(&v22, &v21);
  sub_1AACBD93C(v10);
  result = sub_1AACB4A98(v13);
  v17 = *(a1 + 5);
  v18 = *(a1 + 6);
  v19 = a1[7];
  v20 = a1[8];
  if (v18 != 255)
  {
    v19 = (a4 - a3) * v19;
    v20 = (a4 - a3) * v20 + a3;
    v18 = *(a1 + 6);
  }

  *(a2 + 8) = v14;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *a2 = sub_1AACE3D30;
  *(a2 + 48) = v22;
  *(a2 + 56) = v15;
  *(a2 + 64) = 0;
  *(a2 + 32) = v13;
  *(a2 + 40) = v12;
  *(a2 + 72) = v17;
  *(a2 + 80) = v18;
  *(a2 + 88) = v19;
  *(a2 + 96) = v20;
  return result;
}

uint64_t sub_1AAEF3298@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  if (v8)
  {
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = v8;
    v10[4] = v9;

    v11 = sub_1AAEF4010;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  sub_1AACBD93C(v8);
  sub_1AACB4A98(v11);
  v12 = swift_allocObject();
  v12[2] = v7;
  v12[3] = v6;
  v12[4] = a2;
  v13 = a1[6];
  if (*(a1 + 48) == 0xFF)
  {
    v14 = *(a1 + 7);
    v15 = a1[5];
  }

  else
  {
    v15 = 0;
    v14 = 0uLL;
    v13 = 255;
  }

  v19 = a1[4];
  v16 = v19;
  *(a3 + 8) = v12;
  *(a3 + 16) = 0;
  *a3 = sub_1AAEF3FA4;
  *(a3 + 40) = v16;
  *(a3 + 48) = a2;
  *(a3 + 56) = 0;
  *(a3 + 24) = v11;
  *(a3 + 32) = v10;
  *(a3 + 64) = v15;
  *(a3 + 72) = v13;
  *(a3 + 80) = v14;
  swift_bridgeObjectRetain_n();

  return sub_1AACDE754(&v19, &v18);
}

uint64_t sub_1AAEF33F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  if (v8)
  {
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = v8;
    v10[4] = v9;

    v11 = sub_1AAEF4210;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  sub_1AACBD93C(v8);
  sub_1AACB4A98(v11);
  v12 = swift_allocObject();
  v12[2] = v7;
  v12[3] = v6;
  v12[4] = a2;
  v13 = a1[6];
  if (*(a1 + 48) == 0xFF)
  {
    v14 = *(a1 + 7);
    v15 = a1[5];
  }

  else
  {
    v15 = 0;
    v14 = 0uLL;
    v13 = 255;
  }

  v19 = a1[4];
  v16 = v19;
  *(a3 + 8) = v12;
  *(a3 + 16) = 0;
  *a3 = sub_1AAEF40B4;
  *(a3 + 40) = v16;
  *(a3 + 48) = a2;
  *(a3 + 56) = 1;
  *(a3 + 24) = v11;
  *(a3 + 32) = v10;
  *(a3 + 64) = v15;
  *(a3 + 72) = v13;
  *(a3 + 80) = v14;
  swift_retain_n();

  return sub_1AACDE754(&v19, &v18);
}

uint64_t sub_1AAEF3554@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  if (v8)
  {
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = v8;
    v10[4] = v9;

    v11 = sub_1AAEF4210;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  sub_1AACBD93C(v8);
  sub_1AACB4A98(v11);
  v12 = swift_allocObject();
  v12[2] = v7;
  v12[3] = v6;
  v12[4] = a2;
  v13 = a1[6];
  if (*(a1 + 48) == 0xFF)
  {
    v14 = *(a1 + 7);
    v15 = a1[5];
  }

  else
  {
    v15 = 0;
    v13 = 255;
    v14 = 0uLL;
  }

  v19 = a1[4];
  v16 = v19;
  *(a3 + 16) = 0uLL;
  *(a3 + 32) = 0uLL;
  *(a3 + 48) = 0;
  *(a3 + 56) = v11;
  *a3 = sub_1AAEF4110;
  *(a3 + 8) = v12;
  *(a3 + 72) = v16;
  *(a3 + 80) = a2;
  *(a3 + 88) = 0;
  *(a3 + 64) = v10;
  *(a3 + 96) = v15;
  *(a3 + 104) = v13;
  *(a3 + 112) = v14;
  swift_bridgeObjectRetain_n();

  return sub_1AACDE754(&v19, &v18);
}

double *sub_1AAEF36B8@<X0>(double *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  if (a4 > a5)
  {
    v6 = -(*result - a4);
  }

  else
  {
    v6 = *result - a4;
  }

  v7 = floor(v6 / a6);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = v7;
  if (v7 < 0 || (v9 = *(a2 + 16), v9 < v8))
  {
    v10 = 0;
    v11 = 1;
LABEL_14:
    *a3 = v10;
    *(a3 + 8) = v11;
    return result;
  }

  if (v9)
  {
    v11 = 0;
    v12 = v9 - 1;
    if (v12 < v8)
    {
      v8 = v12;
    }

    v10 = *(a2 + 8 * v8 + 32);
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1AAEF377C@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *)@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  a2(&v5);
  sub_1AAF8D8A4();
  result = sub_1AAF8DA44();
  *a3 = result;
  return result;
}

uint64_t sub_1AAEF37F0@<X0>(void *a1@<X0>, double (*a2)(void *)@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a3;
  v9[0] = *a1;
  v6 = a2(v9);
  sub_1AAF42CDC(v5, v10, v6);
  v7 = v10[1];
  *a4 = v10[0];
  *(a4 + 16) = v7;
  *(a4 + 32) = v11;
  return sub_1AAEF41B4(v10, v9);
}

uint64_t sub_1AAEF3868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) == 2)
  {
    v6 = *(a2 + 32);
    v7 = *(a2 + 40);
    v8 = *(a1 + 16);
    if (!v8)
    {
      v10 = sub_1AADF8158(MEMORY[0x1E69E7CC0]);
      v9 = 0.0;
LABEL_17:
      v27 = swift_allocObject();
      *(v27 + 16) = v10;
      v28 = swift_allocObject();
      *(v28 + 16) = v6;
      *(v28 + 24) = v7;
      *(v28 + 32) = v9;
      *(v28 + 40) = a1;
      *a3 = sub_1AAEF3E78;
      *(a3 + 8) = v27;
      *(a3 + 16) = v9;
      *(a3 + 24) = 0;
      *(a3 + 32) = sub_1AAEF3EC8;
      *(a3 + 40) = v28;
      *(a3 + 48) = a1;
      *(a3 + 56) = a2;
      *(a3 + 64) = 0;
      *(a3 + 72) = xmmword_1AAFB4DB0;
      *(a3 + 88) = 0;
      *(a3 + 96) = 0;
      swift_bridgeObjectRetain_n();
    }

    v9 = vabdd_f64(v7, v6) / v8;
    v10 = sub_1AADF8158(MEMORY[0x1E69E7CC0]);
    v11 = a1 + 32;
    v12 = 0;
    if (v6 <= v7)
    {
      while (1)
      {
        v30 = *(v11 + 8 * v12);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = sub_1AADB0548(v30);
        v34 = v10[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          break;
        }

        v37 = v33;
        if (v10[3] >= v36)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v42 = v32;
            sub_1AAD955A4();
            v32 = v42;
          }
        }

        else
        {
          sub_1AAD8AA18(v36, isUniquelyReferenced_nonNull_native);
          v32 = sub_1AADB0548(v30);
          if ((v37 & 1) != (v38 & 1))
          {
            goto LABEL_37;
          }
        }

        v39 = v6 + v9 * v12;
        if (v37)
        {
          *(v10[7] + 8 * v32) = v39;
        }

        else
        {
          v10[(v32 >> 6) + 8] |= 1 << v32;
          *(v10[6] + 8 * v32) = v30;
          *(v10[7] + 8 * v32) = v39;
          v40 = v10[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_35;
          }

          v10[2] = v41;
        }

        if (v8 == ++v12)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      while (1)
      {
        v13 = *(v11 + 8 * v12);
        v14 = swift_isUniquelyReferenced_nonNull_native();
        v15 = sub_1AADB0548(v13);
        v17 = v10[2];
        v18 = (v16 & 1) == 0;
        v19 = __OFADD__(v17, v18);
        v20 = v17 + v18;
        if (v19)
        {
          break;
        }

        v21 = v16;
        if (v10[3] >= v20)
        {
          if ((v14 & 1) == 0)
          {
            v26 = v15;
            sub_1AAD955A4();
            v15 = v26;
          }
        }

        else
        {
          sub_1AAD8AA18(v20, v14);
          v15 = sub_1AADB0548(v13);
          if ((v21 & 1) != (v22 & 1))
          {
            goto LABEL_37;
          }
        }

        v23 = v6 - v9 * (v12 + 1.0);
        if (v21)
        {
          *(v10[7] + 8 * v15) = v23;
        }

        else
        {
          v10[(v15 >> 6) + 8] |= 1 << v15;
          *(v10[6] + 8 * v15) = v13;
          *(v10[7] + 8 * v15) = v23;
          v24 = v10[2];
          v19 = __OFADD__(v24, 1);
          v25 = v24 + 1;
          if (v19)
          {
            goto LABEL_34;
          }

          v10[2] = v25;
        }

        if (v8 == ++v12)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  __break(1u);
LABEL_37:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

uint64_t sub_1AAEF3BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  if (*(a1 + 8) && *(a1 + 8) == 1)
  {

LABEL_5:
    sub_1AACDE7DC(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AAF9E2B0;
    v12 = a4 - v9;
    v13 = v8 + 0.0;
    goto LABEL_7;
  }

  v10 = sub_1AAF904F4();

  if (v10)
  {
    goto LABEL_5;
  }

  sub_1AACDE7DC(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AAF9E2B0;
  v12 = v9 + 0.0;
  v13 = a3 - v8;
LABEL_7:
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  v14 = *(a1 + 16);
  if (*(v14 + 16) >= 2uLL)
  {
    v23 = *(a1 + 9);
    if (v23 == 2)
    {
      sub_1AAEF3868(v14, v11, &v35);
      v33 = v36;
      v34 = v35;
      v31 = v38;
      v32 = v37;
      v29 = v40;
      v30 = v39;
      v16 = v41;

      v22 = v29;
      v21 = v30;
      v20 = v31;
      v19 = v32;
      v18 = v33;
      v17 = v34;
    }

    else
    {
      v24 = v11;
      if (v23 == 3 && qword_1ED9B59F0 != -1)
      {
        goto LABEL_17;
      }

      while (1)
      {
        sub_1AACDE39C(v14, v42);
        v25 = *(v24 + 16);
        if (v25)
        {
          break;
        }

        __break(1u);
LABEL_17:
        v28 = v14;
        swift_once();
        v14 = v28;
      }

      v26 = *(v24 + 32);
      v27 = *(v24 + 32 + 8 * v25 - 8);

      sub_1AACDE510(v42, &v35, v26, v27);

      sub_1AACB4A98(*&v42[2]);
      v43 = v42[4];
      result = sub_1AACDE82C(&v43);
      v17 = v35;
      v18 = v36;
      v19 = v37;
      v20 = v38;
      v21 = v39;
      v22 = v40;
      v16 = v41;
    }
  }

  else
  {

    v16 = 0;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
  }

  *a2 = v17;
  *(a2 + 16) = v18;
  *(a2 + 32) = v19;
  *(a2 + 48) = v20;
  *(a2 + 64) = v21;
  *(a2 + 80) = v22;
  *(a2 + 96) = v16;
  return result;
}

unint64_t sub_1AAEF3E78@<X0>(unint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  if (*(v4 + 16) && (result = sub_1AADB0548(*result), (v5 & 1) != 0))
  {
    v6 = *(*(v4 + 56) + 8 * result);
  }

  else
  {
    v6 = 0x7FF8000000000000;
  }

  *a2 = v6;
  return result;
}

void *sub_1AAEF3ED8@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = sub_1AAEF3764(*a1, *(v2 + 16), *(v2 + 24));
  result = v4(&v8, v5);
  v7 = v9;
  *a2 = v8;
  *(a2 + 8) = v7;
  return result;
}

void *sub_1AAEF3F3C@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 32))(&v6, (*a1 - *(v2 + 16)) / (*(v2 + 24) - *(v2 + 16)), 0);
  v5 = v7;
  *a2 = v6;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1AAEF3FA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v8 = *a1;
  v6 = v4(&v8);
  *a2 = sub_1AAEF4014(v5, v6);
}

uint64_t sub_1AAEF4014(uint64_t result, double a2)
{
  v2 = *(result + 16);
  if (a2 < 0.0 || a2 > 1.0)
  {
    if (v2)
    {
      return *(result + 32);
    }

    __break(1u);
    goto LABEL_16;
  }

  v4 = floor(v2 * a2);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v2)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v5 = v2 - 1;
  if ((v4 & ~(v4 >> 63)) < v5)
  {
    v5 = v4 & ~(v4 >> 63);
  }

  return *(result + 8 * v5 + 32);
}

uint64_t sub_1AAEF40C0(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_1AAEF411C(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

void *sub_1AAEF4164@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 24))(&v5, 0, 1);
  v4 = v6;
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1AAEF422C(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1AAEF4244(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1AAEF4294(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 65))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1AAEF42E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1AAEF4338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v9);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1AAF8F934();
  v13 = sub_1AACAF550(v12, AssociatedTypeWitness, a3);
  v15 = v14;

  result = (*(v8 + 8))(a1, a2);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = v13;
  *(a4 + 24) = 0;
  *(a4 + 25) = v15;
  return result;
}

uint64_t (*sub_1AAEF4490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1, uint64_t a2, int a3)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  return sub_1AAEF5940;
}

uint64_t (*sub_1AAEF4510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  return sub_1AAEF58B8;
}

uint64_t (*sub_1AAEF4590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  return sub_1AAEF5850;
}

double (*sub_1AAEF45FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, int a3)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  return sub_1AAEF5804;
}

uint64_t sub_1AAEF4668(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = a7;
  v22 = a5;
  v15 = sub_1AAF8FE74();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - v17;
  sub_1AACCAE10(a1, a2, a3);
  sub_1AACFB938(a1, a2, a3, a6, a8, v18);
  v24 = a6;
  v25 = v21;
  v26 = a8;
  v27 = a9;
  v28 = a4;
  v29 = v22;
  sub_1AACD90D0(sub_1AAEF5970, v23, MEMORY[0x1E69E73E0], MEMORY[0x1E697E0B8], v19, &v31);
  (*(v16 + 8))(v18, v15);
  result = v31;
  if (!v31)
  {
    v30 = sub_1AAF8ECA4();
    return sub_1AAF8DA44();
  }

  return result;
}

uint64_t sub_1AAEF4804@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v4(v3);
  result = sub_1AAF8DA44();
  *a2 = result;
  return result;
}

uint64_t sub_1AAEF48AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a5;
  v15 = sub_1AAF8FE74();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - v17;
  sub_1AACCAE10(a1, a2, a3);
  sub_1AACFB938(a1, a2, a3, a6, a7, v18);
  v30 = a6;
  v31 = a7;
  v32 = a4;
  v33 = v28;
  sub_1AACD90D0(sub_1AAEF585C, v29, MEMORY[0x1E69E73E0], MEMORY[0x1E697DD48], v19, v34);
  result = (*(v16 + 8))(v18, v15);
  v21 = v38;
  if (v38)
  {
    v22 = v39;
    v23 = v37;
    v24 = v34;
    v25 = v35;
    v26 = v36;
  }

  else
  {
    v24 = &v40;
    result = sub_1AAF8D914();
    v25 = v41;
    v26 = v42;
    v23 = v43;
    v21 = v44;
    v22 = v45;
  }

  *a8 = *v24;
  *(a8 + 8) = v25;
  *(a8 + 12) = v26;
  *(a8 + 16) = v23;
  *(a8 + 24) = v21;
  *(a8 + 32) = v22;
  return result;
}

uint64_t sub_1AAEF4A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v24 = a7;
  v25 = a4;
  v26 = a5;
  v16 = sub_1AAF8FE74();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - v18;
  sub_1AACCAE10(a1, a2, a3);
  sub_1AACFB938(a1, a2, a3, a6, a8, v19);
  v28 = a6;
  v29 = v24;
  v30 = a8;
  v31 = a10;
  v32 = v25;
  v33 = v26;
  sub_1AACD90D0(sub_1AAEF58E8, v27, MEMORY[0x1E69E73E0], &type metadata for AnyChartSymbolShape, v20, &v34);
  result = (*(v17 + 8))(v19, v16);
  if (*(&v35 + 1))
  {
    v22 = v35;
    *a9 = v34;
    *(a9 + 16) = v22;
    *(a9 + 32) = v36;
  }

  else
  {
    if (qword_1ED9B0BD0 != -1)
    {
      swift_once();
    }

    result = sub_1AAD9B194(&qword_1ED9C3450, a9);
    if (*(&v35 + 1))
    {
      return sub_1AAE45558(&v34);
    }
  }

  return result;
}

double sub_1AAEF4C74(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1AAF8FE74();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v20[-v16];
  sub_1AACCAE10(a1, a2, a3);
  sub_1AACFB938(a1, a2, a3, a6, a7, v17);
  v21 = a6;
  v22 = a7;
  v23 = a4;
  v24 = a5;
  sub_1AACD90D0(sub_1AAEF5810, v20, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7DE0], v18, &v25);
  (*(v15 + 8))(v17, v14);
  result = v25;
  if (v26)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1AAEF4DF0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, *(a1 + 8), *(a1 + 16));
  *a3 = result;
  return result;
}

double sub_1AAEF4E30@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, void, void, void)@<X1>, uint64_t a3@<X8>)
{
  a2(v6, *a1, *(a1 + 8), *(a1 + 16));
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

uint64_t sub_1AAEF4F78(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        v17 = swift_allocObject();
        *(v17 + 16) = a1;
        *(v17 + 24) = a2;
        v18 = swift_allocObject();
        *(v18 + 16) = a4;
        *(v18 + 24) = a5;
        sub_1AAEB0914();
        sub_1AADC681C(a1, a2, 2u);
        v12 = a4;
        v13 = a5;
        v14 = 2;
        goto LABEL_12;
      }
    }

    else if (a6 == 3)
    {
      v25 = swift_allocObject();
      *(v25 + 16) = a1;
      *(v25 + 24) = a2;
      v26 = swift_allocObject();
      *(v26 + 16) = a4;
      *(v26 + 24) = a5;
      sub_1AAEB0994();
      sub_1AADC681C(a1, a2, 3u);
      v12 = a4;
      v13 = a5;
      v14 = 3;
      goto LABEL_12;
    }
  }

  else if (a3)
  {
    if (a6 == 1)
    {
      v21 = swift_allocObject();
      *(v21 + 16) = a1;
      *(v21 + 24) = a2;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_1AAEB0894();
      sub_1AADC681C(a1, a2, 1u);
      v12 = a4;
      v13 = a5;
      v14 = 1;
      goto LABEL_12;
    }
  }

  else if (!a6)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    v11 = swift_allocObject();
    *(v11 + 16) = a4;
    *(v11 + 24) = a5;
    sub_1AAEB0814();
    sub_1AADC681C(a1, a2, 0);
    v12 = a4;
    v13 = a5;
    v14 = 0;
LABEL_12:
    sub_1AADC681C(v12, v13, v14);
    v27 = AGCompareValues();

    return v27;
  }

  return 0;
}

uint64_t sub_1AAEF52C0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3 >> 5;
  if (v6 <= 3)
  {
    if ((a3 >> 5) <= 1u)
    {
      if (!(a3 >> 5))
      {
        v7 = *&a2 == *&a5;
        if (*&a1 != *&a4)
        {
          v7 = 0;
        }

        v8 = a6 < 0x20u && v7;
        return v8 & 1;
      }

      if ((a6 & 0xE0) == 0x20)
      {
        v25 = *(a1 + 16);
        if (v25 == *(a4 + 16))
        {
          if (!v25 || a1 == a4)
          {
LABEL_39:
            v8 = 1;
            return v8 & 1;
          }

          v28 = (a1 + 32);
          v29 = (a4 + 32);
          while (v25)
          {
            v30 = *v28++;
            v31 = v30;
            v32 = *v29++;
            v8 = v31 == v32;
            if (v31 != v32 || v25-- == 1)
            {
              return v8 & 1;
            }
          }

LABEL_62:
          __break(1u);
        }
      }

      goto LABEL_51;
    }

    if (v6 == 2)
    {
      if ((a6 & 0xE0) == 0x40)
      {
        v11 = *(a1 + 16);
        if (v11 == *(a4 + 16))
        {
          if (!v11 || a1 == a4)
          {
            goto LABEL_39;
          }

          v12 = (a1 + 32);
          v13 = (a4 + 32);
          while (v11)
          {
            v14 = *v12++;
            v15 = v14;
            v16 = *v13++;
            v8 = v15 == v16;
            if (v15 != v16 || v11-- == 1)
            {
              return v8 & 1;
            }
          }

          __break(1u);
          __break(1u);
          goto LABEL_62;
        }
      }

LABEL_51:
      v8 = 0;
      return v8 & 1;
    }

    if ((a6 & 0xE0) != 0x60)
    {
      goto LABEL_51;
    }

    *&v38[0] = a1;
    *&v36[0] = a4;
    v9 = &unk_1ED9AEF98;
    v10 = MEMORY[0x1E697E0B8];
LABEL_46:
    sub_1AACB1C0C(0, v9, v10, MEMORY[0x1E69E62F8]);
    v8 = AGCompareValues();
    return v8 & 1;
  }

  if ((a3 >> 5) > 5u)
  {
    if (v6 == 6)
    {
      if ((a6 & 0xE0) == 0xC0)
      {
        v18 = *(a1 + 16);
        if (v18 == *(a4 + 16))
        {
          if (v18 && a1 != a4)
          {
            v19 = a1 + 32;
            v20 = a4 + 32;
            do
            {
              v21 = *v19;
              v22 = *(v19 + 16);
              v37 = *(v19 + 32);
              v36[0] = v21;
              v36[1] = v22;
              v23 = *v20;
              v24 = *(v20 + 16);
              v39 = *(v20 + 32);
              v38[0] = v23;
              v38[1] = v24;
              sub_1AAEF41B4(v36, v35);
              sub_1AAEF41B4(v38, v35);
              v8 = MEMORY[0x1AC596520](v36, v38);
              sub_1AAE15FEC(v38);
              sub_1AAE15FEC(v36);
              if ((v8 & 1) == 0)
              {
                break;
              }

              v19 += 40;
              v20 += 40;
              --v18;
            }

            while (v18);
            return v8 & 1;
          }

          goto LABEL_39;
        }
      }

      goto LABEL_51;
    }

    if (a6 <= 0xDFu)
    {
      goto LABEL_51;
    }

    v26 = a3 & 0x1F;
    v27 = a6 & 0x1F;

    return sub_1AAEF4F78(a1, a2, v26, a4, a5, v27);
  }

  else
  {
    if (v6 == 4)
    {
      if ((a6 & 0xE0) != 0x80)
      {
        goto LABEL_51;
      }

      *&v38[0] = a1;
      *&v36[0] = a4;
      v9 = &unk_1EB426988;
      v10 = &type metadata for AnyChartSymbolShape;
      goto LABEL_46;
    }

    if ((a6 & 0xE0) != 0xA0)
    {
      goto LABEL_51;
    }

    return MEMORY[0x1EEDDD350](a1, a4);
  }
}

double sub_1AAEF568C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(v2 + 16))(v6, *a1, *(a1 + 8), *(a1 + 16));
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_1AAEF56E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  return result;
}