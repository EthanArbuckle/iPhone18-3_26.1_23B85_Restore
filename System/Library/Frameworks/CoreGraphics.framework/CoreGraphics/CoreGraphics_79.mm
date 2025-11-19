unint64_t PDAcolorburnPDA_15242(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v4 = a1;
  v5 = WORD1(a1);
  v6 = WORD2(a1);
  v7 = a2;
  v8 = WORD2(a3);
  v9 = a4;
  v10 = a4 * a2;
  if (a3 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a3;
  }

  if (a1 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = a1;
  }

  if (WORD1(a3) >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = WORD1(a3);
  }

  if (v5 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = v5;
  }

  if (v8 >= a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = v8;
  }

  if (v6 >= a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = v6;
  }

  v17 = a4 == 0xFFFF;
  v18 = v10 + (a4 ^ 0xFFFF) * v12;
  v19 = v10 + (a4 ^ 0xFFFF) * v14;
  if (v17)
  {
    v19 = v10;
    v20 = v10;
  }

  else
  {
    v20 = v10 + (v9 ^ 0xFFFF) * v16;
  }

  if (v17)
  {
    v18 = v10;
  }

  v21 = v19 + v13 * (a2 ^ 0xFFFF);
  v22 = v20 + v15 * (a2 ^ 0xFFFF);
  if (a2 == 0xFFFF)
  {
    v21 = v19;
    v22 = v20;
  }

  else
  {
    v18 += v11 * (a2 ^ 0xFFFF);
  }

  if (v4 < a2)
  {
    if (v11)
    {
      v23 = (v9 * v9 * (a2 - v12)) / v11;
      v18 = (v18 - v23) & ~((v18 - v23) >> 63);
    }

    else
    {
      v18 = 0;
    }
  }

  if (v5 < v7)
  {
    if (v13)
    {
      v24 = (v9 * v9 * (v7 - v14)) / v13;
      v21 = (v21 - v24) & ~((v21 - v24) >> 63);
    }

    else
    {
      v21 = 0;
    }
  }

  if (v6 < v7)
  {
    if (v15)
    {
      v25 = (v9 * v9 * (v7 - v16)) / v15;
      v22 = (v22 - v25) & ~((v22 - v25) >> 63);
    }

    else
    {
      v22 = 0;
    }
  }

  v26 = 0xFFFF * (v9 + v7) - v10;
  v27 = v18 + 0x8000;
  if (v18 > 0xFFFE8000)
  {
    v27 = 4294868992;
  }

  v28 = ((v27 >> 16) + v27) >> 16;
  v29 = v21 + 0x8000;
  if (v21 > 0xFFFE8000)
  {
    v29 = 4294868992;
  }

  v30 = (v29 >> 16) + v29;
  if (v26 <= 4294868992)
  {
    v31 = v26 + 0x8000;
  }

  else
  {
    v31 = 4294868992;
  }

  v32 = (v31 >> 16) + v31;
  v33 = 0xFFFF00000000;
  if (v22 <= 0xFFFE8000)
  {
    v33 = (65537 * v22 + 2147516416u) & 0xFFFF00000000;
  }

  return (v28 | (v32 << 32)) & 0xFFFF00000000FFFFLL | v30 & 0xFFFF0000 | v33;
}

unint64_t PDAhardlightPDA_15243(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v4 = WORD2(a1);
  v5 = a2;
  v6 = a4;
  if (a3 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  if (a1 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a1;
  }

  v9 = 2 * v8 * v7;
  if (WORD1(a3) >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = WORD1(a3);
  }

  if (WORD1(a1) >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = WORD1(a1);
  }

  v12 = 2 * v11 * v10;
  if (WORD2(a3) >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = WORD2(a3);
  }

  if (WORD2(a1) >= a2)
  {
    v4 = a2;
  }

  v14 = 2 * v4 * v13;
  v15 = a4 * a2;
  v16 = (a4 + 1) >> 1;
  v17 = a4 ^ 0xFFFF;
  v18 = v7 * (v5 ^ 0xFFFF) + (a4 ^ 0xFFFF) * v8 + v9;
  v19 = (v6 + 0xFFFF) * v8 + v7 * (v5 + 0xFFFF) - (v15 + v9);
  if (v7 > (v6 + 1) >> 1)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  if (v10 <= v16)
  {
    v21 = v10 * (v5 ^ 0xFFFF) + v17 * v11 + v12;
  }

  else
  {
    v21 = (v6 + 0xFFFF) * v11 + v10 * (v5 + 0xFFFF) - (v15 + v12);
  }

  v22 = v13 * (v5 ^ 0xFFFF) + (v6 ^ 0xFFFF) * v4 + v14;
  v23 = (v6 + 0xFFFF) * v4 + v13 * (v5 + 0xFFFF) - (v15 + v14);
  if (v13 > v16)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  v25 = 0xFFFF * (v6 + v5) - v15;
  v26 = v20 + 0x8000;
  if (v20 > 4294868992)
  {
    v26 = 4294868992;
  }

  v27 = ((v26 >> 16) + v26) >> 16;
  v28 = v21 + 0x8000;
  if (v21 > 4294868992)
  {
    v28 = 4294868992;
  }

  v29 = (v28 >> 16) + v28;
  if (v25 <= 4294868992)
  {
    v30 = v25 + 0x8000;
  }

  else
  {
    v30 = 4294868992;
  }

  v31 = (v30 >> 16) + v30;
  v32 = (65537 * v24 + 2147516416) & 0xFFFF00000000;
  v33 = v24 <= 4294868992;
  v34 = 0xFFFF00000000;
  if (v33)
  {
    v34 = v32;
  }

  return (v27 | (v31 << 32)) & 0xFFFF00000000FFFFLL | v29 & 0xFFFF0000 | v34;
}

unint64_t PDAsoftlightPDA_15244(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v4 = a1;
  v5 = a3;
  v6 = WORD1(a3);
  v7 = WORD2(a3);
  if (a3 >= a4)
  {
    v5 = a4;
  }

  if (a1 >= a2)
  {
    v4 = a2;
  }

  if (a2)
  {
    v8 = WORD2(a1);
    v9 = WORD1(a1);
    v10 = 2 * v4 * v5 - (v4 * v4 * (2 * v5 - a4)) / a2;
    v11 = v10 & ~(v10 >> 63);
    if (WORD1(a3) >= a4)
    {
      v6 = a4;
    }

    if (WORD1(a1) >= a2)
    {
      v9 = a2;
    }

    v12 = 2 * v9 * v6 - (v9 * v9 * (2 * v6 - a4)) / a2;
    v13 = v12 & ~(v12 >> 63);
    if (WORD2(a3) >= a4)
    {
      v7 = a4;
    }

    if (WORD2(a1) >= a2)
    {
      v8 = a2;
    }

    v14 = 2 * v8 * v7 - (v8 * v8 * (2 * v7 - a4)) / a2;
    v15 = v14 & ~(v14 >> 63);
  }

  else
  {
    v8 = 0;
    v13 = 0;
    v11 = 0;
    v9 = 0;
    v15 = 0;
    if (WORD1(a3) >= a4)
    {
      LODWORD(v6) = a4;
    }

    if (WORD2(a3) >= a4)
    {
      LODWORD(v7) = a4;
    }
  }

  v16 = v11 + (a4 ^ 0xFFFF) * v4;
  v17 = v13 + v9 * (a4 ^ 0xFFFF);
  v18 = v15 + v8 * (a4 ^ 0xFFFF);
  if (a4 == 0xFFFF)
  {
    v17 = v13;
    v19 = v15;
  }

  else
  {
    v19 = v18;
  }

  if (a4 == 0xFFFF)
  {
    v16 = v11;
  }

  v20 = v16 + v5 * (a2 ^ 0xFFFF);
  v21 = v17 + v6 * (a2 ^ 0xFFFF);
  v22 = v19 + v7 * (a2 ^ 0xFFFF);
  if (a2 == 0xFFFF)
  {
    v21 = v17;
    v22 = v19;
    v20 = v16;
  }

  v23 = 0xFFFF * (a4 + a2) - a4 * a2;
  v24 = v20 + 0x8000;
  if (v20 > 0xFFFE8000)
  {
    v24 = 4294868992;
  }

  v25 = ((v24 >> 16) + v24) >> 16;
  v26 = v21 + 0x8000;
  if (v21 > 0xFFFE8000)
  {
    v26 = 4294868992;
  }

  v27 = (v26 >> 16) + v26;
  if (v23 <= 4294868992)
  {
    v28 = v23 + 0x8000;
  }

  else
  {
    v28 = 4294868992;
  }

  v29 = ((v28 >> 16) + v28) >> 16;
  v30 = 0xFFFF00000000;
  if (v22 <= 0xFFFE8000)
  {
    v30 = (65537 * v22 + 2147516416u) & 0xFFFF00000000;
  }

  return v30 & 0xFFFFFFFFFFFFLL | (v29 << 48) | v27 & 0xFFFF0000 | v25;
}

unint64_t PDAdifferencePDA_15245(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v4 = a1;
  v5 = WORD1(a1);
  v6 = WORD2(a1);
  v7 = a3;
  if (a3 >= a4)
  {
    v7 = a4;
  }

  if (a1 >= a2)
  {
    v4 = a2;
  }

  v8 = v4 * a4 - v7 * a2;
  v9 = 0xFFFF * (v7 + v4) - v7 * a2 - v4 * a4;
  if (v8 >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = -v8;
  }

  v11 = v9 + v10;
  if (WORD1(a3) >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = WORD1(a3);
  }

  if (WORD1(a1) >= a2)
  {
    v5 = a2;
  }

  v13 = v5 * a4 - v12 * a2;
  v14 = 0xFFFF * (v12 + v5) - v12 * a2 - v5 * a4;
  if (v13 >= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = -v13;
  }

  v16 = v14 + v15;
  if (WORD2(a3) >= a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = WORD2(a3);
  }

  if (WORD2(a1) >= a2)
  {
    v6 = a2;
  }

  v18 = v6 * a4 - v17 * a2;
  v19 = 0xFFFF * (v17 + v6) - v17 * a2 - v6 * a4;
  if (v18 >= 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = -v18;
  }

  v21 = v19 + v20;
  v22 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v11 <= 4294868992)
  {
    v23 = v11 + 0x8000;
  }

  else
  {
    v23 = 4294868992;
  }

  v24 = ((v23 >> 16) + v23) >> 16;
  if (v16 <= 4294868992)
  {
    v25 = v16 + 0x8000;
  }

  else
  {
    v25 = 4294868992;
  }

  v26 = (v25 >> 16) + v25;
  if (v22 <= 4294868992)
  {
    v27 = v22 + 0x8000;
  }

  else
  {
    v27 = 4294868992;
  }

  v28 = ((v27 >> 16) + v27) >> 16;
  v29 = (65537 * v21 + 2147516416) & 0xFFFF00000000;
  v30 = v21 <= 4294868992;
  v31 = 0xFFFF00000000;
  if (v30)
  {
    v31 = v29;
  }

  return v31 & 0xFFFFFFFFFFFFLL | (v28 << 48) | v26 & 0xFFFF0000 | v24;
}

unint64_t PDAexclusionPDA_15246(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v4 = a1;
  v5 = WORD1(a1);
  v6 = WORD2(a1);
  v7 = a3;
  if (a3 >= a4)
  {
    v7 = a4;
  }

  if (a1 >= a2)
  {
    v4 = a2;
  }

  v8 = 0xFFFF * (v7 + v4) - 2 * v4 * v7;
  if (WORD1(a3) >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = WORD1(a3);
  }

  if (WORD1(a1) >= a2)
  {
    v5 = a2;
  }

  v10 = 0xFFFF * (v9 + v5) - 2 * v5 * v9;
  if (WORD2(a3) >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = WORD2(a3);
  }

  if (WORD2(a1) >= a2)
  {
    v6 = a2;
  }

  v12 = 0xFFFF * (v11 + v6) - 2 * v6 * v11;
  v13 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v8 <= 4294868992)
  {
    v14 = v8 + 0x8000;
  }

  else
  {
    v14 = 4294868992;
  }

  v15 = ((v14 >> 16) + v14) >> 16;
  if (v10 <= 4294868992)
  {
    v16 = v10 + 0x8000;
  }

  else
  {
    v16 = 4294868992;
  }

  v17 = (v16 >> 16) + v16;
  if (v13 <= 4294868992)
  {
    v18 = v13 + 0x8000;
  }

  else
  {
    v18 = 4294868992;
  }

  v19 = ((v18 >> 16) + v18) >> 16;
  v20 = (65537 * v12 + 2147516416) & 0xFFFF00000000;
  v21 = v12 <= 4294868992;
  v22 = 0xFFFF00000000;
  if (v21)
  {
    v22 = v20;
  }

  return v22 & 0xFFFFFFFFFFFFLL | (v19 << 48) | v17 & 0xFFFF0000 | v15;
}

unint64_t PDAhuePDA_15247(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v5 = WORD2(a1);
  v49 = *MEMORY[0x1E69E9840];
  if (a3 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  if (a1 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a1;
  }

  if (WORD1(a3) >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = WORD1(a3);
  }

  if (WORD1(a1) >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = WORD1(a1);
  }

  if (WORD2(a3) >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = WORD2(a3);
  }

  if (v5 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = v5;
  }

  if (a4 == 0xFFFF)
  {
    v15 = 0;
    v14 = 0;
    v13 = 0;
  }

  else
  {
    v13 = (a4 ^ 0xFFFF) * v8;
    v8 = (v8 * a4 + 0x8000 + ((v8 * a4 + 0x8000) >> 16)) >> 16;
    v14 = (a4 ^ 0xFFFF) * v10;
    v10 = (v10 * a4 + 0x8000 + ((v10 * a4 + 0x8000) >> 16)) >> 16;
    v15 = (a4 ^ 0xFFFF) * v12;
    v12 = (v12 * a4 + 0x8000 + ((v12 * a4 + 0x8000) >> 16)) >> 16;
  }

  if (a2 != 0xFFFF)
  {
    v13 += v7 * (a2 ^ 0xFFFF);
    v7 = (v7 * a2 + 0x8000 + ((v7 * a2 + 0x8000) >> 16)) >> 16;
    v14 += v9 * (a2 ^ 0xFFFF);
    v9 = (v9 * a2 + 0x8000 + ((v9 * a2 + 0x8000) >> 16)) >> 16;
    v15 += v11 * (a2 ^ 0xFFFF);
    v11 = (v11 * a2 + 0x8000 + ((v11 * a2 + 0x8000) >> 16)) >> 16;
  }

  v46 = v7;
  v47 = v9;
  v48 = v11;
  v16 = v7 < v9;
  v17 = v7 >= v9;
  if (v7 >= v9)
  {
    v18 = v9;
  }

  else
  {
    v18 = v7;
  }

  if (v11 >= v18)
  {
    if (v7 <= v9)
    {
      v7 = v9;
    }

    v19 = v17;
    if (v11 <= v7)
    {
      v17 = 2;
    }

    else
    {
      v17 = v16;
    }

    if (v11 > v7)
    {
      v16 = 2;
    }
  }

  else
  {
    v19 = 2;
  }

  v20 = *(&v46 + v16);
  v21 = *(&v46 + v19);
  v22 = v20 <= v21;
  v23 = v20 - v21;
  if (v22)
  {
    *(&v46 + v16) = 0;
    *(&v46 + v17) = 0;
  }

  else
  {
    if (v8 >= v10)
    {
      v24 = v10;
    }

    else
    {
      v24 = v8;
    }

    if (v8 <= v10)
    {
      v25 = v10;
    }

    else
    {
      v25 = v8;
    }

    if (v12 <= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = v12;
    }

    if (v12 >= v24)
    {
      v25 = v26;
    }

    else
    {
      v24 = v12;
    }

    v27 = v25 - v24;
    *(&v46 + v16) = v27;
    *(&v46 + v17) = ((*(&v46 + v17) - *(&v46 + v19)) * ((v27 << 16) / v23) + 0x8000) >> 16;
  }

  *(&v46 + v19) = 0;
  v28 = 151 * (v10 - v47) + 77 * (v8 - v46) + 28 * (v12 - v48);
  v29 = v28 + 128;
  v30 = v46 + ((v28 + 128) >> 8);
  v31 = v47 + ((v28 + 128) >> 8);
  v32 = (a4 * a2 + 0x8000 + ((a4 * a2 + 0x8000) >> 16)) >> 16;
  v33 = v48 + ((v28 + 128) >> 8);
  if (v28 != v28)
  {
    if (v46 >= v47)
    {
      v34 = v47 + ((v28 + 128) >> 8);
    }

    else
    {
      v34 = v46 + ((v28 + 128) >> 8);
    }

    if (v46 >= v47)
    {
      v35 = v46 + ((v28 + 128) >> 8);
    }

    else
    {
      v35 = v47 + ((v28 + 128) >> 8);
    }

    if (v33 <= v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = v48 + ((v28 + 128) >> 8);
    }

    if (v33 >= v34)
    {
      v37 = v34;
    }

    else
    {
      v37 = v33;
    }

    if (v33 >= v34)
    {
      v35 = v36;
    }

    if (v35 > v32 || v37 < 0)
    {
      v38 = (77 * v30 + 151 * v31 + 28 * v33 + 128) >> 8;
      if (v29 >> 8 < 0)
      {
        v39 = v38 - v37;
        if (!v39)
        {
          goto LABEL_74;
        }

        v40 = (77 * v30 + 151 * v31 + 28 * v33 + 128) >> 8;
      }

      else
      {
        v39 = v35 - v38;
        if (v35 == v38)
        {
          goto LABEL_74;
        }

        v40 = v32 - v38;
      }

      v41 = (v40 << 16) / v39;
      v30 = v38 + ((v41 * (v30 - v38) + 0x8000) >> 16);
      v31 = v38 + ((v41 * (v31 - v38) + 0x8000) >> 16);
      v33 = v38 + ((v41 * (v33 - v38) + 0x8000) >> 16);
    }
  }

LABEL_74:
  if (v15 <= 0xFFFE8000)
  {
    v42 = v15 + 0x8000;
  }

  else
  {
    v42 = 4294868992;
  }

  if (v14 <= 0xFFFE8000)
  {
    v43 = v14 + 0x8000;
  }

  else
  {
    v43 = 4294868992;
  }

  if (v13 <= 0xFFFE8000)
  {
    v44 = v13 + 0x8000;
  }

  else
  {
    v44 = 4294868992;
  }

  return ((a4 + a2 - v32) << 48) | ((v33 + (((v42 >> 16) + v42) >> 16)) << 32) | ((v43 >> 16) + v43 + (v31 << 16)) & 0xFFFF0000 | (v30 + (((v44 >> 16) + v44) >> 16));
}

unint64_t PDAsaturationPDA_15248(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v5 = WORD2(a1);
  v48 = *MEMORY[0x1E69E9840];
  if (a3 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  if (a1 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a1;
  }

  if (WORD1(a3) >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = WORD1(a3);
  }

  if (WORD1(a1) >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = WORD1(a1);
  }

  if (WORD2(a3) >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = WORD2(a3);
  }

  if (v5 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = v5;
  }

  if (a4 == 0xFFFF)
  {
    v15 = 0;
    v14 = 0;
    v13 = 0;
  }

  else
  {
    v13 = (a4 ^ 0xFFFF) * v8;
    v8 = (v8 * a4 + 0x8000 + ((v8 * a4 + 0x8000) >> 16)) >> 16;
    v14 = (a4 ^ 0xFFFF) * v10;
    v10 = (v10 * a4 + 0x8000 + ((v10 * a4 + 0x8000) >> 16)) >> 16;
    v15 = (a4 ^ 0xFFFF) * v12;
    v12 = (v12 * a4 + 0x8000 + ((v12 * a4 + 0x8000) >> 16)) >> 16;
  }

  if (a2 != 0xFFFF)
  {
    v13 += v7 * (a2 ^ 0xFFFF);
    v7 = (v7 * a2 + 0x8000 + ((v7 * a2 + 0x8000) >> 16)) >> 16;
    v14 += v9 * (a2 ^ 0xFFFF);
    v9 = (v9 * a2 + 0x8000 + ((v9 * a2 + 0x8000) >> 16)) >> 16;
    v15 += v11 * (a2 ^ 0xFFFF);
    v11 = (v11 * a2 + 0x8000 + ((v11 * a2 + 0x8000) >> 16)) >> 16;
  }

  v45 = v8;
  v46 = v10;
  v47 = v12;
  v16 = v8 < v10;
  v17 = v8 >= v10;
  if (v8 >= v10)
  {
    v18 = v10;
  }

  else
  {
    v18 = v8;
  }

  if (v12 >= v18)
  {
    if (v8 <= v10)
    {
      v20 = v10;
    }

    else
    {
      v20 = v8;
    }

    v21 = v12 > v20;
    v19 = v8 >= v10;
    if (v21)
    {
      v17 = v8 < v10;
    }

    else
    {
      v17 = 2;
    }

    if (v21)
    {
      v16 = 2;
    }
  }

  else
  {
    v19 = 2;
  }

  v22 = *(&v45 + v16);
  v23 = *(&v45 + v19);
  v21 = v22 <= v23;
  v24 = v22 - v23;
  if (v21)
  {
    *(&v45 + v16) = 0;
    *(&v45 + v17) = 0;
  }

  else
  {
    if (v7 >= v9)
    {
      v25 = v9;
    }

    else
    {
      v25 = v7;
    }

    if (v7 <= v9)
    {
      v7 = v9;
    }

    if (v11 <= v7)
    {
      v26 = v7;
    }

    else
    {
      v26 = v11;
    }

    if (v11 >= v25)
    {
      v11 = v25;
      v7 = v26;
    }

    v27 = v7 - v11;
    *(&v45 + v16) = v27;
    *(&v45 + v17) = ((*(&v45 + v17) - *(&v45 + v19)) * ((v27 << 16) / v24) + 0x8000) >> 16;
  }

  *(&v45 + v19) = 0;
  v28 = 151 * (v10 - v46) + 77 * (v8 - v45) + 28 * (v12 - v47);
  v29 = v45 + ((v28 + 128) >> 8);
  v30 = v46 + ((v28 + 128) >> 8);
  v31 = (a4 * a2 + 0x8000 + ((a4 * a2 + 0x8000) >> 16)) >> 16;
  v32 = v47 + ((v28 + 128) >> 8);
  if (v28 != v28)
  {
    if (v45 >= v46)
    {
      v33 = v46 + ((v28 + 128) >> 8);
    }

    else
    {
      v33 = v45 + ((v28 + 128) >> 8);
    }

    if (v45 >= v46)
    {
      v34 = v45 + ((v28 + 128) >> 8);
    }

    else
    {
      v34 = v46 + ((v28 + 128) >> 8);
    }

    if (v32 <= v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = v47 + ((v28 + 128) >> 8);
    }

    if (v32 >= v33)
    {
      v36 = v33;
    }

    else
    {
      v36 = v47 + ((v28 + 128) >> 8);
    }

    if (v32 >= v33)
    {
      v34 = v35;
    }

    if (v34 > v31 || (v36 & 0x8000000000000000) != 0)
    {
      v37 = (77 * v29 + 151 * v30 + 28 * v32 + 128) >> 8;
      if ((v28 + 128) >> 8 < 0)
      {
        v38 = v37 - v36;
        if (!v38)
        {
          goto LABEL_73;
        }

        v39 = (77 * v29 + 151 * v30 + 28 * v32 + 128) >> 8;
      }

      else
      {
        v38 = v34 - v37;
        if (v34 == v37)
        {
          goto LABEL_73;
        }

        v39 = v31 - v37;
      }

      v40 = (v39 << 16) / v38;
      v29 = v37 + ((v40 * (v29 - v37) + 0x8000) >> 16);
      v30 = v37 + ((v40 * (v30 - v37) + 0x8000) >> 16);
      v32 = v37 + ((v40 * (v32 - v37) + 0x8000) >> 16);
    }
  }

LABEL_73:
  if (v15 <= 0xFFFE8000)
  {
    v41 = v15 + 0x8000;
  }

  else
  {
    v41 = 4294868992;
  }

  if (v14 <= 0xFFFE8000)
  {
    v42 = v14 + 0x8000;
  }

  else
  {
    v42 = 4294868992;
  }

  if (v13 <= 0xFFFE8000)
  {
    v43 = v13 + 0x8000;
  }

  else
  {
    v43 = 4294868992;
  }

  return ((a4 + a2 - v31) << 48) | ((v32 + (((v41 >> 16) + v41) >> 16)) << 32) | ((v42 >> 16) + v42 + (v30 << 16)) & 0xFFFF0000 | (v29 + (((v43 >> 16) + v43) >> 16));
}

unint64_t PDAluminosityPDA_15249(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v5 = WORD1(a1);
  if (a3 >= a4)
  {
    LODWORD(v7) = a4;
  }

  else
  {
    LODWORD(v7) = a3;
  }

  if (a1 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a1;
  }

  if (WORD1(a3) >= a4)
  {
    LODWORD(v9) = a4;
  }

  else
  {
    LODWORD(v9) = WORD1(a3);
  }

  if (v5 >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = v5;
  }

  if (WORD2(a3) >= a4)
  {
    LODWORD(v11) = a4;
  }

  else
  {
    LODWORD(v11) = WORD2(a3);
  }

  if (WORD2(a1) >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = WORD2(a1);
  }

  if (a4 == 0xFFFF)
  {
    v15 = 0;
    v14 = 0;
    v13 = 0;
  }

  else
  {
    v13 = (a4 ^ 0xFFFF) * v8;
    v8 = (v8 * a4 + 0x8000 + ((v8 * a4 + 0x8000) >> 16)) >> 16;
    v14 = (a4 ^ 0xFFFF) * v10;
    v10 = (v10 * a4 + 0x8000 + ((v10 * a4 + 0x8000) >> 16)) >> 16;
    v15 = (a4 ^ 0xFFFF) * v12;
    v12 = (v12 * a4 + 0x8000 + ((v12 * a4 + 0x8000) >> 16)) >> 16;
  }

  if (a2 != 0xFFFF)
  {
    v13 += v7 * (a2 ^ 0xFFFF);
    v7 = (v7 * a2 + 0x8000 + ((v7 * a2 + 0x8000) >> 16)) >> 16;
    v14 += v9 * (a2 ^ 0xFFFF);
    v9 = (v9 * a2 + 0x8000 + ((v9 * a2 + 0x8000) >> 16)) >> 16;
    v15 += v11 * (a2 ^ 0xFFFF);
    v11 = (v11 * a2 + 0x8000 + ((v11 * a2 + 0x8000) >> 16)) >> 16;
  }

  v16 = 151 * (v9 - v10) + 28 * (v11 - v12) + 77 * (v7 - v8);
  v17 = v16 + 128;
  v18 = v8 + ((v16 + 128) >> 8);
  v19 = v10 + ((v16 + 128) >> 8);
  v20 = (a4 * a2 + 0x8000 + ((a4 * a2 + 0x8000) >> 16)) >> 16;
  v21 = v12 + ((v16 + 128) >> 8);
  if (v16 != v16)
  {
    v22 = v8 >= v10;
    if (v8 >= v10)
    {
      v23 = v10 + ((v16 + 128) >> 8);
    }

    else
    {
      v23 = v8 + ((v16 + 128) >> 8);
    }

    if (v22)
    {
      v24 = v18;
    }

    else
    {
      v24 = v10 + ((v16 + 128) >> 8);
    }

    if (v21 <= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v21;
    }

    if (v21 >= v23)
    {
      v26 = v23;
    }

    else
    {
      v26 = v21;
    }

    if (v21 >= v23)
    {
      v24 = v25;
    }

    if (v24 > v20 || v26 < 0)
    {
      v27 = (77 * v18 + 151 * v19 + 28 * v21 + 128) >> 8;
      if (v17 >> 8 < 0)
      {
        v28 = v27 - v26;
        if (!v28)
        {
          goto LABEL_47;
        }

        v29 = (77 * v18 + 151 * v19 + 28 * v21 + 128) >> 8;
      }

      else
      {
        v28 = v24 - v27;
        if (v24 == v27)
        {
          goto LABEL_47;
        }

        v29 = v20 - v27;
      }

      v30 = (v29 << 16) / v28;
      v18 = v27 + ((v30 * (v18 - v27) + 0x8000) >> 16);
      v19 = v27 + ((v30 * (v19 - v27) + 0x8000) >> 16);
      v21 = v27 + ((v30 * (v21 - v27) + 0x8000) >> 16);
    }
  }

LABEL_47:
  v31 = a4 + a2 - v20;
  v32 = v15 + 0x8000;
  if (v15 > 0xFFFE8000)
  {
    v32 = 4294868992;
  }

  v33 = v21 + (((v32 >> 16) + v32) >> 16);
  if (v14 <= 0xFFFE8000)
  {
    v34 = v14 + 0x8000;
  }

  else
  {
    v34 = 4294868992;
  }

  v35 = (v34 >> 16) + v34;
  if (v13 <= 0xFFFE8000)
  {
    v36 = v13 + 0x8000;
  }

  else
  {
    v36 = 4294868992;
  }

  return (v31 << 48) | (v33 << 32) | (v35 + (v19 << 16)) & 0xFFFF0000 | (v18 + (((v36 >> 16) + v36) >> 16));
}

void rgba64_shade_axial_RGB(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 280);
  v5 = *(a1 + 296) + ((*(a1 + 288) * (*(*(a1 + 272) + 4) * a3)) + (v4 * (*(*(a1 + 272) + 4) * a2)));
  v7 = *(a1 + 336);
  v8 = *(a1 + 344);
  v9 = *(a1 + 304);
  v10 = *(a1 + 308);
  v11 = *(a1 + 320);
  v12 = *(a1 + 324);
  v15 = a1 + 144;
  v13 = *(a1 + 144);
  v14 = *(v15 + 8);
  v16 = *(a1 + 376);
  v17 = *(a1 + 360);
  if (v4 != 0.0)
  {
    while (1)
    {
      v19 = v11;
      if (v5 >= v9)
      {
        v19 = v12;
        if (v5 <= v10)
        {
          v19 = (v8 * (v5 - v7));
        }
      }

      if ((v19 & 0x80000000) == 0)
      {
        break;
      }

      v20 = v16;
      if (v16)
      {
        goto LABEL_17;
      }

LABEL_18:
      v5 = v4 + v5;
      v14 += 8;
      *v13 = v20;
      v13 = (v13 + 1);
      if (!--a4)
      {
        return;
      }
    }

    v20 = (v17 + 2 * (4 * v19));
LABEL_17:
    *v14 = *v20;
    LOBYTE(v20) = -1;
    goto LABEL_18;
  }

  if (v5 >= v9)
  {
    v11 = v12;
    if (v5 <= v10)
    {
      v11 = (v8 * (v5 - v7));
    }
  }

  if ((v11 & 0x80000000) == 0 || v16)
  {
    v21 = (v17 + 2 * (4 * v11));
    if (v11 < 0)
    {
      v22 = v16;
    }

    else
    {
      v22 = v21;
    }

    v23 = *v22;
    v24 = v22[1];
    v25 = a4 + 4;
    do
    {
      *v14 = v23;
      *(v14 + 4) = v24;
      *(v14 + 8) = v23;
      *(v14 + 12) = v24;
      *(v14 + 16) = v23;
      *(v14 + 20) = v24;
      *(v14 + 24) = v23;
      *(v14 + 28) = v24;
      v14 += 32;
      v25 -= 4;
      *v13++ = -1;
    }

    while (v25 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = a4;
    }

    bzero(v13, ((a4 - v18 + 3) & 0xFFFFFFFC) + 4);
  }
}

uint64_t rgba64_shade_custom_RGB(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, int32x4_t a6)
{
  v6 = *(*(result + 272) + 4);
  _S2 = v6 * a2;
  _D0 = *(result + 280);
  *a6.i32 = *(result + 296) + ((*(result + 288) * (v6 * a3)) + (_D0.f32[0] * _S2));
  __asm { FMLA            S3, S2, V0.S[1] }

  *&v14 = *(result + 300) + _S3;
  v15 = *(result + 304);
  v16 = *(result + 336);
  v17 = *(result + 348);
  v18 = *(result + 344);
  v19 = *(result + 356);
  v20 = *(result + 376);
  v21 = *(result + 360);
  v22 = 4 * *(result + 48);
  v24 = *(result + 144);
  v23 = *(result + 152);
  a6.i32[1] = v14;
  do
  {
    v25 = vzip1q_s32(a6, a6);
    if ((vmaxv_u16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgtq_f32(v15, v25))), vmovn_s32(vcgtq_f32(v25, v15)))) & 1) == 0)
    {
      v26 = (v21 + 2 * v22 * (v19 * (*&a6.i32[1] - v17)) + 8 * (v18 * (*a6.i32 - v16)));
LABEL_6:
      *v23 = *v26;
      LOBYTE(v26) = -1;
      goto LABEL_7;
    }

    v26 = v20;
    if (v20)
    {
      goto LABEL_6;
    }

LABEL_7:
    *a6.i8 = vadd_f32(_D0, *a6.i8);
    ++v23;
    *v24++ = v26;
    --a4;
  }

  while (a4);
  return result;
}

void rgba64_shade_conic_RGB(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 280);
  v5 = *(*(a1 + 272) + 4);
  v6 = v5 * a2;
  v7 = v5 * a3;
  v8 = *(a1 + 296) + ((*(a1 + 288) * v7) + (v4 * v6));
  v9 = *(a1 + 284);
  v10 = *(a1 + 300) + ((v7 * *(a1 + 292)) + (v9 * v6));
  v31 = *(a1 + 336);
  v32 = *(a1 + 304);
  v12 = *(a1 + 344);
  v13 = *(a1 + 360);
  v15 = *(a1 + 144);
  v14 = *(a1 + 152);
  v30 = *(a1 + 308) - v32;
  do
  {
    v16 = v12 * ((v32 + (((atan2f(v10, v8) * 0.15915) + 0.5) * v30)) - v31);
    v17 = vcvtms_s32_f32(v16);
    v18 = vcvtms_s32_f32(v12 + v16);
    v19 = ceilf(v16);
    v20 = v16 - floorf(v16);
    if (v16 < 0.0)
    {
      v17 = v18;
    }

    v21 = v16 <= v12;
    v22 = ceilf(v16 - v12);
    if (v21)
    {
      v22 = v19;
    }

    v23 = v22;
    v24 = (v20 * 255.0) + 0.5;
    v25 = (v13 + 2 * (4 * v17));
    v26 = *v25;
    v27 = v25[1];
    v28 = (v13 + 8 * v23);
    v29 = 255 - v24;
    LODWORD(v25) = ((v24 * v28[3] + v29 * v25[3]) << 8) & 0xFFFF0000 | ((v24 * v28[2] + v29 * v25[2]) >> 8);
    *v14 = ((v24 * v28[1] + v29 * v27) << 8) & 0xFFFF0000 | ((v24 * *v28 + v29 * v26) >> 8);
    v14[1] = v25;
    v14 += 2;
    v8 = v4 + v8;
    v10 = v9 + v10;
    *v15++ = -1;
    --a4;
  }

  while (a4);
}

void rgba64_shade_radial_RGB(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 280);
  v5 = *(a1 + 284);
  v6 = *(*(a1 + 272) + 4);
  v7 = v6 * a2;
  v8 = v6 * a3;
  v9 = *(a1 + 296) + ((*(a1 + 288) * v8) + (v4 * v7));
  v10 = *(a1 + 300) + ((v8 * *(a1 + 292)) + (v5 * v7));
  v12 = *(a1 + 400);
  v13 = *(a1 + 336);
  v14 = *(a1 + 344);
  v15 = *(a1 + 304);
  v16 = *(a1 + 308);
  v17 = *(a1 + 324);
  v18 = v12[2];
  v19 = v12[4];
  v20 = v12[5];
  v21 = v12[7];
  v24 = a1 + 144;
  v22 = *(a1 + 144);
  v23 = *(v24 + 8);
  v25 = *(a1 + 376);
  v26 = *(a1 + 360);
  if (v18 != 0.0 || v21 != 0.0 || v5 != 0.0)
  {
    v30 = *(a1 + 320);
    v31 = v12[3];
    v32 = v12[8];
    v33 = -v12[6];
    v34 = v16 - v15;
    while (1)
    {
      v35 = v33 + ((v9 + v9) * v18);
      v36 = ((v10 * v10) + (v9 * v9)) - v21;
      if (v20 == 0.0)
      {
        v43 = v36 / v35;
      }

      else
      {
        v37 = ((v20 * -4.0) * v36) + (v35 * v35);
        if (v37 < 0.0)
        {
          goto LABEL_39;
        }

        v38 = sqrtf(v37);
        v39 = v32 * (v35 - v38);
        v40 = v35 + v38;
        v41 = v32 * v40;
        v42 = (v32 * v40) <= v39;
        if ((v32 * v40) <= v39)
        {
          v43 = v32 * v40;
        }

        else
        {
          v43 = v39;
        }

        if (v42)
        {
          v41 = v39;
        }

        if (v41 < 0.0)
        {
          v44 = v41 < v31;
LABEL_25:
          v45 = v30;
          if (v44)
          {
            goto LABEL_39;
          }

LABEL_26:
          if ((v45 & 0x80000000) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_39;
        }

        if (v41 <= 1.0)
        {
          v46 = v15 + (v41 * v34);
          goto LABEL_37;
        }

        if ((v17 & 0x80000000) == 0)
        {
          v45 = v17;
          if (v41 <= v19)
          {
LABEL_38:
            v47 = (v26 + 2 * (4 * v45));
LABEL_40:
            *v23 = *v47;
            LOBYTE(v47) = -1;
            goto LABEL_41;
          }
        }
      }

      if (v43 < 0.0)
      {
        v44 = v43 < v31;
        goto LABEL_25;
      }

      if (v43 > 1.0)
      {
        v45 = v17;
        if (v43 > v19)
        {
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      v46 = v15 + (v43 * v34);
LABEL_37:
      v45 = (v14 * (v46 - v13));
      if ((v45 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

LABEL_39:
      v47 = v25;
      if (v25)
      {
        goto LABEL_40;
      }

LABEL_41:
      v9 = v4 + v9;
      v10 = v5 + v10;
      v23 += 8;
      *v22++ = v47;
      if (!--a4)
      {
        return;
      }
    }
  }

  v27 = v10 * v10;
  v28 = -v20;
  if (v27 <= -v20)
  {
    v48 = fabsf(v12[8]);
    v49 = v20 * -4.0;
    v50 = v16 - v15;
    v51 = (v26 + 2 * (4 * v17));
    v52 = a4 + 2;
    while (1)
    {
      v53 = v27 + (v9 * v9);
      v54 = v4 + v9;
      v55 = v27 + (v54 * v54);
      if (v53 > v28 && v55 > v28)
      {
        if (v17 < 0)
        {
          if (!v25)
          {
            v68 = 0;
            LOBYTE(v67) = 0;
            goto LABEL_65;
          }

          v64 = *v25;
          *v23 = *v25;
          v65 = v25[1];
        }

        else
        {
          v64 = *v51;
          *v23 = *v51;
          v65 = v51[1];
        }

        *(v23 + 4) = v65;
        goto LABEL_63;
      }

      v57 = sqrtf(v49 * v55);
      v58 = v48 * sqrtf(v49 * v53);
      v59 = v48 * v57;
      v60 = (v14 * ((v15 + (v58 * v50)) - v13));
      v61 = (v14 * ((v15 + ((v48 * v57) * v50)) - v13));
      if (v58 <= 1.0 && v59 <= 1.0)
      {
        v66 = (v26 + 8 * v61);
        v64 = *v66;
        v65 = v66[1];
        *v23 = *(v26 + 8 * v60);
LABEL_63:
        LOBYTE(v67) = -1;
        goto LABEL_64;
      }

      if (v58 <= 1.0)
      {
        if ((v60 & 0x80000000) == 0)
        {
          v63 = (4 * v60);
LABEL_69:
          v67 = (v26 + 2 * v63);
LABEL_71:
          v69 = *v67;
          LODWORD(v67) = v67[1];
          *v23 = v69;
          *(v23 + 4) = v67;
          LOBYTE(v67) = -1;
          goto LABEL_72;
        }
      }

      else if (v58 <= v19)
      {
        v63 = (4 * v17);
        if ((v17 & 0x80000000) == 0)
        {
          goto LABEL_69;
        }
      }

      v67 = v25;
      if (v25)
      {
        goto LABEL_71;
      }

LABEL_72:
      if (v59 <= 1.0)
      {
        if (v61 < 0)
        {
          goto LABEL_79;
        }

        v70 = (4 * v61);
      }

      else if (v59 > v19 || (v70 = (4 * v17), v17 < 0))
      {
LABEL_79:
        if (!v25)
        {
          v68 = 0;
          goto LABEL_65;
        }

        v64 = *v25;
        v65 = v25[1];
        goto LABEL_64;
      }

      v71 = (v26 + 2 * v70);
      v64 = *v71;
      v65 = v71[1];
LABEL_64:
      *(v23 + 8) = v64;
      *(v23 + 12) = v65;
      v68 = -1;
LABEL_65:
      v9 = v4 + v54;
      v23 += 16;
      *v22 = v67;
      v22[1] = v68;
      v22 += 2;
      v52 -= 2;
      if (v52 <= 2)
      {
        return;
      }
    }
  }

  if (v25 || (v17 & 0x80000000) == 0)
  {
    if (v17 >= 0)
    {
      v72 = (v26 + 2 * (4 * v17));
    }

    else
    {
      v72 = *(a1 + 376);
    }

    v73 = *v72;
    v74 = v72[1];
    v75 = a4 + 4;
    do
    {
      *v23 = v73;
      *(v23 + 4) = v74;
      *(v23 + 8) = v73;
      *(v23 + 12) = v74;
      *(v23 + 16) = v73;
      *(v23 + 20) = v74;
      *(v23 + 24) = v73;
      *(v23 + 28) = v74;
      v23 += 32;
      v75 -= 4;
      *v22 = -1;
      v22 += 4;
    }

    while (v75 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = a4;
    }

    bzero(v22, ((a4 - v29 + 3) & 0xFFFFFFFC) + 4);
  }
}

void rgba64_image_mark_image(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(void, void))
{
  v69[1] = *MEMORY[0x1E69E9840];
  v8.n128_u64[1] = 0;
  v59 = 0u;
  v60 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v58[0] = a3;
  v58[1] = a4;
  v8.n128_u64[0] = *(a2 + 184);
  v8.n128_f32[0] = (v8.n128_f32[0] * 65535.0) + 0.5;
  LOWORD(v59) = v8.n128_f32[0];
  v9 = *(a1 + 28) >> 3;
  *&v60 = v9;
  v10 = *(a2 + 120);
  v11 = *(a2 + 20);
  v12 = HIBYTE(v11);
  v13 = BYTE2(v11);
  if (v10)
  {
    v14 = *(a2 + 24);
    v15 = (a2 + 104);
    v16 = (a2 + 72);
    v17 = (a2 + 88);
    v18 = v12;
  }

  else
  {
    v14 = *(a2 + 8) >> 25;
    v15 = (a2 + 96);
    v16 = (a2 + 64);
    v17 = (a2 + 80);
    v10 = *(a2 + 112);
    v18 = v13;
  }

  v19 = *v17;
  v20 = *v16;
  v21 = *v15;
  v22 = v18;
  *(&v61 + 1) = v18;
  *(&v60 + 1) = v21;
  *(&v65 + 1) = v14;
  *(&v64 + 1) = v19;
  *(&v63 + 1) = v20;
  *(&v62 + 1) = v10;
  v23 = *(a2 + 128);
  if (v23)
  {
    v24 = *(a2 + 8) >> 25;
    v25 = (a2 + 96);
    v26 = (a2 + 64);
    v27 = (a2 + 80);
    v12 = v13;
  }

  else
  {
    v24 = *(a2 + 24);
    v25 = (a2 + 104);
    v26 = (a2 + 72);
    v27 = (a2 + 88);
    v23 = *(a2 + 136);
  }

  v57 = &v55;
  v28 = *v27;
  v29 = *v26;
  v30 = *v25;
  *&v62 = v12;
  *&v61 = v30;
  *&v66 = v24;
  *&v65 = v28;
  *&v64 = v29;
  *&v63 = v23;
  v31 = *(a1 + 4);
  v32 = MEMORY[0x1EEE9AC00](16 * v31, v8);
  v56 = &v55 - v34 - 15;
  if (v35 <= 0xFFFFFFFFFFFFFFELL)
  {
    v37 = (&v55 - v34 - 15);
  }

  else
  {
    v37 = 0;
  }

  if (v35 - 0xFFFFFFFFFFFFFFFLL >= 0xF000000000000402)
  {
    v55 = a5;
    v38 = v33;
    v39 = v36;
    v32 = malloc_type_malloc(v32, 0xC166A778uLL);
    v33 = v38;
    a5 = v55;
    v36 = v39;
    v37 = v32;
  }

  *(&v66 + 1) = v37;
  if (v37)
  {
    if (*(a2 + 176))
    {
      if (v31 >= 1)
      {
        v40 = v37 + 1;
        v41 = v36 - v21;
        do
        {
          if (((v21 - v33) | v41) < 0)
          {
            v45 = 0;
          }

          else
          {
            v42 = ((v21 & ~(-1 << v22)) >> (v22 - 4)) & 0xF;
            v43 = weights_21890[v42];
            if (v42 - 7 >= 9)
            {
              v44 = -v14;
            }

            else
            {
              v44 = v14;
            }

            v45 = v43 & 0xF | (16 * v44);
          }

          *(v40 - 1) = v14 * (v21 >> v22);
          *v40 = v45;
          v40 += 2;
          v21 += v10;
          v41 -= v10;
          --v31;
        }

        while (v31);
      }
    }

    else if (v31 >= 1)
    {
      v46 = v37 + 1;
      do
      {
        *(v46 - 1) = v14 * (v21 >> v22);
        *v46 = 0;
        v46 += 2;
        v21 += v10;
        --v31;
      }

      while (v31);
    }

    v47 = *(a1 + 4);
    v48 = *(a1 + 8);
    v67 = v48;
    v68 = v47;
    v49 = *(a1 + 136);
    if (v49)
    {
      v50 = *(a1 + 104);
      LODWORD(v69[0]) = *(a1 + 108);
      HIDWORD(v69[0]) = v50;
      shape_enum_clip_alloc(v32, v33, v49, 1, 1, 1, v50, v69[0], v47, v48);
      v52 = v51;
      if (v51)
      {
        goto LABEL_31;
      }
    }

    v53 = 0;
    v54 = 0;
    v52 = 0;
    v69[0] = 0;
    while (1)
    {
      *(&v59 + 1) = *(a1 + 40) + 8 * v9 * (*(a1 + 16) + v54) + 8 * (v53 + *(a1 + 12));
      a5(a2, v58);
      if (!v52)
      {
        break;
      }

LABEL_31:
      if (!shape_enum_clip_next(v52, v69 + 1, v69, &v68, &v67))
      {
        free(v52);
        break;
      }

      v54 = v69[0];
      v53 = HIDWORD(v69[0]);
      v9 = v60;
    }

    if (v37 != v56)
    {
      free(v37);
    }
  }
}

void rgba64_image_mark_rgba64(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v98 = *a2;
  v7 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  else
  {
    v8 = 0xFFFFLL;
  }

  v9 = *(a2 + 2);
  v97 = *(a2 + 3) - a5;
  v11 = *(a2 + 15);
  v10 = *(a2 + 16);
  v12 = *(a2 + 7);
  v94 = *(a2 + 9);
  v13 = *(a2 + 5) + v94 * a4;
  v14 = &v7[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  v104 = *(a2 + 4);
  v95 = v12;
  v96 = v11;
  if (*(a1 + 176))
  {
    v15 = a3;
    v91 = ~(-1 << v12);
    v92 = *(a2 + 13);
    v93 = *(a2 + 11);
    v89 = -v11;
    v90 = v12 - 4;
    v16 = v14 - 8;
    v17 = v8 << 48;
    v18 = v6 ^ 0xFFFF;
    v87 = v10 + 16 * v15 + 8;
    v88 = a5;
    v19 = BLEND16_21891;
    v102 = v6 ^ 0xFFFF;
    while (1)
    {
      if (((v92 - v13) | (v13 - v93)) < 0)
      {
        v22 = 0;
        v21 = 0;
      }

      else
      {
        v20 = ((v13 & v91) >> v90) & 0xF;
        v21 = (v20 - 7) >= 9 ? v89 : v11;
        v22 = weights_21890[v20] & 0xF;
      }

      v23 = *(a1 + 32) + (v13 >> v12) * v11;
      v101 = a6;
      v100 = v13;
      if (v98 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v24 = v87;
        v25 = v88;
        while (1)
        {
          v26 = *(v24 - 1);
          v27 = *v24;
          v28 = v23 + v26;
          if (v16 >= v23 + v26)
          {
            v29 = (v23 + v26);
          }

          else
          {
            v29 = v16;
          }

          if (v29 < v7)
          {
            v29 = v7;
          }

          v30 = *v29;
          v31 = *v24 & 0xF;
          if ((v27 & 0xF) != 0)
          {
            break;
          }

          if (v22)
          {
            v40 = (v28 + v21);
            if (v16 < v28 + v21)
            {
              v40 = v16;
            }

            if (v40 < v7)
            {
              v40 = v7;
            }

            v34 = *v40;
            v31 = v22;
            goto LABEL_42;
          }

LABEL_43:
          v41 = v30 | v17;
          if (v6 != 0xFFFF)
          {
            v42 = HIWORD(v41);
            v41 = ((WORD2(v30) - ((WORD2(v30) * v18 + 0x8000 + ((WORD2(v30) * v18 + 0x8000) >> 16)) >> 16)) << 32) | ((v42 - ((v42 * v18 + 0x8000 + ((v42 * v18 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD1(v30) - ((WORD1(v30) * v18 + 0x8000 + ((WORD1(v30) * v18 + 0x8000) >> 16)) >> 16)) << 16) | (v30 - ((v30 * v18 + 0x8000 + ((v30 * v18 + 0x8000) >> 16)) >> 16));
          }

          v24 += 2;
          *v9++ = v41;
          if (!--v25)
          {
            goto LABEL_84;
          }
        }

        v32 = v27 >> 4;
        v33 = (v28 + (v27 >> 4));
        if (v16 < v33)
        {
          v33 = v16;
        }

        if (v33 < v7)
        {
          v33 = v7;
        }

        v34 = *v33;
        if (v22)
        {
          v35 = (v28 + v21);
          if (v16 >= v35)
          {
            v36 = v35;
          }

          else
          {
            v36 = v16;
          }

          if (v36 < v7)
          {
            v36 = v7;
          }

          v37 = *v36;
          v38 = &v35[v32];
          if (v16 < v38)
          {
            v38 = v16;
          }

          if (v38 < v7)
          {
            v38 = v7;
          }

          v39 = v19[v22];
          v30 = v30 - ((v39 & v30) >> v22) + ((v39 & v37) >> v22);
          v34 = v34 - ((v39 & v34) >> v22) + ((v39 & *v38) >> v22);
        }

LABEL_42:
        v30 = v30 - ((v19[v31] & v30) >> v31) + ((v19[v31] & v34) >> v31);
        goto LABEL_43;
      }

LABEL_84:
      v11 = v96;
      v9 += v97;
      LOBYTE(v12) = v95;
      v13 = v100 + v94;
      a6 = v101 - 1;
      if (v101 == 1)
      {
        return;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_84;
    }

    v105 = v22;
    v43 = v87;
    v44 = v88;
    while (1)
    {
      v45 = *(v43 - 1);
      v46 = *v43;
      v47 = v23 + v45;
      if (v16 >= v23 + v45)
      {
        v48 = (v23 + v45);
      }

      else
      {
        v48 = v16;
      }

      if (v48 < v7)
      {
        v48 = v7;
      }

      v49 = *v48;
      v50 = *v43 & 0xF;
      if ((v46 & 0xF) != 0)
      {
        break;
      }

      if (v22)
      {
        v59 = (v47 + v21);
        if (v16 < v47 + v21)
        {
          v59 = v16;
        }

        if (v59 < v7)
        {
          v59 = v7;
        }

        v53 = *v59;
        v50 = v105;
        goto LABEL_76;
      }

LABEL_77:
      v60 = v49 | v17;
      if (v6 != 0xFFFF)
      {
        v60 = ((WORD2(v49) - ((WORD2(v49) * v18 + 0x8000 + ((WORD2(v49) * v18 + 0x8000) >> 16)) >> 16)) << 32) | ((HIWORD(v60) - ((HIWORD(v60) * v18 + 0x8000 + ((HIWORD(v60) * v18 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD1(v49) - ((WORD1(v49) * v18 + 0x8000 + ((WORD1(v49) * v18 + 0x8000) >> 16)) >> 16)) << 16) | (v49 - ((v49 * v18 + 0x8000 + ((v49 * v18 + 0x8000) >> 16)) >> 16));
      }

      v61 = HIWORD(v60);
      if (HIWORD(v60))
      {
        if (v61 == 0xFFFF)
        {
          *v9 = v60;
        }

        else
        {
          v62 = v17;
          v63 = v23;
          v64 = v19;
          v65 = v21;
          v66 = v22;
          rgba64_DplusDM(v9, v60, *v9, v61 ^ 0xFFFF);
          v22 = v66;
          v21 = v65;
          v19 = v64;
          v23 = v63;
          v17 = v62;
          v18 = v102;
          v6 = v104;
        }
      }

      v43 += 2;
      ++v9;
      if (!--v44)
      {
        goto LABEL_84;
      }
    }

    v51 = v46 >> 4;
    v52 = (v47 + (v46 >> 4));
    if (v16 < v52)
    {
      v52 = v16;
    }

    if (v52 < v7)
    {
      v52 = v7;
    }

    v53 = *v52;
    if (v22)
    {
      v54 = (v47 + v21);
      if (v16 >= v54)
      {
        v55 = v54;
      }

      else
      {
        v55 = v16;
      }

      if (v55 < v7)
      {
        v55 = v7;
      }

      v56 = *v55;
      v57 = &v54[v51];
      if (v16 < v57)
      {
        v57 = v16;
      }

      if (v57 < v7)
      {
        v57 = v7;
      }

      v58 = v19[v105];
      v49 = v49 - ((v58 & v49) >> v105) + ((v58 & v56) >> v105);
      v53 = v53 - ((v58 & v53) >> v105) + ((v58 & *v57) >> v105);
    }

LABEL_76:
    v49 = v49 - ((v19[v50] & v49) >> v50) + ((v19[v50] & v53) >> v50);
    goto LABEL_77;
  }

  v106 = (v10 + 16 * a3);
  v67 = v14 - 8;
  v68 = v8 << 48;
  v69 = v6 ^ 0xFFFF;
  v103 = a5;
  do
  {
    v70 = *(a1 + 32);
    v71 = &v70[(v13 >> v12) * v11];
    v72 = a6;
    if (v98 == 1)
    {
      if (a5 >= 1)
      {
        v73 = v106;
        v74 = v103;
        do
        {
          v75 = *v73;
          v73 += 2;
          v76 = &v71[v75];
          if (v67 < &v71[v75])
          {
            v76 = v67;
          }

          if (v76 < v70)
          {
            v76 = v70;
          }

          v77 = *v76;
          v78 = v77 | v68;
          if (v6 != 0xFFFF)
          {
            v79 = HIWORD(v78);
            v78 = ((WORD2(v77) - ((WORD2(v77) * v69 + 0x8000 + ((WORD2(v77) * v69 + 0x8000) >> 16)) >> 16)) << 32) | ((v79 - ((v79 * v69 + 0x8000 + ((v79 * v69 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD1(v77) - ((WORD1(v77) * v69 + 0x8000 + ((WORD1(v77) * v69 + 0x8000) >> 16)) >> 16)) << 16) | (v77 - ((v77 * v69 + 0x8000 + ((v77 * v69 + 0x8000) >> 16)) >> 16));
          }

          *v9++ = v78;
          --v74;
        }

        while (v74);
      }
    }

    else
    {
      v80 = v106;
      v81 = v103;
      if (a5 >= 1)
      {
        do
        {
          v82 = *v80;
          v80 += 2;
          v83 = &v71[v82];
          if (v67 < &v71[v82])
          {
            v83 = v67;
          }

          if (v83 < *(a1 + 32))
          {
            v83 = *(a1 + 32);
          }

          v84 = *v83;
          v85 = v84 | v68;
          if (v6 != 0xFFFF)
          {
            v85 = ((WORD2(v84) - ((WORD2(v84) * v69 + 0x8000 + ((WORD2(v84) * v69 + 0x8000) >> 16)) >> 16)) << 32) | ((HIWORD(v85) - ((HIWORD(v85) * v69 + 0x8000 + ((HIWORD(v85) * v69 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD1(v84) - ((WORD1(v84) * v69 + 0x8000 + ((WORD1(v84) * v69 + 0x8000) >> 16)) >> 16)) << 16) | (v84 - ((v84 * v69 + 0x8000 + ((v84 * v69 + 0x8000) >> 16)) >> 16));
          }

          v86 = HIWORD(v85);
          if (HIWORD(v85))
          {
            if (v86 == 0xFFFF)
            {
              *v9 = v85;
            }

            else
            {
              rgba64_DplusDM(v9, v85, *v9, v86 ^ 0xFFFF);
              v6 = v104;
            }
          }

          ++v9;
          --v81;
        }

        while (v81);
      }
    }

    v11 = v96;
    v9 += v97;
    LOBYTE(v12) = v95;
    v13 += v94;
    a6 = v72 - 1;
  }

  while (v72 != 1);
}

void rgba64_image_mark_RGBA64(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v7 = *(a2 + 4);
  v128 = *a2;
  v8 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v9 = 0;
  }

  else
  {
    v9 = 0xFFFFLL;
  }

  v10 = *(a2 + 2);
  v127 = *(a2 + 3) - a5;
  v12 = *(a2 + 15);
  v11 = *(a2 + 16);
  v13 = *(a2 + 7);
  v124 = *(a2 + 9);
  v14 = *(a2 + 5) + v124 * a4;
  v15 = v8 + (*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3);
  v135 = *(a2 + 4);
  v125 = v13;
  v126 = v12;
  if (*(a1 + 176))
  {
    v16 = a3;
    v120 = ~(-1 << v13);
    v121 = *(a2 + 13);
    v122 = *(a2 + 11);
    v119 = v13 - 4;
    v17 = (v15 - 8);
    v18 = v9 << 48;
    v19 = v7 ^ 0xFFFFu;
    v117 = a5;
    v118 = -v12;
    v116 = v11 + 16 * v16 + 8;
    v131 = *(a1 + 32);
    v133 = (v15 - 8);
    while (1)
    {
      if (((v121 - v14) | (v14 - v122)) < 0)
      {
        v22 = 0;
        v21 = 0;
      }

      else
      {
        v20 = ((v14 & v120) >> v119) & 0xF;
        v21 = (v20 - 7) >= 9 ? v118 : v12;
        v22 = weights_21890[v20] & 0xF;
      }

      v129 = v14;
      v23 = *(a1 + 32) + (v14 >> v13) * v12;
      v24 = 0x8000;
      v130 = a6;
      if (v128 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v25 = v116;
        v26 = v117;
        while (1)
        {
          v27 = *(v25 - 1);
          v28 = *v25;
          v29 = v23 + v27;
          if (v17 >= v23 + v27)
          {
            v30 = (v23 + v27);
          }

          else
          {
            v30 = v17;
          }

          if (v30 < v8)
          {
            v30 = v8;
          }

          v31 = ((bswap32(v30[3]) >> 16) << 48) | ((bswap32(v30[2]) >> 16) << 32) | bswap32(v30[1]) & 0xFFFF0000 | (bswap32(*v30) >> 16);
          v32 = *v25 & 0xF;
          if ((v28 & 0xF) != 0)
          {
            break;
          }

          if (v22)
          {
            v44 = (v29 + v21);
            if (v17 < v29 + v21)
            {
              v44 = v17;
            }

            if (v44 < v8)
            {
              v44 = v8;
            }

            v45 = BLEND16_21891[v22];
            v42 = v31 - ((v45 & v31) >> v22);
            v43 = ((((bswap32(v44[3]) >> 16) << 48) | ((bswap32(v44[2]) >> 16) << 32) | bswap32(v44[1]) & 0xFFFF0000 | (bswap32(*v44) >> 16)) & v45) >> v22;
            goto LABEL_43;
          }

LABEL_44:
          v46 = v31 | v18;
          if (v7 != 0xFFFF)
          {
            v47 = HIWORD(v46);
            v46 = ((WORD2(v31) - ((WORD2(v31) * v19 + 0x8000 + ((WORD2(v31) * v19 + 0x8000) >> 16)) >> 16)) << 32) | ((v47 - ((v47 * v19 + 0x8000 + ((v47 * v19 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD1(v31) - ((WORD1(v31) * v19 + 0x8000 + ((WORD1(v31) * v19 + 0x8000) >> 16)) >> 16)) << 16) | (v31 - ((v31 * v19 + 0x8000 + ((v31 * v19 + 0x8000) >> 16)) >> 16));
          }

          v25 += 2;
          *v10++ = v46;
          if (!--v26)
          {
            goto LABEL_86;
          }
        }

        v33 = v28 >> 4;
        v34 = (v29 + (v28 >> 4));
        if (v17 < v34)
        {
          v34 = v17;
        }

        if (v34 < v8)
        {
          v34 = v8;
        }

        v35 = ((bswap32(v34[3]) >> 16) << 48) | ((bswap32(v34[2]) >> 16) << 32) | bswap32(v34[1]) & 0xFFFF0000 | (bswap32(*v34) >> 16);
        if (v22)
        {
          v36 = (v29 + v21);
          if (v17 >= v36)
          {
            v37 = v36;
          }

          else
          {
            v37 = v17;
          }

          if (v37 < v8)
          {
            v37 = v8;
          }

          v38 = ((bswap32(v37[3]) >> 16) << 48) | ((bswap32(v37[2]) >> 16) << 32) | bswap32(v37[1]) & 0xFFFF0000 | (bswap32(*v37) >> 16);
          v39 = (v36 + v33);
          if (v17 < v39)
          {
            v39 = v17;
          }

          if (v39 < v8)
          {
            v39 = v8;
          }

          v40 = BLEND16_21891[v22];
          v31 = v31 - ((v40 & v31) >> v22) + ((v38 & v40) >> v22);
          v35 = v35 - ((v40 & v35) >> v22) + (((((bswap32(v39[3]) >> 16) << 48) | ((bswap32(v39[2]) >> 16) << 32) | bswap32(v39[1]) & 0xFFFF0000 | (bswap32(*v39) >> 16)) & v40) >> v22);
        }

        v41 = BLEND16_21891[v32];
        v42 = v31 - ((v41 & v31) >> v32);
        v43 = (v41 & v35) >> v32;
LABEL_43:
        v31 = v42 + v43;
        goto LABEL_44;
      }

LABEL_86:
      v12 = v126;
      v10 += v127;
      LOBYTE(v13) = v125;
      v14 = v129 + v124;
      a6 = v130 - 1;
      if (v130 == 1)
      {
        return;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_86;
    }

    v136 = v22;
    v49 = v116;
    v48 = v117;
    while (1)
    {
      v50 = *(v49 - 1);
      v51 = *v49;
      v52 = v23 + v50;
      if (v17 >= v23 + v50)
      {
        v53 = (v23 + v50);
      }

      else
      {
        v53 = v17;
      }

      if (v53 < v8)
      {
        v53 = v8;
      }

      v54 = ((bswap32(v53[3]) >> 16) << 48) | ((bswap32(v53[2]) >> 16) << 32) | bswap32(v53[1]) & 0xFFFF0000 | (bswap32(*v53) >> 16);
      v55 = *v49 & 0xF;
      if ((v51 & 0xF) != 0)
      {
        break;
      }

      if (v22)
      {
        v67 = (v52 + v21);
        if (v17 < v52 + v21)
        {
          v67 = v17;
        }

        if (v67 < v8)
        {
          v67 = v8;
        }

        v68 = BLEND16_21891[v136];
        v65 = v54 - ((v68 & v54) >> v136);
        v66 = ((((bswap32(v67[3]) >> 16) << 48) | ((bswap32(v67[2]) >> 16) << 32) | bswap32(v67[1]) & 0xFFFF0000 | (bswap32(*v67) >> 16)) & v68) >> v136;
        goto LABEL_78;
      }

LABEL_79:
      v69 = v54 | v18;
      if (v7 != 0xFFFF)
      {
        v69 = ((WORD2(v54) - ((v24 + WORD2(v54) * v19 + ((v24 + WORD2(v54) * v19) >> 16)) >> 16)) << 32) | ((HIWORD(v69) - ((v24 + HIWORD(v69) * v19 + ((v24 + HIWORD(v69) * v19) >> 16)) >> 16)) << 48) | ((WORD1(v54) - ((v24 + WORD1(v54) * v19 + ((v24 + WORD1(v54) * v19) >> 16)) >> 16)) << 16) | (v54 - ((v24 + v54 * v19 + ((v24 + v54 * v19) >> 16)) >> 16));
      }

      v70 = HIWORD(v69);
      if (HIWORD(v69))
      {
        if (v70 == 0xFFFF)
        {
          *v10 = v69;
        }

        else
        {
          v71 = v23;
          v72 = v22;
          v73 = v18;
          v74 = v24;
          v75 = v19;
          rgba64_DplusDM(v10, v69, *v10, v70 ^ 0xFFFF);
          v19 = v75;
          v24 = v74;
          v18 = v73;
          v22 = v72;
          v23 = v71;
          v8 = v131;
          v17 = v133;
          v7 = v135;
        }
      }

      v49 += 2;
      ++v10;
      if (!--v48)
      {
        goto LABEL_86;
      }
    }

    v56 = v51 >> 4;
    v57 = (v52 + (v51 >> 4));
    if (v17 < v57)
    {
      v57 = v17;
    }

    if (v57 < v8)
    {
      v57 = v8;
    }

    v58 = ((bswap32(v57[3]) >> 16) << 48) | ((bswap32(v57[2]) >> 16) << 32) | bswap32(v57[1]) & 0xFFFF0000 | (bswap32(*v57) >> 16);
    if (v22)
    {
      v59 = (v52 + v21);
      if (v17 >= v59)
      {
        v60 = v59;
      }

      else
      {
        v60 = v17;
      }

      if (v60 < v8)
      {
        v60 = v8;
      }

      v61 = ((bswap32(v60[3]) >> 16) << 48) | ((bswap32(v60[2]) >> 16) << 32) | bswap32(v60[1]) & 0xFFFF0000 | (bswap32(*v60) >> 16);
      v62 = (v59 + v56);
      if (v17 < v62)
      {
        v62 = v17;
      }

      if (v62 < v8)
      {
        v62 = v8;
      }

      v63 = BLEND16_21891[v136];
      v54 = v54 - ((v63 & v54) >> v136) + ((v61 & v63) >> v136);
      v58 = v58 - ((v63 & v58) >> v136) + (((((bswap32(v62[3]) >> 16) << 48) | ((bswap32(v62[2]) >> 16) << 32) | bswap32(v62[1]) & 0xFFFF0000 | (bswap32(*v62) >> 16)) & v63) >> v136);
    }

    v64 = BLEND16_21891[v55];
    v65 = v54 - ((v64 & v54) >> v55);
    v66 = (v64 & v58) >> v55;
LABEL_78:
    v54 = v65 + v66;
    goto LABEL_79;
  }

  v134 = (v11 + 16 * a3);
  v76 = (v15 - 8);
  v77 = v9 << 48;
  v78 = v7 ^ 0xFFFF;
  v79 = vdup_n_s32(v7 ^ 0xFFFFu);
  v80 = xmmword_18439CC00;
  v132 = a5;
  do
  {
    v82 = v14;
    v83 = *(a1 + 32);
    v84 = v83 + (v14 >> v13) * v12;
    if (v128 == 1)
    {
      if (a5 >= 1)
      {
        v86 = v132;
        v85 = v134;
        do
        {
          v87 = *v85;
          v85 += 2;
          v88 = &v84[v87];
          if (v76 < &v84[v87])
          {
            v88 = v76;
          }

          if (v88 >= v83)
          {
            v89 = v88;
          }

          else
          {
            v89 = v83;
          }

          v90 = bswap32(v89[3]) >> 16;
          v91 = bswap32(*v89) >> 16;
          v92 = bswap32(v89[1]) >> 16;
          v93 = bswap32(v89[2]) >> 16;
          v94 = (v92 << 16) | (v90 << 48) | (v93 << 32) | v77 | v91;
          if (v7 != 0xFFFF)
          {
            v95.i32[0] = HIWORD(v94);
            v95.i32[1] = v93;
            v96 = vmla_s32(0x800000008000, v95, v79);
            v97 = vand_s8(vsub_s32(v95, vshr_n_u32(vsra_n_u32(v96, v96, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v98.i64[0] = v97.u32[0];
            v98.i64[1] = v97.u32[1];
            v99 = vshlq_u64(v98, v80);
            v94 = vorrq_s8(v99, vdupq_laneq_s64(v99, 1)).u64[0] | ((v92 - ((v92 * v78 + 0x8000 + ((v92 * v78 + 0x8000) >> 16)) >> 16)) << 16) | (v91 - ((v91 * v78 + 0x8000 + ((v91 * v78 + 0x8000) >> 16)) >> 16));
          }

          *v10++ = v94;
          --v86;
        }

        while (v86);
      }
    }

    else
    {
      v101 = v132;
      v100 = v134;
      if (a5 >= 1)
      {
        do
        {
          v102 = *v100;
          v100 += 2;
          v103 = &v84[v102];
          v104 = *(a1 + 32);
          if (v76 < &v84[v102])
          {
            v103 = v76;
          }

          if (v103 >= v104)
          {
            v104 = v103;
          }

          v105 = bswap32(v104[3]) >> 16;
          v106 = bswap32(*v104) >> 16;
          v107 = bswap32(v104[1]) >> 16;
          v108 = bswap32(v104[2]) >> 16;
          v109 = (v107 << 16) | (v105 << 48) | (v108 << 32) | v77 | v106;
          if (v7 != 0xFFFF)
          {
            v110.i32[0] = HIWORD(v109);
            v110.i32[1] = v108;
            v111 = vmla_s32(0x800000008000, v110, v79);
            v112 = vand_s8(vsub_s32(v110, vshr_n_u32(vsra_n_u32(v111, v111, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v113.i64[0] = v112.u32[0];
            v113.i64[1] = v112.u32[1];
            v114 = vshlq_u64(v113, v80);
            v109 = vorrq_s8(v114, vdupq_laneq_s64(v114, 1)).u64[0] | ((v107 - ((v107 * v78 + 0x8000 + ((v107 * v78 + 0x8000) >> 16)) >> 16)) << 16) | (v106 - ((v106 * v78 + 0x8000 + ((v106 * v78 + 0x8000) >> 16)) >> 16));
          }

          v115 = HIWORD(v109);
          if (HIWORD(v109))
          {
            if (v115 == 0xFFFF)
            {
              *v10 = v109;
            }

            else
            {
              rgba64_DplusDM(v10, v109, *v10, v115 ^ 0xFFFF);
              v80 = xmmword_18439CC00;
              v7 = v135;
            }
          }

          ++v10;
          --v101;
        }

        while (v101);
      }
    }

    v12 = v126;
    v10 += v127;
    LOBYTE(v13) = v125;
    v14 = v82 + v124;
    --a6;
  }

  while (a6);
}

void rgba64_image_mark_rgb48(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v107 = *a2;
  v7 = *(a2 + 2);
  v106 = *(a2 + 3) - a5;
  v9 = *(a2 + 15);
  v8 = *(a2 + 16);
  v10 = *(a2 + 7);
  v103 = *(a2 + 9);
  v11 = *(a2 + 5) + v103 * a4;
  v12 = *(a1 + 32);
  v13 = v12 + (*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3);
  v14 = 0x8000;
  v114 = v6;
  v104 = v10;
  v105 = v9;
  if (*(a1 + 176))
  {
    v102 = *(a2 + 11);
    v101 = *(a2 + 13);
    v100 = ~(-1 << v10);
    v99 = v10 - 4;
    v15 = (v13 - 6);
    v16 = v6 ^ 0xFFFFu;
    v17 = (~(0xFFFF * v16 + 0x8000 + ((0xFFFF * v16 + 0x8000) >> 16)) >> 16) << 48;
    v97 = a5;
    v98 = -v9;
    v96 = v8 + 16 * a3 + 8;
    while (1)
    {
      if (((v101 - v11) | (v11 - v102)) < 0)
      {
        v20 = 0;
        v19 = 0;
      }

      else
      {
        v18 = ((v11 & v100) >> v99) & 0xF;
        v19 = (v18 - 7) >= 9 ? v98 : v9;
        v20 = weights_21890[v18] & 0xF;
      }

      v21 = *(a1 + 32) + (v11 >> v10) * v9;
      v110 = a6;
      v109 = v11;
      if (v107 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v22 = v96;
        v23 = v97;
        while (1)
        {
          v24 = *(v22 - 1);
          v25 = *v22;
          v26 = v21 + v24;
          if (v15 >= v21 + v24)
          {
            v27 = (v21 + v24);
          }

          else
          {
            v27 = v15;
          }

          if (v27 < v12)
          {
            v27 = v12;
          }

          v28 = *v27 | (*(v27 + 1) << 16);
          v29 = *v22 & 0xF;
          if ((v25 & 0xF) != 0)
          {
            break;
          }

          if (v20)
          {
            v41 = (v26 + v19);
            if (v15 < v26 + v19)
            {
              v41 = v15;
            }

            if (v41 < v12)
            {
              v41 = v12;
            }

            v42 = BLEND16_21891[v20];
            v39 = v28 - ((v42 & v28) >> v20);
            v40 = ((*v41 | (*(v41 + 1) << 16)) & v42) >> v20;
            goto LABEL_40;
          }

LABEL_41:
          if (v6 == 0xFFFF)
          {
            v43 = v28 | 0xFFFF000000000000;
          }

          else
          {
            v43 = ((WORD1(v28) - ((v14 + WORD1(v28) * v16 + ((v14 + WORD1(v28) * v16) >> 16)) >> 16)) << 16) | ((WORD2(v28) - ((v14 + WORD2(v28) * v16 + ((v14 + WORD2(v28) * v16) >> 16)) >> 16)) << 32) | (v28 - ((v14 + v28 * v16 + ((v14 + v28 * v16) >> 16)) >> 16)) | v17;
          }

          v22 += 2;
          *v7++ = v43;
          if (!--v23)
          {
            goto LABEL_85;
          }
        }

        v30 = v25 >> 4;
        v31 = (v26 + (v25 >> 4));
        if (v15 < v31)
        {
          v31 = v15;
        }

        if (v31 < v12)
        {
          v31 = v12;
        }

        v32 = *v31 | (*(v31 + 1) << 16);
        if (v20)
        {
          v33 = (v26 + v19);
          if (v15 >= v33)
          {
            v34 = v33;
          }

          else
          {
            v34 = v15;
          }

          if (v34 < v12)
          {
            v34 = v12;
          }

          v35 = *v34 | (*(v34 + 1) << 16);
          v36 = (v33 + v30);
          if (v15 < v36)
          {
            v36 = v15;
          }

          if (v36 < v12)
          {
            v36 = v12;
          }

          v37 = BLEND16_21891[v20];
          v28 = v28 - ((v37 & v28) >> v20) + ((v35 & v37) >> v20);
          v32 = v32 - ((v37 & v32) >> v20) + (((*v36 | (*(v36 + 1) << 16)) & v37) >> v20);
        }

        v38 = BLEND16_21891[v29];
        v39 = v28 - ((v38 & v28) >> v29);
        v40 = (v38 & v32) >> v29;
LABEL_40:
        v28 = v39 + v40;
        goto LABEL_41;
      }

LABEL_85:
      v9 = v105;
      v7 += v106;
      LOBYTE(v10) = v104;
      v11 = v109 + v103;
      a6 = v110 - 1;
      if (v110 == 1)
      {
        return;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_85;
    }

    v115 = v20;
    v45 = v96;
    v44 = v97;
    v112 = *(a1 + 32) + (v11 >> v10) * v9;
    while (1)
    {
      v46 = *(v45 - 1);
      v47 = *v45;
      v48 = v21 + v46;
      if (v15 >= v21 + v46)
      {
        v49 = (v21 + v46);
      }

      else
      {
        v49 = v15;
      }

      if (v49 < v12)
      {
        v49 = v12;
      }

      v50 = *v49 | (*(v49 + 1) << 16);
      v51 = *v45 & 0xF;
      if ((v47 & 0xF) != 0)
      {
        break;
      }

      if (v20)
      {
        v63 = (v48 + v19);
        if (v15 < v48 + v19)
        {
          v63 = v15;
        }

        if (v63 < v12)
        {
          v63 = v12;
        }

        v64 = BLEND16_21891[v115];
        v61 = v50 - ((v64 & v50) >> v115);
        v62 = ((*v63 | (*(v63 + 1) << 16)) & v64) >> v115;
        goto LABEL_76;
      }

LABEL_77:
      if (v6 == 0xFFFF)
      {
        v65 = v50 | 0xFFFF000000000000;
      }

      else
      {
        v65 = ((WORD1(v50) - ((v14 + WORD1(v50) * v16 + ((v14 + WORD1(v50) * v16) >> 16)) >> 16)) << 16) | ((WORD2(v50) - ((v14 + WORD2(v50) * v16 + ((v14 + WORD2(v50) * v16) >> 16)) >> 16)) << 32) | (v50 - ((v14 + v50 * v16 + ((v14 + v50 * v16) >> 16)) >> 16)) | v17;
      }

      v66 = HIWORD(v65);
      if (HIWORD(v65))
      {
        if (v66 == 0xFFFF)
        {
          *v7 = v65;
        }

        else
        {
          v67 = v17;
          v68 = v20;
          v69 = v14;
          v70 = v16;
          rgba64_DplusDM(v7, v65, *v7, v66 ^ 0xFFFF);
          v16 = v70;
          v14 = v69;
          v20 = v68;
          v17 = v67;
          v21 = v112;
          v6 = v114;
        }
      }

      v45 += 2;
      ++v7;
      if (!--v44)
      {
        goto LABEL_85;
      }
    }

    v52 = v47 >> 4;
    v53 = (v48 + (v47 >> 4));
    if (v15 < v53)
    {
      v53 = v15;
    }

    if (v53 < v12)
    {
      v53 = v12;
    }

    v54 = *v53 | (*(v53 + 1) << 16);
    if (v20)
    {
      v55 = (v48 + v19);
      if (v15 >= v55)
      {
        v56 = v55;
      }

      else
      {
        v56 = v15;
      }

      if (v56 < v12)
      {
        v56 = v12;
      }

      v57 = *v56 | (*(v56 + 1) << 16);
      v58 = (v55 + v52);
      if (v15 < v58)
      {
        v58 = v15;
      }

      if (v58 < v12)
      {
        v58 = v12;
      }

      v59 = BLEND16_21891[v115];
      v50 = v50 - ((v59 & v50) >> v115) + ((v57 & v59) >> v115);
      v54 = v54 - ((v59 & v54) >> v115) + (((*v58 | (*(v58 + 1) << 16)) & v59) >> v115);
    }

    v60 = BLEND16_21891[v51];
    v61 = v50 - ((v60 & v50) >> v51);
    v62 = (v60 & v54) >> v51;
LABEL_76:
    v50 = v61 + v62;
    goto LABEL_77;
  }

  v116 = (v8 + 16 * a3);
  v71 = v13 - 6;
  v72 = v6 ^ 0xFFFF;
  v73 = (~(0xFFFF * v72 + 0x8000 + ((0xFFFF * v72 + 0x8000) >> 16)) >> 16) << 48;
  v113 = a5;
  do
  {
    v74 = *(a1 + 32);
    v75 = &v74[(v11 >> v10) * v9];
    v111 = a6;
    if (v107 == 1)
    {
      if (a5 >= 1)
      {
        v76 = v116;
        v77 = v113;
        do
        {
          v78 = *v76;
          v76 += 2;
          v79 = &v75[v78];
          if (v71 < &v75[v78])
          {
            v79 = v71;
          }

          if (v79 < v74)
          {
            v79 = v74;
          }

          v80 = *v79;
          v81 = *(v79 + 1);
          v82 = *(v79 + 2);
          v83 = v80 | (v81 << 16) | (v82 << 32) | 0xFFFF000000000000;
          v84 = ((v81 - ((v81 * v72 + 0x8000 + ((v81 * v72 + 0x8000) >> 16)) >> 16)) << 16) | ((v82 - ((v82 * v72 + 0x8000 + ((v82 * v72 + 0x8000) >> 16)) >> 16)) << 32) | (v80 - ((v80 * v72 + 0x8000 + ((v80 * v72 + 0x8000) >> 16)) >> 16)) | v73;
          if (v6 == 0xFFFF)
          {
            v84 = v83;
          }

          *v7++ = v84;
          --v77;
        }

        while (v77);
      }
    }

    else
    {
      v85 = v116;
      v86 = v113;
      if (a5 >= 1)
      {
        do
        {
          v87 = *v85;
          v85 += 2;
          v88 = &v75[v87];
          if (v71 < &v75[v87])
          {
            v88 = v71;
          }

          if (v88 < *(a1 + 32))
          {
            v88 = *(a1 + 32);
          }

          v89 = *v88;
          v90 = *(v88 + 1);
          v91 = *(v88 + 2);
          v92 = v89 | (v90 << 16) | (v91 << 32) | 0xFFFF000000000000;
          v93 = ((v90 - ((v90 * v72 + 0x8000 + ((v90 * v72 + 0x8000) >> 16)) >> 16)) << 16) | ((v91 - ((v91 * v72 + 0x8000 + ((v91 * v72 + 0x8000) >> 16)) >> 16)) << 32) | (v89 - ((v89 * v72 + 0x8000 + ((v89 * v72 + 0x8000) >> 16)) >> 16)) | v73;
          if (v6 == 0xFFFF)
          {
            v94 = v92;
          }

          else
          {
            v94 = v93;
          }

          v95 = HIWORD(v94);
          if (HIWORD(v94))
          {
            if (v95 == 0xFFFF)
            {
              *v7 = v94;
            }

            else
            {
              rgba64_DplusDM(v7, v94, *v7, v95 ^ 0xFFFF);
              v6 = v114;
            }
          }

          ++v7;
          --v86;
        }

        while (v86);
      }
    }

    v9 = v105;
    v7 += v106;
    LOBYTE(v10) = v104;
    v11 += v103;
    a6 = v111 - 1;
  }

  while (v111 != 1);
}

void rgba64_image_mark_RGB48(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v111 = *a2;
  v7 = *(a2 + 2);
  v110 = *(a2 + 3) - a5;
  v9 = *(a2 + 15);
  v8 = *(a2 + 16);
  v10 = *(a2 + 7);
  v107 = *(a2 + 9);
  v11 = *(a2 + 5) + v107 * a4;
  v12 = *(a1 + 32);
  v13 = v12 + (*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3);
  v14 = 0x8000;
  v119 = v6;
  v108 = v10;
  v109 = v9;
  if (*(a1 + 176))
  {
    v15 = a3;
    v106 = *(a2 + 11);
    v105 = *(a2 + 13);
    v104 = ~(-1 << v10);
    v103 = v10 - 4;
    v16 = (v13 - 6);
    v17 = v6 ^ 0xFFFFu;
    v18 = (~(0xFFFF * v17 + 0x8000 + ((0xFFFF * v17 + 0x8000) >> 16)) >> 16) << 48;
    v101 = a5;
    v102 = -v9;
    v100 = v8 + 16 * v15 + 8;
    v19 = BLEND16_21891;
    v116 = *(a1 + 32);
    while (1)
    {
      if (((v105 - v11) | (v11 - v106)) < 0)
      {
        v22 = 0;
        v21 = 0;
      }

      else
      {
        v20 = ((v11 & v104) >> v103) & 0xF;
        v21 = (v20 - 7) >= 9 ? v102 : v9;
        v22 = weights_21890[v20] & 0xF;
      }

      v23 = *(a1 + 32) + (v11 >> v10) * v9;
      v114 = a6;
      v113 = v11;
      if (v111 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v24 = v100;
        v25 = v101;
        while (1)
        {
          v26 = *(v24 - 1);
          v27 = *v24;
          v28 = v23 + v26;
          if (v16 >= v23 + v26)
          {
            v29 = (v23 + v26);
          }

          else
          {
            v29 = v16;
          }

          if (v29 < v12)
          {
            v29 = v12;
          }

          v30 = bswap32(v29[1]) & 0xFFFF0000 | ((bswap32(v29[2]) >> 16) << 32) | (bswap32(*v29) >> 16);
          v31 = *v24 & 0xF;
          if ((v27 & 0xF) != 0)
          {
            break;
          }

          if (v22)
          {
            v43 = (v28 + v21);
            if (v16 < v28 + v21)
            {
              v43 = v16;
            }

            if (v43 < v12)
            {
              v43 = v12;
            }

            v44 = v19[v22];
            v41 = v30 - ((v44 & v30) >> v22);
            v42 = ((bswap32(v43[1]) & 0xFFFF0000 | ((bswap32(v43[2]) >> 16) << 32) | (bswap32(*v43) >> 16)) & v44) >> v22;
            goto LABEL_40;
          }

LABEL_41:
          if (v6 == 0xFFFF)
          {
            v45 = v30 | 0xFFFF000000000000;
          }

          else
          {
            v45 = ((WORD1(v30) - ((v14 + WORD1(v30) * v17 + ((v14 + WORD1(v30) * v17) >> 16)) >> 16)) << 16) | ((WORD2(v30) - ((v14 + WORD2(v30) * v17 + ((v14 + WORD2(v30) * v17) >> 16)) >> 16)) << 32) | (v30 - ((v14 + v30 * v17 + ((v14 + v30 * v17) >> 16)) >> 16)) | v18;
          }

          v24 += 2;
          *v7++ = v45;
          if (!--v25)
          {
            goto LABEL_85;
          }
        }

        v32 = v27 >> 4;
        v33 = (v28 + (v27 >> 4));
        if (v16 < v33)
        {
          v33 = v16;
        }

        if (v33 < v12)
        {
          v33 = v12;
        }

        v34 = bswap32(v33[1]) & 0xFFFF0000 | ((bswap32(v33[2]) >> 16) << 32) | (bswap32(*v33) >> 16);
        if (v22)
        {
          v35 = (v28 + v21);
          if (v16 >= v35)
          {
            v36 = v35;
          }

          else
          {
            v36 = v16;
          }

          if (v36 < v12)
          {
            v36 = v12;
          }

          v37 = bswap32(v36[1]) & 0xFFFF0000 | ((bswap32(v36[2]) >> 16) << 32) | (bswap32(*v36) >> 16);
          v38 = (v35 + v32);
          if (v16 < v38)
          {
            v38 = v16;
          }

          if (v38 < v12)
          {
            v38 = v12;
          }

          v39 = v19[v22];
          v30 = v30 - ((v39 & v30) >> v22) + ((v37 & v39) >> v22);
          v34 = v34 - ((v39 & v34) >> v22) + (((bswap32(v38[1]) & 0xFFFF0000 | ((bswap32(v38[2]) >> 16) << 32) | (bswap32(*v38) >> 16)) & v39) >> v22);
        }

        v40 = v19[v31];
        v41 = v30 - ((v40 & v30) >> v31);
        v42 = (v40 & v34) >> v31;
LABEL_40:
        v30 = v41 + v42;
        goto LABEL_41;
      }

LABEL_85:
      v9 = v109;
      v7 += v110;
      LOBYTE(v10) = v108;
      v11 = v113 + v107;
      a6 = v114 - 1;
      if (v114 == 1)
      {
        return;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_85;
    }

    v120 = v22;
    v47 = v100;
    v46 = v101;
    v117 = v21;
    while (1)
    {
      v48 = *(v47 - 1);
      v49 = *v47;
      v50 = v23 + v48;
      if (v16 >= v23 + v48)
      {
        v51 = (v23 + v48);
      }

      else
      {
        v51 = v16;
      }

      if (v51 < v12)
      {
        v51 = v12;
      }

      v52 = bswap32(v51[1]) & 0xFFFF0000 | ((bswap32(v51[2]) >> 16) << 32) | (bswap32(*v51) >> 16);
      v53 = *v47 & 0xF;
      if ((v49 & 0xF) != 0)
      {
        break;
      }

      if (v22)
      {
        v65 = (v50 + v21);
        if (v16 < v50 + v21)
        {
          v65 = v16;
        }

        if (v65 < v12)
        {
          v65 = v12;
        }

        v66 = v19[v120];
        v63 = v52 - ((v66 & v52) >> v120);
        v64 = ((bswap32(v65[1]) & 0xFFFF0000 | ((bswap32(v65[2]) >> 16) << 32) | (bswap32(*v65) >> 16)) & v66) >> v120;
        goto LABEL_76;
      }

LABEL_77:
      if (v6 == 0xFFFF)
      {
        v67 = v52 | 0xFFFF000000000000;
      }

      else
      {
        v67 = ((WORD1(v52) - ((v14 + WORD1(v52) * v17 + ((v14 + WORD1(v52) * v17) >> 16)) >> 16)) << 16) | ((WORD2(v52) - ((v14 + WORD2(v52) * v17 + ((v14 + WORD2(v52) * v17) >> 16)) >> 16)) << 32) | (v52 - ((v14 + v52 * v17 + ((v14 + v52 * v17) >> 16)) >> 16)) | v18;
      }

      v68 = HIWORD(v67);
      if (HIWORD(v67))
      {
        if (v68 == 0xFFFF)
        {
          *v7 = v67;
        }

        else
        {
          v69 = v18;
          v70 = v23;
          v71 = v19;
          v72 = v14;
          v73 = v17;
          v74 = v22;
          rgba64_DplusDM(v7, v67, *v7, v68 ^ 0xFFFF);
          v22 = v74;
          v17 = v73;
          v14 = v72;
          v19 = v71;
          v23 = v70;
          v18 = v69;
          v12 = v116;
          v21 = v117;
          v6 = v119;
        }
      }

      v47 += 2;
      ++v7;
      if (!--v46)
      {
        goto LABEL_85;
      }
    }

    v54 = v49 >> 4;
    v55 = (v50 + (v49 >> 4));
    if (v16 < v55)
    {
      v55 = v16;
    }

    if (v55 < v12)
    {
      v55 = v12;
    }

    v56 = bswap32(v55[1]) & 0xFFFF0000 | ((bswap32(v55[2]) >> 16) << 32) | (bswap32(*v55) >> 16);
    if (v22)
    {
      v57 = (v50 + v21);
      if (v16 >= v57)
      {
        v58 = v57;
      }

      else
      {
        v58 = v16;
      }

      if (v58 < v12)
      {
        v58 = v12;
      }

      v59 = bswap32(v58[1]) & 0xFFFF0000 | ((bswap32(v58[2]) >> 16) << 32) | (bswap32(*v58) >> 16);
      v60 = (v57 + v54);
      if (v16 < v60)
      {
        v60 = v16;
      }

      if (v60 < v12)
      {
        v60 = v12;
      }

      v61 = v19[v120];
      v52 = v52 - ((v61 & v52) >> v120) + ((v59 & v61) >> v120);
      v56 = v56 - ((v61 & v56) >> v120) + (((bswap32(v60[1]) & 0xFFFF0000 | ((bswap32(v60[2]) >> 16) << 32) | (bswap32(*v60) >> 16)) & v61) >> v120);
    }

    v62 = v19[v53];
    v63 = v52 - ((v62 & v52) >> v53);
    v64 = (v62 & v56) >> v53;
LABEL_76:
    v52 = v63 + v64;
    goto LABEL_77;
  }

  v121 = (v8 + 16 * a3);
  v75 = v13 - 6;
  v76 = v6 ^ 0xFFFF;
  v77 = (~(0xFFFF * v76 + 0x8000 + ((0xFFFF * v76 + 0x8000) >> 16)) >> 16) << 48;
  v118 = a5;
  do
  {
    v78 = *(a1 + 32);
    v79 = &v78[(v11 >> v10) * v9];
    v115 = a6;
    if (v111 == 1)
    {
      if (a5 >= 1)
      {
        v80 = v121;
        v81 = v118;
        do
        {
          v82 = *v80;
          v80 += 2;
          v83 = &v79[v82];
          if (v75 < &v79[v82])
          {
            v83 = v75;
          }

          if (v83 < v78)
          {
            v83 = v78;
          }

          v84 = bswap32(*v83) >> 16;
          v85 = bswap32(*(v83 + 1)) >> 16;
          v86 = bswap32(*(v83 + 2)) >> 16;
          v87 = v84 | (v86 << 32) | (v85 << 16) | 0xFFFF000000000000;
          v88 = ((v85 - ((v85 * v76 + 0x8000 + ((v85 * v76 + 0x8000) >> 16)) >> 16)) << 16) | ((v86 - ((v86 * v76 + 0x8000 + ((v86 * v76 + 0x8000) >> 16)) >> 16)) << 32) | (v84 - ((v84 * v76 + 0x8000 + ((v84 * v76 + 0x8000) >> 16)) >> 16)) | v77;
          if (v6 == 0xFFFF)
          {
            v88 = v87;
          }

          *v7++ = v88;
          --v81;
        }

        while (v81);
      }
    }

    else
    {
      v89 = v121;
      v90 = v118;
      if (a5 >= 1)
      {
        do
        {
          v91 = *v89;
          v89 += 2;
          v92 = &v79[v91];
          if (v75 < &v79[v91])
          {
            v92 = v75;
          }

          if (v92 < *(a1 + 32))
          {
            v92 = *(a1 + 32);
          }

          v93 = bswap32(*v92) >> 16;
          v94 = bswap32(*(v92 + 1)) >> 16;
          v95 = bswap32(*(v92 + 2)) >> 16;
          v96 = v93 | (v95 << 32) | (v94 << 16) | 0xFFFF000000000000;
          v97 = ((v94 - ((v94 * v76 + 0x8000 + ((v94 * v76 + 0x8000) >> 16)) >> 16)) << 16) | ((v95 - ((v95 * v76 + 0x8000 + ((v95 * v76 + 0x8000) >> 16)) >> 16)) << 32) | (v93 - ((v93 * v76 + 0x8000 + ((v93 * v76 + 0x8000) >> 16)) >> 16)) | v77;
          if (v6 == 0xFFFF)
          {
            v98 = v96;
          }

          else
          {
            v98 = v97;
          }

          v99 = HIWORD(v98);
          if (HIWORD(v98))
          {
            if (v99 == 0xFFFF)
            {
              *v7 = v98;
            }

            else
            {
              rgba64_DplusDM(v7, v98, *v7, v99 ^ 0xFFFF);
              v6 = v119;
            }
          }

          ++v7;
          --v90;
        }

        while (v90);
      }
    }

    v9 = v109;
    v7 += v110;
    LOBYTE(v10) = v108;
    v11 += v107;
    a6 = v115 - 1;
  }

  while (v115 != 1);
}

void rgba64_image_mark_w16(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v116 = *a2;
  v7 = *(a2 + 2);
  v115 = *(a2 + 3) - a5;
  v9 = *(a2 + 15);
  v8 = *(a2 + 16);
  v10 = *(a2 + 7);
  v112 = *(a2 + 9);
  v11 = *(a2 + 5) + v112 * a4;
  v12 = *(a1 + 32);
  v13 = v12 + (*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3);
  v113 = v10;
  v114 = v9;
  if (*(a1 + 176))
  {
    v14 = a3;
    v111 = *(a2 + 11);
    v110 = *(a2 + 13);
    v109 = ~(-1 << v10);
    v108 = v10 - 4;
    v15 = (v13 - 4);
    v16 = v6 ^ 0xFFFF;
    v17 = (~(0xFFFF * v16 + 0x8000 + ((0xFFFF * v16 + 0x8000) >> 16)) >> 16) << 48;
    v106 = a5;
    v107 = -v9;
    v105 = v8 + 16 * v14 + 8;
    v18 = BLEND16_21891;
    v122 = *(a2 + 4);
    while (1)
    {
      if (((v110 - v11) | (v11 - v111)) < 0)
      {
        v21 = 0;
        v20 = 0;
      }

      else
      {
        v19 = ((v11 & v109) >> v108) & 0xF;
        v20 = (v19 - 7) >= 9 ? v107 : v9;
        v21 = weights_21890[v19] & 0xF;
      }

      v22 = *(a1 + 32) + (v11 >> v10) * v9;
      v120 = a6;
      v118 = v11;
      if (v116 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v23 = v105;
        v24 = v106;
        while (1)
        {
          v25 = *(v23 - 1);
          v26 = *v23;
          v27 = v22 + v25;
          if (v15 >= v22 + v25)
          {
            v28 = (v22 + v25);
          }

          else
          {
            v28 = v15;
          }

          if (v28 < v12)
          {
            v28 = v12;
          }

          v29 = *v28;
          v30 = *v23 & 0xF;
          if ((v26 & 0xF) != 0)
          {
            break;
          }

          if (v21)
          {
            v42 = (v27 + v20);
            if (v15 < v27 + v20)
            {
              v42 = v15;
            }

            if (v42 < v12)
            {
              v42 = v12;
            }

            v43 = v18[v21];
            v40 = v29 - ((v43 & v29) >> v21);
            v41 = (v43 & *v42) >> v21;
            goto LABEL_40;
          }

LABEL_41:
          v23 += 2;
          v44 = (0x100010001 * v29) | 0xFFFF000000000000;
          v45 = (v29 | 0xFFFF0000) * v16;
          if (v45 >= 0xFFFE8000)
          {
            v45 = -98304;
          }

          v46 = (v29 - ((v45 + 0x8000 + ((v45 + 0x8000) >> 16)) >> 16));
          v47 = (v46 << 16) | (v46 << 32) | v17 | v46;
          if (v6 == 0xFFFF)
          {
            v47 = v44;
          }

          *v7++ = v47;
          if (!--v24)
          {
            goto LABEL_88;
          }
        }

        v31 = v26 >> 4;
        v32 = (v27 + (v26 >> 4));
        if (v15 < v32)
        {
          v32 = v15;
        }

        if (v32 < v12)
        {
          v32 = v12;
        }

        v33 = *v32;
        if (v21)
        {
          v34 = (v27 + v20);
          if (v15 >= v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v15;
          }

          if (v35 < v12)
          {
            v35 = v12;
          }

          v36 = *v35;
          v37 = (v34 + v31);
          if (v15 < v37)
          {
            v37 = v15;
          }

          if (v37 < v12)
          {
            v37 = v12;
          }

          v38 = v18[v21];
          LODWORD(v29) = v29 - ((v38 & v29) >> v21) + ((v38 & v36) >> v21);
          LODWORD(v33) = v33 - ((v38 & v33) >> v21) + ((v38 & *v37) >> v21);
        }

        v39 = v18[v30];
        v40 = v29 - ((v39 & v29) >> v30);
        v41 = (v39 & v33) >> v30;
LABEL_40:
        LOWORD(v29) = v40 + v41;
        goto LABEL_41;
      }

LABEL_88:
      v9 = v114;
      v7 += v115;
      LOBYTE(v10) = v113;
      v11 = v118 + v112;
      a6 = v120 - 1;
      if (v120 == 1)
      {
        return;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_88;
    }

    v125 = v21;
    v49 = v105;
    v48 = v106;
    v123 = *(a1 + 32) + (v11 >> v10) * v9;
    while (1)
    {
      v50 = *(v49 - 1);
      v51 = *v49;
      v52 = v22 + v50;
      if (v15 >= v22 + v50)
      {
        v53 = (v22 + v50);
      }

      else
      {
        v53 = v15;
      }

      if (v53 < v12)
      {
        v53 = v12;
      }

      v54 = *v53;
      v55 = *v49 & 0xF;
      if ((v51 & 0xF) != 0)
      {
        break;
      }

      if (v21)
      {
        v67 = (v52 + v20);
        if (v15 < v52 + v20)
        {
          v67 = v15;
        }

        if (v67 < v12)
        {
          v67 = v12;
        }

        v68 = v18[v125];
        v65 = v54 - ((v68 & v54) >> v125);
        v66 = (v68 & *v67) >> v125;
        goto LABEL_77;
      }

LABEL_78:
      v69 = (0x100010001 * v54) | 0xFFFF000000000000;
      v70 = (v54 | 0xFFFF0000) * v16;
      if (v70 >= 0xFFFE8000)
      {
        v70 = -98304;
      }

      v71 = (v54 - ((v70 + 0x8000 + ((v70 + 0x8000) >> 16)) >> 16));
      v72 = (v71 << 16) | (v71 << 32) | v17 | v71;
      if (v6 == 0xFFFF)
      {
        v73 = v69;
      }

      else
      {
        v73 = v72;
      }

      v74 = HIWORD(v73);
      if (HIWORD(v73))
      {
        if (v74 == 0xFFFF)
        {
          *v7 = v73;
        }

        else
        {
          v75 = v17;
          v76 = v20;
          v77 = v21;
          v78 = v18;
          rgba64_DplusDM(v7, v73, *v7, v74 ^ 0xFFFF);
          v18 = v78;
          v21 = v77;
          v20 = v76;
          v22 = v123;
          v17 = v75;
          v6 = v122;
        }
      }

      v49 += 2;
      ++v7;
      if (!--v48)
      {
        goto LABEL_88;
      }
    }

    v56 = v51 >> 4;
    v57 = (v52 + (v51 >> 4));
    if (v15 < v57)
    {
      v57 = v15;
    }

    if (v57 < v12)
    {
      v57 = v12;
    }

    v58 = *v57;
    if (v21)
    {
      v59 = (v52 + v20);
      if (v15 >= v59)
      {
        v60 = v59;
      }

      else
      {
        v60 = v15;
      }

      if (v60 < v12)
      {
        v60 = v12;
      }

      v61 = *v60;
      v62 = (v59 + v56);
      if (v15 < v62)
      {
        v62 = v15;
      }

      if (v62 < v12)
      {
        v62 = v12;
      }

      v63 = v18[v125];
      LODWORD(v54) = v54 - ((v63 & v54) >> v125) + ((v63 & v61) >> v125);
      LODWORD(v58) = v58 - ((v63 & v58) >> v125) + ((v63 & *v62) >> v125);
    }

    v64 = v18[v55];
    v65 = v54 - ((v64 & v54) >> v55);
    v66 = (v64 & v58) >> v55;
LABEL_77:
    LOWORD(v54) = v65 + v66;
    goto LABEL_78;
  }

  v79 = v13 - 4;
  v80 = v6 ^ 0xFFFF;
  v81 = (~(0xFFFF * v80 + 0x8000 + ((0xFFFF * v80 + 0x8000) >> 16)) >> 16) << 48;
  v124 = a5;
  v126 = (v8 + 16 * a3);
  do
  {
    v82 = *(a1 + 32);
    v83 = &v82[(v11 >> v10) * v9];
    v121 = a6;
    v119 = v11;
    if (v116 == 1)
    {
      if (a5 >= 1)
      {
        v85 = v124;
        v84 = v126;
        do
        {
          v86 = *v84;
          v84 += 2;
          v87 = &v83[v86];
          if (v79 < &v83[v86])
          {
            v87 = v79;
          }

          if (v87 < v82)
          {
            v87 = v82;
          }

          v88 = *v87;
          v89 = (v88 | 0xFFFF0000) * v80;
          if (v89 >= 0xFFFE8000)
          {
            v89 = -98304;
          }

          v90 = 0x100010001 * v88;
          v91 = (v88 - ((v89 + 0x8000 + ((v89 + 0x8000) >> 16)) >> 16));
          v92 = v90 | 0xFFFF000000000000;
          v93 = (v91 << 16) | (v91 << 32) | v81 | v91;
          if (v6 == 0xFFFF)
          {
            v93 = v92;
          }

          *v7++ = v93;
          --v85;
        }

        while (v85);
      }
    }

    else
    {
      v95 = v124;
      v94 = v126;
      if (a5 >= 1)
      {
        do
        {
          v96 = *v94;
          v94 += 2;
          v97 = &v83[v96];
          if (v79 < &v83[v96])
          {
            v97 = v79;
          }

          if (v97 < *(a1 + 32))
          {
            v97 = *(a1 + 32);
          }

          v98 = *v97;
          v99 = (0x100010001 * v98) | 0xFFFF000000000000;
          v100 = (v98 | 0xFFFF0000) * v80;
          if (v100 >= 0xFFFE8000)
          {
            v100 = -98304;
          }

          v101 = (v98 - ((v100 + 0x8000 + ((v100 + 0x8000) >> 16)) >> 16));
          v102 = (v101 << 16) | (v101 << 32) | v81 | v101;
          if (v6 == 0xFFFF)
          {
            v103 = v99;
          }

          else
          {
            v103 = v102;
          }

          v104 = HIWORD(v103);
          if (HIWORD(v103))
          {
            if (v104 == 0xFFFF)
            {
              *v7 = v103;
            }

            else
            {
              rgba64_DplusDM(v7, v103, *v7, v104 ^ 0xFFFF);
            }
          }

          ++v7;
          --v95;
        }

        while (v95);
      }
    }

    v9 = v114;
    v7 += v115;
    LOBYTE(v10) = v113;
    v11 = v119 + v112;
    a6 = v121 - 1;
  }

  while (v121 != 1);
}

void rgba64_image_mark_W16(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v116 = *a2;
  v7 = *(a2 + 2);
  v115 = *(a2 + 3) - a5;
  v9 = *(a2 + 15);
  v8 = *(a2 + 16);
  v10 = *(a2 + 7);
  v112 = *(a2 + 9);
  v11 = *(a2 + 5) + v112 * a4;
  v12 = *(a1 + 32);
  v13 = v12 + (*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3);
  v113 = v10;
  v114 = v9;
  if (*(a1 + 176))
  {
    v14 = a3;
    v111 = *(a2 + 11);
    v110 = *(a2 + 13);
    v109 = ~(-1 << v10);
    v108 = v10 - 4;
    v15 = (v13 - 4);
    v16 = v6 ^ 0xFFFF;
    v17 = (~(0xFFFF * v16 + 0x8000 + ((0xFFFF * v16 + 0x8000) >> 16)) >> 16) << 48;
    v106 = a5;
    v107 = -v9;
    v105 = v8 + 16 * v14 + 8;
    v18 = BLEND16_21891;
    v122 = *(a2 + 4);
    while (1)
    {
      if (((v110 - v11) | (v11 - v111)) < 0)
      {
        v21 = 0;
        v20 = 0;
      }

      else
      {
        v19 = ((v11 & v109) >> v108) & 0xF;
        v20 = (v19 - 7) >= 9 ? v107 : v9;
        v21 = weights_21890[v19] & 0xF;
      }

      v22 = *(a1 + 32) + (v11 >> v10) * v9;
      v120 = a6;
      v118 = v11;
      if (v116 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v23 = v105;
        v24 = v106;
        while (1)
        {
          v25 = *(v23 - 1);
          v26 = *v23;
          v27 = v22 + v25;
          if (v15 >= v22 + v25)
          {
            v28 = (v22 + v25);
          }

          else
          {
            v28 = v15;
          }

          if (v28 < v12)
          {
            v28 = v12;
          }

          v29 = bswap32(*v28) >> 16;
          v30 = *v23 & 0xF;
          if ((v26 & 0xF) != 0)
          {
            break;
          }

          if (v21)
          {
            v42 = (v27 + v20);
            if (v15 < v27 + v20)
            {
              v42 = v15;
            }

            if (v42 < v12)
            {
              v42 = v12;
            }

            v43 = v18[v21];
            v40 = v29 - ((v43 & v29) >> v21);
            v41 = (v43 & (bswap32(*v42) >> 16)) >> v21;
            goto LABEL_40;
          }

LABEL_41:
          v23 += 2;
          v44 = (0x100010001 * v29) | 0xFFFF000000000000;
          v45 = (v29 | 0xFFFF0000) * v16;
          if (v45 >= 0xFFFE8000)
          {
            v45 = -98304;
          }

          v46 = (v29 - ((v45 + 0x8000 + ((v45 + 0x8000) >> 16)) >> 16));
          v47 = (v46 << 16) | (v46 << 32) | v17 | v46;
          if (v6 == 0xFFFF)
          {
            v47 = v44;
          }

          *v7++ = v47;
          if (!--v24)
          {
            goto LABEL_88;
          }
        }

        v31 = v26 >> 4;
        v32 = (v27 + (v26 >> 4));
        if (v15 < v32)
        {
          v32 = v15;
        }

        if (v32 < v12)
        {
          v32 = v12;
        }

        v33 = bswap32(*v32) >> 16;
        if (v21)
        {
          v34 = (v27 + v20);
          if (v15 >= v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v15;
          }

          if (v35 < v12)
          {
            v35 = v12;
          }

          v36 = bswap32(*v35) >> 16;
          v37 = (v34 + v31);
          if (v15 < v37)
          {
            v37 = v15;
          }

          if (v37 < v12)
          {
            v37 = v12;
          }

          v38 = v18[v21];
          LODWORD(v29) = v29 - ((v38 & v29) >> v21) + ((v38 & v36) >> v21);
          LODWORD(v33) = v33 - ((v38 & v33) >> v21) + ((v38 & (bswap32(*v37) >> 16)) >> v21);
        }

        v39 = v18[v30];
        v40 = v29 - ((v39 & v29) >> v30);
        v41 = (v39 & v33) >> v30;
LABEL_40:
        LOWORD(v29) = v40 + v41;
        goto LABEL_41;
      }

LABEL_88:
      v9 = v114;
      v7 += v115;
      LOBYTE(v10) = v113;
      v11 = v118 + v112;
      a6 = v120 - 1;
      if (v120 == 1)
      {
        return;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_88;
    }

    v125 = v21;
    v49 = v105;
    v48 = v106;
    v123 = *(a1 + 32) + (v11 >> v10) * v9;
    while (1)
    {
      v50 = *(v49 - 1);
      v51 = *v49;
      v52 = v22 + v50;
      if (v15 >= v22 + v50)
      {
        v53 = (v22 + v50);
      }

      else
      {
        v53 = v15;
      }

      if (v53 < v12)
      {
        v53 = v12;
      }

      v54 = bswap32(*v53) >> 16;
      v55 = *v49 & 0xF;
      if ((v51 & 0xF) != 0)
      {
        break;
      }

      if (v21)
      {
        v67 = (v52 + v20);
        if (v15 < v52 + v20)
        {
          v67 = v15;
        }

        if (v67 < v12)
        {
          v67 = v12;
        }

        v68 = v18[v125];
        v65 = v54 - ((v68 & v54) >> v125);
        v66 = (v68 & (bswap32(*v67) >> 16)) >> v125;
        goto LABEL_77;
      }

LABEL_78:
      v69 = (0x100010001 * v54) | 0xFFFF000000000000;
      v70 = (v54 | 0xFFFF0000) * v16;
      if (v70 >= 0xFFFE8000)
      {
        v70 = -98304;
      }

      v71 = (v54 - ((v70 + 0x8000 + ((v70 + 0x8000) >> 16)) >> 16));
      v72 = (v71 << 16) | (v71 << 32) | v17 | v71;
      if (v6 == 0xFFFF)
      {
        v73 = v69;
      }

      else
      {
        v73 = v72;
      }

      v74 = HIWORD(v73);
      if (HIWORD(v73))
      {
        if (v74 == 0xFFFF)
        {
          *v7 = v73;
        }

        else
        {
          v75 = v17;
          v76 = v20;
          v77 = v21;
          v78 = v18;
          rgba64_DplusDM(v7, v73, *v7, v74 ^ 0xFFFF);
          v18 = v78;
          v21 = v77;
          v20 = v76;
          v22 = v123;
          v17 = v75;
          v6 = v122;
        }
      }

      v49 += 2;
      ++v7;
      if (!--v48)
      {
        goto LABEL_88;
      }
    }

    v56 = v51 >> 4;
    v57 = (v52 + (v51 >> 4));
    if (v15 < v57)
    {
      v57 = v15;
    }

    if (v57 < v12)
    {
      v57 = v12;
    }

    v58 = bswap32(*v57) >> 16;
    if (v21)
    {
      v59 = (v52 + v20);
      if (v15 >= v59)
      {
        v60 = v59;
      }

      else
      {
        v60 = v15;
      }

      if (v60 < v12)
      {
        v60 = v12;
      }

      v61 = bswap32(*v60) >> 16;
      v62 = (v59 + v56);
      if (v15 < v62)
      {
        v62 = v15;
      }

      if (v62 < v12)
      {
        v62 = v12;
      }

      v63 = v18[v125];
      LODWORD(v54) = v54 - ((v63 & v54) >> v125) + ((v63 & v61) >> v125);
      LODWORD(v58) = v58 - ((v63 & v58) >> v125) + ((v63 & (bswap32(*v62) >> 16)) >> v125);
    }

    v64 = v18[v55];
    v65 = v54 - ((v64 & v54) >> v55);
    v66 = (v64 & v58) >> v55;
LABEL_77:
    LOWORD(v54) = v65 + v66;
    goto LABEL_78;
  }

  v79 = v13 - 4;
  v80 = v6 ^ 0xFFFF;
  v81 = (~(0xFFFF * v80 + 0x8000 + ((0xFFFF * v80 + 0x8000) >> 16)) >> 16) << 48;
  v124 = a5;
  v126 = (v8 + 16 * a3);
  do
  {
    v82 = *(a1 + 32);
    v83 = &v82[(v11 >> v10) * v9];
    v121 = a6;
    v119 = v11;
    if (v116 == 1)
    {
      if (a5 >= 1)
      {
        v85 = v124;
        v84 = v126;
        do
        {
          v86 = *v84;
          v84 += 2;
          v87 = &v83[v86];
          if (v79 < &v83[v86])
          {
            v87 = v79;
          }

          if (v87 < v82)
          {
            v87 = v82;
          }

          v88 = bswap32(*v87) >> 16;
          v89 = (v88 | 0xFFFF0000) * v80;
          if (v89 >= 0xFFFE8000)
          {
            v89 = -98304;
          }

          v90 = 0x100010001 * v88;
          v91 = (v88 - ((v89 + 0x8000 + ((v89 + 0x8000) >> 16)) >> 16));
          v92 = v90 | 0xFFFF000000000000;
          v93 = (v91 << 16) | (v91 << 32) | v81 | v91;
          if (v6 == 0xFFFF)
          {
            v93 = v92;
          }

          *v7++ = v93;
          --v85;
        }

        while (v85);
      }
    }

    else
    {
      v95 = v124;
      v94 = v126;
      if (a5 >= 1)
      {
        do
        {
          v96 = *v94;
          v94 += 2;
          v97 = &v83[v96];
          if (v79 < &v83[v96])
          {
            v97 = v79;
          }

          if (v97 < *(a1 + 32))
          {
            v97 = *(a1 + 32);
          }

          v98 = bswap32(*v97) >> 16;
          v99 = (0x100010001 * v98) | 0xFFFF000000000000;
          v100 = (v98 | 0xFFFF0000) * v80;
          if (v100 >= 0xFFFE8000)
          {
            v100 = -98304;
          }

          v101 = (v98 - ((v100 + 0x8000 + ((v100 + 0x8000) >> 16)) >> 16));
          v102 = (v101 << 16) | (v101 << 32) | v81 | v101;
          if (v6 == 0xFFFF)
          {
            v103 = v99;
          }

          else
          {
            v103 = v102;
          }

          v104 = HIWORD(v103);
          if (HIWORD(v103))
          {
            if (v104 == 0xFFFF)
            {
              *v7 = v103;
            }

            else
            {
              rgba64_DplusDM(v7, v103, *v7, v104 ^ 0xFFFF);
            }
          }

          ++v7;
          --v95;
        }

        while (v95);
      }
    }

    v9 = v114;
    v7 += v115;
    LOBYTE(v10) = v113;
    v11 = v119 + v112;
    a6 = v121 - 1;
  }

  while (v121 != 1);
}

void rgba64_image_mark_rgb32(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v7 = a2[1];
  v140 = *a2;
  v8 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v9 = 0;
  }

  else
  {
    v9 = 255;
  }

  v10 = *(a2 + 2);
  v139 = *(a2 + 3) - a5;
  v12 = *(a2 + 15);
  v11 = *(a2 + 16);
  v13 = *(a2 + 7);
  v136 = *(a2 + 9);
  v14 = *(a2 + 5) + v136 * a4;
  v15 = v8 + (*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3);
  v16 = 0x8000;
  v141 = a5;
  v149 = a2[1];
  v150 = *(a2 + 4);
  v148 = v9;
  v137 = v13;
  v138 = v12;
  if (*(a1 + 176))
  {
    v135 = *(a2 + 11);
    v134 = *(a2 + 13);
    v133 = ~(-1 << v13);
    v17 = a5;
    v131 = -v12;
    v132 = v13 - 4;
    v18 = (v15 - 4);
    v19 = (32 - v7);
    v20 = v6 ^ 0xFFFFu;
    v21 = vdup_n_s32(v20);
    v130 = v11 + 16 * a3 + 8;
    v22 = vdup_n_s32(0x101u);
    v23 = xmmword_18439CC00;
    while (1)
    {
      if (((v134 - v14) | (v14 - v135)) < 0)
      {
        v26 = 0;
        v25 = 0;
      }

      else
      {
        v24 = ((v14 & v133) >> v132) & 0xF;
        v25 = (v24 - 7) >= 9 ? v131 : v12;
        v26 = weights_21890[v24] & 0xF;
      }

      v27 = *(a1 + 32) + (v14 >> v13) * v12;
      v144 = a6;
      v142 = v14;
      if (v140 != 1)
      {
        break;
      }

      if (v17 >= 1)
      {
        v29 = v141;
        v28 = v130;
        while (1)
        {
          v30 = *(v28 - 1);
          v31 = *v28;
          v32 = v27 + v30;
          if (v18 >= v27 + v30)
          {
            v33 = (v27 + v30);
          }

          else
          {
            v33 = v18;
          }

          if (v33 < v8)
          {
            v33 = v8;
          }

          v34 = *v33;
          v35 = v31 & 0xF;
          if ((v31 & 0xF) != 0)
          {
            break;
          }

          if (v26)
          {
            v46 = (v32 + v25);
            if (v18 < v32 + v25)
            {
              v46 = v18;
            }

            if (v46 < v8)
            {
              v46 = v8;
            }

            v47 = BLEND8_21892[v26];
            v44 = v34 - ((v47 & v34) >> v26);
            v45 = (v47 & *v46) >> v26;
            goto LABEL_43;
          }

LABEL_44:
          v48 = (v34 << v7) | (v34 >> v19);
          v49 = HIBYTE(v48) | (HIBYTE(v48) << 8);
          if (v6 == 0xFFFF)
          {
            v50 = ((BYTE1(v48) | (BYTE1(v48) << 8)) << 32) | (((v48 | v9) | ((v48 | v9) << 8)) << 48) | v48 & 0xFF0000 | (BYTE2(v48) << 24);
          }

          else
          {
            v51.i32[0] = v48 | v9;
            v51.i32[1] = v48 >> 8;
            v52 = vmul_s32(vand_s8(v51, 0xFF000000FFLL), v22);
            v53 = vmla_s32(0x800000008000, v52, v21);
            v54 = vand_s8(vsub_s32(v52, vshr_n_u32(vsra_n_u32(v53, v53, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v55.i64[0] = v54.u32[0];
            v55.i64[1] = v54.u32[1];
            v56 = vshlq_u64(v55, v23);
            v50 = vorrq_s8(v56, vdupq_laneq_s64(v56, 1)).u64[0] | (((BYTE2(v48) | (BYTE2(v48) << 8)) - ((v16 + (BYTE2(v48) | (BYTE2(v48) << 8)) * v20 + ((v16 + (BYTE2(v48) | (BYTE2(v48) << 8)) * v20) >> 16)) >> 16)) << 16);
            v49 = (v49 - ((v16 + v49 * v20 + ((v16 + v49 * v20) >> 16)) >> 16));
          }

          v28 += 2;
          *v10++ = (v50 | v49);
          if (!--v29)
          {
            goto LABEL_88;
          }
        }

        v36 = (v32 + (v31 >> 4));
        if (v18 < v36)
        {
          v36 = v18;
        }

        if (v36 < v8)
        {
          v36 = v8;
        }

        v37 = *v36;
        if (v26)
        {
          v38 = (v32 + v25);
          if (v18 >= v38)
          {
            v39 = v38;
          }

          else
          {
            v39 = v18;
          }

          if (v39 < v8)
          {
            v39 = v8;
          }

          v40 = *v39;
          v41 = (v38 + (v31 >> 4));
          if (v18 < v41)
          {
            v41 = v18;
          }

          if (v41 < v8)
          {
            v41 = v8;
          }

          v42 = BLEND8_21892[v26];
          v34 = v34 - ((v42 & v34) >> v26) + ((v42 & v40) >> v26);
          v37 = v37 - ((v42 & v37) >> v26) + ((v42 & *v41) >> v26);
        }

        v43 = BLEND8_21892[*v28 & 0xF];
        v44 = v34 - ((v43 & v34) >> v35);
        v45 = (v43 & v37) >> v35;
LABEL_43:
        v34 = v44 + v45;
        goto LABEL_44;
      }

LABEL_88:
      v12 = v138;
      v10 += v139;
      LOBYTE(v13) = v137;
      v14 = v142 + v136;
      a6 = v144 - 1;
      v17 = v141;
      if (v144 == 1)
      {
        return;
      }
    }

    if (v17 < 1)
    {
      goto LABEL_88;
    }

    v58 = v141;
    v57 = v130;
    v147 = *(a1 + 32) + (v14 >> v13) * v12;
    while (1)
    {
      v59 = *(v57 - 1);
      v60 = *v57;
      v61 = v27 + v59;
      if (v18 >= v27 + v59)
      {
        v62 = (v27 + v59);
      }

      else
      {
        v62 = v18;
      }

      if (v62 < v8)
      {
        v62 = v8;
      }

      v63 = *v62;
      v64 = v60 & 0xF;
      if ((v60 & 0xF) != 0)
      {
        break;
      }

      if (v26)
      {
        v75 = (v61 + v25);
        if (v18 < v61 + v25)
        {
          v75 = v18;
        }

        if (v75 < v8)
        {
          v75 = v8;
        }

        v76 = BLEND8_21892[v26];
        v73 = v63 - ((v76 & v63) >> v26);
        v74 = (v76 & *v75) >> v26;
        goto LABEL_79;
      }

LABEL_80:
      v77 = (v63 << v7) | (v63 >> v19);
      v78 = HIBYTE(v77) | (HIBYTE(v77) << 8);
      if (v6 == 0xFFFF)
      {
        v79 = ((BYTE1(v77) | (BYTE1(v77) << 8)) << 32) | (((v77 | v9) | ((v77 | v9) << 8)) << 48) | v77 & 0xFF0000 | (BYTE2(v77) << 24);
      }

      else
      {
        v80.i32[0] = v77 | v9;
        v80.i32[1] = v77 >> 8;
        v81 = vmul_s32(vand_s8(v80, 0xFF000000FFLL), v22);
        v82 = vmla_s32(0x800000008000, v81, v21);
        v83 = vand_s8(vsub_s32(v81, vshr_n_u32(vsra_n_u32(v82, v82, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
        v84.i64[0] = v83.u32[0];
        v84.i64[1] = v83.u32[1];
        v85 = vshlq_u64(v84, v23);
        v79 = vorrq_s8(v85, vdupq_laneq_s64(v85, 1)).u64[0] | (((BYTE2(v77) | (BYTE2(v77) << 8)) - ((v16 + (BYTE2(v77) | (BYTE2(v77) << 8)) * v20 + ((v16 + (BYTE2(v77) | (BYTE2(v77) << 8)) * v20) >> 16)) >> 16)) << 16);
        v78 = (v78 - ((v16 + v78 * v20 + ((v16 + v78 * v20) >> 16)) >> 16));
      }

      v86 = HIWORD(v79);
      if (HIWORD(v79))
      {
        v87 = v79 | v78;
        if (v86 == 0xFFFF)
        {
          *v10 = v87;
        }

        else
        {
          v88 = v26;
          v89 = v25;
          v90 = v19;
          v91 = v16;
          v92 = v20;
          rgba64_DplusDM(v10, v87, *v10, v86 ^ 0xFFFF);
          v20 = v92;
          v16 = v91;
          v19 = v90;
          v25 = v89;
          v26 = v88;
          v27 = v147;
          v23 = xmmword_18439CC00;
          v9 = v148;
          LOBYTE(v7) = v149;
          v6 = v150;
        }
      }

      v57 += 2;
      ++v10;
      if (!--v58)
      {
        goto LABEL_88;
      }
    }

    v65 = (v61 + (v60 >> 4));
    if (v18 < v65)
    {
      v65 = v18;
    }

    if (v65 < v8)
    {
      v65 = v8;
    }

    v66 = *v65;
    if (v26)
    {
      v67 = (v61 + v25);
      if (v18 >= v67)
      {
        v68 = v67;
      }

      else
      {
        v68 = v18;
      }

      if (v68 < v8)
      {
        v68 = v8;
      }

      v69 = *v68;
      v70 = (v67 + (v60 >> 4));
      if (v18 < v70)
      {
        v70 = v18;
      }

      if (v70 < v8)
      {
        v70 = v8;
      }

      v71 = BLEND8_21892[v26];
      v63 = v63 - ((v71 & v63) >> v26) + ((v71 & v69) >> v26);
      v66 = v66 - ((v71 & v66) >> v26) + ((v71 & *v70) >> v26);
    }

    v72 = BLEND8_21892[*v57 & 0xF];
    v73 = v63 - ((v72 & v63) >> v64);
    v74 = (v72 & v66) >> v64;
LABEL_79:
    v63 = v73 + v74;
    goto LABEL_80;
  }

  v146 = (v11 + 16 * a3);
  v93 = v15 - 4;
  v94 = 32 - v7;
  v95 = v6 ^ 0xFFFF;
  v96 = vdup_n_s32(v6 ^ 0xFFFFu);
  v97 = vdup_n_s32(0x101u);
  v143 = a5;
  v98 = xmmword_18439CC00;
  do
  {
    v99 = *(a1 + 32);
    v100 = &v99[(v14 >> v13) * v12];
    v145 = a6;
    v101 = v14;
    if (v140 == 1)
    {
      if (a5 >= 1)
      {
        v102 = v146;
        v103 = v143;
        do
        {
          v104 = *v102;
          v102 += 2;
          v105 = &v100[v104];
          if (v93 < &v100[v104])
          {
            v105 = v93;
          }

          if (v105 < v99)
          {
            v105 = v99;
          }

          v106 = (*v105 << v7) | (*v105 >> v94);
          v107 = HIBYTE(v106) | (HIBYTE(v106) << 8);
          if (v6 == 0xFFFF)
          {
            v108 = ((BYTE1(v106) | (BYTE1(v106) << 8)) << 32) | (((v106 | v9) | ((v106 | v9) << 8)) << 48) | v106 & 0xFF0000 | (BYTE2(v106) << 24);
          }

          else
          {
            v109.i32[0] = v106 | v9;
            v109.i32[1] = v106 >> 8;
            v110 = vmul_s32(vand_s8(v109, 0xFF000000FFLL), v97);
            v111 = vmla_s32(0x800000008000, v110, v96);
            v112 = vand_s8(vsub_s32(v110, vshr_n_u32(vsra_n_u32(v111, v111, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v113.i64[0] = v112.u32[0];
            v113.i64[1] = v112.u32[1];
            v114 = vshlq_u64(v113, v98);
            v108 = vorrq_s8(v114, vdupq_laneq_s64(v114, 1)).u64[0] | (((BYTE2(v106) | (BYTE2(v106) << 8)) - (((BYTE2(v106) | (BYTE2(v106) << 8)) * v95 + 0x8000 + (((BYTE2(v106) | (BYTE2(v106) << 8)) * v95 + 0x8000) >> 16)) >> 16)) << 16);
            v107 = (v107 - ((v107 * v95 + 0x8000 + ((v107 * v95 + 0x8000) >> 16)) >> 16));
          }

          *v10++ = (v108 | v107);
          --v103;
        }

        while (v103);
      }
    }

    else
    {
      v115 = v146;
      v116 = v143;
      if (a5 >= 1)
      {
        do
        {
          v117 = *v115;
          v115 += 2;
          v118 = &v100[v117];
          if (v93 < &v100[v117])
          {
            v118 = v93;
          }

          if (v118 < *(a1 + 32))
          {
            v118 = *(a1 + 32);
          }

          v119 = (*v118 << v7) | (*v118 >> v94);
          v120 = HIBYTE(v119) | (HIBYTE(v119) << 8);
          if (v6 == 0xFFFF)
          {
            v121 = ((BYTE1(v119) | (BYTE1(v119) << 8)) << 32) | (((v119 | v9) | ((v119 | v9) << 8)) << 48) | v119 & 0xFF0000 | (BYTE2(v119) << 24);
          }

          else
          {
            v122.i32[0] = v119 | v9;
            v122.i32[1] = v119 >> 8;
            v123 = vmul_s32(vand_s8(v122, 0xFF000000FFLL), v97);
            v124 = vmla_s32(0x800000008000, v123, v96);
            v125 = vand_s8(vsub_s32(v123, vshr_n_u32(vsra_n_u32(v124, v124, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v126.i64[0] = v125.u32[0];
            v126.i64[1] = v125.u32[1];
            v127 = vshlq_u64(v126, v98);
            v121 = vorrq_s8(v127, vdupq_laneq_s64(v127, 1)).u64[0] | (((BYTE2(v119) | (BYTE2(v119) << 8)) - (((BYTE2(v119) | (BYTE2(v119) << 8)) * v95 + 0x8000 + (((BYTE2(v119) | (BYTE2(v119) << 8)) * v95 + 0x8000) >> 16)) >> 16)) << 16);
            v120 = (v120 - ((v120 * v95 + 0x8000 + ((v120 * v95 + 0x8000) >> 16)) >> 16));
          }

          v128 = HIWORD(v121);
          if (HIWORD(v121))
          {
            v129 = v121 | v120;
            if (v128 == 0xFFFF)
            {
              *v10 = v129;
            }

            else
            {
              rgba64_DplusDM(v10, v129, *v10, v128 ^ 0xFFFF);
              v98 = xmmword_18439CC00;
              v9 = v148;
              LOBYTE(v7) = v149;
              v6 = v150;
            }
          }

          ++v10;
          --v116;
        }

        while (v116);
      }
    }

    v12 = v138;
    v10 += v139;
    LOBYTE(v13) = v137;
    v14 = v101 + v136;
    a6 = v145 - 1;
    a5 = v141;
  }

  while (v145 != 1);
}

void rgba64_image_mark_RGB32(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v7 = a2[1];
  v142 = *a2;
  v8 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v9 = 0;
  }

  else
  {
    v9 = 255;
  }

  v10 = *(a2 + 2);
  v141 = *(a2 + 3) - a5;
  v12 = *(a2 + 15);
  v11 = *(a2 + 16);
  v13 = *(a2 + 7);
  v138 = *(a2 + 9);
  v14 = *(a2 + 5) + v138 * a4;
  v15 = v8 + (*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3);
  v16 = 0x8000;
  v143 = a5;
  v151 = a2[1];
  v152 = *(a2 + 4);
  v150 = v9;
  v139 = v13;
  v140 = v12;
  if (*(a1 + 176))
  {
    v137 = *(a2 + 11);
    v136 = *(a2 + 13);
    v135 = ~(-1 << v13);
    v17 = a5;
    v133 = -v12;
    v134 = v13 - 4;
    v18 = (v15 - 4);
    v19 = (32 - v7);
    v20 = v6 ^ 0xFFFFu;
    v21 = vdup_n_s32(v20);
    v132 = v11 + 16 * a3 + 8;
    v22 = vdup_n_s32(0x101u);
    v23 = xmmword_18439CC00;
    while (1)
    {
      if (((v136 - v14) | (v14 - v137)) < 0)
      {
        v26 = 0;
        v25 = 0;
      }

      else
      {
        v24 = ((v14 & v135) >> v134) & 0xF;
        v25 = (v24 - 7) >= 9 ? v133 : v12;
        v26 = weights_21890[v24] & 0xF;
      }

      v27 = *(a1 + 32) + (v14 >> v13) * v12;
      v146 = a6;
      v144 = v14;
      if (v142 != 1)
      {
        break;
      }

      if (v17 >= 1)
      {
        v29 = v143;
        v28 = v132;
        while (1)
        {
          v30 = *(v28 - 1);
          v31 = *v28;
          v32 = v27 + v30;
          if (v18 >= v27 + v30)
          {
            v33 = (v27 + v30);
          }

          else
          {
            v33 = v18;
          }

          if (v33 < v8)
          {
            v33 = v8;
          }

          v34 = bswap32(*v33);
          v35 = v31 & 0xF;
          if ((v31 & 0xF) != 0)
          {
            break;
          }

          if (v26)
          {
            v46 = (v32 + v25);
            if (v18 < v32 + v25)
            {
              v46 = v18;
            }

            if (v46 < v8)
            {
              v46 = v8;
            }

            v47 = BLEND8_21892[v26];
            v44 = v34 - ((v47 & v34) >> v26);
            v45 = (bswap32(*v46) & v47) >> v26;
            goto LABEL_43;
          }

LABEL_44:
          v48 = (v34 << v7) | (v34 >> v19);
          v49 = HIBYTE(v48) | (HIBYTE(v48) << 8);
          if (v6 == 0xFFFF)
          {
            v50 = ((BYTE1(v48) | (BYTE1(v48) << 8)) << 32) | (((v48 | v9) | ((v48 | v9) << 8)) << 48) | v48 & 0xFF0000 | (BYTE2(v48) << 24);
          }

          else
          {
            v51.i32[0] = v48 | v9;
            v51.i32[1] = v48 >> 8;
            v52 = vmul_s32(vand_s8(v51, 0xFF000000FFLL), v22);
            v53 = vmla_s32(0x800000008000, v52, v21);
            v54 = vand_s8(vsub_s32(v52, vshr_n_u32(vsra_n_u32(v53, v53, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v55.i64[0] = v54.u32[0];
            v55.i64[1] = v54.u32[1];
            v56 = vshlq_u64(v55, v23);
            v50 = vorrq_s8(v56, vdupq_laneq_s64(v56, 1)).u64[0] | (((BYTE2(v48) | (BYTE2(v48) << 8)) - ((v16 + (BYTE2(v48) | (BYTE2(v48) << 8)) * v20 + ((v16 + (BYTE2(v48) | (BYTE2(v48) << 8)) * v20) >> 16)) >> 16)) << 16);
            v49 = (v49 - ((v16 + v49 * v20 + ((v16 + v49 * v20) >> 16)) >> 16));
          }

          v28 += 2;
          *v10++ = (v50 | v49);
          if (!--v29)
          {
            goto LABEL_88;
          }
        }

        v36 = (v32 + (v31 >> 4));
        if (v18 < v36)
        {
          v36 = v18;
        }

        if (v36 < v8)
        {
          v36 = v8;
        }

        v37 = bswap32(*v36);
        if (v26)
        {
          v38 = (v32 + v25);
          if (v18 >= v38)
          {
            v39 = v38;
          }

          else
          {
            v39 = v18;
          }

          if (v39 < v8)
          {
            v39 = v8;
          }

          v40 = bswap32(*v39);
          v41 = (v38 + (v31 >> 4));
          if (v18 < v41)
          {
            v41 = v18;
          }

          if (v41 < v8)
          {
            v41 = v8;
          }

          v42 = BLEND8_21892[v26];
          v34 = v34 - ((v42 & v34) >> v26) + ((v42 & v40) >> v26);
          v37 = v37 - ((v42 & v37) >> v26) + ((bswap32(*v41) & v42) >> v26);
        }

        v43 = BLEND8_21892[*v28 & 0xF];
        v44 = v34 - ((v43 & v34) >> v35);
        v45 = (v43 & v37) >> v35;
LABEL_43:
        v34 = v44 + v45;
        goto LABEL_44;
      }

LABEL_88:
      v12 = v140;
      v10 += v141;
      LOBYTE(v13) = v139;
      v14 = v144 + v138;
      a6 = v146 - 1;
      v17 = v143;
      if (v146 == 1)
      {
        return;
      }
    }

    if (v17 < 1)
    {
      goto LABEL_88;
    }

    v58 = v143;
    v57 = v132;
    v149 = *(a1 + 32) + (v14 >> v13) * v12;
    while (1)
    {
      v59 = *(v57 - 1);
      v60 = *v57;
      v61 = v27 + v59;
      if (v18 >= v27 + v59)
      {
        v62 = (v27 + v59);
      }

      else
      {
        v62 = v18;
      }

      if (v62 < v8)
      {
        v62 = v8;
      }

      v63 = bswap32(*v62);
      v64 = v60 & 0xF;
      if ((v60 & 0xF) != 0)
      {
        break;
      }

      if (v26)
      {
        v75 = (v61 + v25);
        if (v18 < v61 + v25)
        {
          v75 = v18;
        }

        if (v75 < v8)
        {
          v75 = v8;
        }

        v76 = BLEND8_21892[v26];
        v73 = v63 - ((v76 & v63) >> v26);
        v74 = (bswap32(*v75) & v76) >> v26;
        goto LABEL_79;
      }

LABEL_80:
      v77 = (v63 << v7) | (v63 >> v19);
      v78 = HIBYTE(v77) | (HIBYTE(v77) << 8);
      if (v6 == 0xFFFF)
      {
        v79 = ((BYTE1(v77) | (BYTE1(v77) << 8)) << 32) | (((v77 | v9) | ((v77 | v9) << 8)) << 48) | v77 & 0xFF0000 | (BYTE2(v77) << 24);
      }

      else
      {
        v80.i32[0] = v77 | v9;
        v80.i32[1] = v77 >> 8;
        v81 = vmul_s32(vand_s8(v80, 0xFF000000FFLL), v22);
        v82 = vmla_s32(0x800000008000, v81, v21);
        v83 = vand_s8(vsub_s32(v81, vshr_n_u32(vsra_n_u32(v82, v82, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
        v84.i64[0] = v83.u32[0];
        v84.i64[1] = v83.u32[1];
        v85 = vshlq_u64(v84, v23);
        v79 = vorrq_s8(v85, vdupq_laneq_s64(v85, 1)).u64[0] | (((BYTE2(v77) | (BYTE2(v77) << 8)) - ((v16 + (BYTE2(v77) | (BYTE2(v77) << 8)) * v20 + ((v16 + (BYTE2(v77) | (BYTE2(v77) << 8)) * v20) >> 16)) >> 16)) << 16);
        v78 = (v78 - ((v16 + v78 * v20 + ((v16 + v78 * v20) >> 16)) >> 16));
      }

      v86 = HIWORD(v79);
      if (HIWORD(v79))
      {
        v87 = v79 | v78;
        if (v86 == 0xFFFF)
        {
          *v10 = v87;
        }

        else
        {
          v88 = v26;
          v89 = v25;
          v90 = v19;
          v91 = v16;
          v92 = v20;
          rgba64_DplusDM(v10, v87, *v10, v86 ^ 0xFFFF);
          v20 = v92;
          v16 = v91;
          v19 = v90;
          v25 = v89;
          v26 = v88;
          v27 = v149;
          v23 = xmmword_18439CC00;
          v9 = v150;
          LOBYTE(v7) = v151;
          v6 = v152;
        }
      }

      v57 += 2;
      ++v10;
      if (!--v58)
      {
        goto LABEL_88;
      }
    }

    v65 = (v61 + (v60 >> 4));
    if (v18 < v65)
    {
      v65 = v18;
    }

    if (v65 < v8)
    {
      v65 = v8;
    }

    v66 = bswap32(*v65);
    if (v26)
    {
      v67 = (v61 + v25);
      if (v18 >= v67)
      {
        v68 = v67;
      }

      else
      {
        v68 = v18;
      }

      if (v68 < v8)
      {
        v68 = v8;
      }

      v69 = bswap32(*v68);
      v70 = (v67 + (v60 >> 4));
      if (v18 < v70)
      {
        v70 = v18;
      }

      if (v70 < v8)
      {
        v70 = v8;
      }

      v71 = BLEND8_21892[v26];
      v63 = v63 - ((v71 & v63) >> v26) + ((v71 & v69) >> v26);
      v66 = v66 - ((v71 & v66) >> v26) + ((bswap32(*v70) & v71) >> v26);
    }

    v72 = BLEND8_21892[*v57 & 0xF];
    v73 = v63 - ((v72 & v63) >> v64);
    v74 = (v72 & v66) >> v64;
LABEL_79:
    v63 = v73 + v74;
    goto LABEL_80;
  }

  v148 = (v11 + 16 * a3);
  v93 = (v15 - 4);
  v94 = 32 - v7;
  v95 = v6 ^ 0xFFFF;
  v96 = vdup_n_s32(v6 ^ 0xFFFFu);
  v97 = vdup_n_s32(0x101u);
  v145 = a5;
  v98 = xmmword_18439CC00;
  do
  {
    v99 = *(a1 + 32);
    v100 = v99 + (v14 >> v13) * v12;
    v147 = a6;
    v101 = v14;
    if (v142 == 1)
    {
      if (a5 >= 1)
      {
        v102 = v148;
        v103 = v145;
        do
        {
          v104 = *v102;
          v102 += 2;
          v105 = &v100[v104];
          if (v93 < &v100[v104])
          {
            v105 = v93;
          }

          if (v105 < v99)
          {
            v105 = v99;
          }

          v106 = bswap32(*v105);
          v107 = (v106 << v7) | (v106 >> v94);
          v108 = HIBYTE(v107) | (HIBYTE(v107) << 8);
          if (v6 == 0xFFFF)
          {
            v109 = ((BYTE1(v107) | (BYTE1(v107) << 8)) << 32) | (((v107 | v9) | ((v107 | v9) << 8)) << 48) | v107 & 0xFF0000 | (BYTE2(v107) << 24);
          }

          else
          {
            v110.i32[0] = v107 | v9;
            v110.i32[1] = v107 >> 8;
            v111 = vmul_s32(vand_s8(v110, 0xFF000000FFLL), v97);
            v112 = vmla_s32(0x800000008000, v111, v96);
            v113 = vand_s8(vsub_s32(v111, vshr_n_u32(vsra_n_u32(v112, v112, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v114.i64[0] = v113.u32[0];
            v114.i64[1] = v113.u32[1];
            v115 = vshlq_u64(v114, v98);
            v109 = vorrq_s8(v115, vdupq_laneq_s64(v115, 1)).u64[0] | (((BYTE2(v107) | (BYTE2(v107) << 8)) - (((BYTE2(v107) | (BYTE2(v107) << 8)) * v95 + 0x8000 + (((BYTE2(v107) | (BYTE2(v107) << 8)) * v95 + 0x8000) >> 16)) >> 16)) << 16);
            v108 = (v108 - ((v108 * v95 + 0x8000 + ((v108 * v95 + 0x8000) >> 16)) >> 16));
          }

          *v10++ = (v109 | v108);
          --v103;
        }

        while (v103);
      }
    }

    else
    {
      v116 = v148;
      v117 = v145;
      if (a5 >= 1)
      {
        do
        {
          v118 = *v116;
          v116 += 2;
          v119 = &v100[v118];
          if (v93 < &v100[v118])
          {
            v119 = v93;
          }

          if (v119 < *(a1 + 32))
          {
            v119 = *(a1 + 32);
          }

          v120 = bswap32(*v119);
          v121 = (v120 << v7) | (v120 >> v94);
          v122 = HIBYTE(v121) | (HIBYTE(v121) << 8);
          if (v6 == 0xFFFF)
          {
            v123 = ((BYTE1(v121) | (BYTE1(v121) << 8)) << 32) | (((v121 | v9) | ((v121 | v9) << 8)) << 48) | v121 & 0xFF0000 | (BYTE2(v121) << 24);
          }

          else
          {
            v124.i32[0] = v121 | v9;
            v124.i32[1] = v121 >> 8;
            v125 = vmul_s32(vand_s8(v124, 0xFF000000FFLL), v97);
            v126 = vmla_s32(0x800000008000, v125, v96);
            v127 = vand_s8(vsub_s32(v125, vshr_n_u32(vsra_n_u32(v126, v126, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v128.i64[0] = v127.u32[0];
            v128.i64[1] = v127.u32[1];
            v129 = vshlq_u64(v128, v98);
            v123 = vorrq_s8(v129, vdupq_laneq_s64(v129, 1)).u64[0] | (((BYTE2(v121) | (BYTE2(v121) << 8)) - (((BYTE2(v121) | (BYTE2(v121) << 8)) * v95 + 0x8000 + (((BYTE2(v121) | (BYTE2(v121) << 8)) * v95 + 0x8000) >> 16)) >> 16)) << 16);
            v122 = (v122 - ((v122 * v95 + 0x8000 + ((v122 * v95 + 0x8000) >> 16)) >> 16));
          }

          v130 = HIWORD(v123);
          if (HIWORD(v123))
          {
            v131 = v123 | v122;
            if (v130 == 0xFFFF)
            {
              *v10 = v131;
            }

            else
            {
              rgba64_DplusDM(v10, v131, *v10, v130 ^ 0xFFFF);
              v98 = xmmword_18439CC00;
              v9 = v150;
              LOBYTE(v7) = v151;
              v6 = v152;
            }
          }

          ++v10;
          --v117;
        }

        while (v117);
      }
    }

    v12 = v140;
    v10 += v141;
    LOBYTE(v13) = v139;
    v14 = v101 + v138;
    a6 = v147 - 1;
    a5 = v143;
  }

  while (v147 != 1);
}

void rgba64_image_mark_RGB24(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v122 = *a2;
  v7 = *(a2 + 2);
  v121 = *(a2 + 3) - a5;
  v9 = *(a2 + 15);
  v8 = *(a2 + 16);
  v10 = *(a2 + 7);
  v118 = *(a2 + 9);
  v11 = *(a2 + 5) + v118 * a4;
  v12 = *(a1 + 32);
  v13 = &v12[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  v14 = 0x8000;
  v123 = a5;
  v119 = v10;
  v120 = v9;
  if (*(a1 + 176))
  {
    v15 = a3;
    v117 = *(a2 + 11);
    v116 = *(a2 + 13);
    v115 = ~(-1 << v10);
    v114 = v10 - 4;
    v16 = v13 - 3;
    v17 = v6 ^ 0xFFFFu;
    v18 = (~(0xFFFF * v17 + 0x8000 + ((0xFFFF * v17 + 0x8000) >> 16)) >> 16) << 48;
    v112 = a5;
    v113 = -v9;
    v111 = v8 + 16 * v15 + 8;
    v19 = BLEND8_21892;
    v130 = *(a2 + 4);
    v128 = v18;
    while (1)
    {
      if (((v116 - v11) | (v11 - v117)) < 0)
      {
        v22 = 0;
        v21 = 0;
      }

      else
      {
        v20 = ((v11 & v115) >> v114) & 0xF;
        v21 = (v20 - 7) >= 9 ? v113 : v9;
        v22 = weights_21890[v20] & 0xF;
      }

      v126 = a6;
      v23 = *(a1 + 32) + (v11 >> v10) * v9;
      v124 = v11;
      if (v122 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v24 = v111;
        v25 = v112;
        while (1)
        {
          v26 = *(v24 - 1);
          v27 = *v24;
          v28 = v23 + v26;
          if (v16 >= v23 + v26)
          {
            v29 = (v23 + v26);
          }

          else
          {
            v29 = v16;
          }

          if (v29 < v12)
          {
            v29 = v12;
          }

          v30 = (*v29 << 24) | (v29[1] << 16) | (v29[2] << 8);
          v31 = v27 & 0xF;
          if ((v27 & 0xF) != 0)
          {
            break;
          }

          if (v22)
          {
            v42 = (v28 + v21);
            if (v16 < v28 + v21)
            {
              v42 = v16;
            }

            if (v42 < v12)
            {
              v42 = v12;
            }

            v43 = v19[v22];
            v40 = v30 - ((v43 & v30) >> v22);
            v41 = (((*v42 << 24) | (v42[1] << 16) | (v42[2] << 8)) & v43) >> v22;
            goto LABEL_40;
          }

LABEL_41:
          v24 += 2;
          LODWORD(v44) = HIBYTE(v30) | (HIBYTE(v30) << 8);
          v45 = BYTE1(v30) | (BYTE1(v30) << 8);
          v46 = v30 & 0xFF0000 | (BYTE2(v30) << 24) | (v45 << 32);
          v47 = (((BYTE2(v30) | (BYTE2(v30) << 8)) - ((v14 + (BYTE2(v30) | (BYTE2(v30) << 8)) * v17 + ((v14 + (BYTE2(v30) | (BYTE2(v30) << 8)) * v17) >> 16)) >> 16)) << 16) | ((v45 - ((v14 + v45 * v17 + ((v14 + v45 * v17) >> 16)) >> 16)) << 32);
          if (v6 == 0xFFFF)
          {
            v44 = v44;
          }

          else
          {
            v44 = (v44 - ((v14 + v44 * v17 + ((v14 + v44 * v17) >> 16)) >> 16));
          }

          if (v6 == 0xFFFF)
          {
            v47 = v46;
            v48 = 0xFFFF000000000000;
          }

          else
          {
            v48 = v18;
          }

          *v7++ = (v47 | v44 | v48);
          if (!--v25)
          {
            goto LABEL_91;
          }
        }

        v32 = (v28 + (v27 >> 4));
        if (v16 < v32)
        {
          v32 = v16;
        }

        if (v32 < v12)
        {
          v32 = v12;
        }

        v33 = (*v32 << 24) | (v32[1] << 16) | (v32[2] << 8);
        if (v22)
        {
          v34 = (v28 + v21);
          if (v16 >= v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v16;
          }

          if (v35 < v12)
          {
            v35 = v12;
          }

          v36 = (*v35 << 24) | (v35[1] << 16) | (v35[2] << 8);
          v37 = &v34[v27 >> 4];
          if (v16 < v37)
          {
            v37 = v16;
          }

          if (v37 < v12)
          {
            v37 = v12;
          }

          v38 = v19[v22];
          v30 = v30 - ((v38 & v30) >> v22) + ((v38 & v36) >> v22);
          v33 = v33 - ((v38 & v33) >> v22) + ((((*v37 << 24) | (v37[1] << 16) | (v37[2] << 8)) & v38) >> v22);
        }

        v39 = v19[*v24 & 0xF];
        v40 = v30 - ((v39 & v30) >> v31);
        v41 = (v39 & v33) >> v31;
LABEL_40:
        v30 = v40 + v41;
        goto LABEL_41;
      }

LABEL_91:
      v9 = v120;
      v7 += v121;
      LOBYTE(v10) = v119;
      v11 = v124 + v118;
      a6 = v126 - 1;
      a5 = v123;
      if (v126 == 1)
      {
        return;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_91;
    }

    v49 = v111;
    v50 = v112;
    v131 = v21;
    while (1)
    {
      v51 = *(v49 - 1);
      v52 = *v49;
      v53 = v23 + v51;
      if (v16 >= v23 + v51)
      {
        v54 = (v23 + v51);
      }

      else
      {
        v54 = v16;
      }

      if (v54 < v12)
      {
        v54 = v12;
      }

      v55 = (*v54 << 24) | (v54[1] << 16) | (v54[2] << 8);
      v56 = v52 & 0xF;
      if ((v52 & 0xF) != 0)
      {
        break;
      }

      if (v22)
      {
        v67 = (v53 + v21);
        if (v16 < v53 + v21)
        {
          v67 = v16;
        }

        if (v67 < v12)
        {
          v67 = v12;
        }

        v68 = v19[v22];
        v65 = v55 - ((v68 & v55) >> v22);
        v66 = (((*v67 << 24) | (v67[1] << 16) | (v67[2] << 8)) & v68) >> v22;
        goto LABEL_79;
      }

LABEL_80:
      LODWORD(v69) = HIBYTE(v55) | (HIBYTE(v55) << 8);
      v70 = BYTE1(v55) | (BYTE1(v55) << 8);
      v71 = v55 & 0xFF0000 | (BYTE2(v55) << 24) | (v70 << 32);
      v72 = (((BYTE2(v55) | (BYTE2(v55) << 8)) - ((v14 + (BYTE2(v55) | (BYTE2(v55) << 8)) * v17 + ((v14 + (BYTE2(v55) | (BYTE2(v55) << 8)) * v17) >> 16)) >> 16)) << 16) | ((v70 - ((v14 + v70 * v17 + ((v14 + v70 * v17) >> 16)) >> 16)) << 32);
      if (v6 == 0xFFFF)
      {
        v69 = v69;
      }

      else
      {
        v69 = (v69 - ((v14 + v69 * v17 + ((v14 + v69 * v17) >> 16)) >> 16));
      }

      if (v6 == 0xFFFF)
      {
        v72 = v71;
        v73 = 0xFFFF000000000000;
      }

      else
      {
        v73 = v18;
      }

      if (HIWORD(v73))
      {
        v74 = v72 | v69 | v73;
        if (HIWORD(v73) == 0xFFFF)
        {
          *v7 = v74;
        }

        else
        {
          v75 = v19;
          v76 = v22;
          v77 = v14;
          v78 = v17;
          v79 = v23;
          rgba64_DplusDM(v7, v74, *v7, HIWORD(v74) ^ 0xFFFF);
          v23 = v79;
          v17 = v78;
          v14 = v77;
          v22 = v76;
          v19 = v75;
          v21 = v131;
          v18 = v128;
          v6 = v130;
        }
      }

      v49 += 2;
      ++v7;
      if (!--v50)
      {
        goto LABEL_91;
      }
    }

    v57 = (v53 + (v52 >> 4));
    if (v16 < v57)
    {
      v57 = v16;
    }

    if (v57 < v12)
    {
      v57 = v12;
    }

    v58 = (*v57 << 24) | (v57[1] << 16) | (v57[2] << 8);
    if (v22)
    {
      v59 = (v53 + v21);
      if (v16 >= v59)
      {
        v60 = v59;
      }

      else
      {
        v60 = v16;
      }

      if (v60 < v12)
      {
        v60 = v12;
      }

      v61 = (*v60 << 24) | (v60[1] << 16) | (v60[2] << 8);
      v62 = &v59[v52 >> 4];
      if (v16 < v62)
      {
        v62 = v16;
      }

      if (v62 < v12)
      {
        v62 = v12;
      }

      v63 = v19[v22];
      v55 = v55 - ((v63 & v55) >> v22) + ((v63 & v61) >> v22);
      v58 = v58 - ((v63 & v58) >> v22) + ((((*v62 << 24) | (v62[1] << 16) | (v62[2] << 8)) & v63) >> v22);
    }

    v64 = v19[*v49 & 0xF];
    v65 = v55 - ((v64 & v55) >> v56);
    v66 = (v64 & v58) >> v56;
LABEL_79:
    v55 = v65 + v66;
    goto LABEL_80;
  }

  v132 = (v8 + 16 * a3);
  v80 = v13 - 3;
  v81 = v6 ^ 0xFFFF;
  v129 = a5;
  do
  {
    v82 = *(a1 + 32);
    v83 = &v82[(v11 >> v10) * v9];
    v127 = a6;
    v125 = v11;
    if (v122 == 1)
    {
      if (a5 >= 1)
      {
        v84 = v132;
        v85 = v129;
        do
        {
          v86 = *v84;
          v84 += 2;
          v87 = &v83[v86];
          if (v80 < &v83[v86])
          {
            v87 = v80;
          }

          if (v87 < v82)
          {
            v87 = v82;
          }

          v88 = *v87;
          v89 = v87[1];
          v90 = v87[2] | (v87[2] << 8);
          v91 = v90 << 32;
          v92 = (v88 << 8) | v88;
          v93 = v92 | (v89 << 16) | (v89 << 24);
          v94 = (((v89 | (v89 << 8)) - (((v89 | (v89 << 8)) * v81 + 0x8000 + (((v89 | (v89 << 8)) * v81 + 0x8000) >> 16)) >> 16)) << 16) | ((v90 - ((v90 * v81 + 0x8000 + ((v90 * v81 + 0x8000) >> 16)) >> 16)) << 32);
          LODWORD(v95) = (v92 - ((v92 * v81 + 0x8000 + ((v92 * v81 + 0x8000) >> 16)) >> 16));
          if (v6 == 0xFFFF)
          {
            v95 = v93;
          }

          else
          {
            v95 = v95;
          }

          if (v6 == 0xFFFF)
          {
            v94 = v91;
            v96 = 0xFFFF000000000000;
          }

          else
          {
            v96 = (~(0xFFFF * v81 + 0x8000 + ((0xFFFF * v81 + 0x8000) >> 16)) >> 16) << 48;
          }

          *v7++ = (v94 | v95 | v96);
          --v85;
        }

        while (v85);
      }
    }

    else
    {
      v97 = v132;
      v98 = v129;
      if (a5 >= 1)
      {
        do
        {
          v99 = *v97;
          v97 += 2;
          v100 = &v83[v99];
          if (v80 < &v83[v99])
          {
            v100 = v80;
          }

          if (v100 < *(a1 + 32))
          {
            v100 = *(a1 + 32);
          }

          v101 = *v100;
          v102 = v100[1];
          v103 = v100[2] | (v100[2] << 8);
          v104 = v103 << 32;
          v105 = (v101 << 8) | v101;
          v106 = v105 | (v102 << 16) | (v102 << 24);
          v107 = (((v102 | (v102 << 8)) - (((v102 | (v102 << 8)) * v81 + 0x8000 + (((v102 | (v102 << 8)) * v81 + 0x8000) >> 16)) >> 16)) << 16) | ((v103 - ((v103 * v81 + 0x8000 + ((v103 * v81 + 0x8000) >> 16)) >> 16)) << 32);
          LODWORD(v108) = (v105 - ((v105 * v81 + 0x8000 + ((v105 * v81 + 0x8000) >> 16)) >> 16));
          if (v6 == 0xFFFF)
          {
            v108 = v106;
          }

          else
          {
            v108 = v108;
          }

          if (v6 == 0xFFFF)
          {
            v107 = v104;
            v109 = 0xFFFF000000000000;
          }

          else
          {
            v109 = (~(0xFFFF * v81 + 0x8000 + ((0xFFFF * v81 + 0x8000) >> 16)) >> 16) << 48;
          }

          if (HIWORD(v109))
          {
            v110 = v107 | v108 | v109;
            if (HIWORD(v109) == 0xFFFF)
            {
              *v7 = v110;
            }

            else
            {
              rgba64_DplusDM(v7, v110, *v7, HIWORD(v110) ^ 0xFFFF);
            }
          }

          ++v7;
          --v98;
        }

        while (v98);
      }
    }

    v9 = v120;
    v7 += v121;
    LOBYTE(v10) = v119;
    v11 = v125 + v118;
    a6 = v127 - 1;
    a5 = v123;
  }

  while (v127 != 1);
}

void rgba64_image_mark_W8(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v105 = *a2;
  v7 = *(a2 + 2);
  v104 = *(a2 + 3) - a5;
  v9 = *(a2 + 15);
  v8 = *(a2 + 16);
  v10 = *(a2 + 7);
  v101 = *(a2 + 9);
  v11 = *(a2 + 5) + v101 * a4;
  v12 = *(a1 + 32);
  v13 = &v12[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  v102 = v10;
  v103 = v9;
  if (*(a1 + 176))
  {
    v14 = a3;
    v99 = *(a2 + 11);
    v98 = *(a2 + 13);
    v97 = ~(-1 << v10);
    v96 = v10 - 4;
    v95 = -v9;
    v15 = v13 - 4;
    v16 = v6 ^ 0xFFFF;
    v17 = (255 - ((255 * v16 + 0x8000 + ((255 * v16 + 0x8000) >> 16)) >> 16)) << 48;
    v93 = v8 + 16 * v14 + 8;
    v94 = a5;
    v112 = *(a2 + 4);
    while (1)
    {
      v109 = a6;
      if (((v98 - v11) | (v11 - v99)) < 0)
      {
        v20 = 0;
        v19 = 0;
      }

      else
      {
        v18 = ((v11 & v97) >> v96) & 0xF;
        v19 = (v18 - 7) >= 9 ? v95 : v9;
        v20 = weights_21890[v18] & 0xF;
      }

      v107 = v11;
      v21 = *(a1 + 32) + (v11 >> v10) * v9;
      if (v105 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v22 = v93;
        v23 = v94;
        while (1)
        {
          v24 = *(v22 - 1);
          v25 = *v22;
          v26 = v21 + v24;
          if (v15 >= v21 + v24)
          {
            v27 = (v21 + v24);
          }

          else
          {
            v27 = v15;
          }

          if (v27 < v12)
          {
            v27 = v12;
          }

          v28 = *v27;
          v29 = v25 & 0xF;
          if ((v25 & 0xF) != 0)
          {
            break;
          }

          if (v20)
          {
            v39 = (v26 + v19);
            if (v15 < v26 + v19)
            {
              v39 = v15;
            }

            if (v39 < v12)
            {
              v39 = v12;
            }

            v40 = BLEND8_21892[v20];
            v28 -= (v40 & v28) >> v20;
            v38 = (v40 & *v39) >> v20;
            goto LABEL_40;
          }

LABEL_41:
          v22 += 2;
          v28 = v28;
          v41 = (0x100010001 * (v28 | (v28 << 8))) | 0xFFFF000000000000;
          v42 = (v28 - ((v28 * v16 + 0x8000 + ((v28 * v16 + 0x8000) >> 16)) >> 16));
          v43 = (v42 << 16) | (v42 << 32) | v17 | v42;
          if (v6 == 0xFFFF)
          {
            v43 = v41;
          }

          *v7++ = v43;
          if (!--v23)
          {
            goto LABEL_84;
          }
        }

        v30 = (v26 + (v25 >> 4));
        if (v15 < v30)
        {
          v30 = v15;
        }

        if (v30 < v12)
        {
          v30 = v12;
        }

        v31 = *v30;
        if (v20)
        {
          v32 = (v26 + v19);
          if (v15 >= v32)
          {
            v33 = v32;
          }

          else
          {
            v33 = v15;
          }

          if (v33 < v12)
          {
            v33 = v12;
          }

          v34 = *v33;
          v35 = &v32[v25 >> 4];
          if (v15 < v35)
          {
            v35 = v15;
          }

          if (v35 < v12)
          {
            v35 = v12;
          }

          v36 = BLEND8_21892[v20];
          v28 = v28 - ((v36 & v28) >> v20) + ((v36 & v34) >> v20);
          v31 = v31 - ((v36 & v31) >> v20) + ((v36 & *v35) >> v20);
        }

        v37 = BLEND8_21892[*v22 & 0xF];
        v28 -= (v37 & v28) >> v29;
        v38 = (v37 & v31) >> v29;
LABEL_40:
        LOBYTE(v28) = v28 + v38;
        goto LABEL_41;
      }

LABEL_84:
      v9 = v103;
      v7 += v104;
      LOBYTE(v10) = v102;
      v11 = v107 + v101;
      a6 = v109 - 1;
      if (v109 == 1)
      {
        return;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_84;
    }

    v44 = v93;
    v45 = v94;
    while (1)
    {
      v46 = *(v44 - 1);
      v47 = *v44;
      v48 = v21 + v46;
      if (v15 >= v21 + v46)
      {
        v49 = (v21 + v46);
      }

      else
      {
        v49 = v15;
      }

      if (v49 < v12)
      {
        v49 = v12;
      }

      v50 = *v49;
      v51 = v47 & 0xF;
      if ((v47 & 0xF) != 0)
      {
        break;
      }

      if (v20)
      {
        v61 = (v48 + v19);
        if (v15 < v48 + v19)
        {
          v61 = v15;
        }

        if (v61 < v12)
        {
          v61 = v12;
        }

        v62 = BLEND8_21892[v20];
        v50 -= (v62 & v50) >> v20;
        v60 = (v62 & *v61) >> v20;
        goto LABEL_75;
      }

LABEL_76:
      v50 = v50;
      v63 = (0x100010001 * (v50 | (v50 << 8))) | 0xFFFF000000000000;
      v64 = (v50 - ((v50 * v16 + 0x8000 + ((v50 * v16 + 0x8000) >> 16)) >> 16));
      v65 = (v64 << 16) | (v64 << 32) | v17 | v64;
      if (v6 == 0xFFFF)
      {
        v66 = v63;
      }

      else
      {
        v66 = v65;
      }

      v67 = HIWORD(v66);
      if (HIWORD(v66))
      {
        if (v67 == 0xFFFF)
        {
          *v7 = v66;
        }

        else
        {
          v68 = v19;
          v69 = v21;
          rgba64_DplusDM(v7, v66, *v7, v67 ^ 0xFFFF);
          v21 = v69;
          v19 = v68;
          v17 = (255 - ((255 * v16 + 0x8000 + ((255 * v16 + 0x8000) >> 16)) >> 16)) << 48;
          v6 = v112;
        }
      }

      v44 += 2;
      ++v7;
      if (!--v45)
      {
        goto LABEL_84;
      }
    }

    v52 = (v48 + (v47 >> 4));
    if (v15 < v52)
    {
      v52 = v15;
    }

    if (v52 < v12)
    {
      v52 = v12;
    }

    v53 = *v52;
    if (v20)
    {
      v54 = (v48 + v19);
      if (v15 >= v54)
      {
        v55 = v54;
      }

      else
      {
        v55 = v15;
      }

      if (v55 < v12)
      {
        v55 = v12;
      }

      v56 = *v55;
      v57 = &v54[v47 >> 4];
      if (v15 < v57)
      {
        v57 = v15;
      }

      if (v57 < v12)
      {
        v57 = v12;
      }

      v58 = BLEND8_21892[v20];
      v50 = v50 - ((v58 & v50) >> v20) + ((v58 & v56) >> v20);
      v53 = v53 - ((v58 & v53) >> v20) + ((v58 & *v57) >> v20);
    }

    v59 = BLEND8_21892[*v44 & 0xF];
    v50 -= (v59 & v50) >> v51;
    v60 = (v59 & v53) >> v51;
LABEL_75:
    LOBYTE(v50) = v50 + v60;
    goto LABEL_76;
  }

  v111 = (v8 + 16 * a3);
  v70 = v13 - 4;
  v71 = v6 ^ 0xFFFF;
  v72 = (255 - ((255 * v71 + 0x8000 + ((255 * v71 + 0x8000) >> 16)) >> 16)) << 48;
  v100 = a5;
  do
  {
    v73 = *(a1 + 32);
    v74 = &v73[(v11 >> v10) * v9];
    v110 = a6;
    v108 = v11;
    if (v105 == 1)
    {
      if (a5 >= 1)
      {
        v75 = v111;
        v76 = v100;
        do
        {
          v77 = *v75;
          v75 += 2;
          v78 = &v74[v77];
          if (v70 < &v74[v77])
          {
            v78 = v70;
          }

          if (v78 < v73)
          {
            v78 = v73;
          }

          v79 = *v78;
          v80 = (0x100010001 * (v79 | (v79 << 8))) | 0xFFFF000000000000;
          v81 = (v79 - ((v79 * v71 + 0x8000 + ((v79 * v71 + 0x8000) >> 16)) >> 16));
          v82 = (v81 << 16) | (v81 << 32) | v72 | v81;
          if (v6 == 0xFFFF)
          {
            v82 = v80;
          }

          *v7++ = v82;
          --v76;
        }

        while (v76);
      }
    }

    else
    {
      v83 = v111;
      v84 = v100;
      if (a5 >= 1)
      {
        do
        {
          v85 = *v83;
          v83 += 2;
          v86 = &v74[v85];
          if (v70 < &v74[v85])
          {
            v86 = v70;
          }

          if (v86 < *(a1 + 32))
          {
            v86 = *(a1 + 32);
          }

          v87 = *v86;
          v88 = (0x100010001 * (v87 | (v87 << 8))) | 0xFFFF000000000000;
          v89 = (v87 - ((v87 * v71 + 0x8000 + ((v87 * v71 + 0x8000) >> 16)) >> 16));
          v90 = (v89 << 16) | (v89 << 32) | v72 | v89;
          if (v6 == 0xFFFF)
          {
            v91 = v88;
          }

          else
          {
            v91 = v90;
          }

          v92 = HIWORD(v91);
          if (HIWORD(v91))
          {
            if (v92 == 0xFFFF)
            {
              *v7 = v91;
            }

            else
            {
              rgba64_DplusDM(v7, v91, *v7, v92 ^ 0xFFFF);
            }
          }

          ++v7;
          --v84;
        }

        while (v84);
      }
    }

    v9 = v103;
    v7 += v104;
    LOBYTE(v10) = v102;
    v11 = v108 + v101;
    a6 = v110 - 1;
  }

  while (v110 != 1);
}

uint16x4_t rgba64_DplusDAM(uint16x4_t *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  result = vqadd_u16(a2, ((((WORD2(a3) * a5 + 0x8000 + ((WORD2(a3) * a5 + 0x8000) >> 16)) >> 16) << 32) | (((a5 * a4 + 0x8000 + ((a5 * a4 + 0x8000) >> 16)) >> 16) << 48) | (WORD1(a3) * a5 + 0x8000 + ((WORD1(a3) * a5 + 0x8000) >> 16)) & 0xFFFF0000 | ((a3 * a5 + 0x8000 + ((a3 * a5 + 0x8000) >> 16)) >> 16)));
  *a1 = result;
  return result;
}

_DWORD *rgba64_DpluslDA(_DWORD *result, unint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = a3 + a2;
  v5 = WORD1(a3) + WORD1(a2);
  v6 = WORD2(a3) + WORD2(a2);
  v7 = HIWORD(a2) + a4;
  if (v4 >= 0xFFFF)
  {
    LODWORD(v4) = 0xFFFF;
  }

  if (v5 >= 0xFFFF)
  {
    LODWORD(v5) = 0xFFFF;
  }

  if (v6 >= 0xFFFF)
  {
    LODWORD(v6) = 0xFFFF;
  }

  if (v7 >= 0xFFFF)
  {
    LODWORD(v7) = 0xFFFF;
  }

  *result = v4 | (v5 << 16);
  result[1] = v6 | (v7 << 16);
  return result;
}

void rgba64_mark_constmask(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 28);
  v6 = *(a1 + 48);
  v170 = *(a1 + 40);
  v173 = *(a1 + 4);
  v7 = *(a1 + 136);
  v8 = **(a1 + 88);
  pthread_mutex_lock(&rgba64_cacheColorLock);
  v9 = rgba64_cacheColor;
  if (!rgba64_cacheColor || *(rgba64_cacheColor + 16) != v8)
  {
    v11 = 0;
    while (1)
    {
      if (!v9)
      {
        goto LABEL_9;
      }

      v12 = v9;
      v13 = v11;
      if (v9[2] == v8)
      {
        break;
      }

      v9 = *v9;
      v11 = v12;
      if (!*v12)
      {
        if (rgba64_cacheColorCount > 6)
        {
          *v13 = 0;
          v16 = *(v12 + 1);
        }

        else
        {
LABEL_9:
          v14 = rgba64_cacheColorBase;
          if (rgba64_cacheColorBase)
          {
            v15 = rgba64_cacheColorCount;
          }

          else
          {
            v14 = malloc_type_calloc(1uLL, 0x38A8uLL, 0x10200402493A768uLL);
            v15 = 0;
            rgba64_cacheColorBase = v14;
          }

          v12 = &v14[24 * v15];
          v16 = &v14[2048 * v15 + 168];
          *(v12 + 1) = v16;
          rgba64_cacheColorCount = v15 + 1;
        }

        v17 = 0;
        *v12 = rgba64_cacheColor;
        rgba64_cacheColor = v12;
        *(v12 + 2) = v8;
        v18 = vdup_n_s32(v8);
        v19 = vdup_n_s32(WORD1(v8));
        v20 = vdup_n_s32(WORD2(v8));
        v21 = vdup_n_s32(HIWORD(v8));
        v22 = vdup_n_s32(v8);
        v23 = 0x100000000;
        v24 = vdup_n_s32(HIDWORD(v8));
        v25 = vdup_n_s32(0x101u);
        do
        {
          v26 = veor_s8(vmul_s32(v23, v25), 0xFFFF0000FFFFLL);
          v27 = vmla_s32(0x800000008000, v26, v18);
          v28 = vmla_s32(0x800000008000, v26, v19);
          v29 = vmla_s32(0x800000008000, v26, v20);
          v30 = vmla_s32(0x800000008000, v26, v21);
          v31 = vshr_n_u32(vsra_n_u32(v27, v27, 0x10uLL), 0x10uLL);
          v32 = vshr_n_u32(vsra_n_u32(v28, v28, 0x10uLL), 0x10uLL);
          v33 = vshr_n_u32(vsra_n_u32(v29, v29, 0x10uLL), 0x10uLL);
          v34 = vsub_s32(v21, vshr_n_u32(vsra_n_u32(v30, v30, 0x10uLL), 0x10uLL));
          v35.i64[0] = v34.u32[0];
          v35.i64[1] = v34.u32[1];
          v36 = vorrq_s8(vshlq_n_s64(v35, 0x30uLL), vshll_n_s32(vand_s8(vsub_s32(v24, v33), 0xFFFF0000FFFFLL), 0x20uLL));
          v37 = vshl_n_s32(vsub_s32(v19, v32), 0x10uLL);
          v35.i64[0] = v37.u32[0];
          v35.i64[1] = v37.u32[1];
          v38 = v35;
          v39 = vand_s8(vsub_s32(v22, v31), 0xFFFF0000FFFFLL);
          v35.i64[0] = v39.u32[0];
          v35.i64[1] = v39.u32[1];
          *(v16 + v17) = vorrq_s8(v36, vorrq_s8(v38, v35));
          v23 = vadd_s32(v23, 0x200000002);
          v17 += 16;
        }

        while (v17 != 2048);
        v10 = v12 + 8;
        pthread_mutex_unlock(&rgba64_cacheColorLock);
        goto LABEL_20;
      }
    }

    if (v11)
    {
      *v11 = *v9;
      *v9 = rgba64_cacheColor;
      rgba64_cacheColor = v9;
    }
  }

  pthread_mutex_unlock(&rgba64_cacheColorLock);
  v10 = v9 + 1;
LABEL_20:
  if (!v7)
  {
    return;
  }

  v40 = a2;
  v41 = *v10;
  v42 = *(*v10 + 2040);
  v43 = HIWORD(v42);
  v44 = v5 >> 3;
  v45 = (v170 + 8 * (v5 >> 3) * *(a1 + 16) + 8 * *(a1 + 12));
  v46 = *(a1 + 124);
  v47 = v7 + *(a1 + 108) * v46 + *(a1 + 104);
  v48 = v46 - v173;
  v49 = v44 - v173;
  switch(v40)
  {
    case 0:
      do
      {
        v50 = v173;
        do
        {
          v51 = *v47;
          if (*v47)
          {
            if (v51 == 255)
            {
              *v45 = 0;
            }

            else
            {
              rgba64_DM(v45, *v45, v51 ^ 0xFF | ((v51 ^ 0xFF) << 8));
            }
          }

          ++v47;
          ++v45;
          --v50;
        }

        while (v50);
        v47 += v48;
        v45 += v49;
        --v4;
      }

      while (v4);
      return;
    case 1:
      v137 = 0xFFFFFFFFLL;
      v138 = v47 & 3;
      if ((v47 & 3) != 0)
      {
        v139 = v138 + v173;
        v137 = (-1 << (8 * v138));
        v140 = v47 & 3;
        v47 &= 0xFFFFFFFFFFFFFFFCLL;
        v45 -= v140;
      }

      else
      {
        v139 = v173;
      }

      if (((v139 + v47) & 3) != 0)
      {
        v158 = 4 - ((v139 + v47) & 3);
        v138 += v158;
        v159 = 0xFFFFFFFF >> (8 * v158);
        if (v139 >= 4)
        {
          v160 = v159;
        }

        else
        {
          v160 = 0;
        }

        if (v139 >= 4)
        {
          v159 = -1;
        }

        v137 = v159 & v137;
      }

      else
      {
        v160 = 0;
      }

      v175 = v48 - v138;
      v172 = v139 >> 2;
      v169 = v49 - v138;
      do
      {
        v161 = v137;
        v162 = *v47 & v137;
        v163 = v172;
        v164 = v160;
        if (!v162)
        {
          goto LABEL_331;
        }

LABEL_329:
        if (v162 == -1)
        {
          *v45 = v42;
          v45[1] = v42;
          v45[2] = v42;
          v45[3] = v42;
          goto LABEL_331;
        }

        while (1)
        {
          if (v162)
          {
            if (v162 == 255)
            {
              *v45 = v42;
            }

            else
            {
              rgba64_DplusDM(v45, *(v41 + 8 * v162), *v45, (v162 | (v162 << 8)) ^ 0xFFFF);
            }
          }

          if (BYTE1(v162))
          {
            if (BYTE1(v162) == 255)
            {
              v45[1] = v42;
            }

            else
            {
              rgba64_DplusDM(v45 + 1, *(v41 + 8 * BYTE1(v162)), *&v45[1], (BYTE1(v162) | (BYTE1(v162) << 8)) ^ 0xFFFF);
            }
          }

          if (BYTE2(v162))
          {
            if (BYTE2(v162) == 255)
            {
              v45[2] = v42;
            }

            else
            {
              rgba64_DplusDM(v45 + 2, *(v41 + 8 * BYTE2(v162)), *&v45[2], (BYTE2(v162) | (BYTE2(v162) << 8)) ^ 0xFFFF);
            }
          }

          v166 = HIBYTE(v162);
          if (HIBYTE(v162) == 255)
          {
            v45[3] = v42;
          }

          else if (v166)
          {
            rgba64_DplusDM(v45 + 3, *(v41 + 8 * v166), *&v45[3], (v166 | (v166 << 8)) ^ 0xFFFF);
          }

LABEL_331:
          while (1)
          {
            v165 = v163;
            v45 += 4;
            --v163;
            v47 += 4;
            if (v165 < 2)
            {
              break;
            }

            v162 = *v47;
            if (*v47)
            {
              goto LABEL_329;
            }
          }

          if (!v164)
          {
            break;
          }

          v164 = 0;
          v162 = *v47 & v160;
        }

        v47 += v175;
        v45 += v169;
        --v4;
        v137 = v161;
      }

      while (v4);
      return;
    case 2:
      v125 = -1;
      v126 = v47 & 3;
      if ((v47 & 3) != 0)
      {
        v127 = v126 + v173;
        v125 = -1 << (8 * v126);
        v128 = v47 & 3;
        v47 &= 0xFFFFFFFFFFFFFFFCLL;
        v45 -= v128;
      }

      else
      {
        v127 = v173;
      }

      if (((v127 + v47) & 3) != 0)
      {
        v147 = 4 - ((v127 + v47) & 3);
        v126 += v147;
        v148 = 0xFFFFFFFF >> (8 * v147);
        if (v127 >= 4)
        {
          v149 = v148;
        }

        else
        {
          v149 = 0;
        }

        if (v127 >= 4)
        {
          v148 = -1;
        }

        v125 &= v148;
      }

      else
      {
        v149 = 0;
      }

      v171 = v48 - v126;
      v168 = v127 >> 2;
      v167 = v49 - v126;
      v174 = v125;
      do
      {
        v150 = *v47 & v125;
        v151 = v168;
        v152 = v149;
        if (!v150)
        {
          goto LABEL_302;
        }

LABEL_300:
        if (v150 == -1)
        {
          rgba64_DplusDM(v45, v42, *v45, ~HIWORD(v42));
          rgba64_DplusDM(v45 + 1, v42, *&v45[1], ~HIWORD(v42));
          rgba64_DplusDM(v45 + 2, v42, *&v45[2], ~HIWORD(v42));
          v153 = v45 + 3;
          v154 = v45[3];
          v155 = ~HIWORD(v42);
          v156 = v42;
LABEL_315:
          rgba64_DplusDM(v153, v156, v154, v155);
          goto LABEL_302;
        }

        while (1)
        {
          if (v150)
          {
            rgba64_DplusDM(v45, *(v41 + 8 * v150), *v45, HIWORD(*(v41 + 8 * v150)) ^ 0xFFFF);
          }

          if ((v150 & 0xFF00) != 0)
          {
            rgba64_DplusDM(v45 + 1, *(v41 + 8 * BYTE1(v150)), *&v45[1], HIWORD(*(v41 + 8 * BYTE1(v150))) ^ 0xFFFF);
          }

          if ((v150 & 0xFF0000) != 0)
          {
            rgba64_DplusDM(v45 + 2, *(v41 + 8 * BYTE2(v150)), *&v45[2], HIWORD(*(v41 + 8 * BYTE2(v150))) ^ 0xFFFF);
          }

          if (HIBYTE(v150))
          {
            v156 = *(v41 + 8 * HIBYTE(v150));
            v153 = v45 + 3;
            v154 = v45[3];
            v155 = HIWORD(v156) ^ 0xFFFF;
            goto LABEL_315;
          }

LABEL_302:
          while (1)
          {
            v157 = v151;
            v45 += 4;
            --v151;
            v47 += 4;
            if (v157 < 2)
            {
              break;
            }

            v150 = *v47;
            if (*v47)
            {
              goto LABEL_300;
            }
          }

          if (!v152)
          {
            break;
          }

          v152 = 0;
          v150 = *v47 & v149;
        }

        v47 += v171;
        v45 += v167;
        --v4;
        v125 = v174;
      }

      while (v4);
      return;
    case 3:
      do
      {
        v129 = v173;
        do
        {
          v130 = *v47;
          if (*v47)
          {
            if (v130 == 255)
            {
              *v45 = *(v41 + 8 * v45->u8[7]);
            }

            else
            {
              v131 = v130 | (v130 << 8);
              v132 = HIWORD(*v45) * v131 + 0x8000;
              rgba64_DplusDM(v45, *(v41 + 8 * ((v132 + HIWORD(v132)) >> 24)), *v45, v131 ^ 0xFFFF);
            }
          }

          ++v47;
          ++v45;
          --v129;
        }

        while (v129);
        v47 += v48;
        v45 += v49;
        --v4;
      }

      while (v4);
      return;
    case 4:
      do
      {
        v121 = v173;
        do
        {
          v122 = *v47;
          if (*v47)
          {
            if (v122 == 255)
            {
              *v45 = *(v41 + ((~*v45 >> 53) & 0x7F8));
            }

            else
            {
              v123 = v122 | (v122 << 8);
              v124 = (HIWORD(*v45) ^ 0xFFFF) * v123 + 0x8000;
              rgba64_DplusDM(v45, *(v41 + 8 * ((v124 + HIWORD(v124)) >> 24)), *v45, v123 ^ 0xFFFF);
            }
          }

          ++v47;
          ++v45;
          --v121;
        }

        while (v121);
        v47 += v48;
        v45 += v49;
        --v4;
      }

      while (v4);
      return;
    case 5:
      do
      {
        v89 = v173;
        do
        {
          if (*v47)
          {
            v90 = *(v41 + 8 * *v47);
            rgba64_DMplusDM(v45, v90, HIWORD(*v45), *v45, HIWORD(v90) ^ 0xFFFF);
          }

          ++v47;
          ++v45;
          --v89;
        }

        while (v89);
        v47 += v48;
        v45 += v49;
        --v4;
      }

      while (v4);
      return;
    case 6:
      do
      {
        v141 = v173;
        do
        {
          v142 = *v47;
          if (*v47)
          {
            v143 = HIWORD(*v45);
            if (v143 != 0xFFFF)
            {
              if (~v143 == 0xFFFF)
              {
                *v45 = *(v41 + 8 * v142);
              }

              else
              {
                rgba64_DplusDM(v45, *v45, *(v41 + 8 * v142), ~v143);
              }
            }
          }

          ++v47;
          ++v45;
          --v141;
        }

        while (v141);
        v47 += v48;
        v45 += v49;
        --v4;
      }

      while (v4);
      return;
    case 7:
      do
      {
        v133 = v173;
        do
        {
          v134 = *v47;
          if (*v47)
          {
            if (v134 == 255)
            {
              v135 = v45;
              v136 = HIWORD(v42);
            }

            else
            {
              v136 = (~(v134 | (v134 << 8)) + (((v134 | (v134 << 8)) * v43 + 0x8000 + (((v134 | (v134 << 8)) * v43 + 0x8000) >> 16)) >> 16));
              v135 = v45;
            }

            rgba64_DM(v135, *v45, v136);
          }

          ++v47;
          ++v45;
          --v133;
        }

        while (v133);
        v47 += v48;
        v45 += v49;
        --v4;
      }

      while (v4);
      return;
    case 8:
      do
      {
        v144 = v173;
        do
        {
          v145 = *v47;
          if (*v47)
          {
            if (v145 == 255)
            {
              v146 = ~HIWORD(v42);
            }

            else
            {
              v146 = ~(257 * v43 * v145 + 0x8000 + ((257 * v43 * v145 + 0x8000) >> 16)) >> 16;
            }

            rgba64_DM(v45, *v45, v146);
          }

          ++v47;
          ++v45;
          --v144;
        }

        while (v144);
        v47 += v48;
        v45 += v49;
        --v4;
      }

      while (v4);
      return;
    case 9:
      do
      {
        v68 = v173;
        do
        {
          if (*v47)
          {
            rgba64_DMplusDM(v45, *(v41 + 8 * *v47), HIWORD(*v45) ^ 0xFFFF, *v45, (HIWORD(*(v41 + 8 * *v47)) + ~(*v47 | (*v47 << 8))));
          }

          ++v47;
          ++v45;
          --v68;
        }

        while (v68);
        v47 += v48;
        v45 += v49;
        --v4;
      }

      while (v4);
      return;
    case 10:
      do
      {
        v103 = v173;
        do
        {
          if (*v47)
          {
            v104 = *(v41 + 8 * *v47);
            rgba64_DMplusDM(v45, v104, HIWORD(*v45) ^ 0xFFFF, *v45, HIWORD(v104) ^ 0xFFFF);
          }

          ++v47;
          ++v45;
          --v103;
        }

        while (v103);
        v47 += v48;
        v45 += v49;
        --v4;
      }

      while (v4);
      return;
    case 11:
      do
      {
        v64 = v173;
        do
        {
          if (*v47)
          {
            v66 = HIWORD(*v45);
            if (!v6)
            {
              LOWORD(v66) = -1;
            }

            v65 = *(v41 + 8 * *v47);
            rgba64_DAplusdDA(v45, *v45, v66, v65, HIWORD(v65));
          }

          ++v47;
          ++v45;
          --v64;
        }

        while (v64);
        v47 += v48;
        v45 += v49;
        --v4;
      }

      while (v4);
      return;
    case 12:
      do
      {
        v67 = v173;
        do
        {
          if (*v47)
          {
            rgba64_DpluslD(v45, *v45, *(v41 + 8 * *v47));
          }

          ++v47;
          ++v45;
          --v67;
        }

        while (v67);
        v47 += v48;
        v45 += v49;
        --v4;
      }

      while (v4);
      return;
    case 13:
      while (1)
      {
        v95 = v173;
        do
        {
          if (*v47)
          {
            v96 = *(v41 + 8 * *v47);
            if (HIWORD(v96))
            {
              v97 = *v45;
              if (v6)
              {
                v98 = HIWORD(v97);
                if (!HIWORD(v97))
                {
                  goto LABEL_172;
                }
              }

              else
              {
                LODWORD(v98) = 0xFFFF;
              }

              v96 = PDAmultiplyPDA_15236(v97, v98, v96, HIWORD(v96));
LABEL_172:
              *v45 = v96;
            }
          }

          ++v47;
          ++v45;
          --v95;
        }

        while (v95);
        v47 += v48;
        v45 += v49;
        if (!--v4)
        {
          return;
        }
      }

    case 14:
      while (1)
      {
        v60 = v173;
        do
        {
          if (*v47)
          {
            v61 = *(v41 + 8 * *v47);
            if (HIWORD(v61))
            {
              v62 = *v45;
              if (v6)
              {
                v63 = HIWORD(v62);
                if (!HIWORD(v62))
                {
                  goto LABEL_62;
                }
              }

              else
              {
                LODWORD(v63) = 0xFFFF;
              }

              v61 = PDAscreenPDA_15237(v62, v63, v61, HIWORD(v61));
LABEL_62:
              *v45 = v61;
            }
          }

          ++v47;
          ++v45;
          --v60;
        }

        while (v60);
        v47 += v48;
        v45 += v49;
        if (!--v4)
        {
          return;
        }
      }

    case 15:
      while (1)
      {
        v77 = v173;
        do
        {
          if (*v47)
          {
            v78 = *(v41 + 8 * *v47);
            if (HIWORD(v78))
            {
              v79 = *v45;
              if (v6)
              {
                v80 = HIWORD(v79);
                if (!HIWORD(v79))
                {
                  goto LABEL_118;
                }
              }

              else
              {
                LODWORD(v80) = 0xFFFF;
              }

              v78 = PDAoverlayPDA_15238(v79, v80, v78, HIWORD(v78));
LABEL_118:
              *v45 = v78;
            }
          }

          ++v47;
          ++v45;
          --v77;
        }

        while (v77);
        v47 += v48;
        v45 += v49;
        if (!--v4)
        {
          return;
        }
      }

    case 16:
      while (1)
      {
        v56 = v173;
        do
        {
          if (*v47)
          {
            v57 = *(v41 + 8 * *v47);
            if (HIWORD(v57))
            {
              v58 = *v45;
              if (v6)
              {
                v59 = HIWORD(v58);
                if (!HIWORD(v58))
                {
                  goto LABEL_50;
                }
              }

              else
              {
                LODWORD(v59) = 0xFFFF;
              }

              v57 = PDAdarkenPDA_15240(v58, v59, v57, HIWORD(v57));
LABEL_50:
              *v45 = v57;
            }
          }

          ++v47;
          ++v45;
          --v56;
        }

        while (v56);
        v47 += v48;
        v45 += v49;
        if (!--v4)
        {
          return;
        }
      }

    case 17:
      while (1)
      {
        v81 = v173;
        do
        {
          if (*v47)
          {
            v82 = *(v41 + 8 * *v47);
            if (HIWORD(v82))
            {
              v83 = *v45;
              if (v6)
              {
                v84 = HIWORD(v83);
                if (!HIWORD(v83))
                {
                  goto LABEL_130;
                }
              }

              else
              {
                LODWORD(v84) = 0xFFFF;
              }

              v82 = PDAlightenPDA_15239(v83, v84, v82, HIWORD(v82));
LABEL_130:
              *v45 = v82;
            }
          }

          ++v47;
          ++v45;
          --v81;
        }

        while (v81);
        v47 += v48;
        v45 += v49;
        if (!--v4)
        {
          return;
        }
      }

    case 18:
      while (1)
      {
        v99 = v173;
        do
        {
          if (*v47)
          {
            v100 = *(v41 + 8 * *v47);
            if (HIWORD(v100))
            {
              v101 = *v45;
              if (v6)
              {
                v102 = HIWORD(v101);
                if (!HIWORD(v101))
                {
                  goto LABEL_184;
                }
              }

              else
              {
                LODWORD(v102) = 0xFFFF;
              }

              v100 = PDAcolordodgePDA_15241(v101, v102, v100, HIWORD(v100));
LABEL_184:
              *v45 = v100;
            }
          }

          ++v47;
          ++v45;
          --v99;
        }

        while (v99);
        v47 += v48;
        v45 += v49;
        if (!--v4)
        {
          return;
        }
      }

    case 19:
      while (1)
      {
        v109 = v173;
        do
        {
          if (*v47)
          {
            v110 = *(v41 + 8 * *v47);
            if (HIWORD(v110))
            {
              v111 = *v45;
              if (v6)
              {
                v112 = HIWORD(v111);
                if (!HIWORD(v111))
                {
                  goto LABEL_214;
                }
              }

              else
              {
                LODWORD(v112) = 0xFFFF;
              }

              v110 = PDAcolorburnPDA_15242(v111, v112, v110, HIWORD(v110));
LABEL_214:
              *v45 = v110;
            }
          }

          ++v47;
          ++v45;
          --v109;
        }

        while (v109);
        v47 += v48;
        v45 += v49;
        if (!--v4)
        {
          return;
        }
      }

    case 20:
      while (1)
      {
        v85 = v173;
        do
        {
          if (*v47)
          {
            v86 = *(v41 + 8 * *v47);
            if (HIWORD(v86))
            {
              v87 = *v45;
              if (v6)
              {
                v88 = HIWORD(v87);
                if (!HIWORD(v87))
                {
                  goto LABEL_142;
                }
              }

              else
              {
                LODWORD(v88) = 0xFFFF;
              }

              v86 = PDAsoftlightPDA_15244(v87, v88, v86, HIWORD(v86));
LABEL_142:
              *v45 = v86;
            }
          }

          ++v47;
          ++v45;
          --v85;
        }

        while (v85);
        v47 += v48;
        v45 += v49;
        if (!--v4)
        {
          return;
        }
      }

    case 21:
      while (1)
      {
        v91 = v173;
        do
        {
          if (*v47)
          {
            v92 = *(v41 + 8 * *v47);
            if (HIWORD(v92))
            {
              v93 = *v45;
              if (v6)
              {
                v94 = HIWORD(v93);
                if (!HIWORD(v93))
                {
                  goto LABEL_160;
                }
              }

              else
              {
                LODWORD(v94) = 0xFFFF;
              }

              v92 = PDAhardlightPDA_15243(v93, v94, v92, HIWORD(v92));
LABEL_160:
              *v45 = v92;
            }
          }

          ++v47;
          ++v45;
          --v91;
        }

        while (v91);
        v47 += v48;
        v45 += v49;
        if (!--v4)
        {
          return;
        }
      }

    case 22:
      while (1)
      {
        v105 = v173;
        do
        {
          if (*v47)
          {
            v106 = *(v41 + 8 * *v47);
            if (HIWORD(v106))
            {
              v107 = *v45;
              if (v6)
              {
                v108 = HIWORD(v107);
                if (!HIWORD(v107))
                {
                  goto LABEL_202;
                }
              }

              else
              {
                LODWORD(v108) = 0xFFFF;
              }

              v106 = PDAdifferencePDA_15245(v107, v108, v106, HIWORD(v106));
LABEL_202:
              *v45 = v106;
            }
          }

          ++v47;
          ++v45;
          --v105;
        }

        while (v105);
        v47 += v48;
        v45 += v49;
        if (!--v4)
        {
          return;
        }
      }

    case 23:
      while (1)
      {
        v113 = v173;
        do
        {
          if (*v47)
          {
            v114 = *(v41 + 8 * *v47);
            if (HIWORD(v114))
            {
              v115 = *v45;
              if (v6)
              {
                v116 = HIWORD(v115);
                if (!HIWORD(v115))
                {
                  goto LABEL_226;
                }
              }

              else
              {
                LODWORD(v116) = 0xFFFF;
              }

              v114 = PDAexclusionPDA_15246(v115, v116, v114, HIWORD(v114));
LABEL_226:
              *v45 = v114;
            }
          }

          ++v47;
          ++v45;
          --v113;
        }

        while (v113);
        v47 += v48;
        v45 += v49;
        if (!--v4)
        {
          return;
        }
      }

    case 24:
      while (1)
      {
        v73 = v173;
        do
        {
          if (*v47)
          {
            v74 = *(v41 + 8 * *v47);
            if (HIWORD(v74))
            {
              v75 = *v45;
              if (v6)
              {
                v76 = HIWORD(v75);
                if (!HIWORD(v75))
                {
                  goto LABEL_106;
                }
              }

              else
              {
                LODWORD(v76) = 0xFFFF;
              }

              v74 = PDAhuePDA_15247(v75, v76, v74, HIWORD(v74));
LABEL_106:
              *v45 = v74;
            }
          }

          ++v47;
          ++v45;
          --v73;
        }

        while (v73);
        v47 += v48;
        v45 += v49;
        if (!--v4)
        {
          return;
        }
      }

    case 25:
      while (1)
      {
        v69 = v173;
        do
        {
          if (*v47)
          {
            v70 = *(v41 + 8 * *v47);
            if (HIWORD(v70))
            {
              v71 = *v45;
              if (v6)
              {
                v72 = HIWORD(v71);
                if (!HIWORD(v71))
                {
                  goto LABEL_94;
                }
              }

              else
              {
                LODWORD(v72) = 0xFFFF;
              }

              v70 = PDAsaturationPDA_15248(v71, v72, v70, HIWORD(v70));
LABEL_94:
              *v45 = v70;
            }
          }

          ++v47;
          ++v45;
          --v69;
        }

        while (v69);
        v47 += v48;
        v45 += v49;
        if (!--v4)
        {
          return;
        }
      }

    case 26:
      while (1)
      {
        v117 = v173;
        do
        {
          if (*v47)
          {
            v118 = *(v41 + 8 * *v47);
            if (HIWORD(v118))
            {
              v119 = *v45;
              if (v6)
              {
                v120 = HIWORD(v119);
                if (!HIWORD(v119))
                {
                  goto LABEL_238;
                }
              }

              else
              {
                LODWORD(v120) = 0xFFFF;
              }

              v118 = PDAluminosityPDA_15249(v118, HIWORD(v118), v119, v120);
LABEL_238:
              *v45 = v118;
            }
          }

          ++v47;
          ++v45;
          --v117;
        }

        while (v117);
        v47 += v48;
        v45 += v49;
        if (!--v4)
        {
          return;
        }
      }

    case 27:
      break;
    default:
      return;
  }

LABEL_30:
  v52 = v173;
  while (1)
  {
    if (!*v47)
    {
      goto LABEL_39;
    }

    v53 = *(v41 + 8 * *v47);
    if (!HIWORD(v53))
    {
      goto LABEL_39;
    }

    v54 = *v45;
    if (v6)
    {
      v55 = HIWORD(v54);
      if (!HIWORD(v54))
      {
        goto LABEL_38;
      }
    }

    else
    {
      LODWORD(v55) = 0xFFFF;
    }

    v53 = PDAluminosityPDA_15249(v54, v55, v53, HIWORD(v53));
LABEL_38:
    *v45 = v53;
LABEL_39:
    ++v47;
    ++v45;
    if (!--v52)
    {
      v47 += v48;
      v45 += v49;
      if (!--v4)
      {
        return;
      }

      goto LABEL_30;
    }
  }
}

uint64_t rgba16_template_image_mask_method(uint64_t result, int *a2, unsigned int a3)
{
  if ((result & 0x30) != 0x20)
  {
    if ((a3 & 0x80000000) != 0)
    {
      return result;
    }

    v68 = VEC::template_mark_pixelmask_row<(CGCompositeOperation)0,_RGBA16_t>;
    if (a3 <= 0x17)
    {
      v68 = VEC::MethodList<_RGBA16_t>::maskMethods[a3];
    }

    v21 = *(a2 + 11);
    v22 = *(a2 + 17);
    v23 = *a2;
    v24 = a2[1];
    result = a2[3];
    v25 = a2[2];
    v26 = a2[7] >> 3;
    v27 = *(a2 + 5) + 8 * v26 * a2[4] + 8 * result;
    v71 = v21;
    v72 = v27;
    if (!v22)
    {
      return result;
    }

    v28 = a2[31];
    v29 = v22 + a2[27] * v28 + a2[26];
    v69 = v29;
    v30 = a2[14];
    v31 = a2[15];
    v32 = v23 & 0xFF00;
    v33 = a2[19];
    if (v32 != 256)
    {
      v42 = a2[17];
      v66 = a2[16];
      v34 = v33 >> 3;
      v43 = v21 + 8 * (v33 >> 3) * v42;
      v70 = v21;
      v38 = 1;
      v35 = v21;
      v44 = v21;
      goto LABEL_46;
    }

    v34 = v33 >> 3;
    v35 = v21 + 8 * (v33 >> 3) * v31 + 8 * v30;
    v70 = -1;
    v71 = v35;
    if (v34 != v26)
    {
      v38 = 1;
LABEL_45:
      LODWORD(v42) = 0;
      v44 = 0;
      v43 = 0;
      v66 = v34;
LABEL_46:
      v55 = v38 * v24;
      if (v43)
      {
        v56 = v35 + 8 * v34 * (v31 % v42);
        v70 = v56 + 8 * v66;
        v71 = v56 + 8 * (v30 % v66);
        v44 = v71;
      }

      else
      {
        v34 -= v55;
      }

      v57 = v28 - v55;
      v58 = v26 - v55;
      v59 = -(v34 * v42);
      v60 = v25 + 1;
      do
      {
        v61 = v38;
        result = (v68)(&v71, &v72, &v70, &v69, v66);
        v69 += v57;
        v72 += 8 * v58;
        if (v43)
        {
          v62 = v44 + 8 * v34;
          if (v62 >= v43)
          {
            v63 = v59;
          }

          else
          {
            v63 = 0;
          }

          v64 = v62 + 8 * v63;
          v70 += 8 * v63 + 8 * v34;
          v44 = v64;
        }

        else
        {
          v64 = v71 + 8 * v34;
        }

        v71 = v64;
        --v60;
        v38 = v61;
      }

      while (v60 > 1);
      return result;
    }

    v36 = (v27 - v35) >> 3;
    if (v36 >= 1)
    {
      if (v36 <= v24)
      {
        v35 += 8 * (v24 - 1);
        v71 = v35;
        v72 = v27 + 8 * (v24 - 1);
        v69 = v29 + v24 - 1;
        v38 = 0xFFFFFFFFLL;
        goto LABEL_44;
      }

      v37 = v26 * (v25 - 1);
      if (v27 <= v35 + 8 * v37 + 8 * v24 - 8)
      {
        v71 = v35 + 8 * v37;
        v72 = v27 + 8 * v37;
        v26 = -v26;
        v69 = v29 + v28 * (v25 - 1);
        v28 = -v28;
        v38 = 1;
        v35 = v71;
        goto LABEL_44;
      }
    }

    v38 = 1;
LABEL_44:
    v34 = v26;
    goto LABEL_45;
  }

  if ((a3 & 0x80000000) == 0)
  {
    v67 = VEC::template_mark_pixelmask_row<(CGCompositeOperation)0,_rgba16_t>;
    if (a3 <= 0x17)
    {
      v67 = VEC::MethodList<_rgba16_t>::maskMethods[a3];
    }

    v3 = *(a2 + 11);
    v4 = *(a2 + 17);
    v5 = *a2;
    v6 = a2[1];
    result = a2[3];
    v7 = a2[2];
    v8 = a2[7] >> 3;
    v9 = *(a2 + 5) + 8 * v8 * a2[4] + 8 * result;
    v71 = v3;
    v72 = v9;
    if (v4)
    {
      v10 = a2[31];
      v11 = v4 + a2[27] * v10 + a2[26];
      v69 = v11;
      v12 = a2[14];
      v13 = a2[15];
      v14 = v5 & 0xFF00;
      v15 = a2[19];
      if (v14 != 256)
      {
        v39 = a2[17];
        v65 = a2[16];
        v16 = v15 >> 3;
        v40 = v3 + 8 * (v15 >> 3) * v39;
        v70 = v3;
        v20 = 1;
        v17 = v3;
        v41 = v3;
        goto LABEL_31;
      }

      v16 = v15 >> 3;
      v17 = v3 + 8 * (v15 >> 3) * v13 + 8 * v12;
      v70 = -1;
      v71 = v17;
      if (v16 != v8)
      {
        v20 = 1;
LABEL_30:
        LODWORD(v39) = 0;
        v41 = 0;
        v40 = 0;
        v65 = v16;
LABEL_31:
        v45 = v20 * v6;
        if (v40)
        {
          v46 = v17 + 8 * v16 * (v13 % v39);
          v70 = v46 + 8 * v65;
          v71 = v46 + 8 * (v12 % v65);
          v41 = v71;
        }

        else
        {
          v16 -= v45;
        }

        v47 = v10 - v45;
        v48 = v8 - v45;
        v49 = -(v16 * v39);
        v50 = v7 + 1;
        do
        {
          v51 = v20;
          result = (v67)(&v71, &v72, &v70, &v69, v65);
          v69 += v47;
          v72 += 8 * v48;
          if (v40)
          {
            v52 = v41 + 8 * v16;
            if (v52 >= v40)
            {
              v53 = v49;
            }

            else
            {
              v53 = 0;
            }

            v54 = v52 + 8 * v53;
            v70 += 8 * v53 + 8 * v16;
            v41 = v54;
          }

          else
          {
            v54 = v71 + 8 * v16;
          }

          v71 = v54;
          --v50;
          v20 = v51;
        }

        while (v50 > 1);
        return result;
      }

      v18 = (v9 - v17) >> 3;
      if (v18 >= 1)
      {
        if (v18 <= v6)
        {
          v17 += 8 * (v6 - 1);
          v71 = v17;
          v72 = v9 + 8 * (v6 - 1);
          v69 = v11 + v6 - 1;
          v20 = 0xFFFFFFFFLL;
          goto LABEL_29;
        }

        v19 = v8 * (v7 - 1);
        if (v9 <= v17 + 8 * v19 + 8 * v6 - 8)
        {
          v71 = v17 + 8 * v19;
          v72 = v9 + 8 * v19;
          v8 = -v8;
          v69 = v11 + v10 * (v7 - 1);
          v10 = -v10;
          v20 = 1;
          v17 = v71;
          goto LABEL_29;
        }
      }

      v20 = 1;
LABEL_29:
      v16 = v8;
      goto LABEL_30;
    }
  }

  return result;
}

void rgba64_mark_pixelmask(uint64_t a1, int a2)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    v475 = *(a1 + 4);
    v3 = v475;
    v477 = *(a1 + 8);
    v478 = *(a1 + 48);
    v5 = *(a1 + 88);
    v4 = *(a1 + 96);
    v6 = *(a1 + 28) >> 3;
    v7 = (*(a1 + 40) + 8 * v6 * *(a1 + 16) + 8 * *(a1 + 12));
    v8 = *(a1 + 124);
    v9 = (v2 + *(a1 + 108) * v8 + *(a1 + 104));
    v10 = *(a1 + 56);
    v11 = *(a1 + 60);
    v12 = *(a1 + 76);
    if (*(a1 + 1) << 8 != 256)
    {
      LODWORD(v13) = *(a1 + 64);
      v19 = *(a1 + 68);
      v20 = v12 >> 3;
      v21 = v4 != 0;
      v474 = v8 - v475;
      v473 = v6 - v475;
      if (v5)
      {
        v470 = 0;
        v22 = v13;
        v23 = v19;
        v471 = v5 + 8 * v20 * v19;
        v472 = v20;
        v24 = v5 + 8 * v20 * (v11 % v19);
        v14 = v24 + 8 * (v10 % v13);
        v25 = v24 + 8 * v13;
        v26 = 1;
        v476 = v14;
LABEL_16:
        switch(a2)
        {
          case 0:
            do
            {
              v29 = v475;
              v30 = v477;
              do
              {
                v31 = *v9;
                if (*v9)
                {
                  if (v31 == 255)
                  {
                    *v7 = 0;
                  }

                  else
                  {
                    rgba64_DM(v7, *v7, (v31 | (v31 << 8)) ^ 0xFFFF);
                  }
                }

                v9 += v26;
                v7 += v26;
                --v29;
              }

              while (v29);
              v9 += v474;
              v7 += v473;
              --v477;
            }

            while (v30 != 1);
            return;
          case 1:
            v236 = v478 == 0 || v21;
            v237 = -v22;
            v238 = -(v472 * v23);
            v239 = 8 * v26;
            if (v236)
            {
              do
              {
                v240 = v475;
                do
                {
                  v241 = *v9;
                  if (*v9)
                  {
                    if (v241 == 255)
                    {
                      *v7 = *v14;
                    }

                    else
                    {
                      rgba64_DMplusDM(v7, *v14, v241 | (v241 << 8), *v7, (v241 | (v241 << 8)) ^ 0xFFFF);
                    }
                  }

                  v9 += v26;
                  v242 = v14 + 8 * v26;
                  if (v242 >= v25)
                  {
                    v243 = v237;
                  }

                  else
                  {
                    v243 = 0;
                  }

                  v14 = v242 + 8 * v243;
                  v7 = (v7 + v239);
                  --v240;
                }

                while (v240);
                v9 += v474;
                v7 += v473;
                v244 = v476;
                v245 = v476 + 8 * v472;
                if (v245 >= v471)
                {
                  v246 = v238;
                }

                else
                {
                  v246 = 0;
                }

                v247 = v245 + 8 * v246;
                v248 = v25 + 8 * v246 + 8 * v472;
                if (v470)
                {
                  v14 += 8 * v472;
                }

                else
                {
                  v25 = v248;
                  v244 = v247;
                  v14 = v247;
                }

                v47 = v477 == 1;
                v476 = v244;
                --v477;
              }

              while (!v47);
            }

            else
            {
              do
              {
                v249 = v475;
                do
                {
                  v250 = *v9;
                  if (*v9)
                  {
                    if (v250 == 255)
                    {
                      *v7 = (*v14 | 0xFFFF000000000000);
                    }

                    else
                    {
                      rgba64_DMplusDAM(v7, *v7, (v250 | (v250 << 8)) ^ 0xFFFF, *v14, 0xFFFFu, v250 | (v250 << 8));
                    }
                  }

                  v9 += v26;
                  v251 = v14 + 8 * v26;
                  if (v251 >= v25)
                  {
                    v252 = v237;
                  }

                  else
                  {
                    v252 = 0;
                  }

                  v14 = v251 + 8 * v252;
                  v7 = (v7 + v239);
                  --v249;
                }

                while (v249);
                v9 += v474;
                v7 += v473;
                v253 = v476;
                v254 = v476 + 8 * v472;
                if (v254 >= v471)
                {
                  v255 = v238;
                }

                else
                {
                  v255 = 0;
                }

                v256 = v254 + 8 * v255;
                v257 = v25 + 8 * v255 + 8 * v472;
                if (v470)
                {
                  v14 += 8 * v472;
                }

                else
                {
                  v25 = v257;
                  v253 = v256;
                  v14 = v256;
                }

                v47 = v477 == 1;
                v476 = v253;
                --v477;
              }

              while (!v47);
            }

            return;
          case 2:
            v172 = -v22;
            v173 = -(v472 * v23);
            while (1)
            {
              v174 = v475;
              do
              {
                v175 = *v9;
                if (!*v9)
                {
                  goto LABEL_233;
                }

                if (v175 == 255)
                {
                  v176 = *v14;
                  v177 = HIWORD(*v14);
                  if (!v177)
                  {
                    goto LABEL_233;
                  }

                  if (v177 == 0xFFFF)
                  {
                    *v7 = v176;
                    goto LABEL_233;
                  }

                  v181 = *v7;
                  v182 = v177 ^ 0xFFFF;
                }

                else
                {
                  v179 = HIWORD(*v14);
                  v180 = (v175 | (v175 << 8)) ^ 0xFFFF;
                  if (v179 == (v180 * v179 + 0x8000 + ((v180 * v179 + 0x8000) >> 16)) >> 16)
                  {
                    goto LABEL_233;
                  }

                  v181 = *v7;
                  v178 = *v14;
                  v176 = ((v179 - ((v180 * v179 + 0x8000 + ((v180 * v179 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v178) - ((WORD2(v178) * v180 + 0x8000 + ((WORD2(v178) * v180 + 0x8000) >> 16)) >> 16)) << 32) | (v178 - ((v178 * v180 + 0x8000 + ((v178 * v180 + 0x8000) >> 16)) >> 16)) | ((WORD1(v178) - ((WORD1(v178) * v180 + 0x8000 + ((WORD1(v178) * v180 + 0x8000) >> 16)) >> 16)) << 16);
                  v182 = ~(v179 - ((v180 * v179 + 0x8000 + ((v180 * v179 + 0x8000) >> 16)) >> 16));
                }

                rgba64_DplusDM(v7, v176, v181, v182);
LABEL_233:
                v9 += v26;
                v183 = v14 + 8 * v26;
                if (v183 >= v25)
                {
                  v184 = v172;
                }

                else
                {
                  v184 = 0;
                }

                v14 = v183 + 8 * v184;
                v7 += v26;
                --v174;
              }

              while (v174);
              v9 += v474;
              v7 += v473;
              v185 = v476;
              v186 = v476 + 8 * v472;
              if (v186 >= v471)
              {
                v187 = v173;
              }

              else
              {
                v187 = 0;
              }

              v188 = v186 + 8 * v187;
              v189 = v25 + 8 * v187 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v189;
                v185 = v188;
                v14 = v188;
              }

              v47 = v477 == 1;
              v476 = v185;
              --v477;
              if (v47)
              {
                return;
              }
            }

          case 3:
            v205 = -v22;
            v482 = -(v472 * v23);
            do
            {
              v206 = v475;
              do
              {
                v207 = *v9;
                if (*v9)
                {
                  if (v207 == 255)
                  {
                    v208 = HIWORD(*v14);
                    v209 = WORD1(*v14);
                    v210 = *v14;
                    if (!v21)
                    {
                      LODWORD(v208) = 0xFFFF;
                    }

                    v211 = vdup_n_s32(v7->u16[3] ^ 0xFFFFu);
                    v212 = vmla_s32(0x800000008000, vand_s8(v210, 0xFFFF0000FFFFLL), v211);
                    v213 = vmla_s32(0x800000008000, __PAIR64__(v208, v209), v211);
                    *v7 = vsli_n_s32(vsub_s32(v210, vshr_n_u32(vsra_n_u32(v212, v212, 0x10uLL), 0x10uLL)), vsub_s32(__PAIR64__(v208, v209), vshr_n_u32(vsra_n_u32(v213, v213, 0x10uLL), 0x10uLL)), 0x10uLL);
                  }

                  else
                  {
                    v214 = v207 | (v207 << 8);
                    v215 = HIWORD(*v14);
                    if (!v21)
                    {
                      LOWORD(v215) = -1;
                    }

                    rgba64_DMplusDAM(v7, *v7, v214 ^ 0xFFFF, *v14, v215, (HIWORD(*v7) * v214 + 0x8000 + ((HIWORD(*v7) * v214 + 0x8000) >> 16)) >> 16);
                  }
                }

                v9 += v26;
                v216 = v14 + 8 * v26;
                if (v216 >= v25)
                {
                  v217 = v205;
                }

                else
                {
                  v217 = 0;
                }

                v14 = v216 + 8 * v217;
                v7 += v26;
                --v206;
              }

              while (v206);
              v9 += v474;
              v7 += v473;
              v218 = v476;
              v219 = v476 + 8 * v472;
              v220 = v482;
              if (v219 < v471)
              {
                v220 = 0;
              }

              v221 = v219 + 8 * v220;
              v222 = v25 + 8 * v220 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v222;
                v218 = v221;
                v14 = v221;
              }

              v47 = v477 == 1;
              v476 = v218;
              --v477;
            }

            while (!v47);
            return;
          case 4:
            v93 = -v22;
            v479 = -(v472 * v23);
            do
            {
              v94 = v475;
              do
              {
                v95 = *v9;
                if (*v9)
                {
                  if (v95 == 255)
                  {
                    v96 = HIWORD(*v14);
                    v97 = WORD1(*v14);
                    v98 = *v14;
                    if (!v21)
                    {
                      LODWORD(v96) = 0xFFFF;
                    }

                    v99 = vdup_n_s32(v7->u16[3]);
                    v100 = vmla_s32(0x800000008000, vand_s8(v98, 0xFFFF0000FFFFLL), v99);
                    v101 = vmla_s32(0x800000008000, __PAIR64__(v96, v97), v99);
                    *v7 = vsli_n_s32(vsub_s32(v98, vshr_n_u32(vsra_n_u32(v100, v100, 0x10uLL), 0x10uLL)), vsub_s32(__PAIR64__(v96, v97), vshr_n_u32(vsra_n_u32(v101, v101, 0x10uLL), 0x10uLL)), 0x10uLL);
                  }

                  else
                  {
                    v102 = v95 | (v95 << 8);
                    v103 = *v7;
                    v104 = HIWORD(*v14);
                    if (!v21)
                    {
                      LOWORD(v104) = -1;
                    }

                    v105 = (HIWORD(v103) ^ 0xFFFF) * v102 + 0x8000;
                    rgba64_DMplusDAM(v7, v103, v102 ^ 0xFFFF, *v14, v104, (v105 + HIWORD(v105)) >> 16);
                  }
                }

                v9 += v26;
                v106 = v14 + 8 * v26;
                if (v106 >= v25)
                {
                  v107 = v93;
                }

                else
                {
                  v107 = 0;
                }

                v14 = v106 + 8 * v107;
                v7 += v26;
                --v94;
              }

              while (v94);
              v9 += v474;
              v7 += v473;
              v108 = v476;
              v109 = v476 + 8 * v472;
              v110 = v479;
              if (v109 < v471)
              {
                v110 = 0;
              }

              v111 = v109 + 8 * v110;
              v112 = v25 + 8 * v110 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v112;
                v108 = v111;
                v14 = v111;
              }

              v47 = v477 == 1;
              v476 = v108;
              --v477;
            }

            while (!v47);
            return;
          case 5:
            v288 = -v22;
            v483 = -(v472 * v23);
            do
            {
              v289 = v475;
              do
              {
                if (*v9)
                {
                  v290 = (*v9 | (*v9 << 8)) ^ 0xFFFF;
                  v291 = *v14 * v290 + 0x8000;
                  v292 = WORD2(*v14) * v290 + 0x8000;
                  v293 = *v14 - ((v291 + HIWORD(v291)) >> 16);
                  v294 = WORD1(*v14) - ((WORD1(*v14) * v290 + 0x8000 + ((WORD1(*v14) * v290 + 0x8000) >> 16)) >> 16);
                  v295 = HIWORD(*v14) - ((v290 * HIWORD(*v14) + 0x8000 + ((v290 * HIWORD(*v14) + 0x8000) >> 16)) >> 16);
                  rgba64_DMplusDM(v7, (v295 << 48) | ((HIDWORD(*v14) - ((v292 + HIWORD(v292)) >> 16)) << 32) | v293 | (v294 << 16), HIWORD(*v7), *v7, ~v295);
                }

                v9 += v26;
                v296 = v14 + 8 * v26;
                if (v296 >= v25)
                {
                  v297 = v288;
                }

                else
                {
                  v297 = 0;
                }

                v14 = v296 + 8 * v297;
                v7 += v26;
                --v289;
              }

              while (v289);
              v9 += v474;
              v7 += v473;
              v298 = v476;
              v299 = v476 + 8 * v472;
              v300 = v483;
              if (v299 < v471)
              {
                v300 = 0;
              }

              v301 = v299 + 8 * v300;
              v302 = v25 + 8 * v300 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v302;
                v298 = v301;
                v14 = v301;
              }

              v47 = v477 == 1;
              v476 = v298;
              --v477;
            }

            while (!v47);
            return;
          case 6:
            v333 = -v22;
            v484 = -(v472 * v23);
            do
            {
              v334 = v475;
              do
              {
                v335 = *v9;
                if (*v9)
                {
                  v336 = HIWORD(*v7);
                  if (v336 != 0xFFFF)
                  {
                    if (~v336 == 0xFFFF)
                    {
                      v337 = WORD1(*v14);
                      v338 = *v14;
                      v339 = v335 | (v335 << 8);
                      if (v21)
                      {
                        v340 = HIWORD(*v14);
                      }

                      else
                      {
                        v340 = 0xFFFF;
                      }

                      v341 = vdup_n_s32(v339 ^ 0xFFFFu);
                      v342 = vmla_s32(0x800000008000, vand_s8(v338, 0xFFFF0000FFFFLL), v341);
                      v343 = vmla_s32(0x800000008000, __PAIR64__(v340, v337), v341);
                      *v7 = vsli_n_s32(vsub_s32(v338, vshr_n_u32(vsra_n_u32(v342, v342, 0x10uLL), 0x10uLL)), vsub_s32(__PAIR64__(v340, v337), vshr_n_u32(vsra_n_u32(v343, v343, 0x10uLL), 0x10uLL)), 0x10uLL);
                    }

                    else
                    {
                      v344 = ~v336;
                      v345 = HIWORD(*v14);
                      if (!v21)
                      {
                        LOWORD(v345) = -1;
                      }

                      rgba64_DplusDAM(v7, *v7, *v14, v345, (257 * v335 * v344 + 0x8000 + ((257 * v335 * v344 + 0x8000) >> 16)) >> 16);
                    }
                  }
                }

                v9 += v26;
                v346 = v14 + 8 * v26;
                if (v346 >= v25)
                {
                  v347 = v333;
                }

                else
                {
                  v347 = 0;
                }

                v14 = v346 + 8 * v347;
                v7 += v26;
                --v334;
              }

              while (v334);
              v9 += v474;
              v7 += v473;
              v348 = v476;
              v349 = v476 + 8 * v472;
              v350 = v484;
              if (v349 < v471)
              {
                v350 = 0;
              }

              v351 = v349 + 8 * v350;
              v352 = v25 + 8 * v350 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v352;
                v348 = v351;
                v14 = v351;
              }

              v47 = v477 == 1;
              v476 = v348;
              --v477;
            }

            while (!v47);
            return;
          case 7:
            v223 = -v22;
            v224 = -(v472 * v23);
            do
            {
              v225 = v475;
              do
              {
                v226 = *v9;
                if (*v9)
                {
                  if (v226 == 255)
                  {
                    rgba64_DM(v7, *v7, *(v14 + 6));
                  }

                  else
                  {
                    v227 = v226 | (v226 << 8);
                    v228 = *(v14 + 6) * v227 + 0x8000;
                    rgba64_DMplusDM(v7, *v7, (v228 + HIWORD(v228)) >> 16, *v7, v227 ^ 0xFFFF);
                  }
                }

                v9 += v26;
                v229 = v14 + 8 * v26;
                if (v229 >= v25)
                {
                  v230 = v223;
                }

                else
                {
                  v230 = 0;
                }

                v14 = v229 + 8 * v230;
                v7 += v26;
                --v225;
              }

              while (v225);
              v9 += v474;
              v7 += v473;
              v231 = v476;
              v232 = v476 + 8 * v472;
              if (v232 >= v471)
              {
                v233 = v224;
              }

              else
              {
                v233 = 0;
              }

              v234 = v232 + 8 * v233;
              v235 = v25 + 8 * v233 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v235;
                v231 = v234;
                v14 = v234;
              }

              v47 = v477 == 1;
              v476 = v231;
              --v477;
            }

            while (!v47);
            return;
          case 8:
            v382 = -v22;
            v383 = -(v472 * v23);
            do
            {
              v384 = v475;
              do
              {
                v385 = *v9;
                if (*v9)
                {
                  if (v385 == 255)
                  {
                    LOWORD(v386) = *(v14 + 6);
                  }

                  else
                  {
                    v386 = (257 * v385 * *(v14 + 6) + 0x8000 + ((257 * v385 * *(v14 + 6) + 0x8000) >> 16)) >> 16;
                  }

                  rgba64_DM(v7, *v7, ~v386);
                }

                v9 += v26;
                v387 = v14 + 8 * v26;
                if (v387 >= v25)
                {
                  v388 = v382;
                }

                else
                {
                  v388 = 0;
                }

                v14 = v387 + 8 * v388;
                v7 += v26;
                --v384;
              }

              while (v384);
              v9 += v474;
              v7 += v473;
              v389 = v476;
              v390 = v476 + 8 * v472;
              if (v390 >= v471)
              {
                v391 = v383;
              }

              else
              {
                v391 = 0;
              }

              v392 = v390 + 8 * v391;
              v393 = v25 + 8 * v391 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v393;
                v389 = v392;
                v14 = v392;
              }

              v47 = v477 == 1;
              v476 = v389;
              --v477;
            }

            while (!v47);
            return;
          case 9:
            v127 = -v22;
            v481 = -(v472 * v23);
            do
            {
              v128 = v475;
              do
              {
                if (*v9)
                {
                  v129 = ~(*v9 | (*v9 << 8));
                  v130 = v129;
                  v131 = *v14 * v129 + 0x8000;
                  v132 = WORD2(*v14) * v129 + 0x8000;
                  v133 = *v14 - ((v131 + HIWORD(v131)) >> 16);
                  LOWORD(v131) = WORD1(*v14) - ((WORD1(*v14) * v130 + 0x8000 + ((WORD1(*v14) * v130 + 0x8000) >> 16)) >> 16);
                  v134 = HIWORD(*v14) - ((HIWORD(*v14) * v130 + 0x8000 + ((HIWORD(*v14) * v130 + 0x8000) >> 16)) >> 16);
                  rgba64_DMplusDM(v7, (v134 << 48) | ((HIDWORD(*v14) - ((v132 + HIWORD(v132)) >> 16)) << 32) | v133 | (v131 << 16), HIWORD(*v7) ^ 0xFFFF, *v7, (v134 + v129));
                }

                v9 += v26;
                v135 = v14 + 8 * v26;
                if (v135 >= v25)
                {
                  v136 = v127;
                }

                else
                {
                  v136 = 0;
                }

                v14 = v135 + 8 * v136;
                v7 += v26;
                --v128;
              }

              while (v128);
              v9 += v474;
              v7 += v473;
              v137 = v476;
              v138 = v476 + 8 * v472;
              v139 = v481;
              if (v138 < v471)
              {
                v139 = 0;
              }

              v140 = v138 + 8 * v139;
              v141 = v25 + 8 * v139 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v141;
                v137 = v140;
                v14 = v140;
              }

              v47 = v477 == 1;
              v476 = v137;
              --v477;
            }

            while (!v47);
            return;
          case 10:
            v368 = -v22;
            v485 = -(v472 * v23);
            do
            {
              v369 = v475;
              do
              {
                if (*v9)
                {
                  v370 = (*v9 | (*v9 << 8)) ^ 0xFFFF;
                  v371 = *v14 * v370 + 0x8000;
                  v372 = WORD2(*v14) * v370 + 0x8000;
                  v373 = *v14 - ((v371 + HIWORD(v371)) >> 16);
                  LOWORD(v371) = WORD1(*v14) - ((WORD1(*v14) * v370 + 0x8000 + ((WORD1(*v14) * v370 + 0x8000) >> 16)) >> 16);
                  v374 = HIWORD(*v14) - ((v370 * HIWORD(*v14) + 0x8000 + ((v370 * HIWORD(*v14) + 0x8000) >> 16)) >> 16);
                  rgba64_DMplusDM(v7, (v374 << 48) | ((HIDWORD(*v14) - ((v372 + HIWORD(v372)) >> 16)) << 32) | v373 | (v371 << 16), HIWORD(*v7) ^ 0xFFFF, *v7, ~v374);
                }

                v9 += v26;
                v375 = v14 + 8 * v26;
                if (v375 >= v25)
                {
                  v376 = v368;
                }

                else
                {
                  v376 = 0;
                }

                v14 = v375 + 8 * v376;
                v7 += v26;
                --v369;
              }

              while (v369);
              v9 += v474;
              v7 += v473;
              v377 = v476;
              v378 = v476 + 8 * v472;
              v379 = v485;
              if (v378 < v471)
              {
                v379 = 0;
              }

              v380 = v378 + 8 * v379;
              v381 = v25 + 8 * v379 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v381;
                v377 = v380;
                v14 = v380;
              }

              v47 = v477 == 1;
              v476 = v377;
              --v477;
            }

            while (!v47);
            return;
          case 11:
            v78 = -v22;
            v457 = -(v472 * v23);
            do
            {
              v79 = v475;
              do
              {
                if (*v9)
                {
                  v80 = *v9 | (*v9 << 8);
                  v81 = *v14 * (v80 ^ 0xFFFF) + 0x8000;
                  v82 = WORD2(*v14) * (v80 ^ 0xFFFF) + 0x8000;
                  v83 = HIWORD(*v14) - ((HIWORD(*v14) * (v80 ^ 0xFFFF) + 0x8000 + ((HIWORD(*v14) * (v80 ^ 0xFFFF) + 0x8000) >> 16)) >> 16);
                  v84 = (*v14 - ((v81 + HIWORD(v81)) >> 16)) | ((WORD1(*v14) - ((WORD1(*v14) * (v80 ^ 0xFFFF) + 0x8000 + ((WORD1(*v14) * (v80 ^ 0xFFFF) + 0x8000) >> 16)) >> 16)) << 16);
                  v85 = HIWORD(*v7);
                  if (!v478)
                  {
                    LOWORD(v85) = -1;
                  }

                  if (v21)
                  {
                    LOWORD(v80) = HIWORD(*v14) - ((HIWORD(*v14) * (v80 ^ 0xFFFF) + 0x8000 + ((HIWORD(*v14) * (v80 ^ 0xFFFF) + 0x8000) >> 16)) >> 16);
                  }

                  rgba64_DAplusdDA(v7, *v7, v85, (v83 << 48) | ((HIDWORD(*v14) - ((v82 + HIWORD(v82)) >> 16)) << 32) | v84, v80);
                }

                v9 += v26;
                v86 = v14 + 8 * v26;
                if (v86 >= v25)
                {
                  v87 = v78;
                }

                else
                {
                  v87 = 0;
                }

                v14 = v86 + 8 * v87;
                v7 += v26;
                --v79;
              }

              while (v79);
              v9 += v474;
              v7 += v473;
              v88 = v476;
              v89 = v476 + 8 * v472;
              v90 = v457;
              if (v89 < v471)
              {
                v90 = 0;
              }

              v91 = v89 + 8 * v90;
              v92 = v25 + 8 * v90 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v92;
                v88 = v91;
                v14 = v91;
              }

              v47 = v477 == 1;
              v476 = v88;
              --v477;
            }

            while (!v47);
            return;
          case 12:
            v113 = -v22;
            v480 = -(v472 * v23);
            do
            {
              v114 = v475;
              do
              {
                if (*v9)
                {
                  v115 = *v9 | (*v9 << 8);
                  v116 = *v14 * (v115 ^ 0xFFFF) + 0x8000;
                  v117 = WORD2(*v14) * (v115 ^ 0xFFFF) + 0x8000;
                  v118 = HIWORD(*v14) - ((HIWORD(*v14) * (v115 ^ 0xFFFF) + 0x8000 + ((HIWORD(*v14) * (v115 ^ 0xFFFF) + 0x8000) >> 16)) >> 16);
                  v119 = (*v14 - ((v116 + HIWORD(v116)) >> 16)) | ((WORD1(*v14) - ((WORD1(*v14) * (v115 ^ 0xFFFF) + 0x8000 + ((WORD1(*v14) * (v115 ^ 0xFFFF) + 0x8000) >> 16)) >> 16)) << 16);
                  if (v21)
                  {
                    LOWORD(v115) = HIWORD(*v14) - ((HIWORD(*v14) * (v115 ^ 0xFFFF) + 0x8000 + ((HIWORD(*v14) * (v115 ^ 0xFFFF) + 0x8000) >> 16)) >> 16);
                  }

                  rgba64_DpluslDA(v7, *v7, (v118 << 48) | ((HIDWORD(*v14) - ((v117 + HIWORD(v117)) >> 16)) << 32) | v119, v115);
                }

                v9 += v26;
                v120 = v14 + 8 * v26;
                if (v120 >= v25)
                {
                  v121 = v113;
                }

                else
                {
                  v121 = 0;
                }

                v14 = v120 + 8 * v121;
                v7 += v26;
                --v114;
              }

              while (v114);
              v9 += v474;
              v7 += v473;
              v122 = v476;
              v123 = v476 + 8 * v472;
              v124 = v480;
              if (v123 < v471)
              {
                v124 = 0;
              }

              v125 = v123 + 8 * v124;
              v126 = v25 + 8 * v124 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v126;
                v122 = v125;
                v14 = v125;
              }

              v47 = v477 == 1;
              v476 = v122;
              --v477;
            }

            while (!v47);
            return;
          case 13:
            v318 = -v22;
            v464 = -(v472 * v23);
            while (1)
            {
              v319 = v475;
              do
              {
                if (!*v9)
                {
                  goto LABEL_448;
                }

                v320 = *v9 | (*v9 << 8);
                v322 = v320 ^ 0xFFFF;
                if (v21)
                {
                  if (HIWORD(*v14) == (HIWORD(*v14) * v322 + 0x8000 + ((HIWORD(*v14) * v322 + 0x8000) >> 16)) >> 16)
                  {
                    goto LABEL_448;
                  }

                  v320 = HIWORD(*v14) - ((HIWORD(*v14) * v322 + 0x8000 + ((HIWORD(*v14) * v322 + 0x8000) >> 16)) >> 16);
                }

                v321 = *v14;
                v323 = *v7;
                if (!v478)
                {
                  LODWORD(v324) = 0xFFFF;
LABEL_446:
                  v325 = PDAmultiplyPDA_15236(v323, v324, ((HIWORD(*v14) - ((HIWORD(*v14) * v322 + 0x8000 + ((HIWORD(*v14) * v322 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v321) - ((WORD2(v321) * v322 + 0x8000 + ((WORD2(v321) * v322 + 0x8000) >> 16)) >> 16)) << 32) | (v321 - ((v321 * v322 + 0x8000 + ((v321 * v322 + 0x8000) >> 16)) >> 16)) | ((WORD1(v321) - ((WORD1(v321) * v322 + 0x8000 + ((WORD1(v321) * v322 + 0x8000) >> 16)) >> 16)) << 16), v320);
                  goto LABEL_447;
                }

                v324 = HIWORD(v323);
                if (HIWORD(v323))
                {
                  goto LABEL_446;
                }

                v325 = ((WORD2(v321) - ((WORD2(v321) * v322 + 0x8000 + ((WORD2(v321) * v322 + 0x8000) >> 16)) >> 16)) << 32) & 0xFFFFFFFFFFFFLL | (v321 - ((v321 * v322 + 0x8000 + ((v321 * v322 + 0x8000) >> 16)) >> 16)) | ((WORD1(v321) - ((WORD1(v321) * v322 + 0x8000 + ((WORD1(v321) * v322 + 0x8000) >> 16)) >> 16)) << 16) | (v320 << 48);
LABEL_447:
                *v7 = v325;
LABEL_448:
                v9 += v26;
                v326 = v14 + 8 * v26;
                if (v326 >= v25)
                {
                  v327 = v318;
                }

                else
                {
                  v327 = 0;
                }

                v14 = v326 + 8 * v327;
                v7 += v26;
                --v319;
              }

              while (v319);
              v9 += v474;
              v7 += v473;
              v328 = v476;
              v329 = v476 + 8 * v472;
              v330 = v464;
              if (v329 < v471)
              {
                v330 = 0;
              }

              v331 = v329 + 8 * v330;
              v332 = v25 + 8 * v330 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v332;
                v328 = v331;
                v14 = v331;
              }

              v47 = v477 == 1;
              v476 = v328;
              --v477;
              if (v47)
              {
                return;
              }
            }

          case 14:
            v63 = -v22;
            v456 = -(v472 * v23);
            while (1)
            {
              v64 = v475;
              do
              {
                if (!*v9)
                {
                  goto LABEL_86;
                }

                v65 = *v9 | (*v9 << 8);
                v67 = v65 ^ 0xFFFF;
                if (v21)
                {
                  if (HIWORD(*v14) == (HIWORD(*v14) * v67 + 0x8000 + ((HIWORD(*v14) * v67 + 0x8000) >> 16)) >> 16)
                  {
                    goto LABEL_86;
                  }

                  v65 = HIWORD(*v14) - ((HIWORD(*v14) * v67 + 0x8000 + ((HIWORD(*v14) * v67 + 0x8000) >> 16)) >> 16);
                }

                v66 = *v14;
                v68 = *v7;
                if (!v478)
                {
                  LODWORD(v69) = 0xFFFF;
LABEL_84:
                  v70 = PDAscreenPDA_15237(v68, v69, ((HIWORD(*v14) - ((HIWORD(*v14) * v67 + 0x8000 + ((HIWORD(*v14) * v67 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v66) - ((WORD2(v66) * v67 + 0x8000 + ((WORD2(v66) * v67 + 0x8000) >> 16)) >> 16)) << 32) | (v66 - ((v66 * v67 + 0x8000 + ((v66 * v67 + 0x8000) >> 16)) >> 16)) | ((WORD1(v66) - ((WORD1(v66) * v67 + 0x8000 + ((WORD1(v66) * v67 + 0x8000) >> 16)) >> 16)) << 16), v65);
                  goto LABEL_85;
                }

                v69 = HIWORD(v68);
                if (HIWORD(v68))
                {
                  goto LABEL_84;
                }

                v70 = ((WORD2(v66) - ((WORD2(v66) * v67 + 0x8000 + ((WORD2(v66) * v67 + 0x8000) >> 16)) >> 16)) << 32) & 0xFFFFFFFFFFFFLL | (v66 - ((v66 * v67 + 0x8000 + ((v66 * v67 + 0x8000) >> 16)) >> 16)) | ((WORD1(v66) - ((WORD1(v66) * v67 + 0x8000 + ((WORD1(v66) * v67 + 0x8000) >> 16)) >> 16)) << 16) | (v65 << 48);
LABEL_85:
                *v7 = v70;
LABEL_86:
                v9 += v26;
                v71 = v14 + 8 * v26;
                if (v71 >= v25)
                {
                  v72 = v63;
                }

                else
                {
                  v72 = 0;
                }

                v14 = v71 + 8 * v72;
                v7 += v26;
                --v64;
              }

              while (v64);
              v9 += v474;
              v7 += v473;
              v73 = v476;
              v74 = v476 + 8 * v472;
              v75 = v456;
              if (v74 < v471)
              {
                v75 = 0;
              }

              v76 = v74 + 8 * v75;
              v77 = v25 + 8 * v75 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v77;
                v73 = v76;
                v14 = v76;
              }

              v47 = v477 == 1;
              v476 = v73;
              --v477;
              if (v47)
              {
                return;
              }
            }

          case 15:
            v190 = -v22;
            v460 = -(v472 * v23);
            while (1)
            {
              v191 = v475;
              do
              {
                if (!*v9)
                {
                  goto LABEL_258;
                }

                v192 = *v9 | (*v9 << 8);
                v194 = v192 ^ 0xFFFF;
                if (v21)
                {
                  if (HIWORD(*v14) == (HIWORD(*v14) * v194 + 0x8000 + ((HIWORD(*v14) * v194 + 0x8000) >> 16)) >> 16)
                  {
                    goto LABEL_258;
                  }

                  v192 = HIWORD(*v14) - ((HIWORD(*v14) * v194 + 0x8000 + ((HIWORD(*v14) * v194 + 0x8000) >> 16)) >> 16);
                }

                v193 = *v14;
                v195 = *v7;
                if (!v478)
                {
                  LODWORD(v196) = 0xFFFF;
LABEL_256:
                  v197 = PDAoverlayPDA_15238(v195, v196, ((HIWORD(*v14) - ((HIWORD(*v14) * v194 + 0x8000 + ((HIWORD(*v14) * v194 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v193) - ((WORD2(v193) * v194 + 0x8000 + ((WORD2(v193) * v194 + 0x8000) >> 16)) >> 16)) << 32) | (v193 - ((v193 * v194 + 0x8000 + ((v193 * v194 + 0x8000) >> 16)) >> 16)) | ((WORD1(v193) - ((WORD1(v193) * v194 + 0x8000 + ((WORD1(v193) * v194 + 0x8000) >> 16)) >> 16)) << 16), v192);
                  goto LABEL_257;
                }

                v196 = HIWORD(v195);
                if (HIWORD(v195))
                {
                  goto LABEL_256;
                }

                v197 = ((WORD2(v193) - ((WORD2(v193) * v194 + 0x8000 + ((WORD2(v193) * v194 + 0x8000) >> 16)) >> 16)) << 32) & 0xFFFFFFFFFFFFLL | (v193 - ((v193 * v194 + 0x8000 + ((v193 * v194 + 0x8000) >> 16)) >> 16)) | ((WORD1(v193) - ((WORD1(v193) * v194 + 0x8000 + ((WORD1(v193) * v194 + 0x8000) >> 16)) >> 16)) << 16) | (v192 << 48);
LABEL_257:
                *v7 = v197;
LABEL_258:
                v9 += v26;
                v198 = v14 + 8 * v26;
                if (v198 >= v25)
                {
                  v199 = v190;
                }

                else
                {
                  v199 = 0;
                }

                v14 = v198 + 8 * v199;
                v7 += v26;
                --v191;
              }

              while (v191);
              v9 += v474;
              v7 += v473;
              v200 = v476;
              v201 = v476 + 8 * v472;
              v202 = v460;
              if (v201 < v471)
              {
                v202 = 0;
              }

              v203 = v201 + 8 * v202;
              v204 = v25 + 8 * v202 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v204;
                v200 = v203;
                v14 = v203;
              }

              v47 = v477 == 1;
              v476 = v200;
              --v477;
              if (v47)
              {
                return;
              }
            }

          case 16:
            v48 = -v22;
            v455 = -(v472 * v23);
            while (1)
            {
              v49 = v475;
              do
              {
                if (!*v9)
                {
                  goto LABEL_62;
                }

                v50 = *v9 | (*v9 << 8);
                v52 = v50 ^ 0xFFFF;
                if (v21)
                {
                  if (HIWORD(*v14) == (HIWORD(*v14) * v52 + 0x8000 + ((HIWORD(*v14) * v52 + 0x8000) >> 16)) >> 16)
                  {
                    goto LABEL_62;
                  }

                  v50 = HIWORD(*v14) - ((HIWORD(*v14) * v52 + 0x8000 + ((HIWORD(*v14) * v52 + 0x8000) >> 16)) >> 16);
                }

                v51 = *v14;
                v53 = *v7;
                if (!v478)
                {
                  LODWORD(v54) = 0xFFFF;
LABEL_60:
                  v55 = PDAdarkenPDA_15240(v53, v54, ((HIWORD(*v14) - ((HIWORD(*v14) * v52 + 0x8000 + ((HIWORD(*v14) * v52 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v51) - ((WORD2(v51) * v52 + 0x8000 + ((WORD2(v51) * v52 + 0x8000) >> 16)) >> 16)) << 32) | (v51 - ((v51 * v52 + 0x8000 + ((v51 * v52 + 0x8000) >> 16)) >> 16)) | ((WORD1(v51) - ((WORD1(v51) * v52 + 0x8000 + ((WORD1(v51) * v52 + 0x8000) >> 16)) >> 16)) << 16), v50);
                  goto LABEL_61;
                }

                v54 = HIWORD(v53);
                if (HIWORD(v53))
                {
                  goto LABEL_60;
                }

                v55 = ((WORD2(v51) - ((WORD2(v51) * v52 + 0x8000 + ((WORD2(v51) * v52 + 0x8000) >> 16)) >> 16)) << 32) & 0xFFFFFFFFFFFFLL | (v51 - ((v51 * v52 + 0x8000 + ((v51 * v52 + 0x8000) >> 16)) >> 16)) | ((WORD1(v51) - ((WORD1(v51) * v52 + 0x8000 + ((WORD1(v51) * v52 + 0x8000) >> 16)) >> 16)) << 16) | (v50 << 48);
LABEL_61:
                *v7 = v55;
LABEL_62:
                v9 += v26;
                v56 = v14 + 8 * v26;
                if (v56 >= v25)
                {
                  v57 = v48;
                }

                else
                {
                  v57 = 0;
                }

                v14 = v56 + 8 * v57;
                v7 += v26;
                --v49;
              }

              while (v49);
              v9 += v474;
              v7 += v473;
              v58 = v476;
              v59 = v476 + 8 * v472;
              v60 = v455;
              if (v59 < v471)
              {
                v60 = 0;
              }

              v61 = v59 + 8 * v60;
              v62 = v25 + 8 * v60 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v62;
                v58 = v61;
                v14 = v61;
              }

              v47 = v477 == 1;
              v476 = v58;
              --v477;
              if (v47)
              {
                return;
              }
            }

          case 17:
            v258 = -v22;
            v461 = -(v472 * v23);
            while (1)
            {
              v259 = v475;
              do
              {
                if (!*v9)
                {
                  goto LABEL_360;
                }

                v260 = *v9 | (*v9 << 8);
                v262 = v260 ^ 0xFFFF;
                if (v21)
                {
                  if (HIWORD(*v14) == (HIWORD(*v14) * v262 + 0x8000 + ((HIWORD(*v14) * v262 + 0x8000) >> 16)) >> 16)
                  {
                    goto LABEL_360;
                  }

                  v260 = HIWORD(*v14) - ((HIWORD(*v14) * v262 + 0x8000 + ((HIWORD(*v14) * v262 + 0x8000) >> 16)) >> 16);
                }

                v261 = *v14;
                v263 = *v7;
                if (!v478)
                {
                  LODWORD(v264) = 0xFFFF;
LABEL_358:
                  v265 = PDAlightenPDA_15239(v263, v264, ((HIWORD(*v14) - ((HIWORD(*v14) * v262 + 0x8000 + ((HIWORD(*v14) * v262 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v261) - ((WORD2(v261) * v262 + 0x8000 + ((WORD2(v261) * v262 + 0x8000) >> 16)) >> 16)) << 32) | (v261 - ((v261 * v262 + 0x8000 + ((v261 * v262 + 0x8000) >> 16)) >> 16)) | ((WORD1(v261) - ((WORD1(v261) * v262 + 0x8000 + ((WORD1(v261) * v262 + 0x8000) >> 16)) >> 16)) << 16), v260);
                  goto LABEL_359;
                }

                v264 = HIWORD(v263);
                if (HIWORD(v263))
                {
                  goto LABEL_358;
                }

                v265 = ((WORD2(v261) - ((WORD2(v261) * v262 + 0x8000 + ((WORD2(v261) * v262 + 0x8000) >> 16)) >> 16)) << 32) & 0xFFFFFFFFFFFFLL | (v261 - ((v261 * v262 + 0x8000 + ((v261 * v262 + 0x8000) >> 16)) >> 16)) | ((WORD1(v261) - ((WORD1(v261) * v262 + 0x8000 + ((WORD1(v261) * v262 + 0x8000) >> 16)) >> 16)) << 16) | (v260 << 48);
LABEL_359:
                *v7 = v265;
LABEL_360:
                v9 += v26;
                v266 = v14 + 8 * v26;
                if (v266 >= v25)
                {
                  v267 = v258;
                }

                else
                {
                  v267 = 0;
                }

                v14 = v266 + 8 * v267;
                v7 += v26;
                --v259;
              }

              while (v259);
              v9 += v474;
              v7 += v473;
              v268 = v476;
              v269 = v476 + 8 * v472;
              v270 = v461;
              if (v269 < v471)
              {
                v270 = 0;
              }

              v271 = v269 + 8 * v270;
              v272 = v25 + 8 * v270 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v272;
                v268 = v271;
                v14 = v271;
              }

              v47 = v477 == 1;
              v476 = v268;
              --v477;
              if (v47)
              {
                return;
              }
            }

          case 18:
            v353 = -v22;
            v465 = -(v472 * v23);
            while (1)
            {
              v354 = v475;
              do
              {
                if (!*v9)
                {
                  goto LABEL_496;
                }

                v355 = *v9 | (*v9 << 8);
                v357 = v355 ^ 0xFFFF;
                if (v21)
                {
                  if (HIWORD(*v14) == (HIWORD(*v14) * v357 + 0x8000 + ((HIWORD(*v14) * v357 + 0x8000) >> 16)) >> 16)
                  {
                    goto LABEL_496;
                  }

                  v355 = HIWORD(*v14) - ((HIWORD(*v14) * v357 + 0x8000 + ((HIWORD(*v14) * v357 + 0x8000) >> 16)) >> 16);
                }

                v356 = *v14;
                v358 = *v7;
                if (!v478)
                {
                  LODWORD(v359) = 0xFFFF;
LABEL_494:
                  v360 = PDAcolordodgePDA_15241(v358, v359, ((HIWORD(*v14) - ((HIWORD(*v14) * v357 + 0x8000 + ((HIWORD(*v14) * v357 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v356) - ((WORD2(v356) * v357 + 0x8000 + ((WORD2(v356) * v357 + 0x8000) >> 16)) >> 16)) << 32) | (v356 - ((v356 * v357 + 0x8000 + ((v356 * v357 + 0x8000) >> 16)) >> 16)) | ((WORD1(v356) - ((WORD1(v356) * v357 + 0x8000 + ((WORD1(v356) * v357 + 0x8000) >> 16)) >> 16)) << 16), v355);
                  goto LABEL_495;
                }

                v359 = HIWORD(v358);
                if (HIWORD(v358))
                {
                  goto LABEL_494;
                }

                v360 = ((WORD2(v356) - ((WORD2(v356) * v357 + 0x8000 + ((WORD2(v356) * v357 + 0x8000) >> 16)) >> 16)) << 32) & 0xFFFFFFFFFFFFLL | (v356 - ((v356 * v357 + 0x8000 + ((v356 * v357 + 0x8000) >> 16)) >> 16)) | ((WORD1(v356) - ((WORD1(v356) * v357 + 0x8000 + ((WORD1(v356) * v357 + 0x8000) >> 16)) >> 16)) << 16) | (v355 << 48);
LABEL_495:
                *v7 = v360;
LABEL_496:
                v9 += v26;
                v361 = v14 + 8 * v26;
                if (v361 >= v25)
                {
                  v362 = v353;
                }

                else
                {
                  v362 = 0;
                }

                v14 = v361 + 8 * v362;
                v7 += v26;
                --v354;
              }

              while (v354);
              v9 += v474;
              v7 += v473;
              v363 = v476;
              v364 = v476 + 8 * v472;
              v365 = v465;
              if (v364 < v471)
              {
                v365 = 0;
              }

              v366 = v364 + 8 * v365;
              v367 = v25 + 8 * v365 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v367;
                v363 = v366;
                v14 = v366;
              }

              v47 = v477 == 1;
              v476 = v363;
              --v477;
              if (v47)
              {
                return;
              }
            }

          case 19:
            v409 = -v22;
            v467 = -(v472 * v23);
            while (1)
            {
              v410 = v475;
              do
              {
                if (!*v9)
                {
                  goto LABEL_580;
                }

                v411 = *v9 | (*v9 << 8);
                v413 = v411 ^ 0xFFFF;
                if (v21)
                {
                  if (HIWORD(*v14) == (HIWORD(*v14) * v413 + 0x8000 + ((HIWORD(*v14) * v413 + 0x8000) >> 16)) >> 16)
                  {
                    goto LABEL_580;
                  }

                  v411 = HIWORD(*v14) - ((HIWORD(*v14) * v413 + 0x8000 + ((HIWORD(*v14) * v413 + 0x8000) >> 16)) >> 16);
                }

                v412 = *v14;
                v414 = *v7;
                if (!v478)
                {
                  LODWORD(v415) = 0xFFFF;
LABEL_578:
                  v416 = PDAcolorburnPDA_15242(v414, v415, ((HIWORD(*v14) - ((HIWORD(*v14) * v413 + 0x8000 + ((HIWORD(*v14) * v413 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v412) - ((WORD2(v412) * v413 + 0x8000 + ((WORD2(v412) * v413 + 0x8000) >> 16)) >> 16)) << 32) | (v412 - ((v412 * v413 + 0x8000 + ((v412 * v413 + 0x8000) >> 16)) >> 16)) | ((WORD1(v412) - ((WORD1(v412) * v413 + 0x8000 + ((WORD1(v412) * v413 + 0x8000) >> 16)) >> 16)) << 16), v411);
                  goto LABEL_579;
                }

                v415 = HIWORD(v414);
                if (HIWORD(v414))
                {
                  goto LABEL_578;
                }

                v416 = ((WORD2(v412) - ((WORD2(v412) * v413 + 0x8000 + ((WORD2(v412) * v413 + 0x8000) >> 16)) >> 16)) << 32) & 0xFFFFFFFFFFFFLL | (v412 - ((v412 * v413 + 0x8000 + ((v412 * v413 + 0x8000) >> 16)) >> 16)) | ((WORD1(v412) - ((WORD1(v412) * v413 + 0x8000 + ((WORD1(v412) * v413 + 0x8000) >> 16)) >> 16)) << 16) | (v411 << 48);
LABEL_579:
                *v7 = v416;
LABEL_580:
                v9 += v26;
                v417 = v14 + 8 * v26;
                if (v417 >= v25)
                {
                  v418 = v409;
                }

                else
                {
                  v418 = 0;
                }

                v14 = v417 + 8 * v418;
                v7 += v26;
                --v410;
              }

              while (v410);
              v9 += v474;
              v7 += v473;
              v419 = v476;
              v420 = v476 + 8 * v472;
              v421 = v467;
              if (v420 < v471)
              {
                v421 = 0;
              }

              v422 = v420 + 8 * v421;
              v423 = v25 + 8 * v421 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v423;
                v419 = v422;
                v14 = v422;
              }

              v47 = v477 == 1;
              v476 = v419;
              --v477;
              if (v47)
              {
                return;
              }
            }

          case 20:
            v273 = -v22;
            v462 = -(v472 * v23);
            while (1)
            {
              v274 = v475;
              do
              {
                if (!*v9)
                {
                  goto LABEL_384;
                }

                v275 = *v9 | (*v9 << 8);
                v277 = v275 ^ 0xFFFF;
                if (v21)
                {
                  if (HIWORD(*v14) == (HIWORD(*v14) * v277 + 0x8000 + ((HIWORD(*v14) * v277 + 0x8000) >> 16)) >> 16)
                  {
                    goto LABEL_384;
                  }

                  v275 = HIWORD(*v14) - ((HIWORD(*v14) * v277 + 0x8000 + ((HIWORD(*v14) * v277 + 0x8000) >> 16)) >> 16);
                }

                v276 = *v14;
                v278 = *v7;
                if (!v478)
                {
                  LODWORD(v279) = 0xFFFF;
LABEL_382:
                  v280 = PDAsoftlightPDA_15244(v278, v279, ((HIWORD(*v14) - ((HIWORD(*v14) * v277 + 0x8000 + ((HIWORD(*v14) * v277 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v276) - ((WORD2(v276) * v277 + 0x8000 + ((WORD2(v276) * v277 + 0x8000) >> 16)) >> 16)) << 32) | (v276 - ((v276 * v277 + 0x8000 + ((v276 * v277 + 0x8000) >> 16)) >> 16)) | ((WORD1(v276) - ((WORD1(v276) * v277 + 0x8000 + ((WORD1(v276) * v277 + 0x8000) >> 16)) >> 16)) << 16), v275);
                  goto LABEL_383;
                }

                v279 = HIWORD(v278);
                if (HIWORD(v278))
                {
                  goto LABEL_382;
                }

                v280 = ((WORD2(v276) - ((WORD2(v276) * v277 + 0x8000 + ((WORD2(v276) * v277 + 0x8000) >> 16)) >> 16)) << 32) & 0xFFFFFFFFFFFFLL | (v276 - ((v276 * v277 + 0x8000 + ((v276 * v277 + 0x8000) >> 16)) >> 16)) | ((WORD1(v276) - ((WORD1(v276) * v277 + 0x8000 + ((WORD1(v276) * v277 + 0x8000) >> 16)) >> 16)) << 16) | (v275 << 48);
LABEL_383:
                *v7 = v280;
LABEL_384:
                v9 += v26;
                v281 = v14 + 8 * v26;
                if (v281 >= v25)
                {
                  v282 = v273;
                }

                else
                {
                  v282 = 0;
                }

                v14 = v281 + 8 * v282;
                v7 += v26;
                --v274;
              }

              while (v274);
              v9 += v474;
              v7 += v473;
              v283 = v476;
              v284 = v476 + 8 * v472;
              v285 = v462;
              if (v284 < v471)
              {
                v285 = 0;
              }

              v286 = v284 + 8 * v285;
              v287 = v25 + 8 * v285 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v287;
                v283 = v286;
                v14 = v286;
              }

              v47 = v477 == 1;
              v476 = v283;
              --v477;
              if (v47)
              {
                return;
              }
            }

          case 21:
            v303 = -v22;
            v463 = -(v472 * v23);
            while (1)
            {
              v304 = v475;
              do
              {
                if (!*v9)
                {
                  goto LABEL_424;
                }

                v305 = *v9 | (*v9 << 8);
                v307 = v305 ^ 0xFFFF;
                if (v21)
                {
                  if (HIWORD(*v14) == (HIWORD(*v14) * v307 + 0x8000 + ((HIWORD(*v14) * v307 + 0x8000) >> 16)) >> 16)
                  {
                    goto LABEL_424;
                  }

                  v305 = HIWORD(*v14) - ((HIWORD(*v14) * v307 + 0x8000 + ((HIWORD(*v14) * v307 + 0x8000) >> 16)) >> 16);
                }

                v306 = *v14;
                v308 = *v7;
                if (!v478)
                {
                  LODWORD(v309) = 0xFFFF;
LABEL_422:
                  v310 = PDAhardlightPDA_15243(v308, v309, ((HIWORD(*v14) - ((HIWORD(*v14) * v307 + 0x8000 + ((HIWORD(*v14) * v307 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v306) - ((WORD2(v306) * v307 + 0x8000 + ((WORD2(v306) * v307 + 0x8000) >> 16)) >> 16)) << 32) | (v306 - ((v306 * v307 + 0x8000 + ((v306 * v307 + 0x8000) >> 16)) >> 16)) | ((WORD1(v306) - ((WORD1(v306) * v307 + 0x8000 + ((WORD1(v306) * v307 + 0x8000) >> 16)) >> 16)) << 16), v305);
                  goto LABEL_423;
                }

                v309 = HIWORD(v308);
                if (HIWORD(v308))
                {
                  goto LABEL_422;
                }

                v310 = ((WORD2(v306) - ((WORD2(v306) * v307 + 0x8000 + ((WORD2(v306) * v307 + 0x8000) >> 16)) >> 16)) << 32) & 0xFFFFFFFFFFFFLL | (v306 - ((v306 * v307 + 0x8000 + ((v306 * v307 + 0x8000) >> 16)) >> 16)) | ((WORD1(v306) - ((WORD1(v306) * v307 + 0x8000 + ((WORD1(v306) * v307 + 0x8000) >> 16)) >> 16)) << 16) | (v305 << 48);
LABEL_423:
                *v7 = v310;
LABEL_424:
                v9 += v26;
                v311 = v14 + 8 * v26;
                if (v311 >= v25)
                {
                  v312 = v303;
                }

                else
                {
                  v312 = 0;
                }

                v14 = v311 + 8 * v312;
                v7 += v26;
                --v304;
              }

              while (v304);
              v9 += v474;
              v7 += v473;
              v313 = v476;
              v314 = v476 + 8 * v472;
              v315 = v463;
              if (v314 < v471)
              {
                v315 = 0;
              }

              v316 = v314 + 8 * v315;
              v317 = v25 + 8 * v315 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v317;
                v313 = v316;
                v14 = v316;
              }

              v47 = v477 == 1;
              v476 = v313;
              --v477;
              if (v47)
              {
                return;
              }
            }

          case 22:
            v394 = -v22;
            v466 = -(v472 * v23);
            while (1)
            {
              v395 = v475;
              do
              {
                if (!*v9)
                {
                  goto LABEL_556;
                }

                v396 = *v9 | (*v9 << 8);
                v398 = v396 ^ 0xFFFF;
                if (v21)
                {
                  if (HIWORD(*v14) == (HIWORD(*v14) * v398 + 0x8000 + ((HIWORD(*v14) * v398 + 0x8000) >> 16)) >> 16)
                  {
                    goto LABEL_556;
                  }

                  v396 = HIWORD(*v14) - ((HIWORD(*v14) * v398 + 0x8000 + ((HIWORD(*v14) * v398 + 0x8000) >> 16)) >> 16);
                }

                v397 = *v14;
                v399 = *v7;
                if (!v478)
                {
                  LODWORD(v400) = 0xFFFF;
LABEL_554:
                  v401 = PDAdifferencePDA_15245(v399, v400, ((HIWORD(*v14) - ((HIWORD(*v14) * v398 + 0x8000 + ((HIWORD(*v14) * v398 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v397) - ((WORD2(v397) * v398 + 0x8000 + ((WORD2(v397) * v398 + 0x8000) >> 16)) >> 16)) << 32) | (v397 - ((v397 * v398 + 0x8000 + ((v397 * v398 + 0x8000) >> 16)) >> 16)) | ((WORD1(v397) - ((WORD1(v397) * v398 + 0x8000 + ((WORD1(v397) * v398 + 0x8000) >> 16)) >> 16)) << 16), v396);
                  goto LABEL_555;
                }

                v400 = HIWORD(v399);
                if (HIWORD(v399))
                {
                  goto LABEL_554;
                }

                v401 = ((WORD2(v397) - ((WORD2(v397) * v398 + 0x8000 + ((WORD2(v397) * v398 + 0x8000) >> 16)) >> 16)) << 32) & 0xFFFFFFFFFFFFLL | (v397 - ((v397 * v398 + 0x8000 + ((v397 * v398 + 0x8000) >> 16)) >> 16)) | ((WORD1(v397) - ((WORD1(v397) * v398 + 0x8000 + ((WORD1(v397) * v398 + 0x8000) >> 16)) >> 16)) << 16) | (v396 << 48);
LABEL_555:
                *v7 = v401;
LABEL_556:
                v9 += v26;
                v402 = v14 + 8 * v26;
                if (v402 >= v25)
                {
                  v403 = v394;
                }

                else
                {
                  v403 = 0;
                }

                v14 = v402 + 8 * v403;
                v7 += v26;
                --v395;
              }

              while (v395);
              v9 += v474;
              v7 += v473;
              v404 = v476;
              v405 = v476 + 8 * v472;
              v406 = v466;
              if (v405 < v471)
              {
                v406 = 0;
              }

              v407 = v405 + 8 * v406;
              v408 = v25 + 8 * v406 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v408;
                v404 = v407;
                v14 = v407;
              }

              v47 = v477 == 1;
              v476 = v404;
              --v477;
              if (v47)
              {
                return;
              }
            }

          case 23:
            v424 = -v22;
            v468 = -(v472 * v23);
            while (1)
            {
              v425 = v475;
              do
              {
                if (!*v9)
                {
                  goto LABEL_604;
                }

                v426 = *v9 | (*v9 << 8);
                v428 = v426 ^ 0xFFFF;
                if (v21)
                {
                  if (HIWORD(*v14) == (HIWORD(*v14) * v428 + 0x8000 + ((HIWORD(*v14) * v428 + 0x8000) >> 16)) >> 16)
                  {
                    goto LABEL_604;
                  }

                  v426 = HIWORD(*v14) - ((HIWORD(*v14) * v428 + 0x8000 + ((HIWORD(*v14) * v428 + 0x8000) >> 16)) >> 16);
                }

                v427 = *v14;
                v429 = *v7;
                if (!v478)
                {
                  LODWORD(v430) = 0xFFFF;
LABEL_602:
                  v431 = PDAexclusionPDA_15246(v429, v430, ((HIWORD(*v14) - ((HIWORD(*v14) * v428 + 0x8000 + ((HIWORD(*v14) * v428 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v427) - ((WORD2(v427) * v428 + 0x8000 + ((WORD2(v427) * v428 + 0x8000) >> 16)) >> 16)) << 32) | (v427 - ((v427 * v428 + 0x8000 + ((v427 * v428 + 0x8000) >> 16)) >> 16)) | ((WORD1(v427) - ((WORD1(v427) * v428 + 0x8000 + ((WORD1(v427) * v428 + 0x8000) >> 16)) >> 16)) << 16), v426);
                  goto LABEL_603;
                }

                v430 = HIWORD(v429);
                if (HIWORD(v429))
                {
                  goto LABEL_602;
                }

                v431 = ((WORD2(v427) - ((WORD2(v427) * v428 + 0x8000 + ((WORD2(v427) * v428 + 0x8000) >> 16)) >> 16)) << 32) & 0xFFFFFFFFFFFFLL | (v427 - ((v427 * v428 + 0x8000 + ((v427 * v428 + 0x8000) >> 16)) >> 16)) | ((WORD1(v427) - ((WORD1(v427) * v428 + 0x8000 + ((WORD1(v427) * v428 + 0x8000) >> 16)) >> 16)) << 16) | (v426 << 48);
LABEL_603:
                *v7 = v431;
LABEL_604:
                v9 += v26;
                v432 = v14 + 8 * v26;
                if (v432 >= v25)
                {
                  v433 = v424;
                }

                else
                {
                  v433 = 0;
                }

                v14 = v432 + 8 * v433;
                v7 += v26;
                --v425;
              }

              while (v425);
              v9 += v474;
              v7 += v473;
              v434 = v476;
              v435 = v476 + 8 * v472;
              v436 = v468;
              if (v435 < v471)
              {
                v436 = 0;
              }

              v437 = v435 + 8 * v436;
              v438 = v25 + 8 * v436 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v438;
                v434 = v437;
                v14 = v437;
              }

              v47 = v477 == 1;
              v476 = v434;
              --v477;
              if (v47)
              {
                return;
              }
            }

          case 24:
            v157 = -v22;
            v459 = -(v472 * v23);
            while (1)
            {
              v158 = v475;
              do
              {
                if (!*v9)
                {
                  goto LABEL_210;
                }

                v159 = *v9 | (*v9 << 8);
                v161 = v159 ^ 0xFFFF;
                if (v21)
                {
                  if (HIWORD(*v14) == (HIWORD(*v14) * v161 + 0x8000 + ((HIWORD(*v14) * v161 + 0x8000) >> 16)) >> 16)
                  {
                    goto LABEL_210;
                  }

                  v159 = HIWORD(*v14) - ((HIWORD(*v14) * v161 + 0x8000 + ((HIWORD(*v14) * v161 + 0x8000) >> 16)) >> 16);
                }

                v160 = *v14;
                v162 = *v7;
                if (!v478)
                {
                  LODWORD(v163) = 0xFFFF;
LABEL_208:
                  v164 = PDAhuePDA_15247(v162, v163, ((HIWORD(*v14) - ((HIWORD(*v14) * v161 + 0x8000 + ((HIWORD(*v14) * v161 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v160) - ((WORD2(v160) * v161 + 0x8000 + ((WORD2(v160) * v161 + 0x8000) >> 16)) >> 16)) << 32) | (v160 - ((v160 * v161 + 0x8000 + ((v160 * v161 + 0x8000) >> 16)) >> 16)) | ((WORD1(v160) - ((WORD1(v160) * v161 + 0x8000 + ((WORD1(v160) * v161 + 0x8000) >> 16)) >> 16)) << 16), v159);
                  goto LABEL_209;
                }

                v163 = HIWORD(v162);
                if (HIWORD(v162))
                {
                  goto LABEL_208;
                }

                v164 = ((WORD2(v160) - ((WORD2(v160) * v161 + 0x8000 + ((WORD2(v160) * v161 + 0x8000) >> 16)) >> 16)) << 32) & 0xFFFFFFFFFFFFLL | (v160 - ((v160 * v161 + 0x8000 + ((v160 * v161 + 0x8000) >> 16)) >> 16)) | ((WORD1(v160) - ((WORD1(v160) * v161 + 0x8000 + ((WORD1(v160) * v161 + 0x8000) >> 16)) >> 16)) << 16) | (v159 << 48);
LABEL_209:
                *v7 = v164;
LABEL_210:
                v9 += v26;
                v165 = v14 + 8 * v26;
                if (v165 >= v25)
                {
                  v166 = v157;
                }

                else
                {
                  v166 = 0;
                }

                v14 = v165 + 8 * v166;
                v7 += v26;
                --v158;
              }

              while (v158);
              v9 += v474;
              v7 += v473;
              v167 = v476;
              v168 = v476 + 8 * v472;
              v169 = v459;
              if (v168 < v471)
              {
                v169 = 0;
              }

              v170 = v168 + 8 * v169;
              v171 = v25 + 8 * v169 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v171;
                v167 = v170;
                v14 = v170;
              }

              v47 = v477 == 1;
              v476 = v167;
              --v477;
              if (v47)
              {
                return;
              }
            }

          case 25:
            v142 = -v22;
            v458 = -(v472 * v23);
            while (1)
            {
              v143 = v475;
              do
              {
                if (!*v9)
                {
                  goto LABEL_186;
                }

                v144 = *v9 | (*v9 << 8);
                v146 = v144 ^ 0xFFFF;
                if (v21)
                {
                  if (HIWORD(*v14) == (HIWORD(*v14) * v146 + 0x8000 + ((HIWORD(*v14) * v146 + 0x8000) >> 16)) >> 16)
                  {
                    goto LABEL_186;
                  }

                  v144 = HIWORD(*v14) - ((HIWORD(*v14) * v146 + 0x8000 + ((HIWORD(*v14) * v146 + 0x8000) >> 16)) >> 16);
                }

                v145 = *v14;
                v147 = *v7;
                if (!v478)
                {
                  LODWORD(v148) = 0xFFFF;
LABEL_184:
                  v149 = PDAsaturationPDA_15248(v147, v148, ((HIWORD(*v14) - ((HIWORD(*v14) * v146 + 0x8000 + ((HIWORD(*v14) * v146 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v145) - ((WORD2(v145) * v146 + 0x8000 + ((WORD2(v145) * v146 + 0x8000) >> 16)) >> 16)) << 32) | (v145 - ((v145 * v146 + 0x8000 + ((v145 * v146 + 0x8000) >> 16)) >> 16)) | ((WORD1(v145) - ((WORD1(v145) * v146 + 0x8000 + ((WORD1(v145) * v146 + 0x8000) >> 16)) >> 16)) << 16), v144);
                  goto LABEL_185;
                }

                v148 = HIWORD(v147);
                if (HIWORD(v147))
                {
                  goto LABEL_184;
                }

                v149 = ((WORD2(v145) - ((WORD2(v145) * v146 + 0x8000 + ((WORD2(v145) * v146 + 0x8000) >> 16)) >> 16)) << 32) & 0xFFFFFFFFFFFFLL | (v145 - ((v145 * v146 + 0x8000 + ((v145 * v146 + 0x8000) >> 16)) >> 16)) | ((WORD1(v145) - ((WORD1(v145) * v146 + 0x8000 + ((WORD1(v145) * v146 + 0x8000) >> 16)) >> 16)) << 16) | (v144 << 48);
LABEL_185:
                *v7 = v149;
LABEL_186:
                v9 += v26;
                v150 = v14 + 8 * v26;
                if (v150 >= v25)
                {
                  v151 = v142;
                }

                else
                {
                  v151 = 0;
                }

                v14 = v150 + 8 * v151;
                v7 += v26;
                --v143;
              }

              while (v143);
              v9 += v474;
              v7 += v473;
              v152 = v476;
              v153 = v476 + 8 * v472;
              v154 = v458;
              if (v153 < v471)
              {
                v154 = 0;
              }

              v155 = v153 + 8 * v154;
              v156 = v25 + 8 * v154 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v156;
                v152 = v155;
                v14 = v155;
              }

              v47 = v477 == 1;
              v476 = v152;
              --v477;
              if (v47)
              {
                return;
              }
            }

          case 26:
            v439 = -v22;
            v469 = -(v472 * v23);
            while (1)
            {
              v440 = v475;
              do
              {
                if (!*v9)
                {
                  goto LABEL_628;
                }

                v441 = *v9 | (*v9 << 8);
                v443 = v441 ^ 0xFFFF;
                if (v21)
                {
                  if (HIWORD(*v14) == (HIWORD(*v14) * v443 + 0x8000 + ((HIWORD(*v14) * v443 + 0x8000) >> 16)) >> 16)
                  {
                    goto LABEL_628;
                  }

                  v441 = HIWORD(*v14) - ((HIWORD(*v14) * v443 + 0x8000 + ((HIWORD(*v14) * v443 + 0x8000) >> 16)) >> 16);
                }

                v442 = *v14;
                v444 = *v7;
                if (!v478)
                {
                  LODWORD(v445) = 0xFFFF;
LABEL_626:
                  v446 = PDAluminosityPDA_15249(((HIWORD(*v14) - ((HIWORD(*v14) * v443 + 0x8000 + ((HIWORD(*v14) * v443 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v442) - ((WORD2(v442) * v443 + 0x8000 + ((WORD2(v442) * v443 + 0x8000) >> 16)) >> 16)) << 32) | (v442 - ((v442 * v443 + 0x8000 + ((v442 * v443 + 0x8000) >> 16)) >> 16)) | ((WORD1(v442) - ((WORD1(v442) * v443 + 0x8000 + ((WORD1(v442) * v443 + 0x8000) >> 16)) >> 16)) << 16), v441, v444, v445);
                  goto LABEL_627;
                }

                v445 = HIWORD(v444);
                if (HIWORD(v444))
                {
                  goto LABEL_626;
                }

                v446 = ((WORD2(v442) - ((WORD2(v442) * v443 + 0x8000 + ((WORD2(v442) * v443 + 0x8000) >> 16)) >> 16)) << 32) & 0xFFFFFFFFFFFFLL | (v442 - ((v442 * v443 + 0x8000 + ((v442 * v443 + 0x8000) >> 16)) >> 16)) | ((WORD1(v442) - ((WORD1(v442) * v443 + 0x8000 + ((WORD1(v442) * v443 + 0x8000) >> 16)) >> 16)) << 16) | (v441 << 48);
LABEL_627:
                *v7 = v446;
LABEL_628:
                v9 += v26;
                v447 = v14 + 8 * v26;
                if (v447 >= v25)
                {
                  v448 = v439;
                }

                else
                {
                  v448 = 0;
                }

                v14 = v447 + 8 * v448;
                v7 += v26;
                --v440;
              }

              while (v440);
              v9 += v474;
              v7 += v473;
              v449 = v476;
              v450 = v476 + 8 * v472;
              v451 = v469;
              if (v450 < v471)
              {
                v451 = 0;
              }

              v452 = v450 + 8 * v451;
              v453 = v25 + 8 * v451 + 8 * v472;
              if (v470)
              {
                v14 += 8 * v472;
              }

              else
              {
                v25 = v453;
                v449 = v452;
                v14 = v452;
              }

              v47 = v477 == 1;
              v476 = v449;
              --v477;
              if (v47)
              {
                return;
              }
            }

          case 27:
            v32 = -v22;
            v454 = -(v472 * v23);
            break;
          default:
            return;
        }

LABEL_27:
        v33 = v475;
        while (1)
        {
          if (*v9)
          {
            v34 = *v9 | (*v9 << 8);
            v36 = v34 ^ 0xFFFF;
            if (!v21)
            {
              goto LABEL_32;
            }

            if (HIWORD(*v14) != (HIWORD(*v14) * v36 + 0x8000 + ((HIWORD(*v14) * v36 + 0x8000) >> 16)) >> 16)
            {
              break;
            }
          }

LABEL_38:
          v9 += v26;
          v40 = v14 + 8 * v26;
          if (v40 >= v25)
          {
            v41 = v32;
          }

          else
          {
            v41 = 0;
          }

          v14 = v40 + 8 * v41;
          v7 += v26;
          if (!--v33)
          {
            v9 += v474;
            v7 += v473;
            v42 = v476;
            v43 = v476 + 8 * v472;
            v44 = v454;
            if (v43 < v471)
            {
              v44 = 0;
            }

            v45 = v43 + 8 * v44;
            v46 = v25 + 8 * v44 + 8 * v472;
            if (v470)
            {
              v14 += 8 * v472;
            }

            else
            {
              v25 = v46;
              v42 = v45;
              v14 = v45;
            }

            v47 = v477 == 1;
            v476 = v42;
            --v477;
            if (v47)
            {
              return;
            }

            goto LABEL_27;
          }
        }

        v34 = HIWORD(*v14) - ((HIWORD(*v14) * v36 + 0x8000 + ((HIWORD(*v14) * v36 + 0x8000) >> 16)) >> 16);
LABEL_32:
        v35 = *v14;
        v37 = *v7;
        if (v478)
        {
          v38 = HIWORD(v37);
          if (!HIWORD(v37))
          {
            v39 = ((WORD2(v35) - ((WORD2(v35) * v36 + 0x8000 + ((WORD2(v35) * v36 + 0x8000) >> 16)) >> 16)) << 32) & 0xFFFFFFFFFFFFLL | (v35 - ((v35 * v36 + 0x8000 + ((v35 * v36 + 0x8000) >> 16)) >> 16)) | ((WORD1(v35) - ((WORD1(v35) * v36 + 0x8000 + ((WORD1(v35) * v36 + 0x8000) >> 16)) >> 16)) << 16) | (v34 << 48);
LABEL_37:
            *v7 = v39;
            goto LABEL_38;
          }
        }

        else
        {
          LODWORD(v38) = 0xFFFF;
        }

        v39 = PDAluminosityPDA_15249(v37, v38, ((HIWORD(*v14) - ((HIWORD(*v14) * v36 + 0x8000 + ((HIWORD(*v14) * v36 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v35) - ((WORD2(v35) * v36 + 0x8000 + ((WORD2(v35) * v36 + 0x8000) >> 16)) >> 16)) << 32) | (v35 - ((v35 * v36 + 0x8000 + ((v35 * v36 + 0x8000) >> 16)) >> 16)) | ((WORD1(v35) - ((WORD1(v35) * v36 + 0x8000 + ((WORD1(v35) * v36 + 0x8000) >> 16)) >> 16)) << 16), v34);
        goto LABEL_37;
      }

      v14 = 0;
      v25 = 0;
      v26 = 1;
      v27 = *(a1 + 68);
LABEL_15:
      v476 = 0;
      v471 = 0;
      v472 = v20 - v3;
      v22 = v13;
      v23 = v27;
      v470 = 1;
      goto LABEL_16;
    }

    v13 = v12 >> 3;
    v14 = v5 + 8 * (v12 >> 3) * v11 + 8 * v10;
    if (v12 >> 3 != v6)
    {
      v18 = 1;
LABEL_14:
      v27 = 0;
      v3 = v18 * v475;
      v21 = v4 != 0;
      v474 = v8 - v3;
      v473 = v6 - v3;
      v26 = v18;
      v25 = -1;
      v20 = v13;
      goto LABEL_15;
    }

    v15 = (v7 - v14) >> 3;
    if (v15 >= 1)
    {
      if (v15 <= v475)
      {
        v28 = v475 - 1;
        v7 += v28;
        v14 += 8 * v28;
        v9 += v28;
        v18 = -1;
        goto LABEL_13;
      }

      v16 = *(a1 + 8) - 1;
      v17 = v14 + 8 * v6 * v16;
      if (v7 <= v17 + 8 * v475 - 8)
      {
        v7 += v6 * v16;
        v13 = -v6;
        v9 += v8 * v16;
        v8 = -v8;
        v18 = 1;
        v14 = v17;
        v6 = -v6;
        goto LABEL_14;
      }
    }

    v18 = 1;
LABEL_13:
    v13 = *(a1 + 28) >> 3;
    goto LABEL_14;
  }
}