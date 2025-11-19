void sub_1002DD0CC(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DD104(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v81, &off_1004775C0);
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 - *a2;
  if (v5 > *a2)
  {
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    v9 = v7 * v4;
    v10 = v8 + v9;
    v12 = *(a1 + 24);
    v11 = *(a1 + 32);
    v13 = v11 * v4;
    v14 = v12 + v13;
    v15 = *(a1 + 40);
    if (**(a1 + 48) == 3)
    {
      if (v15 >= 1)
      {
        if (v15 > 7)
        {
          v45 = v4 + (v5 + ~v4);
          _CF = v10 >= v12 + v11 * v45 + 12 * v15 || v14 >= v8 + v7 * v45 + 4 * v15;
          if (!_CF || (v11 | v7) < 0)
          {
            v72 = 4 * v15;
            v73 = v13 + v12 + 4;
            do
            {
              v74 = 0;
              v75 = v73;
              do
              {
                v76 = *(v10 + v74);
                *v75 = v76;
                v75[1] = v76;
                *(v75 - 1) = v76;
                v74 += 4;
                v75 += 3;
              }

              while (v72 != v74);
              ++v4;
              v10 += v7;
              v73 += v11;
            }

            while (v4 != v5);
          }

          else
          {
            v47 = v9 + v8 + 16;
            v48 = v13 + 12 * (v15 & 0x7FFFFFF8) + v12 + 4;
            do
            {
              v49 = v15 & 0x7FFFFFF8;
              v50 = v47;
              v51 = v14;
              do
              {
                v83.val[0] = v50[-1];
                v84.val[0] = *v50;
                v83.val[1] = v83.val[0];
                v83.val[2] = v83.val[0];
                v84.val[1] = *v50;
                v84.val[2] = *v50;
                v52 = v51 + 24;
                vst3q_f32(v51, v83);
                v53 = v51 + 12;
                vst3q_f32(v53, v84);
                v50 += 2;
                v51 = v52;
                v49 -= 8;
              }

              while (v49);
              if ((v15 & 0x7FFFFFF8) != v15)
              {
                v54 = v48;
                v55 = v15 & 0x7FFFFFF8;
                do
                {
                  v56 = *(v10 + 4 * v55);
                  *v54 = v56;
                  v54[1] = v56;
                  *(v54 - 1) = v56;
                  ++v55;
                  v54 += 3;
                }

                while (v15 != v55);
              }

              ++v4;
              v10 += v7;
              v14 += v11;
              v47 += v7;
              v48 += v11;
            }

            while (v4 != v5);
          }
        }

        else
        {
          v16 = (v9 + v8 + 12);
          v17 = (v13 + v12 + 40);
          do
          {
            v18 = *(v16 - 3);
            *(v17 - 9) = v18;
            *(v17 - 8) = v18;
            *(v17 - 10) = v18;
            if (v15 != 1)
            {
              v19 = *(v16 - 2);
              *(v17 - 6) = v19;
              *(v17 - 5) = v19;
              *(v17 - 7) = v19;
              if (v15 != 2)
              {
                v20 = *(v16 - 1);
                *(v17 - 3) = v20;
                *(v17 - 2) = v20;
                *(v17 - 4) = v20;
                if (v15 != 3)
                {
                  v21 = *v16;
                  *v17 = *v16;
                  v17[1] = v21;
                  *(v17 - 1) = v21;
                  if (v15 != 4)
                  {
                    v22 = v16[1];
                    v17[3] = v22;
                    v17[4] = v22;
                    v17[2] = v22;
                    if (v15 != 5)
                    {
                      v23 = v16[2];
                      v17[6] = v23;
                      v17[7] = v23;
                      v17[5] = v23;
                      if (v15 != 6)
                      {
                        v24 = v16[3];
                        v17[9] = v24;
                        v17[10] = v24;
                        v17[8] = v24;
                      }
                    }
                  }
                }
              }
            }

            v16 = (v16 + v7);
            v17 = (v17 + v11);
            --v6;
          }

          while (v6);
        }
      }
    }

    else if (v15 >= 1)
    {
      if (v15 > 7)
      {
        v57 = v4 + (v5 + ~v4);
        v58 = v10 >= v12 + v11 * v57 + 16 * v15 || v14 >= v8 + v7 * v57 + 4 * v15;
        if (!v58 || (v11 | v7) < 0)
        {
          __asm { FMOV            V0.4S, #1.0 }

          do
          {
            for (i = 0; i != v15; ++i)
            {
              v79 = _Q0;
              v79.i32[0] = *(v10 + 4 * i);
              v80 = vzip1q_s32(v79, v79);
              v80.i32[2] = *(v10 + 4 * i);
              *(v14 + 16 * i) = v80;
            }

            ++v4;
            v10 += v7;
            v14 += v11;
          }

          while (v4 != v5);
        }

        else
        {
          v59 = v13 + v12 + 64;
          v60 = v9 + v8 + 16;
          __asm { FMOV            V3.4S, #1.0 }

          do
          {
            v62 = v60;
            v63 = v59;
            v64 = v15 & 0x7FFFFFF8;
            do
            {
              v65 = v63 - 16;
              v66 = v62[-1];
              v85.val[0] = *v62;
              v67 = v66;
              v68 = v66;
              v85.val[1] = *v62;
              v85.val[2] = *v62;
              v85.val[3] = _Q3;
              vst4q_f32(v65, *(&_Q3 - 3));
              vst4q_f32(v63, v85);
              v63 += 32;
              v62 += 2;
              v64 -= 8;
            }

            while (v64);
            if ((v15 & 0x7FFFFFF8) != v15)
            {
              v69 = v15 & 0x7FFFFFF8;
              do
              {
                v70 = _Q3;
                v70.i32[0] = *(v10 + 4 * v69);
                v71 = vzip1q_s32(v70, v70);
                v71.i32[2] = *(v10 + 4 * v69);
                *(v14 + 16 * v69++) = v71;
              }

              while (v15 != v69);
            }

            ++v4;
            v10 += v7;
            v14 += v11;
            v59 += v11;
            v60 += v7;
          }

          while (v4 != v5);
        }
      }

      else
      {
        v25 = (v9 + v8 + 12);
        v26 = (v13 + v12 + 48);
        __asm { FMOV            V0.4S, #1.0 }

        do
        {
          v31 = _Q0;
          v31.i32[0] = *(v25 - 3);
          v32 = vzip1q_s32(v31, v31);
          v32.i32[2] = *(v25 - 3);
          v26[-3] = v32;
          if (v15 != 1)
          {
            v33 = _Q0;
            v33.i32[0] = *(v25 - 2);
            v34 = vzip1q_s32(v33, v33);
            v34.i32[2] = *(v25 - 2);
            v26[-2] = v34;
            if (v15 != 2)
            {
              v35 = _Q0;
              v35.i32[0] = *(v25 - 1);
              v36 = vzip1q_s32(v35, v35);
              v36.i32[2] = *(v25 - 1);
              v26[-1] = v36;
              if (v15 != 3)
              {
                v37 = _Q0;
                v37.i32[0] = *v25;
                v38 = vzip1q_s32(v37, v37);
                v38.i32[2] = *v25;
                *v26 = v38;
                if (v15 != 4)
                {
                  v39 = _Q0;
                  v39.i32[0] = v25[1];
                  v40 = vzip1q_s32(v39, v39);
                  v40.i32[2] = v25[1];
                  v26[1] = v40;
                  if (v15 != 5)
                  {
                    v41 = _Q0;
                    v41.i32[0] = v25[2];
                    v42 = vzip1q_s32(v41, v41);
                    v42.i32[2] = v25[2];
                    v26[2] = v42;
                    if (v15 != 6)
                    {
                      v43 = _Q0;
                      v43.i32[0] = v25[3];
                      v44 = vzip1q_s32(v43, v43);
                      v44.i32[2] = v25[3];
                      v26[3] = v44;
                    }
                  }
                }
              }
            }
          }

          v25 = (v25 + v7);
          v26 = (v26 + v11);
          --v6;
        }

        while (v6);
      }
    }
  }

  if (v82)
  {
    sub_1002ACC1C(v81);
  }
}

void sub_1002DD5A8(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DD5E0(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477620);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = *(a1 + 24) + *(a1 + 32) * v4;
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002DD6A8(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

uint64_t sub_1002DD6A8(uint64_t result, int16x8_t *a2, uint64_t a3, unsigned int a4)
{
  if (*result != 6)
  {
    if (a4 >= 8)
    {
      v5 = 0;
      v24 = a2;
      do
      {
        v25 = *v24++;
        v27 = *(result + 32);
        v26 = *(result + 48);
        v28 = vandq_s8(vshlq_n_s16(v25, 3uLL), v26);
        v29 = vandq_s8(vshrq_n_u16(v25, 2uLL), v26);
        v30 = vandq_s8(vshrq_n_u16(v25, 7uLL), v26);
        v26.i64[0] = *(result + 8);
        v31 = *(result + 16);
        v32 = *(result + 24);
        v33 = vmlal_u16(vmlal_u16(vmull_u16(*v29.i8, v31), *v28.i8, *v26.i8), *v30.i8, v32);
        v34 = vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(*&vextq_s8(v29, v29, 8uLL), v31), *&vextq_s8(v28, v28, 8uLL), *v26.i8), *&vextq_s8(v30, v30, 8uLL), v32), v27);
        v93.val[0] = vshrq_n_u32(vaddq_s32(v33, v27), 0xEuLL);
        v93.val[1] = vshrq_n_u32(v34, 0xEuLL);
        *(a3 + v5) = vqtbl2q_s8(v93, xmmword_1003E3780).u64[0];
        v5 += 8;
      }

      while (v5 <= a4 - 8);
    }

    else
    {
      LODWORD(v5) = 0;
    }

    if (v5 >= a4)
    {
      return result;
    }

    v35 = a4 - v5;
    if (v35 < 4 || (v36 = (a2 + 2 * v5), a3 + v5 < a2 + 2 * a4) && v36 < a3 + a4)
    {
      v37 = v5;
      goto LABEL_23;
    }

    if (v35 >= 0x10)
    {
      v43 = v35 & 0xFFFFFFFFFFFFFFF0;
      v69 = (a3 + v5);
      v70.i64[0] = 0xF8000000F8;
      v70.i64[1] = 0xF8000000F8;
      v71 = vdup_n_s16(0x74Cu);
      v72 = vdup_n_s16(0x2591u);
      v73 = vdup_n_s16(0x1323u);
      v74.i64[0] = 0x200000002000;
      v74.i64[1] = 0x200000002000;
      v75 = v35 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v77 = *v36;
        v76 = v36[1];
        v36 += 2;
        v78 = vmovl_u16(*v77.i8);
        v79 = vmovl_u16(*v76.i8);
        v80 = vmovl_high_u16(v77);
        v81 = vmovl_high_u16(v76);
        v94.val[3] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v81, 2uLL), v70)), v72), vmovn_s32(vandq_s8(vshll_high_n_u16(v76, 3uLL), v70)), v71), vmovn_s32(vandq_s8(vshrq_n_u32(v81, 7uLL), v70)), v73), v74), 0xEuLL);
        v94.val[1] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v80, 2uLL), v70)), v72), vmovn_s32(vandq_s8(vshll_high_n_u16(v77, 3uLL), v70)), v71), vmovn_s32(vandq_s8(vshrq_n_u32(v80, 7uLL), v70)), v73), v74), 0xEuLL);
        v94.val[2] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v79, 2uLL), v70)), v72), vmovn_s32(vandq_s8(vshll_n_u16(*v76.i8, 3uLL), v70)), v71), vmovn_s32(vandq_s8(vshrq_n_u32(v79, 7uLL), v70)), v73), v74), 0xEuLL);
        v94.val[0] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v78, 2uLL), v70)), v72), vmovn_s32(vandq_s8(vshll_n_u16(*v77.i8, 3uLL), v70)), v71), vmovn_s32(vandq_s8(vshrq_n_u32(v78, 7uLL), v70)), v73), v74), 0xEuLL);
        *v69++ = vqtbl4q_s8(v94, xmmword_1003E36F0);
        v75 -= 16;
      }

      while (v75);
      if (v35 == v43)
      {
        return result;
      }

      if ((v35 & 0xC) == 0)
      {
        v37 = v43 + v5;
        goto LABEL_23;
      }
    }

    else
    {
      v43 = 0;
    }

    v37 = (v35 & 0xFFFFFFFFFFFFFFFCLL) + v5;
    v82 = v43 - (v35 & 0xFFFFFFFFFFFFFFFCLL);
    v83 = v43 + v5;
    v84 = (a3 + v83);
    v85.i64[0] = 0xF8000000F8;
    v85.i64[1] = 0xF8000000F8;
    v86 = vdup_n_s16(0x74Cu);
    v87 = vdup_n_s16(0x2591u);
    v88 = (a2 + 2 * v83);
    v89 = vdup_n_s16(0x1323u);
    do
    {
      v90 = *v88++;
      v91 = vmovl_u16(v90);
      *v84++ = vuzp1_s8(vrshrn_n_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v91, 2uLL), v85)), v87), vmovn_s32(vandq_s8(vshll_n_u16(v90, 3uLL), v85)), v86), vmovn_s32(vandq_s8(vshrq_n_u32(v91, 7uLL), v85)), v89), 0xEuLL), *v85.i8).u32[0];
      v82 += 4;
    }

    while (v82);
    if (v35 == (v35 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_23:
    v38 = (a3 + v37);
    v39 = a4 - v37;
    v40 = a2 + v37;
    do
    {
      v41 = *v40++;
      *v38++ = (14944 * (v41 & 0x1F) + 9617 * ((v41 >> 2) & 0xF8) + 4899 * ((v41 >> 7) & 0xF8) + 0x2000) >> 14;
      --v39;
    }

    while (v39);
    return result;
  }

  if (a4 >= 8)
  {
    v4 = 0;
    v6 = a2;
    do
    {
      v7 = *v6++;
      v9 = *(result + 32);
      v8 = *(result + 48);
      v10 = vandq_s8(vshlq_n_s16(v7, 3uLL), v8);
      v11 = vandq_s8(*(result + 64), vshrq_n_u16(v7, 3uLL));
      v12 = vandq_s8(vshrq_n_u16(v7, 8uLL), v8);
      v8.i64[0] = *(result + 8);
      v13 = *(result + 16);
      v14 = *(result + 24);
      v15 = vmlal_u16(vmlal_u16(vmull_u16(*v11.i8, v13), *v10.i8, *v8.i8), *v12.i8, v14);
      v16 = vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(*&vextq_s8(v11, v11, 8uLL), v13), *&vextq_s8(v10, v10, 8uLL), *v8.i8), *&vextq_s8(v12, v12, 8uLL), v14), v9);
      v92.val[0] = vshrq_n_u32(vaddq_s32(v15, v9), 0xEuLL);
      v92.val[1] = vshrq_n_u32(v16, 0xEuLL);
      *(a3 + v4) = vqtbl2q_s8(v92, xmmword_1003E3780).u64[0];
      v4 += 8;
    }

    while (v4 <= a4 - 8);
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 < a4)
  {
    v17 = a4 - v4;
    if (v17 < 4 || (v18 = (a2 + 2 * v4), a3 + v4 < a2 + 2 * a4) && v18 < a3 + a4)
    {
      v19 = v4;
      goto LABEL_13;
    }

    if (v17 >= 0x10)
    {
      v42 = v17 & 0xFFFFFFFFFFFFFFF0;
      v44 = (a3 + v4);
      v45 = vdup_n_s16(0x74Cu);
      v46.i64[0] = 0xF8000000F8;
      v46.i64[1] = 0xF8000000F8;
      v47.i64[0] = 0xFC000000FCLL;
      v47.i64[1] = 0xFC000000FCLL;
      v48 = vdup_n_s16(0x2591u);
      v49 = vdup_n_s16(0x1323u);
      v50.i64[0] = 0x200000002000;
      v50.i64[1] = 0x200000002000;
      v51 = v17 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v53 = *v18;
        v52 = v18[1];
        v18 += 2;
        v54 = vmovl_u16(*v53.i8);
        v55 = vmovl_u16(*v52.i8);
        v56 = vmovl_high_u16(v53);
        v57 = vmovl_high_u16(v52);
        v95.val[3] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v57, 3uLL), v47)), v48), vmovn_s32(vandq_s8(vshll_high_n_u16(v52, 3uLL), v46)), v45), vmovn_s32((*&vshrq_n_u32(v57, 8uLL) & __PAIR128__(0xFFFFFFF8FFFFFFF8, 0xFFFFFFF8FFFFFFF8))), v49), v50), 0xEuLL);
        v95.val[1] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v56, 3uLL), v47)), v48), vmovn_s32(vandq_s8(vshll_high_n_u16(v53, 3uLL), v46)), v45), vmovn_s32((*&vshrq_n_u32(v56, 8uLL) & __PAIR128__(0xFFFFFFF8FFFFFFF8, 0xFFFFFFF8FFFFFFF8))), v49), v50), 0xEuLL);
        v95.val[2] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v55, 3uLL), v47)), v48), vmovn_s32(vandq_s8(vshll_n_u16(*v52.i8, 3uLL), v46)), v45), vmovn_s32((*&vshrq_n_u32(v55, 8uLL) & __PAIR128__(0xFFFFFFF8FFFFFFF8, 0xFFFFFFF8FFFFFFF8))), v49), v50), 0xEuLL);
        v95.val[0] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v54, 3uLL), v47)), v48), vmovn_s32(vandq_s8(vshll_n_u16(*v53.i8, 3uLL), v46)), v45), vmovn_s32((*&vshrq_n_u32(v54, 8uLL) & __PAIR128__(0xFFFFFFF8FFFFFFF8, 0xFFFFFFF8FFFFFFF8))), v49), v50), 0xEuLL);
        *v44++ = vqtbl4q_s8(v95, xmmword_1003E36F0);
        v51 -= 16;
      }

      while (v51);
      if (v17 == v42)
      {
        return result;
      }

      if ((v17 & 0xC) == 0)
      {
        v19 = v42 + v4;
LABEL_13:
        v20 = (a3 + v19);
        v21 = a4 - v19;
        v22 = a2 + v19;
        do
        {
          v23 = *v22++;
          *v20++ = (14944 * (v23 & 0x1F) + 9617 * ((v23 >> 3) & 0xFC) + 4899 * ((v23 >> 8) & 0xF8) + 0x2000) >> 14;
          --v21;
        }

        while (v21);
        return result;
      }
    }

    else
    {
      v42 = 0;
    }

    v19 = (v17 & 0xFFFFFFFFFFFFFFFCLL) + v4;
    v58 = v42 - (v17 & 0xFFFFFFFFFFFFFFFCLL);
    v59 = v42 + v4;
    v60 = (a3 + v59);
    v61.i64[0] = 0xF8000000F8;
    v61.i64[1] = 0xF8000000F8;
    v62 = vdup_n_s16(0x74Cu);
    v63.i64[0] = 0xFC000000FCLL;
    v63.i64[1] = 0xFC000000FCLL;
    v64 = (a2 + 2 * v59);
    v65 = vdup_n_s16(0x2591u);
    v66 = vdup_n_s16(0x1323u);
    do
    {
      v67 = *v64++;
      v68 = vmovl_u16(v67);
      *v60++ = vuzp1_s8(vrshrn_n_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v68, 3uLL), v63)), v65), vmovn_s32(vandq_s8(vshll_n_u16(v67, 3uLL), v61)), v62), vmovn_s32((*&vshrq_n_u32(v68, 8uLL) & __PAIR128__(0xFFFFFFF8FFFFFFF8, 0xFFFFFFF8FFFFFFF8))), v66), 0xEuLL), *v61.i8).u32[0];
      v58 += 4;
    }

    while (v58);
    if (v17 != (v17 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_13;
    }
  }

  return result;
}

void sub_1002DDCE4(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DDD1C(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v56, &off_100477680);
  v5 = *a2;
  if (*a2 < a2[1])
  {
    v6 = (*(a1 + 24) + *(a1 + 32) * v5);
    v7 = *(a1 + 8) + *(a1 + 16) * v5;
    v8 = vdup_n_s16(0x421u);
    v9 = vdupq_n_s16(0x421u);
    do
    {
      v10 = *(a1 + 48);
      v11 = *(a1 + 40);
      if (v10->i32[0] == 6)
      {
        if (v11 >= 8)
        {
          v12 = 0;
          v14 = v6;
          do
          {
            v4 = vorrq_s8(vorrq_s8(vshll_n_u8(vand_s8(v10[2], *(v7 + v12)), 3uLL), vmovl_u8(vshr_n_u8(*(v7 + v12), 3uLL))), vshll_n_s8(vand_s8(v10[1], *(v7 + v12)), 8uLL));
            *v14++ = v4;
            v12 += 8;
          }

          while (v12 <= (v11 - 8));
          v12 = v12;
          if (v12 >= v11)
          {
            goto LABEL_3;
          }

LABEL_14:
          v15 = v11 - v12;
          if (v11 - v12 < 4 || (v16 = (v6 + 2 * v12), v16 < v7 + v11) && v7 + v12 < v6 + 2 * v11)
          {
            v17 = v12;
            goto LABEL_18;
          }

          if (v15 >= 0x10)
          {
            v31 = v15 & 0xFFFFFFFFFFFFFFF0;
            v33 = (v7 + v12);
            v34 = v15 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v35 = *v33++;
              v36 = vqtbl1q_s8(v35, xmmword_1003E3710);
              v37 = vqtbl1q_s8(v35, xmmword_1003E3700);
              v38 = vqtbl1q_s8(v35, xmmword_1003E3730);
              v39 = vqtbl1q_s8(v35, xmmword_1003E3720);
              v4 = vuzp1q_s16(vorrq_s8(vsraq_n_u32((*&vshlq_n_s32(v39, 3uLL) & __PAIR128__(0xFFFFFFE7FFFFFFE7, 0xFFFFFFE7FFFFFFE7)), v39, 3uLL), (*&vshlq_n_s32(v39, 8uLL) & __PAIR128__(0xFFFFF8FFFFFFF8FFLL, 0xFFFFF8FFFFFFF8FFLL))), vorrq_s8(vsraq_n_u32((*&vshlq_n_s32(v38, 3uLL) & __PAIR128__(0xFFFFFFE7FFFFFFE7, 0xFFFFFFE7FFFFFFE7)), v38, 3uLL), (*&vshlq_n_s32(v38, 8uLL) & __PAIR128__(0xFFFFF8FFFFFFF8FFLL, 0xFFFFF8FFFFFFF8FFLL))));
              *v16 = v4;
              v16[1] = vuzp1q_s16(vorrq_s8(vsraq_n_u32((*&vshlq_n_s32(v37, 3uLL) & __PAIR128__(0xFFFFFFE7FFFFFFE7, 0xFFFFFFE7FFFFFFE7)), v37, 3uLL), (*&vshlq_n_s32(v37, 8uLL) & __PAIR128__(0xFFFFF8FFFFFFF8FFLL, 0xFFFFF8FFFFFFF8FFLL))), vorrq_s8(vsraq_n_u32((*&vshlq_n_s32(v36, 3uLL) & __PAIR128__(0xFFFFFFE7FFFFFFE7, 0xFFFFFFE7FFFFFFE7)), v36, 3uLL), (*&vshlq_n_s32(v36, 8uLL) & __PAIR128__(0xFFFFF8FFFFFFF8FFLL, 0xFFFFF8FFFFFFF8FFLL))));
              v16 += 2;
              v34 -= 16;
            }

            while (v34);
            if (v15 == v31)
            {
              goto LABEL_3;
            }

            if ((v15 & 0xC) == 0)
            {
              v17 = v31 + v12;
LABEL_18:
              v18 = v11 - v17;
              v19 = &v6->i16[v17];
              v20 = (v7 + v17);
              do
              {
                v21 = *v20++;
                *v19++ = (v21 >> 3) & 0x1F | (32 * (v21 >> 2)) & 0x7FF | (v21 >> 3 << 11);
                --v18;
              }

              while (v18);
              goto LABEL_3;
            }
          }

          else
          {
            v31 = 0;
          }

          v17 = (v15 & 0xFFFFFFFFFFFFFFFCLL) + v12;
          v40 = v31 - (v15 & 0xFFFFFFFFFFFFFFFCLL);
          v41 = v31 + v12;
          v42 = (v7 + v41);
          v43 = (v6->i64 + 2 * v41);
          do
          {
            v44 = *v42++;
            v4.i32[0] = v44;
            v45 = vmovl_u8(*v4.i8).u64[0];
            *v4.i8 = vmovn_s32(vorrq_s8(vsraq_n_u32((*&vshll_n_u16(v45, 3uLL) & __PAIR128__(0xFFFFFFE7FFFFFFE7, 0xFFFFFFE7FFFFFFE7)), vmovl_u16(v45), 3uLL), (*&vshll_n_u16(v45, 8uLL) & __PAIR128__(0xFFFFF8FFFFFFF8FFLL, 0xFFFFF8FFFFFFF8FFLL))));
            *v43++ = v4.i64[0];
            v40 += 4;
          }

          while (v40);
          if (v15 == (v15 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_3;
          }

          goto LABEL_18;
        }

        v12 = 0;
        if (v11 > 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v11 >= 8)
        {
          v22 = 0;
          v23 = v6;
          do
          {
            v4 = vmulq_s16(vmovl_u8(vshr_n_u8(*(v7 + v22), 3uLL)), v9);
            *v23++ = v4;
            v22 += 8;
          }

          while (v22 <= (v11 - 8));
          v13 = v22;
          if (v22 >= v11)
          {
            goto LABEL_3;
          }

LABEL_24:
          v24 = v11 - v13;
          if ((v11 - v13) < 4 || (v25 = (v6 + 2 * v13), v25 < v7 + v11) && v7 + v13 < v6 + 2 * v11)
          {
            v26 = v13;
            goto LABEL_28;
          }

          if (v24 >= 0x20)
          {
            v32 = v24 & 0xFFFFFFFFFFFFFFE0;
            v46 = (v7 + v13 + 16);
            v47 = v25 + 2;
            v48 = v24 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v49 = vshrq_n_u8(v46[-1], 3uLL);
              v50 = vshrq_n_u8(*v46, 3uLL);
              v47[-2] = vmulq_s16(vmovl_u8(*v49.i8), v9);
              v47[-1] = vmulq_s16(vmovl_high_u8(v49), v9);
              v4 = vmulq_s16(vmovl_high_u8(v50), v9);
              *v47 = vmulq_s16(vmovl_u8(*v50.i8), v9);
              v47[1] = v4;
              v47 += 4;
              v46 += 2;
              v48 -= 32;
            }

            while (v48);
            if (v24 == v32)
            {
              goto LABEL_3;
            }

            if ((v24 & 0x1C) == 0)
            {
              v26 = v32 + v13;
LABEL_28:
              v27 = v11 - v26;
              v28 = &v6->i16[v26];
              v29 = (v7 + v26);
              do
              {
                v30 = *v29++;
                *v28++ = 1057 * (v30 >> 3);
                --v27;
              }

              while (v27);
              goto LABEL_3;
            }
          }

          else
          {
            v32 = 0;
          }

          v26 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + v13;
          v51 = v32 - (v24 & 0xFFFFFFFFFFFFFFFCLL);
          v52 = v32 + v13;
          v53 = (v7 + v52);
          v54 = (v6->i64 + 2 * v52);
          do
          {
            v55 = *v53++;
            v4.i32[0] = v55;
            *v4.i8 = vmul_s16(vshr_n_u16(*&vmovl_u8(*v4.i8), 3uLL), v8);
            *v54++ = v4.i64[0];
            v51 += 4;
          }

          while (v51);
          if (v24 == (v24 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_3;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 > 0)
        {
          goto LABEL_24;
        }
      }

LABEL_3:
      ++v5;
      v7 += *(a1 + 16);
      v6 = (v6 + *(a1 + 32));
    }

    while (v5 < a2[1]);
  }

  if (v57)
  {
    sub_1002ACC1C(v56);
  }
}

void sub_1002DE138(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DE170(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_1004776E0);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = *(a1 + 24) + *(a1 + 32) * v4;
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002DE238(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

uint64_t sub_1002DE238(uint64_t result, const char *a2, uint64_t a3, int a4)
{
  v4 = *result;
  v5 = *(result + 4);
  v6 = *(result + 28) ^ 1;
  v7 = *(result + 8);
  v8 = *(result + 12);
  v9 = *(result + 16);
  v10 = *(result + 20);
  v11 = *(result + 24);
  v12 = 3 * a4;
  if (a4 >= 8)
  {
    v13 = 0;
    v22 = v5 ^ 2;
    do
    {
      if (v4 == 3)
      {
        *v44.val[0].i8 = vld3_s8(a2);
      }

      else
      {
        v44 = vld4_s8(a2);
      }

      v23 = vmovl_u8(v44.val[2]);
      v24 = vmovl_u8(v44.val[1]);
      v25 = vmovl_u8(v44.val[0]);
      v27 = *(result + 32);
      v26 = *(result + 40);
      v28 = vmlal_s16(vmull_s16(*v24.i8, v26), *v25.i8, v27);
      v29 = vextq_s8(v25, v25, 8uLL).u64[0];
      v25.i64[1] = v24.i64[0];
      *v42 = v25;
      *&v42[16] = v23.i64[0];
      v25.i64[0] = *(result + 48);
      v30 = *(result + 112);
      v31 = vshrq_n_s32(vaddq_s32(vmlal_s16(v28, *v23.i8, *v25.i8), v30), 0xEuLL);
      v32 = vaddq_s32(*(result + 96), v30);
      v33 = *(result + 64);
      v34 = *(result + 80);
      v35 = vshrq_n_s32(vmlaq_s32(v32, vsubq_s32(vmovl_s16(*&v42[8 * v22]), v31), v33), 0xEuLL);
      v36 = vshrq_n_s32(vmlaq_s32(v32, vsubq_s32(vmovl_s16(*&v42[8 * v5]), v31), v34), 0xEuLL);
      *v42 = v29;
      v24.i64[0] = vextq_s8(v24, v24, 8uLL).u64[0];
      v24.i64[1] = vextq_s8(v23, v23, 8uLL).u64[0];
      *&v42[8] = v24;
      v37 = vshrq_n_s32(vmlal_s16(vmlal_s16(vmlal_s16(v30, v29, v27), *v24.i8, v26), v24.u64[1], *v25.i8), 0xEuLL);
      v38 = vshrq_n_s32(vmlaq_s32(v32, vsubq_s32(vmovl_s16(*&v42[8 * v22]), v37), v33), 0xEuLL);
      v39 = vshrq_n_s32(vmlaq_s32(v32, vsubq_s32(vmovl_s16(*&v42[8 * v5]), v37), v34), 0xEuLL);
      v40 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v31), v37));
      v43[0] = v40;
      v43[v6 + 1] = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v35), v38));
      v43[(2 - v6)] = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v36), v39));
      v25.i64[0] = v43[1];
      v31.i64[0] = v43[2];
      v41 = (a3 + v13);
      vst3_s8(v41, *(&v25 - 8));
      v13 += 24;
      a2 += 8 * v4;
    }

    while (v13 <= v12 - 24);
  }

  else
  {
    LODWORD(v13) = 0;
  }

  if (v13 < v12)
  {
    result = 2105344;
    v13 = v13;
    v14 = a3 + v6 + 1;
    v15 = 2 - v6;
    do
    {
      v16 = v8 * *(a2 + 1) + v7 * *a2 + v9 * *(a2 + 2) + 0x2000;
      v17 = (a2[v5 ^ 2] - (v16 >> 14)) * v10 + 2105344;
      v18 = (a2[v5] - (v16 >> 14)) * v11 + 2105344;
      v19 = (v16 >> 14) & ~(v16 >> 31);
      if (v19 >= 255)
      {
        LOBYTE(v19) = -1;
      }

      *(a3 + v13) = v19;
      v20 = (v17 >> 14) & ~(v17 >> 31);
      if (v20 >= 255)
      {
        LOBYTE(v20) = -1;
      }

      *(v14 + v13) = v20;
      v21 = (v18 >> 14) & ~(v18 >> 31);
      if (v21 >= 255)
      {
        LOBYTE(v21) = -1;
      }

      *(a3 + (v15 + v13)) = v21;
      v13 += 3;
      a2 += v4;
    }

    while (v13 < v12);
  }

  return result;
}

void sub_1002DE488(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DE4C0(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477740);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002DE588(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 = (v5 + *(a1 + 32));
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

int *sub_1002DE588(int *result, const __int16 *a2, __int16 *a3, int a4)
{
  v5 = *result;
  v4 = result[1];
  v6 = *(result + 28) ^ 1;
  v7 = result[2];
  v8 = result[3];
  v9 = result[4];
  v10 = result[5];
  v11 = result[6];
  v12 = 3 * a4;
  if (a4 >= 8)
  {
    v13 = 0;
    v31 = a3;
    do
    {
      if (v5 == 3)
      {
        *v54.val[0].i8 = vld3q_s16(a2);
      }

      else
      {
        v54 = vld4q_s16(a2);
      }

      v45 = vmovl_u16(*v54.val[0].i8);
      v46 = vmovl_u16(*v54.val[1].i8);
      v47 = vmovl_u16(*v54.val[2].i8);
      v32 = *(result + 2);
      v33 = *(result + 3);
      v34 = *(result + 4);
      v35 = *(result + 5);
      v36 = *(result + 8);
      v37 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v32, v45), v33, v46), v34, v47), v36), 0xEuLL);
      v38 = *(result + 6);
      v39 = vaddq_s32(*(result + 7), v36);
      v40 = vshrq_n_s32(vmlaq_s32(v39, vsubq_s32(*(&v45 + (v4 ^ 2)), v37), v35), 0xEuLL);
      v41 = vshrq_n_s32(vmlaq_s32(v39, vsubq_s32(*(&v45 + v4), v37), v38), 0xEuLL);
      v45 = vmovl_high_u16(v54.val[0]);
      v46 = vmovl_high_u16(v54.val[1]);
      v47 = vmovl_high_u16(v54.val[2]);
      v42 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v32, v45), v33, v46), v34, v47), v36), 0xEuLL);
      v43 = vshrq_n_s32(vmlaq_s32(v39, vsubq_s32(*(&v45 + (v4 ^ 2)), v42), v35), 0xEuLL);
      v44 = vshrq_n_s32(vmlaq_s32(v39, vsubq_s32(*(&v45 + v4), v42), v38), 0xEuLL);
      v52.val[0] = vqmovun_high_s32(vqmovun_s32(v37), v42);
      v48 = v52.val[0];
      *(&v48 + v6 + 1) = vqmovun_high_s32(vqmovun_s32(v40), v43);
      *(&v48 + (2 - v6)) = vqmovun_high_s32(vqmovun_s32(v41), v44);
      v52.val[1] = v49;
      v52.val[2] = v50;
      vst3q_s16(v31, v52);
      v31 += 24;
      v13 += 24;
      a2 += 8 * v5;
    }

    while (v13 <= v12 - 24);
  }

  else
  {
    LODWORD(v13) = 0;
  }

  v14 = v12 - 12;
  if (v13 <= v12 - 12)
  {
    v15 = v4 ^ 2;
    v16 = v6 + 1;
    v17 = 2 - v6;
    v18 = 8 * v5;
    v19 = &a3[v13];
    if (v5 == 3)
    {
      do
      {
        v51 = vld3_s16(a2);
        a2 = (a2 + v18);
        v48 = vmovl_u16(v51.val[0]);
        v49 = vmovl_u16(v51.val[1]);
        *v51.val[0].i8 = vmovl_u16(v51.val[2]);
        *v51.val[2].i8 = *(result + 3);
        *v51.val[1].i8 = vmulq_s32(*(result + 2), v48);
        v50 = *v51.val[0].i8;
        *v51.val[1].i8 = vmlaq_s32(vmlaq_s32(*v51.val[1].i8, *v51.val[2].i8, v49), *(result + 4), *v51.val[0].i8);
        *v51.val[0].i8 = *(result + 8);
        *v51.val[1].i8 = vshrq_n_s32(vaddq_s32(*v51.val[1].i8, *v51.val[0].i8), 0xEuLL);
        *v51.val[0].i8 = vaddq_s32(*(result + 7), *v51.val[0].i8);
        v20 = vshrq_n_s32(vmlaq_s32(*v51.val[0].i8, vsubq_s32(*(&v48 + v15), *v51.val[1].i8), *(result + 5)), 0xEuLL);
        *v51.val[0].i8 = vshrq_n_s32(vmlaq_s32(*v51.val[0].i8, vsubq_s32(*(&v48 + v4), *v51.val[1].i8), *(result + 6)), 0xEuLL);
        *&v45.i8[8 * v16] = vqmovun_s32(v20);
        v51.val[1] = vqmovun_s32(*v51.val[1].i8);
        *&v45.i8[8 * v17] = vqmovun_s32(*v51.val[0].i8);
        v51.val[2] = v45.i64[1];
        v20.i64[0] = v46.i64[0];
        v45.i64[0] = v51.val[1];
        vst3_s16(v19, *(&v51 + 8));
        v19 += 12;
        LODWORD(v13) = v13 + 12;
      }

      while (v14 >= v13);
    }

    else
    {
      do
      {
        v53 = vld4_s16(a2);
        a2 = (a2 + v18);
        v48 = vmovl_u16(v53.val[0]);
        v49 = vmovl_u16(v53.val[1]);
        *v53.val[0].i8 = vmovl_u16(v53.val[2]);
        *v53.val[2].i8 = *(result + 3);
        *v53.val[1].i8 = vmulq_s32(*(result + 2), v48);
        v50 = *v53.val[0].i8;
        *v53.val[1].i8 = vmlaq_s32(vmlaq_s32(*v53.val[1].i8, *v53.val[2].i8, v49), *(result + 4), *v53.val[0].i8);
        *v53.val[0].i8 = *(result + 8);
        *v53.val[1].i8 = vshrq_n_s32(vaddq_s32(*v53.val[1].i8, *v53.val[0].i8), 0xEuLL);
        *v53.val[0].i8 = vaddq_s32(*(result + 7), *v53.val[0].i8);
        *v53.val[3].i8 = vshrq_n_s32(vmlaq_s32(*v53.val[0].i8, vsubq_s32(*(&v48 + v15), *v53.val[1].i8), *(result + 5)), 0xEuLL);
        *v53.val[0].i8 = vshrq_n_s32(vmlaq_s32(*v53.val[0].i8, vsubq_s32(*(&v48 + v4), *v53.val[1].i8), *(result + 6)), 0xEuLL);
        *&v45.i8[8 * v16] = vqmovun_s32(*v53.val[3].i8);
        v53.val[1] = vqmovun_s32(*v53.val[1].i8);
        *&v45.i8[8 * v17] = vqmovun_s32(*v53.val[0].i8);
        v53.val[2] = v45.i64[1];
        v53.val[3] = v46.i64[0];
        v45.i64[0] = v53.val[1];
        vst3_s16(v19, *v53.val[1].i8);
        v19 += 12;
        LODWORD(v13) = v13 + 12;
      }

      while (v14 >= v13);
    }
  }

  if (v13 < v12)
  {
    result = 0;
    v21 = v13;
    v22 = &a3[v6 + 1 + v21];
    v23 = v13 - v6 + 2;
    v24 = 2 * v5;
    do
    {
      v25 = v8 * *(a2 + 1) + v7 * *a2 + v9 * *(a2 + 2) + 0x2000;
      v26 = (a2[v4 ^ 2] - (v25 >> 14)) * v10 + 536879104;
      v27 = (a2[v4] - (v25 >> 14)) * v11 + 536879104;
      v28 = (v25 >> 14) & ~(v25 >> 31);
      if (v28 >= 0xFFFF)
      {
        LOWORD(v28) = -1;
      }

      a3[v21 + result] = v28;
      v29 = (v26 >> 14) & ~(v26 >> 31);
      if (v29 >= 0xFFFF)
      {
        LOWORD(v29) = -1;
      }

      *(v22 + 2 * result) = v29;
      v30 = (v27 >> 14) & ~(v27 >> 31);
      if (v30 >= 0xFFFF)
      {
        LOWORD(v30) = -1;
      }

      a3[v23 + result] = v30;
      result = (result + 3);
      a2 = (a2 + v24);
    }

    while (v12 > v13 + result);
  }

  return result;
}

void sub_1002DE940(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DE978(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_1004777A0);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002DEA40(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 = (v5 + *(a1 + 32));
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

float32_t sub_1002DEA40(float32x4_t *a1, uint64_t a2, float *a3, int a4)
{
  v5 = a1->i32[0];
  v4 = a1->i32[1];
  v6 = a1->u8[8] ^ 1;
  result = a1->f32[3];
  v8 = a1[1].f32[0];
  v9 = a1[1].f32[1];
  v10 = a1[1].f32[2];
  v11 = a1[1].f32[3];
  v12 = 3 * a4;
  if (v5 == 3)
  {
    if (a4 >= 4)
    {
      v13 = 0;
      v14 = a3;
      do
      {
        v34 = vld3q_f32(a2);
        a2 += 48;
        v27 = v34.val[0];
        v28 = v34.val[1];
        v15 = a1[2];
        v16 = a1[3];
        v29 = v34.val[2];
        v35.val[0] = vmlaq_f32(vmlaq_f32(vmulq_f32(v34.val[0], v15), v16, v34.val[1]), a1[4], v34.val[2]);
        v34.val[1] = vmlaq_f32(a1[7], a1[6], vsubq_f32(*(&v27 + v4), v35.val[0]));
        *(&v31 + (v6 + 1)) = vmlaq_f32(a1[7], a1[5], vsubq_f32(*(&v27 + (v4 ^ 2)), v35.val[0]));
        *(&v31 + (2 - v6)) = v34.val[1];
        v35.val[1] = v32;
        v35.val[2] = v33;
        v31 = v35.val[0];
        vst3q_f32(v14, v35);
        v14 += 12;
        v13 += 12;
      }

      while (v13 <= v12 - 12);
      if (v13 >= v12)
      {
        return result;
      }

LABEL_13:
      v21 = &a3[v6 + 1];
      v22 = 2 - v6;
      v23 = 4 * v5;
      v13 = v13;
      do
      {
        v24 = ((v8 * *(a2 + 4)) + (*a2 * result)) + (*(a2 + 8) * v9);
        v25 = ((*(a2 + 4 * (v4 ^ 2)) - v24) * v10) + 0.5;
        v26 = ((*(a2 + 4 * v4) - v24) * v11) + 0.5;
        a3[v13] = v24;
        *(v21 + 4 * v13) = v25;
        a3[(v22 + v13)] = v26;
        v13 += 3;
        a2 += v23;
      }

      while (v13 < v12);
      return result;
    }

LABEL_8:
    LODWORD(v13) = 0;
    if (v12 <= 0)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (a4 < 4)
  {
    goto LABEL_8;
  }

  v13 = 0;
  v17 = a3;
  do
  {
    v37 = vld4q_f32(a2);
    a2 += 64;
    v27 = v37.val[0];
    v28 = v37.val[1];
    v18 = a1[2];
    v19 = a1[3];
    v29 = v37.val[2];
    v30 = v37.val[3];
    v36.val[0] = vmlaq_f32(vmlaq_f32(vmulq_f32(v37.val[0], v18), v19, v37.val[1]), a1[4], v37.val[2]);
    v20 = vmlaq_f32(a1[7], a1[6], vsubq_f32(*(&v27 + v4), v36.val[0]));
    *(&v31 + v6 + 1) = vmlaq_f32(a1[7], a1[5], vsubq_f32(*(&v27 + (v4 ^ 2)), v36.val[0]));
    *(&v31 + (2 - v6)) = v20;
    v36.val[1] = v32;
    v36.val[2] = v33;
    v31 = v36.val[0];
    vst3q_f32(v17, v36);
    v17 += 12;
    v13 += 12;
  }

  while (v13 <= v12 - 12);
  if (v13 < v12)
  {
    goto LABEL_13;
  }

  return result;
}

void sub_1002DEC2C(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DEC64(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477800);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002DED2C(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

int32x4_t *sub_1002DED2C(int32x4_t *result, uint64_t a2, char *a3, int a4)
{
  v4 = result->i32[0];
  v5 = result->i32[1];
  v6 = result->u8[8] ^ 1;
  v7 = result->i32[3];
  v8 = result[1].i32[0];
  v9 = result[1].i32[1];
  v10 = result[1].i32[2];
  v11 = 3 * a4;
  if (a4 >= 8)
  {
    v12 = 0;
    v13 = v5 ^ 2;
    v14 = 8 * v4;
    v15 = v11 - 24;
    do
    {
      while (1)
      {
        v16 = (a2 + v12);
        v52 = vld3_s8(v16);
        v49 = vmovl_u8(v52.val[1]);
        v50 = vmovl_u8(v52.val[2]);
        v17 = *v48[2].val[2 * v6].i8;
        v18 = *v48[1].val[2 * (2 - v6) + 1].i8;
        v19 = *result[7].i8;
        v20 = vsubl_s16(*v18.i8, v19);
        v21 = vsubl_s16(*v17.i8, v19);
        v22 = vsubl_s16(*&vextq_s8(v18, v18, 8uLL), v19);
        v23 = vsubl_s16(*&vextq_s8(v17, v17, 8uLL), v19);
        v24 = vqmovun_s16(vaddw_u8(vshrn_high_n_s32(vshrn_n_s32(vmlaq_s32(result[6], v20, result[5]), 0xEuLL), vmlaq_s32(result[6], v22, result[5]), 0xEuLL), v52.val[0]));
        v25 = vqmovun_s16(vaddw_u8(vshrn_high_n_s32(vshrn_n_s32(vmlaq_s32(vmlaq_s32(result[6], v21, result[3]), result[4], v20), 0xEuLL), vmlaq_s32(vmlaq_s32(result[6], v23, result[3]), result[4], v22), 0xEuLL), v52.val[0]));
        v26 = vqmovun_s16(vaddw_u8(vshrn_high_n_s32(vshrn_n_s32(vmlaq_s32(result[6], result[2], v21), 0xEuLL), vmlaq_s32(result[6], result[2], v23), 0xEuLL), v52.val[0]));
        if (v4 == 3)
        {
          break;
        }

        v48[0].val[v5] = v24;
        v48[0].val[1] = v25;
        v48[0].val[v13] = v26;
        v53.val[3] = result[7].i64[1];
        v53.val[0] = v48[0].val[0];
        v53.val[1] = v48[0].val[1];
        v53.val[2] = v48[0].val[2];
        vst4_s8(a3, v53);
        v12 += 24;
        a3 += v14;
        if (v12 > v15)
        {
          goto LABEL_7;
        }
      }

      v48[0].val[v5] = v24;
      v48[0].val[1] = v25;
      v48[0].val[v13] = v26;
      v51 = v48[0];
      vst3_s8(a3, v51);
      v12 += 24;
      a3 += v14;
    }

    while (v12 <= v15);
  }

  else
  {
    LODWORD(v12) = 0;
  }

LABEL_7:
  if (v12 < v11)
  {
    v27 = v5 ^ 2;
    v12 = v12;
    result = (a2 + v6 + 1);
    if (v4 == 4)
    {
      v28 = 2 - v6;
      do
      {
        v29 = *(a2 + v12);
        v30 = *(a2 + (v28 + v12)) - 128;
        v31 = v29 + ((v30 * v10 + 0x2000) >> 14);
        v32 = result->u8[v12] - 128;
        v33 = v29 + ((v30 * v9 + v32 * v8 + 0x2000) >> 14);
        v34 = v29 + ((v32 * v7 + 0x2000) >> 14);
        v35 = v31 & ~(v31 >> 31);
        if (v35 >= 255)
        {
          LOBYTE(v35) = -1;
        }

        a3[v5] = v35;
        v36 = v33 & ~(v33 >> 31);
        if (v36 >= 255)
        {
          LOBYTE(v36) = -1;
        }

        a3[1] = v36;
        v37 = v34 & ~(v34 >> 31);
        if (v37 >= 255)
        {
          LOBYTE(v37) = -1;
        }

        a3[v27] = v37;
        a3[3] = -1;
        v12 += 3;
        a3 += v4;
      }

      while (v12 < v11);
    }

    else
    {
      v38 = 2 - v6;
      do
      {
        v39 = *(a2 + v12);
        v40 = *(a2 + (v38 + v12)) - 128;
        v41 = v39 + ((v40 * v10 + 0x2000) >> 14);
        v42 = result->u8[v12] - 128;
        v43 = v39 + ((v40 * v9 + v42 * v8 + 0x2000) >> 14);
        v44 = v39 + ((v42 * v7 + 0x2000) >> 14);
        v45 = v41 & ~(v41 >> 31);
        if (v45 >= 255)
        {
          LOBYTE(v45) = -1;
        }

        a3[v5] = v45;
        v46 = v43 & ~(v43 >> 31);
        if (v46 >= 255)
        {
          LOBYTE(v46) = -1;
        }

        a3[1] = v46;
        v47 = v44 & ~(v44 >> 31);
        if (v47 >= 255)
        {
          LOBYTE(v47) = -1;
        }

        a3[v27] = v47;
        v12 += 3;
        a3 += v4;
      }

      while (v12 < v11);
    }
  }

  return result;
}

void sub_1002DEFE0(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DF018(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477860);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002DF0E0(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 = (v5 + *(a1 + 32));
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

unint64_t sub_1002DF0E0(unint64_t result, const __int16 *a2, __int16 *a3, int a4)
{
  v4 = *result;
  v5 = *(result + 4);
  v6 = *(result + 8) ^ 1;
  v7 = *(result + 12);
  v8 = *(result + 16);
  v9 = *(result + 20);
  v10 = *(result + 24);
  v11 = 3 * a4;
  if (a4 >= 8)
  {
    v12 = 0;
    v13 = v5 ^ 2;
    v14 = v11 - 24;
    v15 = 16 * v4;
    v16 = a2;
    do
    {
      while (1)
      {
        v71 = vld3q_s16(v16);
        v65 = v71.val[1];
        v66 = v71.val[2];
        v17 = *&v63[16 * v6 + 80];
        v18 = vmovl_u16(*v71.val[0].i8);
        v19 = *&v63[16 * (2 - v6) + 64];
        v20 = *(result + 112);
        v21 = vsubq_s32(vmovl_u16(*v19.i8), v20);
        v23 = *(result + 64);
        v22 = *(result + 80);
        v24 = vsraq_n_s32(v18, vmlaq_s32(*(result + 96), v21, v22), 0xEuLL);
        v25 = vsubq_s32(vmovl_u16(*v17.i8), v20);
        v27 = *(result + 32);
        v26 = *(result + 48);
        v28 = vsraq_n_s32(v18, vmlaq_s32(vmlaq_s32(*(result + 96), v26, v25), v23, v21), 0xEuLL);
        v29 = vsraq_n_s32(v18, vmlaq_s32(*(result + 96), v27, v25), 0xEuLL);
        v30 = vsubq_s32(vmovl_high_u16(v19), v20);
        v31 = vaddw_high_u16(vshrq_n_s32(vmlaq_s32(*(result + 96), v30, v22), 0xEuLL), v71.val[0]);
        v32 = vsubq_s32(vmovl_high_u16(v17), v20);
        v33 = vaddw_high_u16(vshrq_n_s32(vmlaq_s32(vmlaq_s32(*(result + 96), v26, v32), v23, v30), 0xEuLL), v71.val[0]);
        v34 = vaddw_high_u16(vshrq_n_s32(vmlaq_s32(*(result + 96), v27, v32), 0xEuLL), v71.val[0]);
        v35 = vqmovun_high_s32(vqmovun_s32(v24), v31);
        v36 = vqmovun_high_s32(vqmovun_s32(v28), v33);
        v37 = vqmovun_high_s32(vqmovun_s32(v29), v34);
        if (v4 == 3)
        {
          break;
        }

        *&v63[16 * v5] = v35;
        *&v63[16] = v36;
        *&v63[16 * v13] = v37;
        v73.val[3] = *(result + 128);
        v73.val[0] = *v63;
        v73.val[1] = *&v63[16];
        v73.val[2] = *&v63[32];
        vst4q_s16(a3, v73);
        v12 += 24;
        v16 += 24;
        a3 = (a3 + v15);
        if (v12 > v14)
        {
          goto LABEL_7;
        }
      }

      *&v63[16 * v5] = v35;
      *&v63[16] = v36;
      *&v63[16 * v13] = v37;
      v72 = *v63;
      vst3q_s16(a3, v72);
      v12 += 24;
      v16 += 24;
      a3 = (a3 + v15);
    }

    while (v12 <= v14);
  }

  else
  {
    LODWORD(v12) = 0;
  }

LABEL_7:
  v38 = v11 - 12;
  if (v12 <= v11 - 12)
  {
    v39 = v6 + 1;
    v40 = 2 - v6;
    v41 = v5 ^ 2;
    v42 = 8 * v4;
    v43 = &a2[v12];
    if (v4 == 3)
    {
      do
      {
        v67 = vld3_s16(v43);
        v43 += 12;
        v64 = v67.val[1];
        v65.i64[0] = v67.val[2];
        *v67.val[0].i8 = vmovl_u16(v67.val[0]);
        v44 = *(result + 112);
        *v67.val[2].i8 = vsubq_s32(vmovl_u16(*&v63[8 * v40 + 64]), v44);
        *v67.val[1].i8 = vsubq_s32(vmovl_u16(*&v63[8 * v39 + 64]), v44);
        v45 = vsraq_n_s32(*v67.val[0].i8, vmlaq_s32(*(result + 96), *v67.val[2].i8, *(result + 80)), 0xEuLL);
        *v67.val[2].i8 = vsraq_n_s32(*v67.val[0].i8, vmlaq_s32(vmlaq_s32(*(result + 96), *(result + 48), *v67.val[1].i8), *(result + 64), *v67.val[2].i8), 0xEuLL);
        *v67.val[0].i8 = vsraq_n_s32(*v67.val[0].i8, vmlaq_s32(*(result + 96), *(result + 32), *v67.val[1].i8), 0xEuLL);
        *&v63[8 * v5] = vqmovun_s32(v45);
        *&v63[8] = vqmovun_s32(*v67.val[2].i8);
        *&v63[8 * v41] = vqmovun_s32(*v67.val[0].i8);
        v68 = *v63;
        vst3_s16(a3, v68);
        a3 = (a3 + v42);
        LODWORD(v12) = v12 + 12;
      }

      while (v38 >= v12);
    }

    else
    {
      do
      {
        v69 = vld3_s16(v43);
        v43 += 12;
        v64 = v69.val[1];
        v65.i64[0] = v69.val[2];
        *v69.val[0].i8 = vmovl_u16(v69.val[0]);
        v47 = *(result + 96);
        v46 = *(result + 112);
        *v69.val[2].i8 = vsubq_s32(vmovl_u16(*&v63[8 * v40 + 64]), v46);
        *v69.val[1].i8 = vsubq_s32(vmovl_u16(*&v63[8 * v39 + 64]), v46);
        v48 = vmlaq_s32(vmlaq_s32(v47, *(result + 48), *v69.val[1].i8), *(result + 64), *v69.val[2].i8);
        *v69.val[2].i8 = vsraq_n_s32(*v69.val[0].i8, vmlaq_s32(v47, *v69.val[2].i8, *(result + 80)), 0xEuLL);
        v49 = vsraq_n_s32(*v69.val[0].i8, v48, 0xEuLL);
        *v69.val[0].i8 = vsraq_n_s32(*v69.val[0].i8, vmlaq_s32(v47, *(result + 32), *v69.val[1].i8), 0xEuLL);
        *&v63[8 * v5] = vqmovun_s32(*v69.val[2].i8);
        *&v63[8] = vqmovun_s32(v49);
        *&v63[8 * v41] = vqmovun_s32(*v69.val[0].i8);
        v49.i64[0] = *(result + 144);
        v70 = *v63;
        vst4_s16(a3, *(&v49 - 24));
        a3 = (a3 + v42);
        LODWORD(v12) = v12 + 12;
      }

      while (v38 >= v12);
    }
  }

  if (v12 < v11)
  {
    v50 = 0;
    result = v12;
    v51 = v12;
    v52 = &a2[v6 + 1 + v51];
    v53 = v12 - v6 + 2;
    do
    {
      v54 = a2[v51 + v50];
      v55 = a2[(v53 + v50)] - 0x8000;
      v56 = v54 + ((v55 * v10 + 0x2000) >> 14);
      v57 = *(v52 + 2 * v50) - 0x8000;
      v58 = v54 + ((v55 * v9 + v57 * v8 + 0x2000) >> 14);
      v59 = v54 + ((v57 * v7 + 0x2000) >> 14);
      v60 = v56 & ~(v56 >> 31);
      if (v60 >= 0xFFFF)
      {
        LOWORD(v60) = -1;
      }

      a3[v5] = v60;
      v61 = v58 & ~(v58 >> 31);
      if (v61 >= 0xFFFF)
      {
        LOWORD(v61) = -1;
      }

      a3[1] = v61;
      v62 = v59 & ~(v59 >> 31);
      if (v62 >= 0xFFFF)
      {
        LOWORD(v62) = -1;
      }

      a3[(v5 ^ 2)] = v62;
      if (v4 == 4)
      {
        a3[3] = -1;
      }

      v50 += 3;
      a3 += v4;
    }

    while (v11 > v12 + v50);
  }

  return result;
}

void sub_1002DF4A4(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DF4DC(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_1004778C0);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = *(a1 + 24) + *(a1 + 32) * v4;
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002DF5A4(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

float32x4_t *sub_1002DF5A4(float32x4_t *result, const float *a2, uint64_t a3, int a4)
{
  v5 = result->i32[0];
  v4 = result->i32[1];
  v6 = result->u8[8] ^ 1;
  v7 = result->f32[3];
  v8 = result[1].f32[0];
  v9 = result[1].f32[1];
  v10 = result[1].f32[2];
  v11 = 3 * a4;
  if (v5 != 3)
  {
    if (a4 >= 4)
    {
      v12 = 0;
      v23 = a2;
      do
      {
        v46 = vld3q_f32(v23);
        v23 += 12;
        v43.val[1] = v46.val[1];
        v43.val[2] = v46.val[2];
        v47.val[3] = result[6];
        v24 = result[7];
        v25 = vsubq_f32(v43.val[(2 - v6)], v24);
        v26 = vsubq_f32(v43.val[v6 + 1], v24);
        v27 = vmlaq_f32(v46.val[0], result[5], v25);
        v28 = vaddq_f32(v46.val[0], vmlaq_f32(vmulq_f32(v25, result[4]), result[3], v26));
        v46.val[0] = vmlaq_f32(v46.val[0], result[2], v26);
        *(&v40 + v4) = v27;
        v41 = v28;
        *(&v40 + (v4 ^ 2)) = v46.val[0];
        v47.val[0] = v40;
        v47.val[1] = v41;
        v47.val[2] = v42;
        vst4q_f32(a3, v47);
        a3 += 64;
        v12 += 12;
      }

      while (v12 <= v11 - 12);
      if (v12 >= v11)
      {
        return result;
      }
    }

    else
    {
      LODWORD(v12) = 0;
      if (v11 <= 0)
      {
        return result;
      }
    }

    goto LABEL_15;
  }

  if (a4 < 4)
  {
    if (a4 < 1)
    {
      return result;
    }

    LODWORD(v12) = 0;
    v13 = v6 + 1;
    v14 = 2 - v6;
    v15 = (v4 ^ 2);
    v5 = 3;
    goto LABEL_20;
  }

  v12 = 0;
  v16 = a2;
  do
  {
    v44 = vld3q_f32(v16);
    v16 += 12;
    v41 = v44.val[1];
    v42 = v44.val[2];
    v17 = result[7];
    v18 = vsubq_f32(*(&v40 + (2 - v6)), v17);
    v19 = vmlaq_f32(v44.val[0], result[5], v18);
    v20 = vmulq_f32(v18, result[4]);
    v21 = vsubq_f32(*(&v40 + (v6 + 1)), v17);
    v43.val[v4] = v19;
    v22 = vaddq_f32(v44.val[0], vmlaq_f32(v20, result[3], v21));
    v44.val[0] = vmlaq_f32(v44.val[0], result[2], v21);
    v43.val[1] = v22;
    v43.val[(v4 ^ 2)] = v44.val[0];
    v45 = v43;
    vst3q_f32(a3, v45);
    a3 += 48;
    v12 += 12;
  }

  while (v12 <= v11 - 12);
  if (v12 < v11)
  {
LABEL_15:
    v13 = v6 + 1;
    v15 = (v4 ^ 2);
    if (v5 != 4)
    {
      v14 = 2 - v6;
LABEL_20:
      v12 = v12;
      v35 = &a2[v13];
      v36 = 4 * v5;
      do
      {
        v37 = a2[v12];
        v38 = a2[(v14 + v12)] + -0.5;
        v39 = v35[v12] + -0.5;
        *(a3 + 4 * v4) = v37 + (v38 * v10);
        *(a3 + 4) = (v37 + (v38 * v9)) + (v39 * v8);
        *(a3 + 4 * v15) = v37 + (v39 * v7);
        v12 += 3;
        a3 += v36;
      }

      while (v12 < v11);
      return result;
    }

    v12 = v12;
    v29 = 2 - v6;
    v30 = 4 * v5;
    v31 = &a2[v13];
    do
    {
      v32 = a2[v12];
      v33 = a2[(v29 + v12)] + -0.5;
      v34 = v31[v12] + -0.5;
      *(a3 + 4 * v4) = v32 + (v33 * v10);
      *(a3 + 4) = (v32 + (v33 * v9)) + (v34 * v8);
      *(a3 + 4 * v15) = v32 + (v34 * v7);
      *(a3 + 12) = 1065353216;
      v12 += 3;
      a3 += v30;
    }

    while (v12 < v11);
  }

  return result;
}

void sub_1002DF828(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DF860(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477920);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = *(a1 + 24) + *(a1 + 32) * v4;
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002DF928(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

uint64_t sub_1002DF928(uint64_t result, const char *a2, uint64_t a3, int a4)
{
  v4 = *(result + 4);
  v5 = *result;
  v6 = *(result + 8);
  v7 = *(result + 12);
  v8 = *(result + 16);
  v9 = *(result + 20);
  v10 = *(result + 24);
  v11 = *(result + 28);
  v12 = 3 * a4;
  v13 = *(result + 32);
  v14 = *(result + 36);
  if (a4 >= 8)
  {
    v15 = 0;
    do
    {
      if (v5 == 3)
      {
        *v43.val[0].i8 = vld3_s8(a2);
      }

      else
      {
        v43 = vld4_s8(a2);
      }

      v29 = vmovl_u8(v43.val[2]);
      v30 = vmovl_u8(v43.val[1]);
      v31 = vmovl_u8(v43.val[0]);
      v32 = *(result + 48);
      v33 = vmull_u16(*v30.i8, v32);
      v34 = *(result + 72);
      v35 = vmull_u16(*v30.i8, v34);
      v36 = *(result + 96);
      v37 = vmull_u16(*v30.i8, v36);
      v38 = *(result + 112);
      v39 = vextq_s8(v31, v31, 8uLL).u64[0];
      v30.i64[0] = vextq_s8(v30, v30, 8uLL).u64[0];
      v40 = vextq_s8(v29, v29, 8uLL).u64[0];
      v42.val[0] = vqmovn_u16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_u16(vmlal_u16(v33, *v31.i8, *(result + 40)), *v29.i8, *(result + 56)), v38), 0xCuLL), vmlal_u16(vmlal_u16(vmlal_u16(v38, v39, *(result + 40)), *v30.i8, v32), v40, *(result + 56)), 0xCuLL));
      v42.val[1] = vqmovn_u16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_u16(vmlal_u16(v35, *v31.i8, *(result + 64)), *v29.i8, *(result + 80)), v38), 0xCuLL), vmlal_u16(vmlal_u16(vmlal_u16(v38, v39, *(result + 64)), *v30.i8, v34), v40, *(result + 80)), 0xCuLL));
      v42.val[2] = vqmovn_u16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_u16(vmlal_u16(v37, *v31.i8, *(result + 88)), *v29.i8, *(result + 104)), v38), 0xCuLL), vmlal_u16(vmlal_u16(vmlal_u16(v38, v39, *(result + 88)), *v30.i8, v36), v40, *(result + 104)), 0xCuLL));
      v41 = (a3 + v15);
      vst3_s8(v41, v42);
      v15 += 24;
      a2 += 8 * v5;
    }

    while (v15 <= v12 - 24);
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (v15 < v12)
  {
    result = v12;
    v16 = (a2 + 1);
    v17 = v15 + 2;
    v18 = (a3 + v17);
    do
    {
      v19 = *(v16 - 1);
      v20 = *v16;
      v21 = v16[1];
      v22 = v6 * v20 + v4 * v19 + v7 * v21 + 2048;
      v23 = v9 * v20 + v8 * v19 + v10 * v21 + 2048;
      v24 = v13 * v20 + v11 * v19 + v14 * v21 + 2048;
      v25 = (v22 >> 12) & ~(v22 >> 31);
      if (v25 >= 255)
      {
        LOBYTE(v25) = -1;
      }

      *(v18 - 2) = v25;
      v26 = (v23 >> 12) & ~(v23 >> 31);
      if (v26 >= 255)
      {
        LOBYTE(v26) = -1;
      }

      *(v18 - 1) = v26;
      v27 = (v24 >> 12) & ~(v24 >> 31);
      if (v27 >= 255)
      {
        LOBYTE(v27) = -1;
      }

      *v18 = v27;
      v18 += 3;
      v16 += v5;
      v28 = v17 + 1;
      v17 += 3;
    }

    while (v28 < result);
  }

  return result;
}

void sub_1002DFB04(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DFB3C(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477980);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002DFC04(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 = (v5 + *(a1 + 32));
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

int32x4_t *sub_1002DFC04(int32x4_t *result, const __int16 *a2, __int16 *a3, int a4)
{
  v4 = result->i32[1];
  v5 = result->i32[0];
  v6 = result->i32[2];
  v7 = result->i32[3];
  v8 = result[1].i32[0];
  v9 = result[1].i32[1];
  v10 = result[1].i32[2];
  v11 = result[1].i32[3];
  v12 = 3 * a4;
  v13 = result[2].i32[0];
  v14 = result[2].i32[1];
  if (a4 >= 8)
  {
    v15 = 0;
    v35 = a3;
    do
    {
      if (v5 == 3)
      {
        *v56.val[0].i8 = vld3q_s16(a2);
      }

      else
      {
        v56 = vld4q_s16(a2);
      }

      v36 = result[2].u64[1];
      v37 = *result[3].i8;
      v38 = result[3].u64[1];
      v39 = *result[4].i8;
      v40 = result[4].u64[1];
      v41 = *result[5].i8;
      v42 = result[5].u64[1];
      v43 = *result[6].i8;
      v44 = result[6].u64[1];
      v45 = result[7];
      v46 = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(*v56.val[1].i8, v37), *v56.val[0].i8, v36), *v56.val[2].i8, v38), v45), 0xCuLL);
      v47 = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(*v56.val[1].i8, v40), *v56.val[0].i8, v39), *v56.val[2].i8, v41), v45), 0xCuLL);
      v48 = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(*v56.val[1].i8, v43), *v56.val[0].i8, v42), *v56.val[2].i8, v44), v45), 0xCuLL);
      v49 = vextq_s8(v56.val[0], v56.val[0], 8uLL).u64[0];
      v50 = vextq_s8(v56.val[1], v56.val[1], 8uLL).u64[0];
      v51 = vextq_s8(v56.val[2], v56.val[2], 8uLL).u64[0];
      v54.val[0] = vqmovn_high_u32(vqmovn_u32(v46), vshrq_n_u32(vmlal_u16(vmlal_u16(vmlal_u16(v45, v49, v36), v50, v37), v51, v38), 0xCuLL));
      v54.val[1] = vqmovn_high_u32(vqmovn_u32(v47), vshrq_n_u32(vmlal_u16(vmlal_u16(vmlal_u16(v45, v49, v39), v50, v40), v51, v41), 0xCuLL));
      v54.val[2] = vqmovn_high_u32(vqmovn_u32(v48), vshrq_n_u32(vmlal_u16(vmlal_u16(vmlal_u16(v45, v49, v42), v50, v43), v51, v44), 0xCuLL));
      vst3q_s16(v35, v54);
      v35 += 24;
      v15 += 24;
      a2 += 8 * v5;
    }

    while (v15 <= v12 - 24);
  }

  else
  {
    LODWORD(v15) = 0;
  }

  v16 = v12 - 12;
  if (v15 <= v12 - 12)
  {
    v17 = 8 * v5;
    v18 = &a3[v15];
    if (v5 == 3)
    {
      do
      {
        v52 = vld3_s16(a2);
        a2 = (a2 + v17);
        v19 = vmlal_u16(vmlal_u16(vmull_u16(v52.val[1], *result[3].i8), v52.val[0], result[2].u64[1]), v52.val[2], result[3].u64[1]);
        v20 = vmlal_u16(vmlal_u16(vmull_u16(v52.val[1], result[4].u64[1]), v52.val[0], *result[4].i8), v52.val[2], *result[5].i8);
        v21 = vmlal_u16(vmlal_u16(vmull_u16(v52.val[1], *result[6].i8), v52.val[0], result[5].u64[1]), v52.val[2], result[6].u64[1]);
        *v52.val[0].i8 = result[7];
        v53.val[0] = vqmovn_u32(vshrq_n_u32(vaddq_s32(v19, *v52.val[0].i8), 0xCuLL));
        v53.val[1] = vqmovn_u32(vshrq_n_u32(vaddq_s32(v20, *v52.val[0].i8), 0xCuLL));
        v53.val[2] = vqmovn_u32(vshrq_n_u32(vaddq_s32(v21, *v52.val[0].i8), 0xCuLL));
        vst3_s16(v18, v53);
        v18 += 12;
        LODWORD(v15) = v15 + 12;
      }

      while (v16 >= v15);
    }

    else
    {
      do
      {
        v55 = vld4_s16(a2);
        a2 = (a2 + v17);
        v22 = vmlal_u16(vmlal_u16(vmull_u16(v55.val[1], *result[3].i8), v55.val[0], result[2].u64[1]), v55.val[2], result[3].u64[1]);
        v23 = vmlal_u16(vmlal_u16(vmull_u16(v55.val[1], result[4].u64[1]), v55.val[0], *result[4].i8), v55.val[2], *result[5].i8);
        v24 = vmlal_u16(vmlal_u16(vmull_u16(v55.val[1], *result[6].i8), v55.val[0], result[5].u64[1]), v55.val[2], result[6].u64[1]);
        *v55.val[0].i8 = result[7];
        v55.val[1] = vqmovn_u32(vshrq_n_u32(vaddq_s32(v22, *v55.val[0].i8), 0xCuLL));
        v55.val[2] = vqmovn_u32(vshrq_n_u32(vaddq_s32(v23, *v55.val[0].i8), 0xCuLL));
        v55.val[3] = vqmovn_u32(vshrq_n_u32(vaddq_s32(v24, *v55.val[0].i8), 0xCuLL));
        vst3_s16(v18, *v55.val[1].i8);
        v18 += 12;
        LODWORD(v15) = v15 + 12;
      }

      while (v16 >= v15);
    }
  }

  if (v15 < v12)
  {
    result = (a2 + 1);
    v25 = &a3[v15 + 1];
    do
    {
      v26 = result[-1].u16[7];
      v27 = result->u16[0];
      v28 = result->u16[1];
      v29 = v6 * v27 + v4 * v26 + v7 * v28 + 2048;
      v30 = v9 * v27 + v8 * v26 + v10 * v28 + 2048;
      v31 = v13 * v27 + v11 * v26 + v14 * v28 + 2048;
      v32 = (v29 >> 12) & ~(v29 >> 31);
      if (v32 >= 0xFFFF)
      {
        LOWORD(v32) = -1;
      }

      *(v25 - 1) = v32;
      v33 = (v30 >> 12) & ~(v30 >> 31);
      if (v33 >= 0xFFFF)
      {
        LOWORD(v33) = -1;
      }

      *v25 = v33;
      v34 = (v31 >> 12) & ~(v31 >> 31);
      if (v34 >= 0xFFFF)
      {
        LOWORD(v34) = -1;
      }

      v25[1] = v34;
      result = (result + 2 * v5);
      LODWORD(v15) = v15 + 3;
      v25 += 3;
    }

    while (v12 > v15);
  }

  return result;
}

void sub_1002DFEF4(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DFF2C(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v33, &off_1004779E0);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = v7->i32[0];
      v10 = v7->f32[1];
      v11 = v7->f32[2];
      v12 = v7->f32[3];
      v13 = v7[1].f32[0];
      v14 = v7[1].f32[1];
      v15 = v7[1].f32[2];
      v16 = v7[1].f32[3];
      v17 = v7[2].f32[0];
      v18 = v7[2].f32[1];
      v19 = 3 * v8;
      if (v9 == 3)
      {
        if (v8 < 4)
        {
          goto LABEL_10;
        }

        v20 = 0;
        v21 = v5;
        v22 = v6;
        do
        {
          v35 = vld3q_f32(v22);
          v22 += 12;
          v36.val[0] = vmlaq_f32(vmlaq_f32(vmulq_f32(v35.val[0], v7[3]), v7[4], v35.val[1]), v7[5], v35.val[2]);
          v36.val[1] = vmlaq_f32(vmlaq_f32(vmulq_f32(v35.val[0], v7[6]), v7[7], v35.val[1]), v7[8], v35.val[2]);
          v36.val[2] = vmlaq_f32(vmlaq_f32(vmulq_f32(v35.val[0], v7[9]), v7[10], v35.val[1]), v7[11], v35.val[2]);
          vst3q_f32(v21, v36);
          v21 += 12;
          v20 += 12;
        }

        while (v20 <= v19 - 12);
      }

      else
      {
        if (v8 < 4)
        {
LABEL_10:
          v23 = 0;
          v22 = v6;
          if (v19 > 0)
          {
            goto LABEL_15;
          }

          goto LABEL_3;
        }

        v20 = 0;
        v24 = v5;
        v22 = v6;
        do
        {
          v38 = vld4q_f32(v22);
          v22 += 16;
          v37.val[0] = vmlaq_f32(vmlaq_f32(vmulq_f32(v38.val[0], v7[3]), v7[4], v38.val[1]), v7[5], v38.val[2]);
          v37.val[1] = vmlaq_f32(vmlaq_f32(vmulq_f32(v38.val[0], v7[6]), v7[7], v38.val[1]), v7[8], v38.val[2]);
          v37.val[2] = vmlaq_f32(vmlaq_f32(vmulq_f32(v38.val[0], v7[9]), v7[10], v38.val[1]), v7[11], v38.val[2]);
          vst3q_f32(v24, v37);
          v24 += 12;
          v20 += 12;
        }

        while (v20 <= v19 - 12);
      }

      v23 = v20;
      if (v20 < v19)
      {
LABEL_15:
        v25 = (v22 + 2);
        v26 = 4 * v9;
        v27 = &v5[v23 + 1];
        do
        {
          v28 = *(v25 - 2);
          v29 = *(v25 - 1);
          v30 = ((v11 * v29) + (v28 * v10)) + (*v25 * v12);
          v31 = ((v14 * v29) + (v28 * v13)) + (*v25 * v15);
          v32 = ((v17 * v29) + (v28 * v16)) + (*v25 * v18);
          *(v27 - 1) = v30;
          *v27 = v31;
          v27[1] = v32;
          v23 += 3;
          v25 = (v25 + v26);
          v27 += 3;
        }

        while (v23 < v19);
      }

LABEL_3:
      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 = (v5 + *(a1 + 32));
    }

    while (v4 < a2[1]);
  }

  if (v34)
  {
    sub_1002ACC1C(v33);
  }
}

void sub_1002E0140(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002E0178(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477A40);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002E0240(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

uint64_t sub_1002E0240(uint64_t result, uint64_t a2, char *a3, int a4)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *(result + 12);
  v7 = *(result + 16);
  v8 = *(result + 20);
  v9 = *(result + 24);
  v10 = *(result + 28);
  v11 = *(result + 32);
  v12 = *(result + 36);
  v13 = 3 * a4;
  v14 = *(result + 40);
  if (a4 >= 8)
  {
    v15 = 0;
    v16 = 8 * v4;
    v17 = v13 - 24;
    do
    {
      while (1)
      {
        v19 = (a2 + v15);
        v64 = vld3_s8(v19);
        v20 = vmovl_u8(v64.val[0]);
        v21 = vmovl_u8(v64.val[1]);
        *v64.val[0].i8 = vmovl_u8(v64.val[2]);
        v64.val[1] = *(result + 48);
        v64.val[2] = *(result + 56);
        v22 = *(result + 64);
        v23 = *(result + 72);
        v24 = *(result + 80);
        v25 = *(result + 88);
        v26 = *(result + 96);
        v27 = *(result + 104);
        v28 = *(result + 112);
        v29 = *(result + 128);
        v30 = vshrq_n_s32(vaddq_s32(vmlal_s16(vmlal_s16(vmull_s16(*v21.i8, v64.val[2]), *v20.i8, v64.val[1]), v64.val[0], v22), v29), 0xCuLL);
        v31 = vshrq_n_s32(vaddq_s32(vmlal_s16(vmlal_s16(vmull_s16(*v21.i8, v24), *v20.i8, v23), v64.val[0], v25), v29), 0xCuLL);
        v32 = vshrq_n_s32(vaddq_s32(vmlal_s16(vmlal_s16(vmull_s16(*v21.i8, v27), *v20.i8, v26), v64.val[0], v28), v29), 0xCuLL);
        v20.i64[0] = vextq_s8(v20, v20, 8uLL).u64[0];
        v21.i64[0] = vextq_s8(v21, v21, 8uLL).u64[0];
        v64.val[0] = vextq_s8(*v64.val[0].i8, *v64.val[0].i8, 8uLL).u64[0];
        *v64.val[1].i8 = vshrq_n_s32(vmlal_s16(vmlal_s16(vmlal_s16(v29, *v20.i8, v64.val[1]), *v21.i8, v64.val[2]), v64.val[0], v22), 0xCuLL);
        v33 = vshrq_n_s32(vmlal_s16(vmlal_s16(vmlal_s16(v29, *v20.i8, v23), *v21.i8, v24), v64.val[0], v25), 0xCuLL);
        v34 = vshrq_n_s32(vmlal_s16(vmlal_s16(vmlal_s16(v29, *v20.i8, v26), *v21.i8, v27), v64.val[0], v28), 0xCuLL);
        v35 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v30), *v64.val[1].i8));
        v36 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v31), v33));
        v37 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v32), v34));
        if (v4 == 3)
        {
          break;
        }

        v18 = *(result + 120);
        vst4_s8(a3, *v35.i8);
        v15 += 24;
        a3 += v16;
        if (v15 > v17)
        {
          goto LABEL_7;
        }
      }

      vst3_s8(a3, *v35.i8);
      v15 += 24;
      a3 += v16;
    }

    while (v15 <= v17);
  }

  else
  {
    LODWORD(v15) = 0;
  }

LABEL_7:
  if (v15 < v13)
  {
    result = v13;
    if (v4 == 4)
    {
      v38 = a3 + 3;
      v39 = v15 + 2;
      v40 = (a2 + v39);
      do
      {
        v41 = *(v40 - 2);
        v42 = *(v40 - 1);
        v43 = *v40;
        v40 += 3;
        v44 = v6 * v42 + v5 * v41 + v7 * v43 + 2048;
        v45 = v9 * v42 + v8 * v41 + v10 * v43 + 2048;
        v46 = v12 * v42 + v11 * v41 + v14 * v43 + 2048;
        v47 = (v44 >> 12) & ~(v44 >> 31);
        if (v47 >= 255)
        {
          LOBYTE(v47) = -1;
        }

        *(v38 - 3) = v47;
        v48 = (v45 >> 12) & ~(v45 >> 31);
        if (v48 >= 255)
        {
          LOBYTE(v48) = -1;
        }

        *(v38 - 2) = v48;
        v49 = (v46 >> 12) & ~(v46 >> 31);
        if (v49 >= 255)
        {
          LOBYTE(v49) = -1;
        }

        *(v38 - 1) = v49;
        *v38 = -1;
        v38 += v4;
        v50 = v39 + 1;
        v39 += 3;
      }

      while (v50 < result);
    }

    else
    {
      v51 = a3 + 1;
      v52 = v15 + 2;
      v53 = (a2 + v52);
      do
      {
        v54 = *(v53 - 2);
        v55 = *(v53 - 1);
        v56 = *v53;
        v53 += 3;
        v57 = v6 * v55 + v5 * v54 + v7 * v56 + 2048;
        v58 = v9 * v55 + v8 * v54 + v10 * v56 + 2048;
        v59 = v12 * v55 + v11 * v54 + v14 * v56 + 2048;
        v60 = (v57 >> 12) & ~(v57 >> 31);
        if (v60 >= 255)
        {
          LOBYTE(v60) = -1;
        }

        *(v51 - 1) = v60;
        v61 = (v58 >> 12) & ~(v58 >> 31);
        if (v61 >= 255)
        {
          LOBYTE(v61) = -1;
        }

        *v51 = v61;
        v62 = (v59 >> 12) & ~(v59 >> 31);
        if (v62 >= 255)
        {
          LOBYTE(v62) = -1;
        }

        v51[1] = v62;
        v51 += v4;
        v63 = v52 + 1;
        v52 += 3;
      }

      while (v63 < result);
    }
  }

  return result;
}

void sub_1002E04F4(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002E052C(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477AA0);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002E05E0(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 = (v5 + *(a1 + 32));
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

int32x4_t *sub_1002E05E0(int32x4_t *result, const __int16 *a2, __int16 *a3, int a4)
{
  v4 = result->i32[0];
  v5 = result->i32[2];
  v6 = result->i32[3];
  v7 = result[1].i32[0];
  v8 = result[1].i32[1];
  v9 = result[1].i32[2];
  v10 = result[1].i32[3];
  v11 = result[2].i32[0];
  v12 = result[2].i32[1];
  v13 = 3 * a4;
  v14 = result[2].i32[2];
  if (a4 >= 8)
  {
    v15 = 0;
    v16 = v13 - 24;
    v17 = 16 * v4;
    v18 = a2;
    do
    {
      while (1)
      {
        v70 = vld3q_s16(v18);
        v20 = vmovl_u16(*v70.val[0].i8);
        v21 = vmovl_u16(*v70.val[1].i8);
        v22 = vmovl_u16(*v70.val[2].i8);
        v23 = result[3];
        v24 = result[4];
        v25 = result[5];
        v26 = result[6];
        v27 = vmlaq_s32(vmlaq_s32(vmulq_s32(v23, v20), v24, v21), v25, v22);
        v28 = result[7];
        v29 = result[8];
        v30 = vmlaq_s32(vmlaq_s32(vmulq_s32(v26, v20), v28, v21), v29, v22);
        v31 = result[9];
        v32 = result[10];
        v33 = vmlaq_s32(vmulq_s32(v31, v20), v32, v21);
        v34 = result[11];
        v35 = result[12];
        v36 = vmlaq_s32(v33, v34, v22);
        v37 = vshrq_n_s32(vaddq_s32(v27, v35), 0xCuLL);
        v38 = vshrq_n_s32(vaddq_s32(v30, v35), 0xCuLL);
        v39 = vshrq_n_s32(vaddq_s32(v36, v35), 0xCuLL);
        v40 = vmovl_high_u16(v70.val[0]);
        v41 = vmovl_high_u16(v70.val[1]);
        v70.val[0] = vmovl_high_u16(v70.val[2]);
        v70.val[1] = vmlaq_s32(vmlaq_s32(vmulq_s32(v23, v40), v24, v41), v25, v70.val[0]);
        v70.val[2] = vmlaq_s32(vmlaq_s32(vmulq_s32(v26, v40), v28, v41), v29, v70.val[0]);
        v42 = vmlaq_s32(vmlaq_s32(vmulq_s32(v31, v40), v32, v41), v34, v70.val[0]);
        v43 = vqmovun_high_s32(vqmovun_s32(v37), vshrq_n_s32(vaddq_s32(v70.val[1], v35), 0xCuLL));
        v44 = vqmovun_high_s32(vqmovun_s32(v38), vshrq_n_s32(vaddq_s32(v70.val[2], v35), 0xCuLL));
        v45 = vqmovun_high_s32(vqmovun_s32(v39), vshrq_n_s32(vaddq_s32(v42, v35), 0xCuLL));
        if (v4 == 3)
        {
          break;
        }

        v19 = result[14];
        vst4q_s16(a3, *v43.i8);
        v15 += 24;
        v18 += 24;
        a3 = (a3 + v17);
        if (v15 > v16)
        {
          goto LABEL_7;
        }
      }

      vst3q_s16(a3, *v43.i8);
      v15 += 24;
      v18 += 24;
      a3 = (a3 + v17);
    }

    while (v15 <= v16);
  }

  else
  {
    LODWORD(v15) = 0;
  }

LABEL_7:
  v46 = v13 - 12;
  if (v15 <= v13 - 12)
  {
    v47 = 8 * v4;
    v48 = &a2[v15];
    if (v4 == 3)
    {
      do
      {
        v68 = vld3_s16(v48);
        v48 += 12;
        v49 = vmovl_u16(v68.val[0]);
        v50 = vmovl_u16(v68.val[1]);
        *v68.val[0].i8 = vmovl_u16(v68.val[2]);
        *v68.val[1].i8 = vmlaq_s32(vmlaq_s32(vmulq_s32(result[3], v49), result[4], v50), result[5], *v68.val[0].i8);
        *v68.val[2].i8 = vmlaq_s32(vmlaq_s32(vmulq_s32(result[6], v49), result[7], v50), result[8], *v68.val[0].i8);
        v51 = result[12];
        v52 = vmlaq_s32(vmlaq_s32(vmulq_s32(result[9], v49), result[10], v50), result[11], *v68.val[0].i8);
        *v68.val[0].i8 = vshrq_n_s32(vaddq_s32(*v68.val[1].i8, v51), 0xCuLL);
        *v68.val[1].i8 = vshrq_n_s32(vaddq_s32(*v68.val[2].i8, v51), 0xCuLL);
        *v68.val[2].i8 = vshrq_n_s32(vaddq_s32(v52, v51), 0xCuLL);
        *v52.i8 = vqmovun_s32(*v68.val[0].i8);
        *v50.i8 = vqmovun_s32(*v68.val[1].i8);
        *v51.i8 = vqmovun_s32(*v68.val[2].i8);
        vst3_s16(a3, *(&v50 - 8));
        a3 = (a3 + v47);
        LODWORD(v15) = v15 + 12;
      }

      while (v46 >= v15);
    }

    else
    {
      do
      {
        v69 = vld3_s16(v48);
        v48 += 12;
        v53 = vmovl_u16(v69.val[0]);
        v54 = vmovl_u16(v69.val[1]);
        *v69.val[0].i8 = vmovl_u16(v69.val[2]);
        *v69.val[1].i8 = vmlaq_s32(vmlaq_s32(vmulq_s32(result[3], v53), result[4], v54), result[5], *v69.val[0].i8);
        *v69.val[2].i8 = vmlaq_s32(vmlaq_s32(vmulq_s32(result[6], v53), result[7], v54), result[8], *v69.val[0].i8);
        v55 = result[12];
        v56 = vmlaq_s32(vmlaq_s32(vmulq_s32(result[9], v53), result[10], v54), result[11], *v69.val[0].i8);
        *v69.val[0].i8 = vshrq_n_s32(vaddq_s32(*v69.val[1].i8, v55), 0xCuLL);
        *v69.val[1].i8 = vshrq_n_s32(vaddq_s32(*v69.val[2].i8, v55), 0xCuLL);
        *v69.val[2].i8 = vshrq_n_s32(vaddq_s32(v56, v55), 0xCuLL);
        *v56.i8 = vqmovun_s32(*v69.val[0].i8);
        *v54.i8 = vqmovun_s32(*v69.val[1].i8);
        *v55.i8 = vqmovun_s32(*v69.val[2].i8);
        v57 = result[13].i64[0];
        vst4_s16(a3, *(&v54 - 8));
        a3 = (a3 + v47);
        LODWORD(v15) = v15 + 12;
      }

      while (v46 >= v15);
    }
  }

  if (v15 < v13)
  {
    result = (a3 + 2);
    v58 = &a2[v15 + 1];
    do
    {
      v59 = *(v58 - 1);
      v60 = *v58;
      v61 = *(v58 + 1);
      v62 = v6 * v60 + v5 * v59 + v7 * v61 + 2048;
      v63 = v9 * v60 + v8 * v59 + v10 * v61 + 2048;
      v64 = v12 * v60 + v11 * v59 + v14 * v61 + 2048;
      v65 = (v62 >> 12) & ~(v62 >> 31);
      if (v65 >= 0xFFFF)
      {
        LOWORD(v65) = -1;
      }

      result[-1].i16[6] = v65;
      v66 = (v63 >> 12) & ~(v63 >> 31);
      if (v66 >= 0xFFFF)
      {
        LOWORD(v66) = -1;
      }

      result[-1].i16[7] = v66;
      v67 = (v64 >> 12) & ~(v64 >> 31);
      if (v67 >= 0xFFFF)
      {
        LOWORD(v67) = -1;
      }

      result->i16[0] = v67;
      if (v4 == 4)
      {
        result->i16[1] = -1;
      }

      v58 += 3;
      result = (result + 2 * v4);
      LODWORD(v15) = v15 + 3;
    }

    while (v13 > v15);
  }

  return result;
}

void sub_1002E0928(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002E0960(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v53, &off_100477B00);
  v4 = a2[1];
  v5 = *a2;
  if (v5 < v4)
  {
    v6 = *(a1 + 40);
    if (v6 >= 1)
    {
      v8 = *(a1 + 8);
      v7 = *(a1 + 16);
      v9 = v7 * v5;
      v10 = *(a1 + 32);
      v11 = *(a1 + 48);
      v12 = 3 * v6;
      v13 = *v11;
      v14 = v10 * v5 + *(a1 + 24) + 8;
      if (v13 == 4)
      {
        v15 = 4 * v13;
        v16 = v9 + v8 + 4;
        do
        {
          v17 = 0;
          v18 = v11[2];
          v19 = v11[3];
          v20 = v11[4];
          v21 = v11[5];
          v22 = v11[6];
          v23 = v11[7];
          v24 = v11[8];
          v25 = v11[9];
          v26 = v16;
          v27 = v14;
          v28 = v11[10];
          do
          {
            v29 = *(v26 - 1);
            v30 = v26[1];
            v31 = ((v19 * *v26) + (v29 * v18)) + (v30 * v20);
            v32 = ((v22 * *v26) + (v29 * v21)) + (v30 * v23);
            v33 = ((v25 * *v26) + (v29 * v24)) + (v30 * v28);
            *(v27 - 8) = v31;
            *(v27 - 4) = v32;
            *v27 = v33;
            *(v27 + 4) = 1065353216;
            v17 += 3;
            v27 += v15;
            v26 += 3;
          }

          while (v17 < v12);
          LODWORD(v5) = v5 + 1;
          v14 += v10;
          v16 += v7;
        }

        while (v5 != v4);
      }

      else
      {
        v34 = 4 * v13;
        v35 = v9 + v8 + 4;
        do
        {
          v36 = 0;
          v37 = v11[2];
          v38 = v11[3];
          v39 = v11[4];
          v40 = v11[5];
          v41 = v11[6];
          v42 = v11[7];
          v43 = v11[8];
          v44 = v11[9];
          v45 = v35;
          v46 = v14;
          v47 = v11[10];
          do
          {
            v48 = *(v45 - 1);
            v49 = v45[1];
            v50 = ((v38 * *v45) + (v48 * v37)) + (v49 * v39);
            v51 = ((v41 * *v45) + (v48 * v40)) + (v49 * v42);
            v52 = ((v44 * *v45) + (v48 * v43)) + (v49 * v47);
            *(v46 - 2) = v50;
            *(v46 - 1) = v51;
            *v46 = v52;
            v36 += 3;
            v46 = (v46 + v34);
            v45 += 3;
          }

          while (v36 < v12);
          LODWORD(v5) = v5 + 1;
          v14 += v10;
          v35 += v7;
        }

        while (v5 != v4);
      }
    }
  }

  if (v54)
  {
    sub_1002ACC1C(v53);
  }
}

void sub_1002E0B18(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002E0B50(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477B60);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = *(a1 + 24) + *(a1 + 32) * v4;
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002E0C18(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

uint64_t sub_1002E0C18(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *result;
  v4 = *(result + 4);
  v6 = *(result + 8);
  if (v6 == 180)
  {
    v7 = &dword_1004B0778;
  }

  else
  {
    v7 = &dword_1004B0B78;
  }

  if ((byte_1004B0F78 & 1) == 0)
  {
    dword_1004B0B78 = 0;
    dword_1004B0778 = 0;
    dword_1004B0378[0] = 0;
    v8 = xmmword_1003E6860;
    v9 = &dword_100000004;
    v10 = vdupq_n_s64(0x412FE00000000000uLL);
    v11.i64[0] = 0x600000006;
    v11.i64[1] = 0x600000006;
    v12 = vdupq_n_s64(0x4126800000000000uLL);
    v13.i64[0] = 0x400000004;
    v13.i64[1] = 0x400000004;
    v14 = vdupq_n_s64(0x4130000000000000uLL);
    do
    {
      v15.i64[0] = v8.u32[2];
      v15.i64[1] = v8.u32[3];
      v16 = vcvtq_f64_u64(v15);
      v15.i64[0] = v8.u32[0];
      v15.i64[1] = v8.u32[1];
      *(dword_1004B0378 + v9) = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vdivq_f64(v10, vcvtq_f64_u64(v15)))), vcvtq_s64_f64(vrndxq_f64(vdivq_f64(v10, v16))));
      v17 = vmulq_s32(v8, v11);
      v15.i64[0] = v17.u32[2];
      v15.i64[1] = v17.u32[3];
      v18 = vcvtq_f64_u64(v15);
      v15.i64[0] = v17.u32[0];
      v15.i64[1] = v17.u32[1];
      v19 = vcvtq_f64_u64(v15);
      *(&dword_1004B0778 + v9) = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vdivq_f64(v12, v19))), vcvtq_s64_f64(vrndxq_f64(vdivq_f64(v12, v18))));
      *(&dword_1004B0B78 + v9) = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vdivq_f64(v14, v19))), vcvtq_s64_f64(vrndxq_f64(vdivq_f64(v14, v18))));
      v8 = vaddq_s32(v8, v13);
      v9 += 16;
    }

    while (v9 != 1012);
    result = rint(690.761528);
    dword_1004B076C = rint(4128.37945);
    unk_1004B0770 = rint(4112.12598);
    dword_1004B0B6C = rint(485.6917);
    unk_1004B0B70 = rint(483.779528);
    dword_1004B0F6C = result;
    unk_1004B0F70 = rint(688.041995);
    dword_1004B0774 = rint(4096.0);
    dword_1004B0B74 = rint(481.882353);
    dword_1004B0F74 = rint(685.343791);
    byte_1004B0F78 = 1;
  }

  if (a4 >= 1)
  {
    v20 = 0;
    v21 = (a3 + 2);
    result = 2048;
    v22 = (3 * a4);
    do
    {
      v32 = *(a2 + v4);
      v33 = *(a2 + 1);
      v34 = *(a2 + (v4 ^ 2));
      v35 = v33 - v32;
      v36 = byte_1003EAE70[(v33 - v32 + 256)] + v32;
      if (v34 - v36 < -256)
      {
        v37 = 0;
      }

      else
      {
        v37 = byte_1003EAE70[v34 - v36 + 256];
      }

      v38 = v32 - byte_1003EAE70[(v32 | 0x100) - v33];
      if (v38 - v34 >= -256)
      {
        v23 = byte_1003EAE70[v38 - v34 + 256];
      }

      else
      {
        v23 = 0;
      }

      v24 = v37 + v36;
      v25 = (v24 - v38 + v23) & ~((v24 - v38 + v23) >> 31);
      if (v25 >= 255)
      {
        v25 = 255;
      }

      v26 = (v25 * dword_1004B0378[v24] + 2048) >> 12;
      v27 = v32 - v34 + 2 * v25;
      if (v24 == v33)
      {
        v28 = v27;
      }

      else
      {
        v28 = v34 - v33 + 4 * v25;
      }

      if (v24 == v34)
      {
        v29 = v35;
      }

      else
      {
        v29 = v28;
      }

      v30 = v29 * v7[v25] + 2048;
      v31 = ((v6 & (v30 >> 31)) + (v30 >> 12)) & ~(((v6 & (v30 >> 31)) + (v30 >> 12)) >> 31);
      if (v31 >= 255)
      {
        LOBYTE(v31) = -1;
      }

      *(v21 - 2) = v31;
      *(v21 - 1) = v26;
      *v21 = v24;
      v21 += 3;
      v20 += 3;
      a2 += v5;
    }

    while (v20 < v22);
  }

  return result;
}

void sub_1002E0F1C(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002E0F54(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v32, &off_100477BC0);
  v4 = a2[1];
  v5 = *a2;
  if (v5 < v4)
  {
    v6 = *(a1 + 40);
    if (v6 >= 1)
    {
      v7 = *(a1 + 16);
      v8 = *(a1 + 8) + v7 * v5;
      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      v11 = 3 * v6;
      v12 = *(v10 + 1);
      v14 = 4 * *v10;
      v15 = v9 * v5 + *(a1 + 24) + 8;
      do
      {
        v16 = 0;
        v17 = v10[2] * 0.0027778;
        v18 = v15;
        v19 = v8;
        do
        {
          v20 = *(v19 + 4 * v12);
          v21 = *(v19 + 4);
          v13 = v12 ^ 2;
          v22 = *(v19 + 4 * (v12 ^ 2));
          if (v22 >= v21)
          {
            v23 = *(v19 + 4 * v13);
          }

          else
          {
            v23 = *(v19 + 4);
          }

          if (v22 <= v21)
          {
            v24 = *(v19 + 4 * v13);
          }

          else
          {
            v24 = *(v19 + 4);
          }

          if (v23 < v20)
          {
            v23 = *(v19 + 4 * v12);
          }

          if (v24 > v20)
          {
            v24 = *(v19 + 4 * v12);
          }

          v25 = v23 - v24;
          v26 = v25 / (fabsf(v23) + 0.00000011921);
          v27 = 60.0 / (v25 + 0.00000011921);
          v28 = v23 == v21;
          v29 = (v21 - v20) * v27;
          v30 = ((v20 - v22) * v27) + 120.0;
          v31 = ((v22 - v21) * v27) + 240.0;
          if (!v28)
          {
            v30 = v31;
          }

          if (v23 == v22)
          {
            v30 = v29;
          }

          if (v30 < 0.0)
          {
            v30 = v30 + 360.0;
          }

          *(v18 - 2) = v17 * v30;
          *(v18 - 1) = v26;
          *v18 = v23;
          v18 += 3;
          v16 += 3;
          v19 += v14;
        }

        while (v16 < v11);
        LODWORD(v5) = v5 + 1;
        v8 += v7;
        v15 += v9;
      }

      while (v5 != v4);
    }
  }

  if (v33)
  {
    sub_1002ACC1C(v32);
  }
}

void sub_1002E10D8(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002E1110(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v8, &off_100477C20);
  v5 = *a2;
  if (*a2 < a2[1])
  {
    v6 = *(a1 + 24) + *(a1 + 32) * v5;
    v7 = *(a1 + 8) + *(a1 + 16) * v5;
    do
    {
      sub_1002E11D8(*(a1 + 48), v7, v6, *(a1 + 40), v4);
      ++v5;
      v7 += *(a1 + 16);
      v6 += *(a1 + 32);
    }

    while (v5 < a2[1]);
  }

  if (v9)
  {
    sub_1002ACC1C(v8);
  }
}

float32x4_t *sub_1002E11D8(float32x4_t *result, uint64_t a2, uint64_t a3, int a4, float32x4_t a5)
{
  if (a4 >= 1)
  {
    v5 = 0;
    v6 = result->i32[0];
    v7 = &v139;
    while (1)
    {
      if (a4 - v5 >= 256)
      {
        v8 = 256;
      }

      else
      {
        v8 = a4 - v5;
      }

      v9 = (3 * v8);
      v10 = 0;
      v11 = (v9 - 24);
      if (v9 - 24 >= 0)
      {
        a5 = result[2];
        v12 = v138;
        do
        {
          if (v6 == 3)
          {
            *v143.val[0].i8 = vld3_s8(a2);
          }

          else
          {
            v143 = vld4_s8(a2);
          }

          v13 = vmovl_u8(v143.val[0]);
          v14 = vmovl_u8(v143.val[1]);
          v15 = vmovl_u8(v143.val[2]);
          v140.val[0] = vmulq_f32(a5, vcvtq_f32_u32(vmovl_u16(*v13.i8)));
          v140.val[1] = vmulq_f32(a5, vcvtq_f32_u32(vmovl_u16(*v14.i8)));
          v140.val[2] = vmulq_f32(a5, vcvtq_f32_u32(vmovl_u16(*v15.i8)));
          v16 = v12;
          vst3q_f32(v16, v140);
          v16 += 12;
          v140.val[0] = vmulq_f32(a5, vcvtq_f32_u32(vmovl_high_u16(v13)));
          v140.val[1] = vmulq_f32(a5, vcvtq_f32_u32(vmovl_high_u16(v14)));
          v140.val[2] = vmulq_f32(a5, vcvtq_f32_u32(vmovl_high_u16(v15)));
          vst3q_f32(v16, v140);
          v10 += 24;
          a2 += 8 * v6;
          v12 += 24;
        }

        while (v10 <= v11);
        v10 = v10;
      }

      if (v10 < v9)
      {
        v17 = &v7[v10];
        do
        {
          a5.i8[0] = *a2;
          *&v18 = a5.u32[0] * 0.0039216;
          *(v17 - 1) = *&v18;
          LOBYTE(v18) = *(a2 + 1);
          *&v19 = v18 * 0.0039216;
          *v17 = *&v19;
          LOBYTE(v19) = *(a2 + 2);
          a5.f32[0] = v19 * 0.0039216;
          v17[1] = a5.f32[0];
          v10 += 3;
          a2 += v6;
          v17 += 3;
        }

        while (v10 < v9);
      }

      if (a4 - v5 >= 1)
      {
        v20 = 0;
        v21 = result->i32[2];
        a5.i32[0] = result->i32[3];
        v23 = 4 * result->i32[1];
        v24 = v138;
        v25 = v7;
        do
        {
          v26 = v24[v21];
          v27 = v24[1];
          v22 = v21 ^ 2;
          v28 = v24[v21 ^ 2];
          if (v28 >= v27)
          {
            v29 = v24[v22];
          }

          else
          {
            v29 = v24[1];
          }

          if (v28 <= v27)
          {
            v30 = v24[v22];
          }

          else
          {
            v30 = v24[1];
          }

          if (v29 >= v26)
          {
            v31 = v29;
          }

          else
          {
            v31 = v24[v21];
          }

          if (v30 <= v26)
          {
            v32 = v30;
          }

          else
          {
            v32 = v24[v21];
          }

          v33 = v31 - v32;
          v34 = (v31 + v32) * 0.5;
          v35 = 0.0;
          v36 = 0.0;
          if ((v31 - v32) > 0.00000011921)
          {
            v37 = (2.0 - v31) - v32;
            if (v34 < 0.5)
            {
              v37 = v31 + v32;
            }

            v36 = v33 / v37;
            v38 = 60.0 / v33;
            v39 = ((v28 - v27) * (60.0 / v33)) + 240.0;
            if (v31 == v27)
            {
              v39 = ((v26 - v28) * v38) + 120.0;
            }

            v40 = (v27 - v26) * v38;
            if (v31 == v28)
            {
              v35 = v40;
            }

            else
            {
              v35 = v39;
            }

            if (v35 < 0.0)
            {
              v35 = v35 + 360.0;
            }
          }

          *(v25 - 1) = v35 * a5.f32[0];
          *v25 = v34;
          v25[1] = v36;
          v20 += 3;
          v24 = (v24 + v23);
          v25 += 3;
        }

        while (v20 < v9);
      }

      if ((v11 & 0x80000000) == 0)
      {
        break;
      }

      v56 = 0;
      if (v9 > 0)
      {
LABEL_61:
        v57 = &v7[v56];
        do
        {
          v58 = *v57;
          v59 = rintf(*(v57 - 1));
          v60 = v59 & ~(v59 >> 31);
          if (v60 >= 255)
          {
            LOBYTE(v60) = -1;
          }

          v61 = a3 + v56;
          *(a3 + v56) = v60;
          v62 = rintf(v58 * 255.0);
          v63 = v62 & ~(v62 >> 31);
          if (v63 >= 255)
          {
            LOBYTE(v63) = -1;
          }

          *(v61 + 1) = v63;
          a5.f32[0] = rintf(v57[1] * 255.0);
          v64 = a5.f32[0] & ~(a5.f32[0] >> 31);
          if (v64 >= 255)
          {
            LOBYTE(v64) = -1;
          }

          *(v61 + 2) = v64;
          v56 += 3;
          v57 += 3;
        }

        while (v9 > v56);
      }

LABEL_3:
      v5 += 256;
      a3 += 768;
      if (v5 >= a4)
      {
        return result;
      }
    }

    v41 = 0;
    v42 = v138;
    while (1)
    {
      v43 = v42;
      v142 = vld3q_f32(v43);
      v43 += 12;
      v141 = vld3q_f32(v43);
      if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
      {
        v44 = xmmword_1004B0050;
        if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
        {
          goto LABEL_46;
        }
      }

      else
      {
        v132 = a4;
        v120 = a3;
        v126 = a2;
        v114 = result;
        v108 = v5;
        v102 = v7;
        v96 = v141;
        v90 = v142;
        sub_1003C8E70();
        v142 = v90;
        v141 = v96;
        v7 = v102;
        v5 = v108;
        result = v114;
        a3 = v120;
        a2 = v126;
        a4 = v132;
        v44 = xmmword_1004B0050;
        if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
        {
LABEL_46:
          v45 = xmmword_1004B0050;
          v46 = result[1];
          if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
          {
            goto LABEL_47;
          }

          goto LABEL_54;
        }
      }

      v133 = a4;
      v121 = a3;
      v127 = a2;
      v115 = result;
      v109 = v5;
      v103 = v7;
      v97 = v141;
      v91 = v142;
      v85 = v44;
      sub_1003C8E70();
      v44 = v85;
      v142 = v91;
      v141 = v97;
      v7 = v103;
      v5 = v109;
      result = v115;
      a3 = v121;
      a2 = v127;
      a4 = v133;
      v45 = xmmword_1004B0050;
      v46 = v115[1];
      if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
      {
LABEL_47:
        v47 = xmmword_1004B0050;
        v48 = result[1];
        if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
        {
          goto LABEL_48;
        }

        goto LABEL_55;
      }

LABEL_54:
      v134 = a4;
      v122 = a3;
      v128 = a2;
      v116 = result;
      v110 = v5;
      v104 = v7;
      v98 = v141;
      v92 = v142;
      v81 = v46;
      v86 = v44;
      v77 = v45;
      sub_1003C8E70();
      v45 = v77;
      v46 = v81;
      v44 = v86;
      v142 = v92;
      v141 = v98;
      v7 = v104;
      v5 = v110;
      result = v116;
      a3 = v122;
      a2 = v128;
      a4 = v134;
      v47 = xmmword_1004B0050;
      v48 = v116[1];
      if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
      {
LABEL_48:
        v49 = xmmword_1004B0050;
        v50 = result[1];
        if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
        {
          goto LABEL_49;
        }

        goto LABEL_56;
      }

LABEL_55:
      v135 = a4;
      v123 = a3;
      v129 = a2;
      v117 = result;
      v111 = v5;
      v105 = v7;
      v99 = v141;
      v93 = v142;
      v82 = v46;
      v87 = v44;
      v74 = v48;
      v78 = v45;
      v71 = v47;
      sub_1003C8E70();
      v47 = v71;
      v48 = v74;
      v45 = v78;
      v46 = v82;
      v44 = v87;
      v142 = v93;
      v141 = v99;
      v7 = v105;
      v5 = v111;
      result = v117;
      a3 = v123;
      a2 = v129;
      a4 = v135;
      v49 = xmmword_1004B0050;
      v50 = v117[1];
      if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
      {
LABEL_49:
        v51 = xmmword_1004B0050;
        v52 = result[1];
        if ((atomic_load_explicit(qword_1004B0060, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_50;
      }

LABEL_56:
      v136 = a4;
      v124 = a3;
      v130 = a2;
      v118 = result;
      v112 = v5;
      v106 = v7;
      v100 = v141;
      v94 = v142;
      v83 = v46;
      v88 = v44;
      v75 = v48;
      v79 = v45;
      v69 = v50;
      v72 = v47;
      v67 = v49;
      sub_1003C8E70();
      v49 = v67;
      v50 = v69;
      v47 = v72;
      v48 = v75;
      v45 = v79;
      v46 = v83;
      v44 = v88;
      v142 = v94;
      v141 = v100;
      v7 = v106;
      v5 = v112;
      result = v118;
      a3 = v124;
      a2 = v130;
      a4 = v136;
      v51 = xmmword_1004B0050;
      v52 = v118[1];
      if ((atomic_load_explicit(qword_1004B0060, memory_order_acquire) & 1) == 0)
      {
LABEL_57:
        v137 = a4;
        v125 = a3;
        v131 = a2;
        v119 = result;
        v113 = v5;
        v107 = v7;
        v101 = v141;
        v95 = v142;
        v84 = v46;
        v89 = v44;
        v76 = v48;
        v80 = v45;
        v70 = v50;
        v73 = v47;
        v66 = v52;
        v68 = v49;
        v65 = v51;
        sub_1003C8E70();
        v51 = v65;
        v52 = v66;
        v49 = v68;
        v50 = v70;
        v47 = v73;
        v48 = v76;
        v45 = v80;
        v46 = v84;
        v44 = v89;
        v142 = v95;
        v141 = v101;
        v7 = v107;
        v5 = v113;
        result = v119;
        a3 = v125;
        a2 = v131;
        a4 = v137;
      }

LABEL_50:
      *a5.f32 = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(v142.val[0], v44))), vcvtq_u32_f32(vaddq_f32(v141.val[0], v45))));
      v53 = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_f32(v142.val[1], v46), v47))), vcvtq_u32_f32(vaddq_f32(vmulq_f32(v141.val[1], v48), v49))));
      v54 = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_f32(v142.val[2], v50), v51))), vcvtq_u32_f32(vaddq_f32(vmulq_f32(v141.val[2], v52), xmmword_1004B0050))));
      v55 = (a3 + v41);
      vst3_s8(v55, *a5.f32);
      v41 += 24;
      v42 += 24;
      if (v11 < v41)
      {
        v56 = v41;
        if (v41 < v9)
        {
          goto LABEL_61;
        }

        goto LABEL_3;
      }
    }
  }

  return result;
}

void sub_1002E1980(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002E19B8(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v36, &off_100477C80);
  v4 = a2[1];
  v5 = *a2;
  if (v5 < v4)
  {
    v6 = *(a1 + 40);
    if (v6 >= 1)
    {
      v7 = *(a1 + 16);
      v8 = *(a1 + 8) + v7 * v5;
      v9 = *(a1 + 32);
      v10 = 3 * v6;
      v11 = *(a1 + 48);
      v12 = *(v11 + 1);
      v14 = 4 * *v11;
      v15 = v9 * v5 + *(a1 + 24) + 8;
      do
      {
        v16 = 0;
        v17 = v15;
        v18 = v8;
        do
        {
          v19 = *(v18 + 4 * v12);
          v20 = *(v18 + 4);
          v13 = v12 ^ 2;
          v21 = *(v18 + 4 * (v12 ^ 2));
          if (v21 >= v20)
          {
            v22 = *(v18 + 4 * v13);
          }

          else
          {
            v22 = *(v18 + 4);
          }

          if (v21 <= v20)
          {
            v23 = *(v18 + 4 * v13);
          }

          else
          {
            v23 = *(v18 + 4);
          }

          if (v22 >= v19)
          {
            v24 = v22;
          }

          else
          {
            v24 = *(v18 + 4 * v12);
          }

          if (v23 <= v19)
          {
            v25 = v23;
          }

          else
          {
            v25 = *(v18 + 4 * v12);
          }

          v26 = v24 - v25;
          v27 = (v24 + v25) * 0.5;
          v28 = 0.0;
          v29 = 0.0;
          if ((v24 - v25) > 0.00000011921)
          {
            v30 = (2.0 - v24) - v25;
            if (v27 < 0.5)
            {
              v30 = v24 + v25;
            }

            v29 = v26 / v30;
            v31 = 60.0 / v26;
            v32 = (v20 - v19) * (60.0 / v26);
            v33 = v24 == v20;
            v34 = ((v19 - v21) * v31) + 120.0;
            v35 = ((v21 - v20) * v31) + 240.0;
            if (v33)
            {
              v35 = v34;
            }

            if (v24 == v21)
            {
              v28 = v32;
            }

            else
            {
              v28 = v35;
            }

            if (v28 < 0.0)
            {
              v28 = v28 + 360.0;
            }
          }

          *(v17 - 2) = v28 * v11[2];
          *(v17 - 1) = v27;
          *v17 = v29;
          v17 += 3;
          v16 += 3;
          v18 += v14;
        }

        while (v16 < v10);
        LODWORD(v5) = v5 + 1;
        v8 += v7;
        v15 += v9;
      }

      while (v5 != v4);
    }
  }

  if (v37)
  {
    sub_1002ACC1C(v36);
  }
}

void sub_1002E1B60(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002E1B98(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v10, &off_100477CE0);
  v7 = *a2;
  if (*a2 < a2[1])
  {
    v8 = (*(a1 + 24) + *(a1 + 32) * v7);
    v9 = *(a1 + 8) + *(a1 + 16) * v7;
    do
    {
      sub_1002E1C60(*(a1 + 48), v9, v8, *(a1 + 40), v4, v5, v6);
      ++v7;
      v9 += *(a1 + 16);
      v8 += *(a1 + 32);
    }

    while (v7 < a2[1]);
  }

  if (v11)
  {
    sub_1002ACC1C(v10);
  }
}

void sub_1002E1C60(float32x4_t *a1, uint64_t a2, char *a3, int a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  if (a4 >= 1)
  {
    v7 = a4;
    v11 = 0;
    v12 = 0;
    v13 = a1->i32[0];
    v14 = vdup_n_s32(0x3B808081u);
    v15 = xmmword_1003E3720;
    v16 = xmmword_1003E3730;
    v17 = vdupq_n_s32(0x3B808081u);
    v18 = xmmword_1003E3700;
    v19 = xmmword_1003E3710;
    v20 = a4;
    v134 = v17;
    do
    {
      v24 = v20 - 256;
      if (v20 >= 256)
      {
        v25 = 256;
      }

      else
      {
        v25 = v20;
      }

      v26 = v7 - (v11 << 8);
      if (v26 >= 256)
      {
        v26 = 256;
      }

      if (v7 - v12 >= 256)
      {
        v27 = 256;
      }

      else
      {
        v27 = v7 - v12;
      }

      v28 = 3 * v27;
      v29 = 0;
      v30 = (3 * v27 - 24);
      if (3 * v27 - 24 >= 0)
      {
        a5 = a1[2];
        v31 = v139;
        do
        {
          v32 = (a2 + v29);
          v140 = vld3_s8(v32);
          v33 = vmovl_u8(v140.val[0]);
          v34 = vmovl_u8(v140.val[1]);
          *v140.val[0].i8 = vmovl_u8(v140.val[2]);
          v143.val[0] = vcvtq_f32_u32(vmovl_u16(*v33.i8));
          v143.val[1] = vmulq_f32(a5, vcvtq_f32_u32(vmovl_u16(*v34.i8)));
          v143.val[2] = vmulq_f32(a5, vcvtq_f32_u32(vmovl_u16(v140.val[0])));
          v35 = v31;
          vst3q_f32(v35, v143);
          v35 += 12;
          a7 = vcvtq_f32_u32(vmovl_high_u16(v33));
          *v140.val[2].i8 = vmulq_f32(a5, vcvtq_f32_u32(vmovl_high_u16(v34)));
          a6 = vcvtq_f32_u32(vmovl_high_u16(*v140.val[0].i8));
          v36 = vmulq_f32(a5, a6);
          vst3q_f32(v35, *a7.f32);
          v29 += 24;
          v31 += 24;
        }

        while (v29 <= v30);
        v29 = v29;
      }

      if (v29 < v28)
      {
        v37 = 3 * v26;
        v38 = v29 + 3;
        if ((v29 + 3) > v37)
        {
          v37 = v29 + 3;
        }

        v39 = v37 - 3;
        if (v39 == v29)
        {
          v40 = 0;
        }

        else
        {
          v40 = -1;
        }

        v41 = 1;
        if (v39 != v29)
        {
          v41 = 2;
        }

        v42 = v41 + (v39 - (v39 != v29) - v29) / 3;
        if (v42 < 8)
        {
          v43 = v29;
          goto LABEL_43;
        }

        v44 = 3 * v25;
        if (v42 >= 0x10)
        {
          v45 = v42 & 0x7FFFFFFFFFFFFFF0;
          if (v38 <= v44)
          {
            v52 = v44;
          }

          else
          {
            v52 = v29 + 3;
          }

          v53 = (v41 + (v52 + v40 - v29 - 3) / 3) & 0xFFFFFFFFFFFFFFF0;
          v54 = &v139[4 * v29];
          v55 = v29;
          do
          {
            v56 = (a2 + v55);
            *(&a6 - 1) = vld3q_s8(v56);
            v145.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v57, v15));
            v145.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v15)), v17);
            v145.val[2] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a7, v15)), v17);
            v58 = v54;
            vst3q_f32(v58, v145);
            v58 += 12;
            v145.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v57, v19));
            v142.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v57, v18));
            v148.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v57, v16));
            v148.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v16)), v17);
            v148.val[2] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a7, v16)), v17);
            vst3q_f32(v58, v148);
            v142.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v18)), v17);
            v142.val[2] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a7, v18)), v17);
            v59 = v54 + 24;
            vst3q_f32(v59, v142);
            v145.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v19)), v17);
            a5 = vcvtq_f32_u32(vqtbl1q_s8(a7, v19));
            v145.val[2] = vmulq_f32(a5, v17);
            v60 = v54 + 36;
            vst3q_f32(v60, v145);
            v55 += 48;
            v54 += 48;
            v53 -= 16;
          }

          while (v53);
          if (v42 == v45)
          {
            goto LABEL_45;
          }

          if ((v42 & 8) == 0)
          {
            v43 = 3 * v45 + v29;
LABEL_43:
            v61 = &v139[4 * v43 + 4];
            do
            {
              a5.i8[0] = *(a2 + v43);
              *(v61 - 1) = a5.u32[0];
              v62.i32[0] = *(a2 + v43 + 1);
              v62.i32[1] = *(a2 + v43 + 2);
              *a5.f32 = vmul_f32(vcvt_f32_u32(v62), v14);
              *v61 = a5.i64[0];
              v61 = (v61 + 12);
              v43 += 3;
            }

            while (v43 < v28);
            goto LABEL_45;
          }
        }

        else
        {
          v45 = 0;
        }

        v43 = 3 * (v42 & 0x7FFFFFFFFFFFFFF8) + v29;
        if (v38 <= v44)
        {
          v38 = v44;
        }

        v46 = v45 - ((v41 + (v38 + v40 - v29 - 3) / 3) & 0xFFFFFFFFFFFFFFF8);
        v47 = 3 * v45 + v29;
        v48 = &v139[12 * v45 + 4 * v29];
        do
        {
          v49 = (a2 + v47);
          *a5.f32 = vld3_s8(v49);
          v141.val[0] = vcvtq_f32_u32(vqtbl1q_s8(a5, v16));
          v141.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v16)), v17);
          v141.val[2] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a7, v16)), v17);
          v144.val[0] = vcvtq_f32_u32(vqtbl1q_s8(a5, v15));
          v144.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v15)), v17);
          a5 = vcvtq_f32_u32(vqtbl1q_s8(a7, v15));
          v144.val[2] = vmulq_f32(a5, v17);
          v50 = v48 + 24;
          vst3q_f32(v48, v144);
          v51 = v48 + 12;
          vst3q_f32(v51, v141);
          v47 += 24;
          v48 = v50;
          v46 += 8;
        }

        while (v46);
        if (v42 != (v42 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_43;
        }
      }

LABEL_45:
      v135 = 3 * v27;
      v136 = v24;
      v137 = v12;
      v138 = v11;
      sub_1002E2504(&a1->f32[1], v139, v139, v27);
      v63 = 0;
      if ((v30 & 0x80000000) == 0)
      {
        v64 = v139;
        v65 = 8 * v13;
        v16 = xmmword_1003E3730;
        v15 = xmmword_1003E3720;
        v18 = xmmword_1003E3700;
        v17 = v134;
        v19 = xmmword_1003E3710;
        while (1)
        {
          v66 = v64;
          v147 = vld3q_f32(v66);
          v66 += 12;
          v146 = vld3q_f32(v66);
          v67 = a1[1];
          if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
          {
            a7 = xmmword_1004B0050;
            v68 = a1[1];
            if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
            {
              goto LABEL_50;
            }
          }

          else
          {
            v127 = v146;
            v121 = v147;
            v115 = v67;
            sub_1003C8E70();
            v67 = v115;
            v147 = v121;
            v146 = v127;
            v19 = xmmword_1003E3710;
            v18 = xmmword_1003E3700;
            v17 = v134;
            v16 = xmmword_1003E3730;
            v15 = xmmword_1003E3720;
            v65 = 8 * v13;
            a7 = xmmword_1004B0050;
            v68 = a1[1];
            if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
            {
LABEL_50:
              v69 = xmmword_1004B0050;
              v70 = a1[1];
              if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
              {
                goto LABEL_51;
              }

              goto LABEL_59;
            }
          }

          v128 = v146;
          v122 = v147;
          v110 = v68;
          v116 = v67;
          v105 = a7;
          sub_1003C8E70();
          a7 = v105;
          v68 = v110;
          v67 = v116;
          v147 = v122;
          v146 = v128;
          v19 = xmmword_1003E3710;
          v18 = xmmword_1003E3700;
          v17 = v134;
          v16 = xmmword_1003E3730;
          v15 = xmmword_1003E3720;
          v65 = 8 * v13;
          v69 = xmmword_1004B0050;
          v70 = a1[1];
          if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
          {
LABEL_51:
            v71 = xmmword_1004B0050;
            v72 = a1[1];
            if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
            {
              goto LABEL_52;
            }

            goto LABEL_60;
          }

LABEL_59:
          v129 = v146;
          v123 = v147;
          v111 = v68;
          v117 = v67;
          v101 = v70;
          v106 = a7;
          v97 = v69;
          sub_1003C8E70();
          v69 = v97;
          v70 = v101;
          a7 = v106;
          v68 = v111;
          v67 = v117;
          v147 = v123;
          v146 = v129;
          v19 = xmmword_1003E3710;
          v18 = xmmword_1003E3700;
          v17 = v134;
          v16 = xmmword_1003E3730;
          v15 = xmmword_1003E3720;
          v65 = 8 * v13;
          v71 = xmmword_1004B0050;
          v72 = a1[1];
          if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
          {
LABEL_52:
            v73 = xmmword_1004B0050;
            v74 = a1[1];
            if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
            {
              goto LABEL_53;
            }

            goto LABEL_61;
          }

LABEL_60:
          v130 = v146;
          v124 = v147;
          v112 = v68;
          v118 = v67;
          v102 = v70;
          v107 = a7;
          v94 = v72;
          v98 = v69;
          v91 = v71;
          sub_1003C8E70();
          v71 = v91;
          v72 = v94;
          v69 = v98;
          v70 = v102;
          a7 = v107;
          v68 = v112;
          v67 = v118;
          v147 = v124;
          v146 = v130;
          v19 = xmmword_1003E3710;
          v18 = xmmword_1003E3700;
          v17 = v134;
          v16 = xmmword_1003E3730;
          v15 = xmmword_1003E3720;
          v65 = 8 * v13;
          v73 = xmmword_1004B0050;
          v74 = a1[1];
          if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
          {
LABEL_53:
            v75 = xmmword_1004B0050;
            v76 = a1[1];
            if ((atomic_load_explicit(qword_1004B0060, memory_order_acquire) & 1) == 0)
            {
              goto LABEL_62;
            }

            goto LABEL_54;
          }

LABEL_61:
          v131 = v146;
          v125 = v147;
          v113 = v68;
          v119 = v67;
          v103 = v70;
          v108 = a7;
          v95 = v72;
          v99 = v69;
          v89 = v74;
          v92 = v71;
          v87 = v73;
          sub_1003C8E70();
          v73 = v87;
          v74 = v89;
          v71 = v92;
          v72 = v95;
          v69 = v99;
          v70 = v103;
          a7 = v108;
          v68 = v113;
          v67 = v119;
          v147 = v125;
          v146 = v131;
          v19 = xmmword_1003E3710;
          v18 = xmmword_1003E3700;
          v17 = v134;
          v16 = xmmword_1003E3730;
          v15 = xmmword_1003E3720;
          v65 = 8 * v13;
          v75 = xmmword_1004B0050;
          v76 = a1[1];
          if ((atomic_load_explicit(qword_1004B0060, memory_order_acquire) & 1) == 0)
          {
LABEL_62:
            v132 = v146;
            v126 = v147;
            v114 = v68;
            v120 = v67;
            v104 = v70;
            v109 = a7;
            v96 = v72;
            v100 = v69;
            v90 = v74;
            v93 = v71;
            v86 = v76;
            v88 = v73;
            v85 = v75;
            sub_1003C8E70();
            v75 = v85;
            v76 = v86;
            v73 = v88;
            v74 = v90;
            v71 = v93;
            v72 = v96;
            v69 = v100;
            v70 = v104;
            a7 = v109;
            v68 = v114;
            v67 = v120;
            v147 = v126;
            v146 = v132;
            v19 = xmmword_1003E3710;
            v18 = xmmword_1003E3700;
            v17 = v134;
            v16 = xmmword_1003E3730;
            v15 = xmmword_1003E3720;
            v65 = 8 * v13;
          }

LABEL_54:
          a6 = vcvtq_u32_f32(vaddq_f32(vmulq_f32(v146.val[0], v68), v69));
          a5 = vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_f32(v147.val[0], v67), a7))), a6);
          *a5.f32 = vqmovn_u16(a5);
          *a6.f32 = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_f32(v147.val[1], v70), v71))), vcvtq_u32_f32(vaddq_f32(vmulq_f32(v146.val[1], v72), v73))));
          v77 = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_f32(v147.val[2], v74), v75))), vcvtq_u32_f32(vaddq_f32(vmulq_f32(v146.val[2], v76), xmmword_1004B0050))));
          if (v13 == 4)
          {
            v78 = a1[3].i64[0];
            vst4_s8(a3, *a5.f32);
            a3 += v65;
            v64 += 24;
            v63 += 24;
            if (v30 < v63)
            {
              goto LABEL_64;
            }
          }

          else
          {
            vst3_s8(a3, *a5.f32);
            a3 += v65;
            v64 += 24;
            v63 += 24;
            if (v30 < v63)
            {
              goto LABEL_64;
            }
          }
        }
      }

      v16 = xmmword_1003E3730;
      v15 = xmmword_1003E3720;
      v18 = xmmword_1003E3700;
      v17 = v134;
      v19 = xmmword_1003E3710;
LABEL_64:
      if (v63 >= v135)
      {
        v7 = a4;
        v21 = v138;
        v22 = v137;
        v23 = v136;
      }

      else
      {
        v79 = &v139[4 * v63 + 4];
        v7 = a4;
        v21 = v138;
        v22 = v137;
        v23 = v136;
        do
        {
          v80 = rintf(*(v79 - 1) * 255.0);
          v81 = v80 & ~(v80 >> 31);
          if (v81 >= 255)
          {
            LOBYTE(v81) = -1;
          }

          *a3 = v81;
          v82 = rintf(*v79 * 255.0);
          v83 = v82 & ~(v82 >> 31);
          if (v83 >= 255)
          {
            LOBYTE(v83) = -1;
          }

          a3[1] = v83;
          a5.f32[0] = rintf(v79[1] * 255.0);
          v84 = a5.f32[0] & ~(a5.f32[0] >> 31);
          if (v84 >= 255)
          {
            LOBYTE(v84) = -1;
          }

          a3[2] = v84;
          if (v13 == 4)
          {
            a3[3] = -1;
          }

          a3 += v13;
          v79 += 3;
          v63 += 3;
        }

        while (v135 > v63);
      }

      v12 = v22 + 256;
      a2 += 768;
      v11 = v21 + 1;
      v20 = v23;
    }

    while (v12 < v7);
  }
}

float *sub_1002E2504(float *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = result[2];
    v6 = *result;
    v7 = *(result + 1);
    v8 = v7 ^ 2;
    while (1)
    {
      v9 = (a2 + 4 * v4);
      v11 = v9[1];
      v10 = v9[2];
      if (v11 != 0.0)
      {
        break;
      }

      *(a3 + 4 * v7) = v10;
      *(a3 + 4) = v10;
      *(a3 + 4 * v8) = v10;
      if (v6 == 4)
      {
        goto LABEL_12;
      }

LABEL_3:
      v4 += 3;
      a3 += 4 * v6;
      if (v4 >= (3 * a4))
      {
        return result;
      }
    }

    v12 = v5 * *v9;
    if (v12 >= 0.0)
    {
      while (v12 >= 6.0)
      {
        v12 = v12 + -6.0;
      }
    }

    else
    {
      do
      {
        v12 = v12 + 6.0;
      }

      while (v12 < 0.0);
    }

    v13 = (__PAIR64__(v12, LODWORD(v12)) - COERCE_UNSIGNED_INT(v12)) >> 32;
    v14 = v12 - v13;
    if (v13 > 5)
    {
      v14 = 0.0;
      v13 = 0;
    }

    *v18 = v10;
    *&v18[1] = v10 * (1.0 - v11);
    *&v18[2] = v10 * (1.0 - (v11 * v14));
    *&v18[3] = v10 * (1.0 - (v11 * (1.0 - v14)));
    v15 = (&unk_1003E6FE0 + 12 * v13);
    result = *v15;
    v16 = v18[v15[1]];
    v17 = v18[v15[2]];
    *(a3 + 4 * v7) = v18[result];
    *(a3 + 4) = v16;
    *(a3 + 4 * v8) = v17;
    if (v6 != 4)
    {
      goto LABEL_3;
    }

LABEL_12:
    *(a3 + 12) = 1065353216;
    goto LABEL_3;
  }

  return result;
}

void sub_1002E2684(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002E26BC(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477D40);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = *(a1 + 24) + *(a1 + 32) * v4;
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002E2504(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

void sub_1002E2788(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002E27C0(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v10, &off_100477DA0);
  v7 = *a2;
  if (*a2 < a2[1])
  {
    v8 = (*(a1 + 24) + *(a1 + 32) * v7);
    v9 = *(a1 + 8) + *(a1 + 16) * v7;
    do
    {
      sub_1002E2888(*(a1 + 48), v9, v8, *(a1 + 40), v4, v5, v6);
      ++v7;
      v9 += *(a1 + 16);
      v8 += *(a1 + 32);
    }

    while (v7 < a2[1]);
  }

  if (v11)
  {
    sub_1002ACC1C(v10);
  }
}

void sub_1002E2888(float32x4_t *a1, uint64_t a2, char *a3, int a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  if (a4 >= 1)
  {
    v7 = a4;
    v11 = 0;
    v12 = 0;
    v13 = a1->i32[0];
    v14 = vdup_n_s32(0x3B808081u);
    v15 = xmmword_1003E3720;
    v16 = xmmword_1003E3730;
    v17 = vdupq_n_s32(0x3B808081u);
    v18 = xmmword_1003E3700;
    v19 = xmmword_1003E3710;
    v20 = a4;
    v134 = v17;
    do
    {
      v24 = v20 - 256;
      if (v20 >= 256)
      {
        v25 = 256;
      }

      else
      {
        v25 = v20;
      }

      v26 = v7 - (v11 << 8);
      if (v26 >= 256)
      {
        v26 = 256;
      }

      if (v7 - v12 >= 256)
      {
        v27 = 256;
      }

      else
      {
        v27 = v7 - v12;
      }

      v28 = 3 * v27;
      v29 = 0;
      v30 = (3 * v27 - 24);
      if (3 * v27 - 24 >= 0)
      {
        a5 = a1[2];
        v31 = v139;
        do
        {
          v32 = (a2 + v29);
          v140 = vld3_s8(v32);
          v33 = vmovl_u8(v140.val[0]);
          v34 = vmovl_u8(v140.val[1]);
          *v140.val[0].i8 = vmovl_u8(v140.val[2]);
          v143.val[0] = vcvtq_f32_u32(vmovl_u16(*v33.i8));
          v143.val[1] = vmulq_f32(a5, vcvtq_f32_u32(vmovl_u16(*v34.i8)));
          v143.val[2] = vmulq_f32(a5, vcvtq_f32_u32(vmovl_u16(v140.val[0])));
          v35 = v31;
          vst3q_f32(v35, v143);
          v35 += 12;
          a7 = vcvtq_f32_u32(vmovl_high_u16(v33));
          *v140.val[2].i8 = vmulq_f32(a5, vcvtq_f32_u32(vmovl_high_u16(v34)));
          a6 = vcvtq_f32_u32(vmovl_high_u16(*v140.val[0].i8));
          v36 = vmulq_f32(a5, a6);
          vst3q_f32(v35, *a7.f32);
          v29 += 24;
          v31 += 24;
        }

        while (v29 <= v30);
        v29 = v29;
      }

      if (v29 < v28)
      {
        v37 = 3 * v26;
        v38 = v29 + 3;
        if ((v29 + 3) > v37)
        {
          v37 = v29 + 3;
        }

        v39 = v37 - 3;
        if (v39 == v29)
        {
          v40 = 0;
        }

        else
        {
          v40 = -1;
        }

        v41 = 1;
        if (v39 != v29)
        {
          v41 = 2;
        }

        v42 = v41 + (v39 - (v39 != v29) - v29) / 3;
        if (v42 < 8)
        {
          v43 = v29;
          goto LABEL_43;
        }

        v44 = 3 * v25;
        if (v42 >= 0x10)
        {
          v45 = v42 & 0x7FFFFFFFFFFFFFF0;
          if (v38 <= v44)
          {
            v52 = v44;
          }

          else
          {
            v52 = v29 + 3;
          }

          v53 = (v41 + (v52 + v40 - v29 - 3) / 3) & 0xFFFFFFFFFFFFFFF0;
          v54 = &v139[4 * v29];
          v55 = v29;
          do
          {
            v56 = (a2 + v55);
            *(&a6 - 1) = vld3q_s8(v56);
            v145.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v57, v15));
            v145.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v15)), v17);
            v145.val[2] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a7, v15)), v17);
            v58 = v54;
            vst3q_f32(v58, v145);
            v58 += 12;
            v145.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v57, v19));
            v142.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v57, v18));
            v148.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v57, v16));
            v148.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v16)), v17);
            v148.val[2] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a7, v16)), v17);
            vst3q_f32(v58, v148);
            v142.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v18)), v17);
            v142.val[2] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a7, v18)), v17);
            v59 = v54 + 24;
            vst3q_f32(v59, v142);
            v145.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v19)), v17);
            a5 = vcvtq_f32_u32(vqtbl1q_s8(a7, v19));
            v145.val[2] = vmulq_f32(a5, v17);
            v60 = v54 + 36;
            vst3q_f32(v60, v145);
            v55 += 48;
            v54 += 48;
            v53 -= 16;
          }

          while (v53);
          if (v42 == v45)
          {
            goto LABEL_45;
          }

          if ((v42 & 8) == 0)
          {
            v43 = 3 * v45 + v29;
LABEL_43:
            v61 = &v139[4 * v43 + 4];
            do
            {
              a5.i8[0] = *(a2 + v43);
              *(v61 - 1) = a5.u32[0];
              v62.i32[0] = *(a2 + v43 + 1);
              v62.i32[1] = *(a2 + v43 + 2);
              *a5.f32 = vmul_f32(vcvt_f32_u32(v62), v14);
              *v61 = a5.i64[0];
              v61 = (v61 + 12);
              v43 += 3;
            }

            while (v43 < v28);
            goto LABEL_45;
          }
        }

        else
        {
          v45 = 0;
        }

        v43 = 3 * (v42 & 0x7FFFFFFFFFFFFFF8) + v29;
        if (v38 <= v44)
        {
          v38 = v44;
        }

        v46 = v45 - ((v41 + (v38 + v40 - v29 - 3) / 3) & 0xFFFFFFFFFFFFFFF8);
        v47 = 3 * v45 + v29;
        v48 = &v139[12 * v45 + 4 * v29];
        do
        {
          v49 = (a2 + v47);
          *a5.f32 = vld3_s8(v49);
          v141.val[0] = vcvtq_f32_u32(vqtbl1q_s8(a5, v16));
          v141.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v16)), v17);
          v141.val[2] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a7, v16)), v17);
          v144.val[0] = vcvtq_f32_u32(vqtbl1q_s8(a5, v15));
          v144.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v15)), v17);
          a5 = vcvtq_f32_u32(vqtbl1q_s8(a7, v15));
          v144.val[2] = vmulq_f32(a5, v17);
          v50 = v48 + 24;
          vst3q_f32(v48, v144);
          v51 = v48 + 12;
          vst3q_f32(v51, v141);
          v47 += 24;
          v48 = v50;
          v46 += 8;
        }

        while (v46);
        if (v42 != (v42 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_43;
        }
      }

LABEL_45:
      v135 = 3 * v27;
      v136 = v24;
      v137 = v12;
      v138 = v11;
      sub_1002E312C(&a1->f32[1], v139, v139, v27);
      v63 = 0;
      if ((v30 & 0x80000000) == 0)
      {
        v64 = v139;
        v65 = 8 * v13;
        v16 = xmmword_1003E3730;
        v15 = xmmword_1003E3720;
        v18 = xmmword_1003E3700;
        v17 = v134;
        v19 = xmmword_1003E3710;
        while (1)
        {
          v66 = v64;
          v147 = vld3q_f32(v66);
          v66 += 12;
          v146 = vld3q_f32(v66);
          v67 = a1[1];
          if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
          {
            a7 = xmmword_1004B0050;
            v68 = a1[1];
            if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
            {
              goto LABEL_50;
            }
          }

          else
          {
            v127 = v146;
            v121 = v147;
            v115 = v67;
            sub_1003C8E70();
            v67 = v115;
            v147 = v121;
            v146 = v127;
            v19 = xmmword_1003E3710;
            v18 = xmmword_1003E3700;
            v17 = v134;
            v16 = xmmword_1003E3730;
            v15 = xmmword_1003E3720;
            v65 = 8 * v13;
            a7 = xmmword_1004B0050;
            v68 = a1[1];
            if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
            {
LABEL_50:
              v69 = xmmword_1004B0050;
              v70 = a1[1];
              if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
              {
                goto LABEL_51;
              }

              goto LABEL_59;
            }
          }

          v128 = v146;
          v122 = v147;
          v110 = v68;
          v116 = v67;
          v105 = a7;
          sub_1003C8E70();
          a7 = v105;
          v68 = v110;
          v67 = v116;
          v147 = v122;
          v146 = v128;
          v19 = xmmword_1003E3710;
          v18 = xmmword_1003E3700;
          v17 = v134;
          v16 = xmmword_1003E3730;
          v15 = xmmword_1003E3720;
          v65 = 8 * v13;
          v69 = xmmword_1004B0050;
          v70 = a1[1];
          if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
          {
LABEL_51:
            v71 = xmmword_1004B0050;
            v72 = a1[1];
            if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
            {
              goto LABEL_52;
            }

            goto LABEL_60;
          }

LABEL_59:
          v129 = v146;
          v123 = v147;
          v111 = v68;
          v117 = v67;
          v101 = v70;
          v106 = a7;
          v97 = v69;
          sub_1003C8E70();
          v69 = v97;
          v70 = v101;
          a7 = v106;
          v68 = v111;
          v67 = v117;
          v147 = v123;
          v146 = v129;
          v19 = xmmword_1003E3710;
          v18 = xmmword_1003E3700;
          v17 = v134;
          v16 = xmmword_1003E3730;
          v15 = xmmword_1003E3720;
          v65 = 8 * v13;
          v71 = xmmword_1004B0050;
          v72 = a1[1];
          if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
          {
LABEL_52:
            v73 = xmmword_1004B0050;
            v74 = a1[1];
            if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
            {
              goto LABEL_53;
            }

            goto LABEL_61;
          }

LABEL_60:
          v130 = v146;
          v124 = v147;
          v112 = v68;
          v118 = v67;
          v102 = v70;
          v107 = a7;
          v94 = v72;
          v98 = v69;
          v91 = v71;
          sub_1003C8E70();
          v71 = v91;
          v72 = v94;
          v69 = v98;
          v70 = v102;
          a7 = v107;
          v68 = v112;
          v67 = v118;
          v147 = v124;
          v146 = v130;
          v19 = xmmword_1003E3710;
          v18 = xmmword_1003E3700;
          v17 = v134;
          v16 = xmmword_1003E3730;
          v15 = xmmword_1003E3720;
          v65 = 8 * v13;
          v73 = xmmword_1004B0050;
          v74 = a1[1];
          if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
          {
LABEL_53:
            v75 = xmmword_1004B0050;
            v76 = a1[1];
            if ((atomic_load_explicit(qword_1004B0060, memory_order_acquire) & 1) == 0)
            {
              goto LABEL_62;
            }

            goto LABEL_54;
          }

LABEL_61:
          v131 = v146;
          v125 = v147;
          v113 = v68;
          v119 = v67;
          v103 = v70;
          v108 = a7;
          v95 = v72;
          v99 = v69;
          v89 = v74;
          v92 = v71;
          v87 = v73;
          sub_1003C8E70();
          v73 = v87;
          v74 = v89;
          v71 = v92;
          v72 = v95;
          v69 = v99;
          v70 = v103;
          a7 = v108;
          v68 = v113;
          v67 = v119;
          v147 = v125;
          v146 = v131;
          v19 = xmmword_1003E3710;
          v18 = xmmword_1003E3700;
          v17 = v134;
          v16 = xmmword_1003E3730;
          v15 = xmmword_1003E3720;
          v65 = 8 * v13;
          v75 = xmmword_1004B0050;
          v76 = a1[1];
          if ((atomic_load_explicit(qword_1004B0060, memory_order_acquire) & 1) == 0)
          {
LABEL_62:
            v132 = v146;
            v126 = v147;
            v114 = v68;
            v120 = v67;
            v104 = v70;
            v109 = a7;
            v96 = v72;
            v100 = v69;
            v90 = v74;
            v93 = v71;
            v86 = v76;
            v88 = v73;
            v85 = v75;
            sub_1003C8E70();
            v75 = v85;
            v76 = v86;
            v73 = v88;
            v74 = v90;
            v71 = v93;
            v72 = v96;
            v69 = v100;
            v70 = v104;
            a7 = v109;
            v68 = v114;
            v67 = v120;
            v147 = v126;
            v146 = v132;
            v19 = xmmword_1003E3710;
            v18 = xmmword_1003E3700;
            v17 = v134;
            v16 = xmmword_1003E3730;
            v15 = xmmword_1003E3720;
            v65 = 8 * v13;
          }

LABEL_54:
          a6 = vcvtq_u32_f32(vaddq_f32(vmulq_f32(v146.val[0], v68), v69));
          a5 = vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_f32(v147.val[0], v67), a7))), a6);
          *a5.f32 = vqmovn_u16(a5);
          *a6.f32 = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_f32(v147.val[1], v70), v71))), vcvtq_u32_f32(vaddq_f32(vmulq_f32(v146.val[1], v72), v73))));
          v77 = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_f32(v147.val[2], v74), v75))), vcvtq_u32_f32(vaddq_f32(vmulq_f32(v146.val[2], v76), xmmword_1004B0050))));
          if (v13 == 4)
          {
            v78 = a1[3].i64[0];
            vst4_s8(a3, *a5.f32);
            a3 += v65;
            v64 += 24;
            v63 += 24;
            if (v30 < v63)
            {
              goto LABEL_64;
            }
          }

          else
          {
            vst3_s8(a3, *a5.f32);
            a3 += v65;
            v64 += 24;
            v63 += 24;
            if (v30 < v63)
            {
              goto LABEL_64;
            }
          }
        }
      }

      v16 = xmmword_1003E3730;
      v15 = xmmword_1003E3720;
      v18 = xmmword_1003E3700;
      v17 = v134;
      v19 = xmmword_1003E3710;
LABEL_64:
      if (v63 >= v135)
      {
        v7 = a4;
        v21 = v138;
        v22 = v137;
        v23 = v136;
      }

      else
      {
        v79 = &v139[4 * v63 + 4];
        v7 = a4;
        v21 = v138;
        v22 = v137;
        v23 = v136;
        do
        {
          v80 = rintf(*(v79 - 1) * 255.0);
          v81 = v80 & ~(v80 >> 31);
          if (v81 >= 255)
          {
            LOBYTE(v81) = -1;
          }

          *a3 = v81;
          v82 = rintf(*v79 * 255.0);
          v83 = v82 & ~(v82 >> 31);
          if (v83 >= 255)
          {
            LOBYTE(v83) = -1;
          }

          a3[1] = v83;
          a5.f32[0] = rintf(v79[1] * 255.0);
          v84 = a5.f32[0] & ~(a5.f32[0] >> 31);
          if (v84 >= 255)
          {
            LOBYTE(v84) = -1;
          }

          a3[2] = v84;
          if (v13 == 4)
          {
            a3[3] = -1;
          }

          a3 += v13;
          v79 += 3;
          v63 += 3;
        }

        while (v135 > v63);
      }

      v12 = v22 + 256;
      a2 += 768;
      v11 = v21 + 1;
      v20 = v23;
    }

    while (v12 < v7);
  }
}

float *sub_1002E312C(float *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = result[2];
    v6 = *result;
    v7 = *(result + 1);
    v8 = v7 ^ 2;
    while (1)
    {
      v9 = (a2 + 4 * v4);
      v10 = v9[1];
      v11 = v9[2];
      if (v11 != 0.0)
      {
        break;
      }

      *(a3 + 4 * v7) = v10;
      *(a3 + 4) = v10;
      *(a3 + 4 * v8) = v10;
      if (v6 == 4)
      {
        goto LABEL_12;
      }

LABEL_3:
      v4 += 3;
      a3 += 4 * v6;
      if (v4 >= (3 * a4))
      {
        return result;
      }
    }

    v12 = (v10 + v11) - (v10 * v11);
    v13 = v10 * (v11 + 1.0);
    if (v10 > 0.5)
    {
      v13 = v12;
    }

    v14 = v5 * *v9;
    if (v14 >= 0.0)
    {
      while (v14 >= 6.0)
      {
        v14 = v14 + -6.0;
      }
    }

    else
    {
      do
      {
        v14 = v14 + 6.0;
      }

      while (v14 < 0.0);
    }

    v15 = (__PAIR64__(v14, LODWORD(v14)) - COERCE_UNSIGNED_INT(v14)) >> 32;
    v16 = v14 - v15;
    v21 = v13;
    v22 = -(v13 - (v10 * 2.0));
    v17 = v13 - v22;
    v23 = v22 + (v17 * (1.0 - v16));
    v24 = v22 + (v17 * v16);
    v18 = (&unk_1003E7080 + 12 * v15);
    result = *v18;
    v19 = *(&v21 + v18[1]);
    v20 = *(&v21 + v18[2]);
    *(a3 + 4 * v7) = *(&v21 + result);
    *(a3 + 4) = v19;
    *(a3 + 4 * v8) = v20;
    if (v6 != 4)
    {
      goto LABEL_3;
    }

LABEL_12:
    *(a3 + 12) = 1065353216;
    goto LABEL_3;
  }

  return result;
}

void sub_1002E32B4(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002E32EC(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477E00);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = *(a1 + 24) + *(a1 + 32) * v4;
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002E312C(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

void sub_1002E33A4(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002E33DC(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477E60);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = *(a1 + 24) + *(a1 + 32) * v4;
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002E3490(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

int *sub_1002E3490(int *result, uint64_t a2, uint64_t a3, int a4)
{
  if (*(result + 40))
  {
    v4 = 568;
  }

  else
  {
    v4 = 1080;
  }

  if (a4 >= 1)
  {
    v5 = 0;
    v6 = result[2];
    v7 = result[3];
    v8 = &byte_1004D3E00[v4];
    v9 = result[4];
    v10 = result[5];
    v11 = result[6];
    v12 = result[7];
    v13 = (a3 + 2);
    v14 = (a2 + 1);
    v15 = result[8];
    v16 = result[9];
    v17 = result[1];
    result = *result;
    do
    {
      v18 = *&v8[2 * *v14];
      v19 = *&v8[2 * *(v14 - 1)];
      v20 = *&v8[2 * v14[1]];
      v21 = word_1004C2600[(v10 * v18 + v9 * v19 + v11 * v20 + 2048) >> 12];
      v22 = 500 * (word_1004C2600[(v6 * v18 + v17 * v19 + v7 * v20 + 2048) >> 12] - v21) + 4210688;
      v23 = 200 * (v21 - word_1004C2600[(v15 * v18 + v12 * v19 + v16 * v20 + 2048) >> 12]) + 4210688;
      v24 = ((296 * v21 - 1320550) >> 15) & ~((296 * v21 - 1320550) >> 31);
      if (v24 >= 255)
      {
        LOBYTE(v24) = -1;
      }

      *(v13 - 2) = v24;
      v25 = (v22 >> 15) & ~(v22 >> 31);
      if (v25 >= 255)
      {
        LOBYTE(v25) = -1;
      }

      v26 = (v23 >> 15) & ~(v23 >> 31);
      *(v13 - 1) = v25;
      if (v26 >= 255)
      {
        LOBYTE(v26) = -1;
      }

      *v13 = v26;
      v13 += 3;
      v5 += 3;
      v14 = result + v14;
    }

    while (v5 < (3 * a4));
  }

  return result;
}

void sub_1002E35F8(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002E3630(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v13, &off_100477EC0);
  v10 = *a2;
  if (*a2 < a2[1])
  {
    v11 = (*(a1 + 24) + *(a1 + 32) * v10);
    v12 = *(a1 + 8) + *(a1 + 16) * v10;
    do
    {
      sub_1002E36F8(*(a1 + 48), v12, v11, *(a1 + 40), v4, v5, v6, v7, v8, v9);
      ++v10;
      v12 += *(a1 + 16);
      v11 = (v11 + *(a1 + 32));
    }

    while (v10 < a2[1]);
  }

  if (v14)
  {
    sub_1002ACC1C(v13);
  }
}

void sub_1002E36F8(int *a1, uint64_t a2, float *a3, int a4, double a5, double a6, double a7, double a8, float32x4_t a9, float32x4_t a10)
{
  v228 = *a1;
  if (*(a1 + 40))
  {
    v11 = qword_1004D3EA8;
  }

  else
  {
    v11 = 0;
  }

  v224 = *(a1 + 2);
  v225 = *(a1 + 1);
  v222 = *(a1 + 4);
  v223 = *(a1 + 3);
  v221 = *(a1 + 5);
  v220 = *(a1 + 6);
  v219 = *(a1 + 7);
  v218 = *(a1 + 8);
  v217 = *(a1 + 9);
  v212 = 3 * a4;
  if (*(a1 + 41) == 1)
  {
    v12 = a1[11];
    if (a4 >= 9)
    {
      v13 = 0;
      v226 = 3 * a4 - 24;
      __asm { FMOV            V1.4S, #1.0 }

      v215 = vdupq_n_s32(0x46800000u);
      v216 = _Q1;
      v213 = vdupq_n_s32(0x3BC80000u);
      v19 = a3;
      while (1)
      {
        if (v228 == 3)
        {
          v20 = a2;
          v233 = vld3q_f32(v20);
          v20 += 12;
          v235 = vld3q_f32(v20);
          if (v12)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v44 = a2;
          v45 = 4 * v228;
          *v233.val[0].f32 = vld4q_f32(v44);
          v46 = &v44[v45];
          *v235.val[0].f32 = vld4q_f32(v46);
          if (v12)
          {
LABEL_9:
            v21 = v235.val[0];
            v22 = v233.val[0];
            if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
            {
              goto LABEL_10;
            }

            goto LABEL_25;
          }
        }

        v21 = v235.val[2];
        v235.val[2] = v235.val[0];
        v22 = v233.val[2];
        v233.val[2] = v233.val[0];
        if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
        {
LABEL_10:
          if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
          {
            goto LABEL_11;
          }

          goto LABEL_26;
        }

LABEL_25:
        v187 = v233.val[1];
        v199 = v233.val[2];
        v163 = v235.val[1];
        v175 = v235.val[2];
        v139 = v22;
        v151 = v21;
        sub_1003C83B4();
        v22 = v139;
        v21 = v151;
        v235.val[1] = v163;
        v235.val[2] = v175;
        v233.val[1] = v187;
        v233.val[2] = v199;
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
LABEL_11:
          v23 = xmmword_1004B0030;
          v24 = xmmword_1004B0010;
          if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
          {
            goto LABEL_12;
          }

          goto LABEL_27;
        }

LABEL_26:
        v188 = v233.val[1];
        v200 = v233.val[2];
        v164 = v235.val[1];
        v176 = v235.val[2];
        v140 = v22;
        v152 = v21;
        sub_1003C83FC();
        v22 = v140;
        v21 = v152;
        v235.val[1] = v164;
        v235.val[2] = v176;
        v233.val[1] = v188;
        v233.val[2] = v200;
        v23 = xmmword_1004B0030;
        v24 = xmmword_1004B0010;
        if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
        {
LABEL_12:
          if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
          {
            goto LABEL_13;
          }

          goto LABEL_28;
        }

LABEL_27:
        v189 = v233.val[1];
        v201 = v233.val[2];
        v165 = v235.val[1];
        v177 = v235.val[2];
        v141 = v22;
        v153 = v21;
        v119 = v24;
        v129 = v23;
        sub_1003C83B4();
        v24 = v119;
        v23 = v129;
        v22 = v141;
        v21 = v153;
        v235.val[1] = v165;
        v235.val[2] = v177;
        v233.val[1] = v189;
        v233.val[2] = v201;
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
LABEL_13:
          v25 = xmmword_1004B0030;
          v26 = xmmword_1004B0010;
          if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

LABEL_28:
        v190 = v233.val[1];
        v202 = v233.val[2];
        v166 = v235.val[1];
        v178 = v235.val[2];
        v142 = v22;
        v154 = v21;
        v120 = v24;
        v130 = v23;
        sub_1003C83FC();
        v24 = v120;
        v23 = v130;
        v22 = v142;
        v21 = v154;
        v235.val[1] = v166;
        v235.val[2] = v178;
        v233.val[1] = v190;
        v233.val[2] = v202;
        v25 = xmmword_1004B0030;
        v26 = xmmword_1004B0010;
        if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
        {
LABEL_14:
          if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
          {
            goto LABEL_15;
          }

          goto LABEL_30;
        }

LABEL_29:
        v191 = v233.val[1];
        v203 = v233.val[2];
        v167 = v235.val[1];
        v179 = v235.val[2];
        v143 = v22;
        v155 = v21;
        v121 = v24;
        v131 = v23;
        v103 = v26;
        v111 = v25;
        sub_1003C83B4();
        v26 = v103;
        v25 = v111;
        v24 = v121;
        v23 = v131;
        v22 = v143;
        v21 = v155;
        v235.val[1] = v167;
        v235.val[2] = v179;
        v233.val[1] = v191;
        v233.val[2] = v203;
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
LABEL_15:
          v27 = xmmword_1004B0030;
          v28 = xmmword_1004B0010;
          if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
          {
            goto LABEL_16;
          }

          goto LABEL_31;
        }

LABEL_30:
        v192 = v233.val[1];
        v204 = v233.val[2];
        v168 = v235.val[1];
        v180 = v235.val[2];
        v144 = v22;
        v156 = v21;
        v122 = v24;
        v132 = v23;
        v104 = v26;
        v112 = v25;
        sub_1003C83FC();
        v26 = v104;
        v25 = v112;
        v24 = v122;
        v23 = v132;
        v22 = v144;
        v21 = v156;
        v235.val[1] = v168;
        v235.val[2] = v180;
        v233.val[1] = v192;
        v233.val[2] = v204;
        v27 = xmmword_1004B0030;
        v28 = xmmword_1004B0010;
        if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
        {
LABEL_16:
          if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
          {
            goto LABEL_17;
          }

          goto LABEL_32;
        }

LABEL_31:
        v193 = v233.val[1];
        v205 = v233.val[2];
        v169 = v235.val[1];
        v181 = v235.val[2];
        v145 = v22;
        v157 = v21;
        v123 = v24;
        v133 = v23;
        v105 = v26;
        v113 = v25;
        v91 = v28;
        v97 = v27;
        sub_1003C83B4();
        v28 = v91;
        v27 = v97;
        v26 = v105;
        v25 = v113;
        v24 = v123;
        v23 = v133;
        v22 = v145;
        v21 = v157;
        v235.val[1] = v169;
        v235.val[2] = v181;
        v233.val[1] = v193;
        v233.val[2] = v205;
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
LABEL_17:
          v29 = xmmword_1004B0030;
          v30 = xmmword_1004B0010;
          if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
          {
            goto LABEL_18;
          }

          goto LABEL_33;
        }

LABEL_32:
        v194 = v233.val[1];
        v206 = v233.val[2];
        v170 = v235.val[1];
        v182 = v235.val[2];
        v146 = v22;
        v158 = v21;
        v124 = v24;
        v134 = v23;
        v106 = v26;
        v114 = v25;
        v92 = v28;
        v98 = v27;
        sub_1003C83FC();
        v28 = v92;
        v27 = v98;
        v26 = v106;
        v25 = v114;
        v24 = v124;
        v23 = v134;
        v22 = v146;
        v21 = v158;
        v235.val[1] = v170;
        v235.val[2] = v182;
        v233.val[1] = v194;
        v233.val[2] = v206;
        v29 = xmmword_1004B0030;
        v30 = xmmword_1004B0010;
        if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
        {
LABEL_18:
          if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
          {
            goto LABEL_19;
          }

          goto LABEL_34;
        }

LABEL_33:
        v195 = v233.val[1];
        v207 = v233.val[2];
        v171 = v235.val[1];
        v183 = v235.val[2];
        v147 = v22;
        v159 = v21;
        v125 = v24;
        v135 = v23;
        v107 = v26;
        v115 = v25;
        v93 = v28;
        v99 = v27;
        v83 = v30;
        v87 = v29;
        sub_1003C83B4();
        v30 = v83;
        v29 = v87;
        v28 = v93;
        v27 = v99;
        v26 = v107;
        v25 = v115;
        v24 = v125;
        v23 = v135;
        v22 = v147;
        v21 = v159;
        v235.val[1] = v171;
        v235.val[2] = v183;
        v233.val[1] = v195;
        v233.val[2] = v207;
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
LABEL_19:
          v31 = xmmword_1004B0030;
          v32 = xmmword_1004B0010;
          if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
          {
            goto LABEL_20;
          }

          goto LABEL_35;
        }

LABEL_34:
        v196 = v233.val[1];
        v208 = v233.val[2];
        v172 = v235.val[1];
        v184 = v235.val[2];
        v148 = v22;
        v160 = v21;
        v126 = v24;
        v136 = v23;
        v108 = v26;
        v116 = v25;
        v94 = v28;
        v100 = v27;
        v84 = v30;
        v88 = v29;
        sub_1003C83FC();
        v30 = v84;
        v29 = v88;
        v28 = v94;
        v27 = v100;
        v26 = v108;
        v25 = v116;
        v24 = v126;
        v23 = v136;
        v22 = v148;
        v21 = v160;
        v235.val[1] = v172;
        v235.val[2] = v184;
        v233.val[1] = v196;
        v233.val[2] = v208;
        v31 = xmmword_1004B0030;
        v32 = xmmword_1004B0010;
        if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
        {
LABEL_20:
          if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_21;
        }

LABEL_35:
        v197 = v233.val[1];
        v209 = v233.val[2];
        v173 = v235.val[1];
        v185 = v235.val[2];
        v149 = v22;
        v161 = v21;
        v127 = v24;
        v137 = v23;
        v109 = v26;
        v117 = v25;
        v95 = v28;
        v101 = v27;
        v85 = v30;
        v89 = v29;
        sub_1003C83B4();
        v30 = v85;
        v29 = v89;
        v28 = v95;
        v27 = v101;
        v26 = v109;
        v25 = v117;
        v24 = v127;
        v23 = v137;
        v22 = v149;
        v21 = v161;
        v235.val[1] = v173;
        v235.val[2] = v185;
        v233.val[1] = v197;
        v233.val[2] = v209;
        if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
        {
LABEL_36:
          v198 = v233.val[1];
          v210 = v233.val[2];
          v174 = v235.val[1];
          v186 = v235.val[2];
          v150 = v22;
          v162 = v21;
          v128 = v24;
          v138 = v23;
          v110 = v26;
          v118 = v25;
          v96 = v28;
          v102 = v27;
          v86 = v30;
          v90 = v29;
          sub_1003C83FC();
          v30 = v86;
          v29 = v90;
          v28 = v96;
          v27 = v102;
          v26 = v110;
          v25 = v118;
          v24 = v128;
          v23 = v138;
          v22 = v150;
          v21 = v162;
          v235.val[1] = v174;
          v235.val[2] = v186;
          v233.val[1] = v198;
          v233.val[2] = v210;
        }

LABEL_21:
        v33 = vmulq_f32(vminq_f32(vmaxq_f32(v233.val[2], 0), v216), v215);
        v34 = vmulq_f32(vminq_f32(vmaxq_f32(v233.val[1], 0), v216), v215);
        v35 = vmulq_f32(vminq_f32(vmaxq_f32(v22, 0), v216), v215);
        v36 = vmulq_f32(vminq_f32(vmaxq_f32(v235.val[2], 0), v216), v215);
        v37 = vmulq_f32(vminq_f32(vmaxq_f32(v235.val[1], 0), v216), v215);
        v38 = vmulq_f32(vminq_f32(vmaxq_f32(v21, 0), v216), v215);
        sub_1002E423C(qword_1004D3F60, v232, &v231, &v230, vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v33, vorrq_s8(vandq_s8(v24, v33), v23)))), vcvtq_s32_f32(vaddq_f32(v36, vorrq_s8(vandq_s8(v26, v36), v25)))), vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v34, vorrq_s8(vandq_s8(v28, v34), v27)))), vcvtq_s32_f32(vaddq_f32(v37, vorrq_s8(vandq_s8(v30, v37), v29)))), vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v35, vorrq_s8(vandq_s8(v32, v35), v31)))), vcvtq_s32_f32(vaddq_f32(v38, vorrq_s8(vandq_s8(xmmword_1004B0010, v38), xmmword_1004B0030)))));
        v39 = vdupq_n_s32(0x3C800000u);
        v234.val[0] = vmulq_f32(vcvtq_f32_s32(vmovl_s16(*v232[0].i8)), v213);
        v40.i64[0] = 0xC3000000C3000000;
        v40.i64[1] = 0xC3000000C3000000;
        v234.val[1] = vaddq_f32(vmulq_f32(vcvtq_f32_s32(vmovl_s16(*v231.i8)), v39), v40);
        v234.val[2] = vaddq_f32(vmulq_f32(vcvtq_f32_s32(vmovl_s16(*v230.i8)), v39), v40);
        v41 = vmulq_f32(vcvtq_f32_s32(vmovl_high_s16(v232[0])), v213);
        a9 = vaddq_f32(vmulq_f32(vcvtq_f32_s32(vmovl_high_s16(v231)), v39), v40);
        a10 = vaddq_f32(vmulq_f32(vcvtq_f32_s32(vmovl_high_s16(v230)), v39), v40);
        v42 = v19 + 24;
        vst3q_f32(v19, v234);
        v43 = v19 + 12;
        vst3q_f32(v43, *(&a9 - 1));
        v13 += 24;
        a2 += 32 * v228;
        v19 = v42;
        if (v226 <= v13)
        {
          goto LABEL_39;
        }
      }
    }

    v13 = 0;
LABEL_39:
    if (v13 < v212)
    {
      v47 = qword_1004D3F60;
      v48 = &a3[v13 + 1];
      v49 = vdup_n_s32(0x38800000u);
      v50 = vdup_n_s32(0x43800000u);
      do
      {
        v51 = *(a2 + 4 * v12);
        v52 = v51 * 16384.0;
        if (v51 > 1.0)
        {
          v52 = 16384.0;
        }

        if (v51 >= 0.0)
        {
          v53 = v52;
        }

        else
        {
          v53 = 0.0;
        }

        v54 = *(a2 + 4);
        v55 = v54 * 16384.0;
        if (v54 > 1.0)
        {
          v55 = 16384.0;
        }

        _NF = v54 < 0.0;
        v56 = *(a2 + 4 * (v12 ^ 2));
        if (_NF)
        {
          v55 = 0.0;
        }

        v57 = v56 * 16384.0;
        if (v56 > 1.0)
        {
          v57 = 16384.0;
        }

        if (v56 >= 0.0)
        {
          v58 = v57;
        }

        else
        {
          v58 = 0.0;
        }

        v232[0].i32[0] = 0;
        v231.i32[0] = 0;
        v230.i32[0] = 0;
        sub_1002E4664(rintf(v53), rintf(v55), rintf(v58), v47, v232[0].i32, v231.i32, v230.i32);
        v48[-1].f32[1] = (v232[0].i32[0] * 0.000061035) * 100.0;
        *v48 = vmla_f32(0xC3000000C3000000, v50, vmul_f32(vcvt_f32_s32(__PAIR64__(v230.u32[0], v231.u32[0])), v49));
        v48 = (v48 + 12);
        v13 += 3;
        a2 += 4 * v228;
      }

      while (v212 > v13);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((atomic_load_explicit(qword_1004B0FD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_1004B0FD8))
  {
    sub_10029D334(&v231, 16);
    sub_10029D334(&v230, 116);
    sub_10029D700(v231.i32, &v230, v232);
    dword_1004B0FD0 = v232[0].i32[0];
    __cxa_guard_release(qword_1004B0FD8);
  }

  if (v13 < v212)
  {
    v59 = v13;
    v60 = (a2 + 4);
    v61 = 4 * v228;
    v62 = &a3[v13 + 1];
    v214 = vdup_n_s32(0x44800000u);
    do
    {
      v66 = *(v60 - 1);
      v65 = *v60;
      if (v66 <= 1.0)
      {
        v67 = *(v60 - 1);
      }

      else
      {
        v67 = 1.0;
      }

      if (v66 >= 0.0)
      {
        a9.f32[0] = v67;
      }

      else
      {
        a9.f32[0] = 0.0;
      }

      a10.i64[0] = 0;
      if (v65 >= 0.0)
      {
        a10.i32[0] = 1.0;
        if (v65 <= 1.0)
        {
          a10.f32[0] = *v60;
        }
      }

      v68 = v60[1];
      if (v68 <= 1.0)
      {
        v69 = v60[1];
      }

      else
      {
        v69 = 1.0;
      }

      if (v68 >= 0.0)
      {
        v70 = v69;
      }

      else
      {
        v70 = 0.0;
      }

      if (v11)
      {
        a9.i32[1] = a10.i32[0];
        v71 = vmul_f32(*a9.f32, v214);
        v72 = vmin_s32(vmax_s32(vcvt_n_s32_f32(*a9.f32, 0xAuLL), 0), 0x300000003);
        v73 = vshl_n_s32(v72, 2uLL);
        a9.f32[0] = *(v11 + 4 * v73.u32[0]) + ((*(v11 + 4 * v73.u32[0] + 4) + ((*(v11 + 4 * v73.u32[0] + 8) + (*(v11 + 4 * v73.u32[0] + 12) * (v71.f32[0] - v72.u32[0]))) * (v71.f32[0] - v72.u32[0]))) * (v71.f32[0] - v72.u32[0]));
        a10.f32[0] = *(v11 + 4 * v73.u32[1]) + ((*(v11 + 4 * v73.u32[1] + 4) + ((*(v11 + 4 * v73.u32[1] + 8) + (*(v11 + 4 * v73.u32[1] + 12) * (v71.f32[1] - v72.u32[1]))) * (v71.f32[1] - v72.u32[1]))) * (v71.f32[1] - v72.u32[1]));
        v74 = vcvts_n_s32_f32(v70, 0xAuLL);
        v75 = v74 & ~(v74 >> 31);
        if (v75 >= 1023)
        {
          v75 = 1023;
        }

        v70 = *(v11 + 16 * v75) + ((*(v11 + 16 * v75 + 4) + ((*(v11 + 16 * v75 + 8) + (*(v11 + 16 * v75 + 12) * ((v70 * 1024.0) - v75))) * ((v70 * 1024.0) - v75))) * ((v70 * 1024.0) - v75));
      }

      v76 = ((v224 * a10.f32[0]) + (a9.f32[0] * v225)) + (v70 * v223);
      v227 = a10;
      v229 = a9;
      if (v76 <= 0.008856)
      {
        v78 = *&dword_1004B0FD0 + (v76 * 7.787);
      }

      else
      {
        v77 = sub_100242450(v76);
        a10 = v227;
        a9 = v229;
        v78 = v77;
      }

      v79 = ((v221 * a10.f32[0]) + (a9.f32[0] * v222)) + (v70 * v220);
      if (v79 <= 0.008856)
      {
        v81 = *&dword_1004B0FD0 + (v79 * 7.787);
      }

      else
      {
        v80 = sub_100242450(((v221 * a10.f32[0]) + (a9.f32[0] * v222)) + (v70 * v220));
        a10 = v227;
        a9 = v229;
        v81 = v80;
      }

      v82 = ((v218 * a10.f32[0]) + (a9.f32[0] * v219)) + (v70 * v217);
      if (v82 <= 0.008856)
      {
        v63 = *&dword_1004B0FD0 + (v82 * 7.787);
      }

      else
      {
        v63 = sub_100242450(v82);
      }

      v64 = (v81 * 116.0) + -16.0;
      if (v79 <= 0.008856)
      {
        v64 = v79 * 903.3;
      }

      *(v62 - 1) = v64;
      *v62 = (v78 - v81) * 500.0;
      v62[1] = (v81 - v63) * 200.0;
      v59 += 3;
      v60 = (v60 + v61);
      v62 += 3;
    }

    while (v59 < v212);
  }
}

uint32x4_t sub_1002E423C(uint64_t a1, uint16x8_t *a2, uint16x8_t *a3, uint16x8_t *a4, uint16x8_t a5, uint16x8_t a6, uint16x8_t a7)
{
  v7 = vshrq_n_u16(a5, 9uLL);
  v8 = vshrq_n_u16(a6, 9uLL);
  v9 = vshrq_n_u16(a7, 9uLL);
  v10.i64[0] = 0xF000F000F000FLL;
  v10.i64[1] = 0xF000F000F000FLL;
  v11 = vandq_s8(vshrq_n_u16(a5, 5uLL), v10);
  v12 = vandq_s8(vshrq_n_u16(a6, 5uLL), v10);
  v13 = vdupq_n_s16(0x318u);
  v14 = vdupq_n_s16(0x6618u);
  v15 = vmlal_u16(vmlal_u16(vmull_u16(*v13.i8, *v8.i8), 0x18001800180018, *v7.i8), *v14.i8, *v9.i8);
  v16 = v15.u32[2];
  v17 = vandq_s8(vshrq_n_u16(a7, 5uLL), v10);
  v10.i64[0] = 0x8000800080008;
  v10.i64[1] = 0x8000800080008;
  v18 = v15.u32[3];
  v19.i64[0] = 0x80008000800080;
  v19.i64[1] = 0x80008000800080;
  v20 = vmlal_u16(vmull_u16(0x80008000800080, *v12.i8), 0x8000800080008, *v11.i8);
  v21 = vmlal_high_u16(vmull_high_u16(v19, v12), v10, v11);
  v12.i64[0] = 0x800080008000800;
  v12.i64[1] = 0x800080008000800;
  v22 = vmlal_u16(v20, 0x800080008000800, *v17.i8);
  v23 = vmlal_high_u16(v21, v12, v17);
  v24 = *(&unk_1004C3E00 + 2 * v22.u32[0]);
  v25 = a1 + 2 * v15.u32[0];
  v26 = *(&unk_1004C3E00 + 2 * v22.u32[1]);
  v27 = *(&unk_1004C3E00 + 2 * v22.u32[2]);
  v28 = *(&unk_1004C3E00 + 2 * v22.u32[3]);
  v29 = v23.u32[1];
  v30 = *(v25 + 32);
  v31 = v23.u32[2];
  v32 = v23.u32[3];
  v33 = *(&unk_1004C3E00 + 2 * v23.u32[0]);
  v34 = a1 + 2 * v15.u32[1];
  v35 = *(v34 + 16);
  v36 = *(v34 + 32);
  v37 = *(&unk_1004C3E00 + 2 * v29);
  v38.i64[0] = 0x18001800180018;
  v38.i64[1] = 0x18001800180018;
  v39 = vmlal_high_u16(vmull_high_u16(v13, v8), v38, v7);
  v40 = vpaddq_s32(vmull_s16(*v25, *v24.i8), vmull_high_s16(*v25, v24));
  v41 = vpaddq_s32(vmull_s16(*v34, *v26.i8), vmull_high_s16(*v34, v26));
  v42 = a1 + 2 * v16;
  v43 = *(v42 + 16);
  v44 = vpaddq_s32(vmull_s16(*v42, *v27.i8), vmull_high_s16(*v42, v27));
  v45 = vpadd_s32(*&vpaddq_s32(v44, v44), *&vextq_s8(v44, v44, 8uLL)).u32[0];
  v46 = a1 + 2 * v18;
  v47 = *(v46 + 16);
  v48 = vpaddq_s32(vmull_s16(*v46, *v28.i8), vmull_high_s16(*v46, v28));
  v49 = vpadd_s32(*&vpaddq_s32(v48, v48), *&vextq_s8(v48, v48, 8uLL)).u32[0];
  *v48.i8 = vzip1_s32(vpadd_s32(*&vpaddq_s32(v40, v40), *&vextq_s8(v40, v40, 8uLL)), vpadd_s32(*&vpaddq_s32(v41, v41), *&vextq_s8(v41, v41, 8uLL)));
  v48.i64[1] = __PAIR64__(v49, v45);
  v50 = vmlal_high_u16(v39, v14, v9);
  v51 = *(&unk_1004C3E00 + 2 * v31);
  v52 = *(v42 + 32);
  v53 = *(&unk_1004C3E00 + 2 * v32);
  v54 = a1 + 2 * v50.u32[0];
  v55 = a1 + 2 * v50.u32[1];
  v56 = a1 + 2 * v50.u32[2];
  v57 = a1 + 2 * v50.u32[3];
  v58 = *(v54 + 16);
  v59 = vpaddq_s32(vmull_s16(*v54, *v33.i8), vmull_high_s16(*v54, v33));
  v60 = *(v55 + 16);
  v61 = vpaddq_s32(vmull_s16(*v55, *v37.i8), vmull_high_s16(*v55, v37));
  v62 = *(v56 + 16);
  v63 = vpaddq_s32(vmull_s16(*v56, *v51.i8), vmull_high_s16(*v56, v51));
  v64 = vpadd_s32(*&vpaddq_s32(v63, v63), *&vextq_s8(v63, v63, 8uLL)).u32[0];
  v65 = *(v57 + 16);
  v66 = vpaddq_s32(vmull_s16(*v57, *v53.i8), vmull_high_s16(*v57, v53));
  v67 = vpadd_s32(*&vpaddq_s32(v66, v66), *&vextq_s8(v66, v66, 8uLL)).u32[0];
  v68 = *(v46 + 32);
  *v69.i8 = vzip1_s32(vpadd_s32(*&vpaddq_s32(v59, v59), *&vextq_s8(v59, v59, 8uLL)), vpadd_s32(*&vpaddq_s32(v61, v61), *&vextq_s8(v61, v61, 8uLL)));
  v70 = *(v54 + 32);
  v69.i64[1] = __PAIR64__(v67, v64);
  v71 = *(v55 + 32);
  v72 = vqrshrn_high_n_u32(vqrshrn_n_u32(v48, 0xCuLL), v69, 0xCuLL);
  v73 = vpaddq_s32(vmull_s16(*(v25 + 16), *v24.i8), vmull_high_s16(*(v25 + 16), v24));
  v74 = vpadd_s32(*&vpaddq_s32(v73, v73), *&vextq_s8(v73, v73, 8uLL));
  v75 = *(v56 + 32);
  v76 = *(v57 + 32);
  *a2 = v72;
  v77 = vpaddq_s32(vmull_s16(*v35.i8, *v26.i8), vmull_high_s16(v35, v26));
  v78 = vpaddq_s32(vmull_s16(*v43.i8, *v27.i8), vmull_high_s16(v43, v27));
  v79 = vpaddq_s32(vmull_s16(*v47.i8, *v28.i8), vmull_high_s16(v47, v28));
  *v77.i8 = vzip1_s32(v74, vpadd_s32(*&vpaddq_s32(v77, v77), *&vextq_s8(v77, v77, 8uLL)));
  v77.i32[2] = vpadd_s32(*&vpaddq_s32(v78, v78), *&vextq_s8(v78, v78, 8uLL)).u32[0];
  v77.i32[3] = vpadd_s32(*&vpaddq_s32(v79, v79), *&vextq_s8(v79, v79, 8uLL)).u32[0];
  v80 = vpaddq_s32(vmull_s16(*v58.i8, *v33.i8), vmull_high_s16(v58, v33));
  v81 = vpaddq_s32(vmull_s16(*v60.i8, *v37.i8), vmull_high_s16(v60, v37));
  v82 = vpaddq_s32(vmull_s16(*v62.i8, *v51.i8), vmull_high_s16(v62, v51));
  v83 = vpaddq_s32(vmull_s16(*v65.i8, *v53.i8), vmull_high_s16(v65, v53));
  *v80.i8 = vzip1_s32(vpadd_s32(*&vpaddq_s32(v80, v80), *&vextq_s8(v80, v80, 8uLL)), vpadd_s32(*&vpaddq_s32(v81, v81), *&vextq_s8(v81, v81, 8uLL)));
  v80.i64[1] = __PAIR64__(vpadd_s32(*&vpaddq_s32(v83, v83), *&vextq_s8(v83, v83, 8uLL)).u32[0], vpadd_s32(*&vpaddq_s32(v82, v82), *&vextq_s8(v82, v82, 8uLL)).u32[0]);
  *a3 = vqrshrn_high_n_u32(vqrshrn_n_u32(v77, 0xCuLL), v80, 0xCuLL);
  v84 = vpaddq_s32(vmull_s16(*v30.i8, *v24.i8), vmull_high_s16(v30, v24));
  v85 = vpaddq_s32(vmull_s16(*v36.i8, *v26.i8), vmull_high_s16(v36, v26));
  v86 = vpaddq_s32(vmull_s16(*v52.i8, *v27.i8), vmull_high_s16(v52, v27));
  v87 = vpaddq_s32(vmull_s16(*v68.i8, *v28.i8), vmull_high_s16(v68, v28));
  *v85.i8 = vzip1_s32(vpadd_s32(*&vpaddq_s32(v84, v84), *&vextq_s8(v84, v84, 8uLL)), vpadd_s32(*&vpaddq_s32(v85, v85), *&vextq_s8(v85, v85, 8uLL)));
  v85.i32[2] = vpadd_s32(*&vpaddq_s32(v86, v86), *&vextq_s8(v86, v86, 8uLL)).u32[0];
  v85.i32[3] = vpadd_s32(*&vpaddq_s32(v87, v87), *&vextq_s8(v87, v87, 8uLL)).u32[0];
  v88 = vpaddq_s32(vmull_s16(*v70.i8, *v33.i8), vmull_high_s16(v70, v33));
  v89 = vpaddq_s32(vmull_s16(*v71.i8, *v37.i8), vmull_high_s16(v71, v37));
  v90 = vpaddq_s32(vmull_s16(*v75.i8, *v51.i8), vmull_high_s16(v75, v51));
  v91 = vpaddq_s32(vmull_s16(*v76.i8, *v53.i8), vmull_high_s16(v76, v53));
  *result.i8 = vzip1_s32(vpadd_s32(*&vpaddq_s32(v88, v88), *&vextq_s8(v88, v88, 8uLL)), vpadd_s32(*&vpaddq_s32(v89, v89), *&vextq_s8(v89, v89, 8uLL)));
  result.i32[2] = vpadd_s32(*&vpaddq_s32(v90, v90), *&vextq_s8(v90, v90, 8uLL)).u32[0];
  result.i32[3] = vpadd_s32(*&vpaddq_s32(v91, v91), *&vextq_s8(v91, v91, 8uLL)).u32[0];
  *a4 = vqrshrn_high_n_u32(vqrshrn_n_u32(v85, 0xCuLL), result, 0xCuLL);
  return result;
}

uint64_t sub_1002E4664(uint64_t result, int a2, int a3, uint64_t a4, int *a5, int *a6, int *a7)
{
  v7 = (a4 + 2 * (24 * (result >> 9) + 792 * (a2 >> 9) + 26136 * (a3 >> 9)));
  v8 = (&unk_1004C3E00 + 2 * ((result >> 2) & 0x78 | (((a2 >> 5) & 0xF) << 7) & 0xFFFF87FF | (((a3 >> 5) & 0xF) << 11)));
  v9 = *v8;
  v10 = v8[1];
  v11 = v9 * *v7 + v10 * v7[1];
  v12 = v7[8] * v9 + v7[9] * v10;
  v13 = v7[16] * v9 + v7[17] * v10;
  v14 = v8[2];
  v15 = v11 + v14 * v7[2];
  v16 = v12 + v7[10] * v14;
  v17 = v13 + v7[18] * v14;
  v18 = v8[3];
  v19 = v15 + v18 * v7[3];
  v20 = v16 + v7[11] * v18;
  v21 = v17 + v7[19] * v18;
  v22 = v8[4];
  v23 = v19 + v22 * v7[4];
  v24 = v20 + v7[12] * v22;
  v25 = v21 + v7[20] * v22;
  v26 = v8[5];
  v27 = v23 + v26 * v7[5];
  v28 = v24 + v7[13] * v26;
  v29 = v25 + v7[21] * v26;
  v30 = v8[6];
  LODWORD(v8) = v8[7];
  v31 = v27 + v30 * v7[6] + v8 * v7[7];
  v32 = v28 + v7[14] * v30 + v7[15] * v8;
  LODWORD(v7) = v29 + v7[22] * v30 + v7[23] * v8;
  *a5 = v31;
  *a6 = v32;
  *a7 = v7;
  *a5 = (*a5 + 2048) >> 12;
  *a6 = (*a6 + 2048) >> 12;
  *a7 = (*a7 + 2048) >> 12;
  return result;
}

void sub_1002E47D4(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002E480C(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v9, &off_100477F20);
  v6 = *a2;
  if (*a2 < a2[1])
  {
    v7 = *(a1 + 24) + *(a1 + 32) * v6;
    v8 = *(a1 + 8) + *(a1 + 16) * v6;
    do
    {
      sub_1002E48D4(*(a1 + 48), v8, v7, *(a1 + 40), v4, v5);
      ++v6;
      v8 += *(a1 + 16);
      v7 += *(a1 + 32);
    }

    while (v6 < a2[1]);
  }

  if (v10)
  {
    sub_1002ACC1C(v9);
  }
}

void sub_1002E48D4(int *a1, uint64_t a2, uint64_t a3, int a4, int32x4_t a5, float32x4_t a6)
{
  v6 = a3;
  v7 = a2;
  if (*(a1 + 168) != 1)
  {
    if (a4 < 1)
    {
      return;
    }

    v10 = 0;
    v11 = *a1;
    v12 = 8 * v11;
    v51 = a4;
    while (1)
    {
      if (a4 - v10 >= 256)
      {
        v13 = 256;
      }

      else
      {
        v13 = a4 - v10;
      }

      v53 = 3 * v13;
      v14 = (3 * v13 - 24);
      v52 = v10;
      if (3 * v13 - 24 < 0)
      {
        v22 = 0;
        if (atomic_load_explicit(&qword_1004B0FF8, memory_order_acquire))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v15 = 0;
        v16 = *(a1 + 5);
        v17 = v70;
        do
        {
          if (v11 == 3)
          {
            v72 = vld3_s8(v7);
          }

          else
          {
            *v72.val[0].i8 = vld4_s8(v7);
          }

          v18 = vmovl_u8(v72.val[0]);
          v19 = vmovl_u8(v72.val[1]);
          v20 = vmovl_u8(v72.val[2]);
          v75.val[0] = vmulq_f32(v16, vcvtq_f32_u32(vmovl_u16(*v18.i8)));
          v75.val[1] = vmulq_f32(v16, vcvtq_f32_u32(vmovl_u16(*v19.i8)));
          v75.val[2] = vmulq_f32(v16, vcvtq_f32_u32(vmovl_u16(*v20.i8)));
          v21 = v17;
          vst3q_f32(v21, v75);
          v21 += 12;
          v75.val[0] = vmulq_f32(v16, vcvtq_f32_u32(vmovl_high_u16(v18)));
          v75.val[1] = vmulq_f32(v16, vcvtq_f32_u32(vmovl_high_u16(v19)));
          a6 = vcvtq_f32_u32(vmovl_high_u16(v20));
          v75.val[2] = vmulq_f32(v16, a6);
          vst3q_f32(v21, v75);
          v15 += 24;
          v7 += v12;
          v17 += 24;
        }

        while (v15 <= v14);
        v22 = v15;
        if (atomic_load_explicit(&qword_1004B0FF8, memory_order_acquire))
        {
          goto LABEL_20;
        }
      }

      v46 = v13;
      v47 = __cxa_guard_acquire(&qword_1004B0FF8);
      v13 = v46;
      if (v47)
      {
        v69 = 1065353216;
        sub_10029D700(&v69, &dword_1004D3E2C, &dword_1004B0FF0);
        __cxa_guard_release(&qword_1004B0FF8);
        v13 = v46;
      }

LABEL_20:
      if (v22 < v53)
      {
        v23 = *&dword_1004B0FF0;
        v24 = &v70[v22 + 1];
        do
        {
          a6.i8[0] = *v7;
          *&v25 = v23 * a6.u32[0];
          *(v24 - 1) = *&v25;
          LOBYTE(v25) = *(v7 + 1);
          *&v26 = v23 * v25;
          *v24 = *&v26;
          LOBYTE(v26) = *(v7 + 2);
          a6.f32[0] = v23 * v26;
          v24[1] = a6.f32[0];
          v22 += 3;
          v7 += v11;
          v24 += 3;
        }

        while (v22 < v53);
      }

      sub_1002E52B0((a1 + 1), v70, v70, v13);
      if ((v14 & 0x80000000) == 0)
      {
        v27 = 0;
        v28 = v70;
        do
        {
          v29 = v28;
          v73 = vld3q_f32(v29);
          v29 += 12;
          v66 = v73;
          v74 = vld3q_f32(v29);
          v67 = v74;
          v65 = *(a1 + 4);
          if ((atomic_load_explicit(qword_1004B0060, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8E70();
          }

          v63 = xmmword_1004B0050;
          v64 = *(a1 + 4);
          if ((atomic_load_explicit(qword_1004B0060, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8E70();
          }

          v62 = *(a1 + 6);
          v60 = xmmword_1004B0050;
          v61 = *(a1 + 7);
          if ((atomic_load_explicit(qword_1004B0060, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8E70();
          }

          v59 = *(a1 + 6);
          v57 = xmmword_1004B0050;
          v58 = *(a1 + 7);
          if ((atomic_load_explicit(qword_1004B0060, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8E70();
          }

          v56 = *(a1 + 8);
          v54 = xmmword_1004B0050;
          v55 = *(a1 + 9);
          if ((atomic_load_explicit(qword_1004B0060, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8E70();
          }

          v30 = xmmword_1004B0050;
          v31 = *(a1 + 8);
          v32 = *(a1 + 9);
          if ((atomic_load_explicit(qword_1004B0060, memory_order_acquire) & 1) == 0)
          {
            v48 = v30;
            v49 = v32;
            v50 = v31;
            sub_1003C8E70();
            v32 = v49;
            v31 = v50;
            v30 = v48;
          }

          v33 = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_f32(v66.val[0], v65), v63))), vcvtq_u32_f32(vaddq_f32(vmulq_f32(v67.val[0], v64), v60))));
          *a6.f32 = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vaddq_f32(vmulq_f32(v66.val[1], v62), v61), v57))), vcvtq_u32_f32(vaddq_f32(vaddq_f32(vmulq_f32(v67.val[1], v59), v58), v54))));
          v34 = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vaddq_f32(vmulq_f32(v66.val[2], v56), v55), v30))), vcvtq_u32_f32(vaddq_f32(vaddq_f32(vmulq_f32(v67.val[2], v31), v32), xmmword_1004B0050))));
          v35 = (v6 + v27);
          vst3_s8(v35, *(&a6 - 8));
          v27 += 24;
          v28 += 24;
        }

        while (v14 >= v27);
        v36 = v27;
        if (atomic_load_explicit(&qword_1004B1008, memory_order_acquire))
        {
          goto LABEL_41;
        }

LABEL_57:
        if (__cxa_guard_acquire(&qword_1004B1008))
        {
          sub_10029D334(&v69, 100);
          sub_10029D700(&dword_1004D3E2C, &v69, &dword_1004B1000);
          __cxa_guard_release(&qword_1004B1008);
        }

        goto LABEL_41;
      }

      v36 = 0;
      if ((atomic_load_explicit(&qword_1004B1008, memory_order_acquire) & 1) == 0)
      {
        goto LABEL_57;
      }

LABEL_41:
      if ((atomic_load_explicit(&qword_1004B1018, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004B1018))
      {
        sub_10029D700(&dword_1004D3E2C, &dword_1004D3E10, &dword_1004B1010);
        __cxa_guard_release(&qword_1004B1018);
      }

      if ((atomic_load_explicit(&qword_1004B1028, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004B1028))
      {
        sub_10029D700(&dword_1004D3E2C, &dword_1004D3E1C, &dword_1004B1020);
        __cxa_guard_release(&qword_1004B1028);
      }

      if ((atomic_load_explicit(&qword_1004B1038, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004B1038))
      {
        v68 = dword_1004D3E08 ^ 0x80000000;
        sub_10029D4B4(&v68, &dword_1004D3E2C, &v69);
        sub_10029D700(&v69, &dword_1004D3E10, &dword_1004B1030);
        __cxa_guard_release(&qword_1004B1038);
      }

      if ((atomic_load_explicit(&qword_1004B1048, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004B1048))
      {
        v68 = dword_1004D3E14 ^ 0x80000000;
        sub_10029D4B4(&v68, &dword_1004D3E2C, &v69);
        sub_10029D700(&v69, &dword_1004D3E1C, &dword_1004B1040);
        __cxa_guard_release(&qword_1004B1048);
      }

      if (v36 < v53)
      {
        v37 = &v70[v36 + 1];
        do
        {
          v38 = *v37;
          v39 = rintf(*(v37 - 1) * *&dword_1004B1000);
          v40 = v39 & ~(v39 >> 31);
          if (v40 >= 255)
          {
            LOBYTE(v40) = -1;
          }

          v41 = v6 + v36;
          *(v6 + v36) = v40;
          v42 = rintf(*&dword_1004B1030 + (v38 * *&dword_1004B1010));
          v43 = v42 & ~(v42 >> 31);
          if (v43 >= 255)
          {
            LOBYTE(v43) = -1;
          }

          *(v41 + 1) = v43;
          a6.i32[0] = dword_1004B1020;
          v44 = rintf(*&dword_1004B1040 + (v37[1] * *&dword_1004B1020));
          v45 = v44 & ~(v44 >> 31);
          if (v45 >= 255)
          {
            LOBYTE(v45) = -1;
          }

          *(v41 + 2) = v45;
          v36 += 3;
          v37 += 3;
        }

        while (v53 > v36);
      }

      v10 = v52 + 256;
      v6 += 768;
      a4 = v51;
      v12 = 8 * v11;
      if (v52 + 256 >= v51)
      {
        return;
      }
    }
  }

  v9 = a1 + 14;

  sub_1002E5078(v9, a2, a3, a4, a5, a6);
}

void sub_1002E5078(int *a1, uint64_t a2, uint64_t a3, int a4, int32x4_t a5, int32x4_t a6)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = 3 * a4;
  if (a4 < 17)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    a5.i32[0] = 0;
    v11 = 0;
    v12 = qword_1004D3F68;
    a6.i32[0] = a1[1];
    v25 = vdupq_lane_s32(*&vceqq_s32(a6, a5), 0);
    do
    {
      if (v8 == 3)
      {
        *v36.val[0].i8 = vld3q_s8(a2);
      }

      else
      {
        v36 = vld4q_s8(a2);
      }

      v13 = vbslq_s8(v25, v36.val[2], v36.val[0]);
      v14 = vbslq_s8(v25, v36.val[0], v36.val[2]);
      v27 = vshll_high_n_u8(v36.val[1], 6uLL);
      v28 = vshll_high_n_u8(v14, 6uLL);
      v26 = vshll_high_n_u8(v13, 6uLL);
      sub_1002E423C(v12, v34, &v33, &v32, vshll_n_u8(*v14.i8, 6uLL), vshll_n_u8(*v36.val[1].i8, 6uLL), vshll_n_u8(*v13.i8, 6uLL));
      sub_1002E423C(v12, &v31, &v30, &v29, v28, v27, v26);
      v35.val[0] = vqmovn_high_u16(vqmovn_u16(vshrq_n_u16(v34[0], 6uLL)), vshrq_n_u16(v31, 6uLL));
      v35.val[1] = vqmovn_high_u16(vqmovn_u16(vshrq_n_u16(v33, 6uLL)), vshrq_n_u16(v30, 6uLL));
      v35.val[2] = vqmovn_high_u16(vqmovn_u16(vshrq_n_u16(v32, 6uLL)), vshrq_n_u16(v29, 6uLL));
      v15 = (a3 + v11);
      vst3q_s8(v15, v35);
      v11 += 48;
      a2 += 16 * v8;
    }

    while (v11 < v10 - 48);
  }

  if (v11 < v10)
  {
    v16 = qword_1004D3F68;
    v17 = v11;
    v18 = (v11 + a3 + 2);
    do
    {
      v19 = *(a2 + 1);
      v20 = *(a2 + (v9 ^ 2));
      v21 = *(a2 + v9) << 6;
      v34[0].i32[0] = 0;
      v33.i32[0] = 0;
      v32.i32[0] = 0;
      sub_1002E4664(v21, v19 << 6, v20 << 6, v16, v34[0].i32, v33.i32, v32.i32);
      v22 = (v34[0].i32[0] / 64) & ~((v34[0].i32[0] + (v34[0].i32[0] < 0 ? 0x3F : 0)) >> 31);
      if (v22 >= 255)
      {
        LOBYTE(v22) = -1;
      }

      *(v18 - 2) = v22;
      v23 = (v33.i32[0] / 64) & ~((v33.i32[0] + (v33.i32[0] < 0 ? 0x3F : 0)) >> 31);
      if (v23 >= 255)
      {
        LOBYTE(v23) = -1;
      }

      *(v18 - 1) = v23;
      v24 = (v32.i32[0] / 64) & ~((v32.i32[0] + (v32.i32[0] < 0 ? 0x3F : 0)) >> 31);
      if (v24 >= 255)
      {
        LOBYTE(v24) = -1;
      }

      *v18 = v24;
      v18 += 3;
      v17 += 3;
      a2 += v8;
    }

    while (v17 < v10);
  }
}

float32x2_t *sub_1002E52B0(float32x2_t *result, const float *a2, float *a3, int a4)
{
  v4 = result->i32[0];
  if (result[6].i8[0])
  {
    v5 = qword_1004D3EA8;
  }

  else
  {
    v5 = 0;
  }

  _S15 = result[1].i32[1];
  _S5 = result[3].i32[0];
  _S16 = result[4].i32[1];
  v9 = 3 * a4;
  if (v4 == 3)
  {
    if (a4 >= 4)
    {
      v221 = result[1].i32[1];
      v10 = 0;
      v11 = &dword_1004D3E04;
      v12 = vld1q_dup_f32(v11);
      v13 = qword_1004D3EA0;
      __asm { FMOV            V19.4S, #1.0 }

      v19 = vdupq_n_s32(0x447FC000u);
      v20 = vdupq_n_s32(0x42E80000u);
      __asm
      {
        FMOV            V22.4S, #-16.0
        FMOV            V23.4S, #15.0
        FMOV            V24.4S, #3.0
      }

      v24.i64[0] = 0x3400000034000000;
      v24.i64[1] = 0x3400000034000000;
      v25 = vdupq_n_s32(0x42500000u);
      __asm { FMOV            V27.4S, #2.25 }

      v27 = a3;
      do
      {
        v224 = vld3q_f32(a2);
        v53 = vminq_f32(vmaxq_f32(v224.val[0], 0), _Q19);
        v54 = vminq_f32(vmaxq_f32(v224.val[1], 0), _Q19);
        v55 = vminq_f32(vmaxq_f32(v224.val[2], 0), _Q19);
        if (v5)
        {
          v56 = vdupq_n_s32(0x44800000u);
          v57 = vmulq_f32(v53, v56);
          v58 = vmulq_f32(v54, v56);
          v59 = vmulq_f32(v55, v56);
          v60 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(v57, 0), v19));
          v61 = vshlq_n_s32(v60, 2uLL);
          v62 = vcvtq_f32_s32(v60);
          v63 = v61.i32[2];
          v64 = v61.i32[3];
          v65 = *(v5 + 4 * v61.i32[0]);
          v66 = *(v5 + 4 * v61.i32[1]);
          v67 = *(v5 + 4 * v63);
          v68 = *(v5 + 4 * v64);
          v69 = vtrn1q_s32(v65, v66);
          v70 = vtrn2q_s32(v65, v66);
          v71 = vtrn1q_s32(v67, v68);
          v72 = vtrn2q_s32(v67, v68);
          v65.i64[0] = v69.i64[0];
          v65.i64[1] = v71.i64[0];
          v67.i64[0] = v70.i64[0];
          v67.i64[1] = v72.i64[0];
          v73 = vsubq_f32(v57, v62);
          v74 = vmlaq_f32(vzip2q_s64(v69, v71), v73, vzip2q_s64(v70, v72));
          v75 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(v58, 0), v19));
          v76 = vshlq_n_s32(v75, 2uLL);
          v77 = v76.i32[1];
          v78 = v76.i32[2];
          v79 = v76.i32[3];
          v80 = vmlaq_f32(v67, v73, v74);
          v81 = *(v5 + 4 * v76.i32[0]);
          v82 = *(v5 + 4 * v77);
          v83 = *(v5 + 4 * v78);
          v84 = *(v5 + 4 * v79);
          v85 = vtrn1q_s32(v81, v82);
          v86 = vtrn2q_s32(v81, v82);
          v87 = vtrn1q_s32(v83, v84);
          v88 = vtrn2q_s32(v83, v84);
          v89 = vzip2q_s64(v85, v87);
          v81.i64[0] = v85.i64[0];
          v81.i64[1] = v87.i64[0];
          v90 = vzip2q_s64(v86, v88);
          v86.i64[1] = v88.i64[0];
          v91 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(v59, 0), v19));
          v92 = vshlq_n_s32(v91, 2uLL);
          v53 = vmlaq_f32(v65, v73, v80);
          v93 = *(v5 + 4 * v92.i32[0]);
          v94 = vsubq_f32(v58, vcvtq_f32_s32(v75));
          v95 = *(v5 + 4 * v92.i32[1]);
          v96 = *(v5 + 4 * v92.i32[2]);
          v54 = vmlaq_f32(v81, v94, vmlaq_f32(v86, v94, vmlaq_f32(v89, v94, v90)));
          v97 = vsubq_f32(v59, vcvtq_f32_s32(v91));
          v98 = *(v5 + 4 * v92.i32[3]);
          v99 = vtrn1q_s32(v93, v95);
          v100 = vtrn2q_s32(v93, v95);
          v101 = vtrn1q_s32(v96, v98);
          v102 = vtrn2q_s32(v96, v98);
          v103 = vzip2q_s64(v99, v101);
          v93.i64[0] = v99.i64[0];
          v93.i64[1] = v101.i64[0];
          v104 = vzip2q_s64(v100, v102);
          v100.i64[1] = v102.i64[0];
          v55 = vmlaq_f32(v93, v97, vmlaq_f32(v100, v97, vmlaq_f32(v103, v97, v104)));
        }

        v28 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v53, result[2].f32[0]), v54, result[2].f32[1]), v55, result[3].f32[0]);
        v29 = vmulq_f32(v28, v12);
        v30 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(v29, 0), v19));
        v31 = vshlq_n_s32(v30, 2uLL);
        v32 = v31.i32[1];
        v33 = v31.i32[2];
        v34 = v31.i32[3];
        v35 = *(v13 + 4 * v31.i32[0]);
        v36 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v53, result->f32[1]), v54, result[1].f32[0]), v55, result[1].f32[1]);
        v37 = *(v13 + 4 * v32);
        v38 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v53, result[3].f32[1]), v54, result[4].f32[0]), v55, result[4].f32[1]);
        v39 = *(v13 + 4 * v33);
        v40 = vsubq_f32(v29, vcvtq_f32_s32(v30));
        v41 = *(v13 + 4 * v34);
        v42 = vtrn1q_s32(v35, v37);
        v43 = vtrn2q_s32(v35, v37);
        v44 = vtrn1q_s32(v39, v41);
        v45 = vtrn2q_s32(v39, v41);
        v46 = vzip2q_s64(v42, v44);
        v42.i64[1] = v44.i64[0];
        v47 = vzip2q_s64(v43, v45);
        v43.i64[1] = v45.i64[0];
        v222.val[0] = vmlaq_f32(_Q22, v20, vmlaq_f32(v42, v40, vmlaq_f32(v43, v40, vmlaq_f32(v46, v40, v47))));
        v48 = vmaxq_f32(vmlaq_f32(vmlaq_f32(v36, _Q23, v28), _Q24, v38), v24);
        v49 = vrecpeq_f32(v48);
        v50 = vmulq_f32(v49, vrecpsq_f32(v48, v49));
        v51 = vmulq_f32(vmulq_f32(vrecpsq_f32(v48, v50), v50), v25);
        v50.f32[0] = -result[5].f32[0];
        v52 = vmlaq_f32(vdupq_lane_s32(*v50.f32, 0), v51, v36);
        v222.val[1] = vmulq_f32(v222.val[0], v52);
        v52.f32[0] = -result[5].f32[1];
        v222.val[2] = vmulq_f32(v222.val[0], vmlaq_f32(vdupq_lane_s32(*v52.f32, 0), v51, vmulq_f32(v28, _Q27)));
        vst3q_f32(v27, v222);
        v27 += 12;
        v10 += 12;
        a2 += 12;
      }

      while (v10 <= v9 - 12);
      _S15 = v221;
      if (v10 >= v9)
      {
        return result;
      }

LABEL_20:
      v196 = *&dword_1004D3E04;
      v197 = qword_1004D3EA0;
      v198 = &a3[v10 + 1];
      v199 = (a2 + 1);
      v200 = 4 * v4;
      __asm { FMOV            V20.2S, #1.0 }

      v10 = v10;
      v202 = vdup_n_s32(0x44800000u);
      do
      {
        v210 = vbic_s8(*v199, vcltz_f32(*v199));
        _D8 = vbsl_s8(vcgt_f32(v210, _D20), _D20, v210);
        if (v5)
        {
          v212 = vmul_f32(_D8, v202);
          v213 = vmin_s32(vmax_s32(vcvt_n_s32_f32(_D8, 0xAuLL), 0), 0x300000003);
          v214 = vcvt_f32_u32(v213);
          v215 = (v5 + 4 * (4 * v213.i32[0]));
          v216.i32[0] = v215[2];
          v213.i32[0] = v215[3];
          v217.i32[0] = *v215;
          v218.i32[0] = v215[1];
          v219 = vsub_f32(v212, v214);
          v220 = (v5 + 4 * (4 * v213.i32[1]));
          v213.i32[1] = v220[3];
          v216.i32[1] = v220[2];
          v218.i32[1] = v220[1];
          v217.i32[1] = *v220;
          _D8 = vmla_f32(v217, v219, vmla_f32(v218, v219, vmla_f32(v216, v219, v213)));
        }

        __asm
        {
          FMLA            S0, S15, V8.S[1]
          FMLA            S1, S5, V8.S[1]
        }

        v205 = (v196 * _S1) & ~((v196 * _S1) >> 31);
        if (v205 >= 1023)
        {
          v205 = 1023;
        }

        __asm { FMLA            S2, S16, V8.S[1] }

        v207 = ((*(v197 + 16 * v205) + ((*(v197 + 16 * v205 + 4) + ((*(v197 + 16 * v205 + 8) + (*(v197 + 16 * v205 + 12) * ((v196 * _S1) - v205))) * ((v196 * _S1) - v205))) * ((v196 * _S1) - v205))) * 116.0) + -16.0;
        v208 = (_D0.f32[0] + (_S1 * 15.0)) + (_S2 * 3.0);
        if (v208 < 0.00000011921)
        {
          v208 = 0.00000011921;
        }

        _D0.f32[1] = _S1 * 2.25;
        v209 = vmul_n_f32(vmla_n_f32(vneg_f32(result[5]), _D0, 52.0 / v208), v207);
        v198[-1].f32[1] = v207;
        *v198 = v209;
        v198 = (v198 + 12);
        v10 += 3;
        v199 = (v199 + v200);
      }

      while (v10 < v9);
      return result;
    }

LABEL_11:
    LODWORD(v10) = 0;
    if (v9 <= 0)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (a4 < 4)
  {
    goto LABEL_11;
  }

  v10 = 0;
  v105 = &dword_1004D3E04;
  v106 = vld1q_dup_f32(v105);
  v107 = qword_1004D3EA0;
  __asm { FMOV            V19.4S, #1.0 }

  v109 = vdupq_n_s32(0x447FC000u);
  v110 = vdupq_n_s32(0x42E80000u);
  __asm
  {
    FMOV            V22.4S, #-16.0
    FMOV            V23.4S, #15.0
    FMOV            V24.4S, #3.0
  }

  v114.i64[0] = 0x3400000034000000;
  v114.i64[1] = 0x3400000034000000;
  v115 = vdupq_n_s32(0x42500000u);
  __asm { FMOV            V27.4S, #2.25 }

  v117 = a3;
  do
  {
    v225 = vld4q_f32(a2);
    v143 = vminq_f32(vmaxq_f32(v225.val[0], 0), _Q19);
    v144 = vminq_f32(vmaxq_f32(v225.val[1], 0), _Q19);
    v145 = vminq_f32(vmaxq_f32(v225.val[2], 0), _Q19);
    if (v5)
    {
      v146 = vdupq_n_s32(0x44800000u);
      v147 = vmulq_f32(v143, v146);
      v148 = vmulq_f32(v144, v146);
      v149 = vmulq_f32(v145, v146);
      v150 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(v147, 0), v109));
      v151 = vshlq_n_s32(v150, 2uLL);
      v152 = v151.i32[1];
      v153 = v151.i32[2];
      v154 = v151.i32[3];
      v155 = *(v5 + 4 * v151.i32[0]);
      v156 = *(v5 + 4 * v152);
      v157 = *(v5 + 4 * v153);
      v158 = *(v5 + 4 * v154);
      v159 = vtrn1q_s32(v155, v156);
      v160 = vtrn2q_s32(v155, v156);
      v161 = vtrn1q_s32(v157, v158);
      v162 = vtrn2q_s32(v157, v158);
      v163 = vzip2q_s64(v159, v161);
      v156.i64[0] = v159.i64[0];
      v156.i64[1] = v161.i64[0];
      v158.i64[0] = v160.i64[0];
      v158.i64[1] = v162.i64[0];
      v164 = vsubq_f32(v147, vcvtq_f32_s32(v150));
      v165 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(v148, 0), v109));
      v166 = vshlq_n_s32(v165, 2uLL);
      v167 = v166.i32[1];
      v168 = v166.i32[2];
      v169 = v166.i32[3];
      v170 = vmlaq_f32(v158, v164, vmlaq_f32(v163, v164, vzip2q_s64(v160, v162)));
      v171 = *(v5 + 4 * v166.i32[0]);
      v172 = *(v5 + 4 * v167);
      v173 = *(v5 + 4 * v168);
      v174 = *(v5 + 4 * v169);
      v175 = vtrn1q_s32(v171, v172);
      v176 = vtrn2q_s32(v171, v172);
      v177 = vtrn1q_s32(v173, v174);
      v178 = vtrn2q_s32(v173, v174);
      v179 = vzip2q_s64(v175, v177);
      v174.i64[0] = v175.i64[0];
      v174.i64[1] = v177.i64[0];
      v180 = vzip2q_s64(v176, v178);
      v176.i64[1] = v178.i64[0];
      v181 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(v149, 0), v109));
      v182 = vshlq_n_s32(v181, 2uLL);
      v143 = vmlaq_f32(v156, v164, v170);
      v183 = *(v5 + 4 * v182.i32[0]);
      v184 = vsubq_f32(v148, vcvtq_f32_s32(v165));
      v185 = vmlaq_f32(v179, v184, v180);
      v186 = *(v5 + 4 * v182.i32[1]);
      v187 = *(v5 + 4 * v182.i32[2]);
      v144 = vmlaq_f32(v174, v184, vmlaq_f32(v176, v184, v185));
      v188 = vsubq_f32(v149, vcvtq_f32_s32(v181));
      v189 = *(v5 + 4 * v182.i32[3]);
      v190 = vtrn1q_s32(v183, v186);
      v191 = vtrn2q_s32(v183, v186);
      v192 = vtrn1q_s32(v187, v189);
      v193 = vtrn2q_s32(v187, v189);
      v194 = vzip2q_s64(v190, v192);
      v183.i64[0] = v190.i64[0];
      v183.i64[1] = v192.i64[0];
      v195 = vzip2q_s64(v191, v193);
      v191.i64[1] = v193.i64[0];
      v145 = vmlaq_f32(v183, v188, vmlaq_f32(v191, v188, vmlaq_f32(v194, v188, v195)));
    }

    v118 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v143, result[2].f32[0]), v144, result[2].f32[1]), v145, result[3].f32[0]);
    v119 = vmulq_f32(v118, v106);
    v120 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(v119, 0), v109));
    v121 = vshlq_n_s32(v120, 2uLL);
    v122 = v121.i32[1];
    v123 = v121.i32[2];
    v124 = v121.i32[3];
    v125 = *(v107 + 4 * v121.i32[0]);
    v126 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v143, result->f32[1]), v144, result[1].f32[0]), v145, result[1].f32[1]);
    v127 = *(v107 + 4 * v122);
    v128 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v143, result[3].f32[1]), v144, result[4].f32[0]), v145, result[4].f32[1]);
    v129 = *(v107 + 4 * v123);
    v130 = vsubq_f32(v119, vcvtq_f32_s32(v120));
    v131 = *(v107 + 4 * v124);
    v132 = vtrn1q_s32(v125, v127);
    v133 = vtrn2q_s32(v125, v127);
    v134 = vtrn1q_s32(v129, v131);
    v135 = vtrn2q_s32(v129, v131);
    v136 = vzip2q_s64(v132, v134);
    v132.i64[1] = v134.i64[0];
    v137 = vzip2q_s64(v133, v135);
    v133.i64[1] = v135.i64[0];
    v223.val[0] = vmlaq_f32(_Q22, v110, vmlaq_f32(v132, v130, vmlaq_f32(v133, v130, vmlaq_f32(v136, v130, v137))));
    v138 = vmaxq_f32(vmlaq_f32(vmlaq_f32(v126, _Q23, v118), _Q24, v128), v114);
    v139 = vrecpeq_f32(v138);
    v140 = vmulq_f32(v139, vrecpsq_f32(v138, v139));
    v141 = vmulq_f32(vmulq_f32(vrecpsq_f32(v138, v140), v140), v115);
    v144.f32[0] = -result[5].f32[0];
    v142 = vmlaq_f32(vdupq_lane_s32(*v144.f32, 0), v141, v126);
    v223.val[1] = vmulq_f32(v223.val[0], v142);
    v142.f32[0] = -result[5].f32[1];
    v223.val[2] = vmulq_f32(v223.val[0], vmlaq_f32(vdupq_lane_s32(*v142.f32, 0), v141, vmulq_f32(v118, _Q27)));
    vst3q_f32(v117, v223);
    v117 += 12;
    v10 += 12;
    a2 += 4 * v4;
  }

  while (v10 <= v9 - 12);
  if (v10 < v9)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1002E5B88(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002E5BC0(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477F80);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002E52B0(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 = (v5 + *(a1 + 32));
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

void sub_1002E5C8C(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002E5CC4(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477FE0);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002E5D90((*(a1 + 48) + 56), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

void sub_1002E5D90(int *a1, uint64_t a2, char *a3, int a4)
{
  v6 = *a1;
  v7 = 3 * a4;
  if (a4 >= 16)
  {
    v8 = 0;
    v70 = 16 * v6;
    *&v30 = -1;
    *(&v30 + 1) = -1;
    v71 = *a1;
    do
    {
      v73 = v30;
      v31 = (a2 + v8);
      v92 = vld3q_s8(v31);
      v75 = v92.val[1];
      v76 = v92.val[0];
      v74 = v92.val[2];
      sub_1002E6248(a1, &v76, &v75, &v74, &v88, &v84, &v80, &v89, &v85, &v81, &v90, &v86, &v82, &v91, &v87, &v83);
      v32.i64[0] = 0xF0000000FLL;
      v32.i64[1] = 0xF0000000FLL;
      v33.i64[0] = 0x200000002000;
      v33.i64[1] = 0x200000002000;
      v34 = 0;
      v35 = (a1 + 1);
      v36 = (a1 + 2);
      v37 = (a1 + 3);
      v38 = (a1 + 4);
      v39 = (a1 + 5);
      v40 = (a1 + 6);
      v41 = vld1q_dup_f32(v36);
      v42 = vld1q_dup_f32(v38);
      v43 = (a1 + 7);
      v44 = (a1 + 8);
      v45 = vld1q_dup_f32(v40);
      v46 = vld1q_dup_f32(v44);
      v47 = vld1q_dup_f32(v37);
      v48 = vld1q_dup_f32(v43);
      v49 = vld1q_dup_f32(v35);
      v50 = (a1 + 9);
      v51 = vld1q_dup_f32(v39);
      v52 = vld1q_dup_f32(v50);
      v53 = *(a1 + 5);
      do
      {
        v54 = *(&v88 + v34 * 16);
        v55 = *(&v84 + v34 * 16);
        v56 = *(&v80 + v34 * 16);
        v57 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v55, v41), v54, v49), v56, v47), v33), 0xEuLL);
        v58 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v55, v51), v54, v42), v56, v45), v33), 0xEuLL);
        v59 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v55, v46), v54, v48), v56, v52), v33), 0xEuLL);
        v60 = vmaxq_s32(vminq_s32(v57, v32), 0);
        v61 = v60.u32[3];
        v62 = *(v53 + 2 * v60.u32[0]);
        v63 = *(v53 + 2 * v60.u32[1]);
        v64 = *(v53 + 2 * v60.u32[2]);
        v65 = vmaxq_s32(vminq_s32(v58, v32), 0);
        v57.i64[0] = __PAIR64__(v63, v62);
        v57.i32[2] = v64;
        v57.i32[3] = *(v53 + 2 * v61);
        v79[v34] = v57;
        v66 = vmaxq_s32(vminq_s32(v59, v32), 0);
        v65.i32[0] = *(v53 + 2 * v65.u32[0]);
        v65.i32[1] = *(v53 + 2 * v65.u32[1]);
        v65.i32[2] = *(v53 + 2 * v65.u32[2]);
        v65.i32[3] = *(v53 + 2 * v65.u32[3]);
        v78[v34] = v65;
        v66.i32[0] = *(v53 + 2 * v66.u32[0]);
        v66.i32[1] = *(v53 + 2 * v66.u32[1]);
        v66.i32[2] = *(v53 + 2 * v66.u32[2]);
        v66.i32[3] = *(v53 + 2 * v66.u32[3]);
        v77[v34++] = v66;
      }

      while (v34 != 4);
      v30 = v73;
      v67 = vqmovn_high_u16(vqmovn_u16(vqmovn_high_u32(vqmovn_u32(v77[0]), v77[1])), vqmovn_high_u32(vqmovn_u32(v77[2]), v77[3]));
      v68 = vqmovn_high_u16(vqmovn_u16(vqmovn_high_u32(vqmovn_u32(v78[0]), v78[1])), vqmovn_high_u32(vqmovn_u32(v78[2]), v78[3]));
      v69 = vqmovn_high_u16(vqmovn_u16(vqmovn_high_u32(vqmovn_u32(v79[0]), v79[1])), vqmovn_high_u32(vqmovn_u32(v79[2]), v79[3]));
      v6 = v71;
      if (v71 == 4)
      {
        vst4q_s8(a3, *(&v30 - 3));
      }

      else
      {
        vst3q_s8(a3, *v67.i8);
      }

      v8 += 48;
      a3 += v70;
    }

    while (v7 - 48 >= v8);
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (v8 < v7)
  {
    v9 = qword_1004D3ED8 + 32580;
    v10 = qword_1004D3ED8 + 74516;
    v11 = a3 + 1;
    v12 = (a2 + v8 + 2);
    do
    {
      v13 = word_1004D4438[2 * *(v12 - 2)];
      v14 = word_1004D4438[(2 * *(v12 - 2)) | 1];
      v15 = *(v9 + 4 * (v14 + ((268435 * *(v12 - 1) + 128) >> 13) - 4194));
      v16 = *(v10 + 4 * (v14 - ((41943 * *v12 + 16) >> 9)));
      v17 = (a1[2] * v13 + a1[1] * v15 + a1[3] * v16 + 0x2000) >> 14;
      v18 = (a1[5] * v13 + a1[4] * v15 + a1[6] * v16 + 0x2000) >> 14;
      v19 = (a1[8] * v13 + a1[7] * v15 + a1[9] * v16 + 0x2000) >> 14;
      if (v17 >= 4095)
      {
        v20 = 4095;
      }

      else
      {
        v20 = v17;
      }

      v21 = v20 & ~(v20 >> 31);
      if (v18 >= 4095)
      {
        v22 = 4095;
      }

      else
      {
        v22 = v18;
      }

      v23 = v22 & ~(v22 >> 31);
      if (v19 >= 4095)
      {
        v19 = 4095;
      }

      v24 = *(a1 + 5);
      v25 = *(v24 + 2 * v21);
      v26 = *(v24 + 2 * v23);
      v27 = *(v24 + 2 * (v19 & ~(v19 >> 31)));
      if (v27 >= 0xFF)
      {
        LOBYTE(v27) = -1;
      }

      *(v11 - 1) = v27;
      if (v26 >= 0xFF)
      {
        v28 = -1;
      }

      else
      {
        v28 = v26;
      }

      *v11 = v28;
      if (v25 >= 0xFF)
      {
        v29 = -1;
      }

      else
      {
        v29 = v25;
      }

      v11[1] = v29;
      if (v6 == 4)
      {
        v11[2] = -1;
      }

      v12 += 3;
      v11 += v6;
      LODWORD(v8) = v8 + 3;
    }

    while (v7 > v8);
  }
}

int16x8_t sub_1002E6248(uint64_t a1, uint8x8_t *a2, uint8x8_t *a3, uint8x16_t *a4, uint32x4_t *a5, _OWORD *a6, int16x8_t *a7, uint32x4_t *a8, int16x8_t *a9, int16x8_t *a10, uint32x4_t *a11, int16x8_t *a12, int16x8_t *a13, uint32x4_t *a14, int16x8_t *a15, int16x8_t *a16)
{
  v16 = vshll_n_u8(*a2, 1uLL);
  v17 = vshll_high_n_u8(*a2->i8, 1uLL);
  v18 = (&unk_1004D4438 + 2 * v16.u16[0]);
  v19 = (&unk_1004D4438 + 2 * v16.u16[1]);
  v20 = (&unk_1004D4438 + 2 * v16.u16[2]);
  v21 = (&unk_1004D4438 + 2 * v16.u16[3]);
  LODWORD(v22) = *v18;
  DWORD1(v22) = *v19;
  DWORD2(v22) = *v20;
  HIDWORD(v22) = *v21;
  *a6 = v22;
  v23 = (&unk_1004D4438 + 2 * v16.u16[4]);
  v24 = (&unk_1004D4438 + 2 * v16.u16[5]);
  v25 = (&unk_1004D4438 + 2 * v16.u16[6]);
  v26 = (&unk_1004D4438 + 2 * v16.u16[7]);
  v16.i32[0] = *v23;
  v16.i32[1] = *v24;
  v16.i32[2] = *v25;
  v16.i32[3] = *v26;
  *a9 = v16;
  v27 = (&unk_1004D4438 + 2 * v17.u16[0]);
  v28 = (&unk_1004D4438 + 2 * v17.u16[1]);
  v29 = (&unk_1004D4438 + 2 * v17.u16[2]);
  v30 = (&unk_1004D4438 + 2 * v17.u16[3]);
  v16.i32[0] = *v27;
  v16.i32[1] = *v28;
  v16.i32[2] = *v29;
  v16.i32[3] = *v30;
  *a12 = v16;
  v31 = (&unk_1004D4438 + 2 * v17.u16[4]);
  v32 = (&unk_1004D4438 + 2 * v17.u16[5]);
  v33 = (&unk_1004D4438 + 2 * v17.u16[6]);
  v34 = (&unk_1004D4438 + 2 * v17.u16[7]);
  v17.i32[0] = *v31;
  v17.i32[1] = *v32;
  v17.i32[2] = *v33;
  v17.i32[3] = *v34;
  *a15 = v17;
  v16.i16[0] = v18[1];
  v16.i16[1] = v19[1];
  v16.i16[2] = v20[1];
  v16.i16[3] = v21[1];
  v16.i16[4] = v23[1];
  v16.i16[5] = v24[1];
  v16.i16[6] = v25[1];
  v16.i16[7] = v26[1];
  v17.i16[0] = v27[1];
  v17.i16[1] = v28[1];
  v17.i16[2] = v29[1];
  v17.i16[3] = v30[1];
  v17.i16[4] = v31[1];
  v17.i16[5] = v32[1];
  v17.i16[6] = v33[1];
  v17.i16[7] = v34[1];
  v35 = *a4;
  v36 = vqaddq_u16(vmovl_u8(*a3), vshll_n_u8(*a3, 2uLL));
  v37 = vdupq_n_s16(0xD1B7u);
  v38 = vqaddq_u16(vmovl_high_u8(*a3->i8), vshll_high_n_u8(*a3->i8, 2uLL));
  v39.i64[0] = 0x8000000080;
  v39.i64[1] = 0x8000000080;
  v40.i64[0] = 0x8000000080;
  v40.i64[1] = 0x8000000080;
  v41.i64[0] = 0x8000000080;
  v41.i64[1] = 0x8000000080;
  v42 = vqmovn_high_u32(vqmovn_u32(vshrq_n_u32(vmlal_u16(v40, *v36.i8, *v37.i8), 0xDuLL)), vshrq_n_u32(vmlal_high_u16(v41, v36, v37), 0xDuLL));
  v36.i64[0] = 0x8000000080;
  v36.i64[1] = 0x8000000080;
  v43 = vshrq_n_u32(vmlal_u16(v36, *v38.i8, *v37.i8), 0xDuLL);
  v44 = vshrq_n_u32(vmlal_high_u16(v39, v38, v37), 0xDuLL);
  *v39.i8 = vqmovn_u32(v43);
  v45 = vdupq_n_s16(0xA3D7u);
  v46 = vdupq_n_s16(0xF6Fu);
  v47 = vdupq_n_s16(0x48C5u);
  v48 = vaddq_s16(v16, vaddq_s16(v42, v46));
  v49 = qword_1004D3ED8;
  v50.i32[0] = *(qword_1004D3ED8 + 4 * v48.u16[0]);
  v50.i32[1] = *(qword_1004D3ED8 + 4 * v48.u16[1]);
  v50.i32[2] = *(qword_1004D3ED8 + 4 * v48.u16[2]);
  v51 = vaddq_s16(v17, vaddq_s16(vqmovn_high_u32(*v39.i8, v44), v46));
  v50.i32[3] = *(qword_1004D3ED8 + 4 * v48.u16[3]);
  *a5 = v50;
  v44.i32[0] = *(v49 + 4 * v48.u16[4]);
  v44.i32[1] = *(v49 + 4 * v48.u16[5]);
  v44.i32[2] = *(v49 + 4 * v48.u16[6]);
  v44.i32[3] = *(v49 + 4 * v48.u16[7]);
  *a8 = v44;
  v44.i32[0] = *(v49 + 4 * v51.u16[0]);
  v44.i32[1] = *(v49 + 4 * v51.u16[1]);
  v44.i32[2] = *(v49 + 4 * v51.u16[2]);
  v44.i32[3] = *(v49 + 4 * v51.u16[3]);
  v52 = vmovl_u8(*v35.i8);
  v46.i64[0] = 0x1000000010;
  v46.i64[1] = 0x1000000010;
  v50.i64[0] = 0x1000000010;
  v50.i64[1] = 0x1000000010;
  *a11 = v44;
  v44.i32[0] = *(v49 + 4 * v51.u16[4]);
  v44.i32[1] = *(v49 + 4 * v51.u16[5]);
  v44.i32[2] = *(v49 + 4 * v51.u16[6]);
  v44.i32[3] = *(v49 + 4 * v51.u16[7]);
  v53 = vaddq_s16(vsubq_s16(v16, vqmovn_high_u32(vqmovn_u32(vshrq_n_u32(vmlal_u16(v46, *v52.i8, *v45.i8), 9uLL)), vshrq_n_u32(vmlal_high_u16(v50, v52, v45), 9uLL))), v47);
  *a14 = v44;
  v51.i32[0] = *(v49 + 4 * v53.u16[0]);
  v51.i32[1] = *(v49 + 4 * v53.u16[1]);
  v51.i32[2] = *(v49 + 4 * v53.u16[2]);
  v51.i32[3] = *(v49 + 4 * v53.u16[3]);
  v54 = vmovl_high_u8(v35);
  v44.i64[0] = 0x1000000010;
  v44.i64[1] = 0x1000000010;
  v52.i64[0] = 0x1000000010;
  v52.i64[1] = 0x1000000010;
  *a7 = v51;
  v51.i32[0] = *(v49 + 4 * v53.u16[4]);
  v51.i32[1] = *(v49 + 4 * v53.u16[5]);
  v51.i32[2] = *(v49 + 4 * v53.u16[6]);
  result = vaddq_s16(vsubq_s16(v17, vqmovn_high_u32(vqmovn_u32(vshrq_n_u32(vmlal_u16(v52, *v54.i8, *v45.i8), 9uLL)), vshrq_n_u32(vmlal_high_u16(v44, v54, v45), 9uLL))), v47);
  v51.i32[3] = *(v49 + 4 * v53.u16[7]);
  *a10 = v51;
  v53.i32[0] = *(v49 + 4 * result.u16[0]);
  v53.i32[1] = *(v49 + 4 * result.u16[1]);
  v53.i32[2] = *(v49 + 4 * result.u16[2]);
  v53.i32[3] = *(v49 + 4 * result.u16[3]);
  *a13 = v53;
  v53.i32[0] = *(v49 + 4 * result.u16[4]);
  v53.i32[1] = *(v49 + 4 * result.u16[5]);
  v53.i32[2] = *(v49 + 4 * result.u16[6]);
  v53.i32[3] = *(v49 + 4 * result.u16[7]);
  *a16 = v53;
  return result;
}

void sub_1002E6694(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002E66CC(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100478040);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = *(a1 + 24) + *(a1 + 32) * v4;
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002E6794(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

int *sub_1002E6794(int *result, uint64_t a2, uint64_t a3, int a4)
{
  if (*(result + 40))
  {
    v4 = qword_1004D3EB0;
  }

  else
  {
    v4 = 0;
  }

  if (a4 >= 1)
  {
    v5 = 0;
    v6 = *(result + 7);
    v7 = *(result + 8);
    v8 = *(result + 9);
    v12.i32[0] = result[2];
    v10.i32[0] = result[3];
    v11.i32[0] = result[1];
    v9 = *result;
    v10.i32[1] = result[6];
    v11.i32[1] = result[4];
    v12.i32[1] = result[5];
    v13 = a3 + 8;
    v14 = (a2 + 4);
    __asm { FMOV            V22.2S, #1.0 }

    v20 = vdup_n_s32(0x44800000u);
    do
    {
      v21 = *(v14 - 1);
      v22 = *(result + 12);
      v23 = v21 > *(result + 11);
      v24 = (v21 + 16.0) / 116.0;
      v25 = v24 * (v24 * v24);
      v26 = v21 / 903.3;
      if (!v23)
      {
        v25 = v26;
      }

      v27 = (v26 * 7.787) + 0.13793;
      if (v23)
      {
        v27 = v24;
      }

      v28 = (*v14 / 500.0) + v27;
      v29 = v27 + (v14[1] / -200.0);
      v23 = v28 > v22;
      v30 = v28 * (v28 * v28);
      v31 = (v28 + -0.13793) / 7.787;
      if (v23)
      {
        v31 = v30;
      }

      v23 = v29 > v22;
      v32 = v29 * (v29 * v29);
      v33 = (v29 + -0.13793) / 7.787;
      if (v23)
      {
        v33 = v32;
      }

      v34 = ((v7 * v25) + (v6 * v31)) + (v8 * v33);
      v35 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v12, v25), v11, v31), v10, v33);
      v36 = vbic_s8(vbsl_s8(vcgt_f32(v35, _D22), _D22, v35), vcltz_f32(v35));
      if (v34 <= 1.0)
      {
        v37 = v34;
      }

      else
      {
        v37 = 1.0;
      }

      if (v34 < 0.0)
      {
        v37 = 0.0;
      }

      if (v4)
      {
        v38 = vmul_f32(v36, v20);
        v39 = vmin_s32(vmax_s32(vcvt_n_s32_f32(v36, 0xAuLL), 0), 0x300000003);
        v40 = vsub_f32(v38, vcvt_f32_u32(v39));
        v41 = vshl_n_s32(v39, 2uLL);
        v42 = (v4 + 4 * v41.u32[0]);
        v43.i32[0] = v42[2];
        v44.i32[0] = v42[3];
        v41.i32[0] = *v42;
        v45.i32[0] = v42[1];
        v46 = (v4 + 4 * v41.u32[1]);
        v44.i32[1] = v46[3];
        v43.i32[1] = v46[2];
        v45.i32[1] = v46[1];
        v41.i32[1] = *v46;
        v36 = vmla_f32(v41, v40, vmla_f32(v45, v40, vmla_f32(v43, v40, v44)));
        LODWORD(v46) = vcvts_n_s32_f32(v37, 0xAuLL);
        v47 = v46 & ~(v46 >> 31);
        if (v47 >= 1023)
        {
          v47 = 1023;
        }

        v37 = *(v4 + 16 * v47) + ((*(v4 + 16 * v47 + 4) + ((*(v4 + 16 * v47 + 8) + (*(v4 + 16 * v47 + 12) * ((v37 * 1024.0) - v47))) * ((v37 * 1024.0) - v47))) * ((v37 * 1024.0) - v47));
      }

      *(v13 - 8) = v36;
      *v13 = v37;
      if (v9 == 4)
      {
        *(v13 + 4) = 1065353216;
      }

      v5 += 3;
      v13 += 4 * v9;
      v14 += 3;
    }

    while (v5 < (3 * a4));
  }

  return result;
}

void sub_1002E69E4(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002E6A1C(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v14, &off_1004780A0);
  v11 = *a2;
  if (*a2 < a2[1])
  {
    v12 = (*(a1 + 24) + *(a1 + 32) * v11);
    v13 = *(a1 + 8) + *(a1 + 16) * v11;
    do
    {
      sub_1002E6AE4(*(a1 + 48), v13, v12, *(a1 + 40), v4, v5, v6, v7, v8, v9, v10);
      ++v11;
      v13 += *(a1 + 16);
      v12 += *(a1 + 32);
    }

    while (v11 < a2[1]);
  }

  if (v15)
  {
    sub_1002ACC1C(v14);
  }
}

void sub_1002E6AE4(int *a1, uint64_t a2, char *a3, int a4, double a5, uint16x8_t a6, uint16x8_t a7, int32x4_t a8, float32x4_t a9, int32x4_t a10, float32x4_t a11)
{
  v14 = a3;
  v15 = a2;
  if (*(a1 + 104) == 1)
  {
    v16 = a1 + 14;

    sub_1002E7514(v16, a2, a3, a4);
    return;
  }

  v99 = *a1;
  if ((atomic_load_explicit(&qword_1004B1078, memory_order_acquire) & 1) == 0)
  {
    v88 = a4;
    v89 = __cxa_guard_acquire(&qword_1004B1078);
    a4 = v88;
    if (v89)
    {
      sub_10029D334(&v111, 100);
      sub_10029D700(&v111, &dword_1004D3E2C, &dword_1004B1070);
      __cxa_guard_release(&qword_1004B1078);
      a4 = v88;
    }
  }

  if ((atomic_load_explicit(&qword_1004B1088, memory_order_acquire) & 1) == 0)
  {
    v90 = a4;
    v91 = __cxa_guard_acquire(&qword_1004B1088);
    a4 = v90;
    if (v91)
    {
      sub_10029D700(&dword_1004D3E10, &dword_1004D3E2C, &dword_1004B1080);
      __cxa_guard_release(&qword_1004B1088);
      a4 = v90;
    }
  }

  if ((atomic_load_explicit(&qword_1004B1098, memory_order_acquire) & 1) == 0)
  {
    v92 = a4;
    v93 = __cxa_guard_acquire(&qword_1004B1098);
    a4 = v92;
    if (v93)
    {
      sub_10029D700(&dword_1004D3E1C, &dword_1004D3E2C, &dword_1004B1090);
      __cxa_guard_release(&qword_1004B1098);
      a4 = v92;
    }
  }

  if (a4 >= 1)
  {
    v17 = a4;
    v18 = 0;
    v19 = 0;
    v20 = a4;
    v94 = a4;
    while (1)
    {
      v96 = v20 - 256;
      v97 = v19;
      v21 = v18;
      if (v20 >= 256)
      {
        v22 = 256;
      }

      else
      {
        v22 = v20;
      }

      v98 = v21;
      v23 = v17 - (v21 << 8);
      if (v23 >= 256)
      {
        v23 = 256;
      }

      v24 = v17 - v19;
      v25 = v24 >= 256 ? 256 : v24;
      v26 = *&dword_1004B1070;
      a6.i32[0] = dword_1004B1080;
      a7.i32[0] = dword_1004B1090;
      a8.i32[0] = dword_1004D3E08;
      a9.i32[0] = dword_1004D3E14;
      v100 = 3 * v25;
      v27 = (3 * v25 - 48);
      if (v27 >= 1)
      {
        break;
      }

      v42 = 0;
      if (v100 > 0)
      {
        goto LABEL_25;
      }

LABEL_52:
      sub_1002E7ACC(a1 + 1, v112, v112, v25);
      if (v100 < 17)
      {
        v73 = 0;
      }

      else
      {
        v73 = 0;
        v74 = &v113;
        do
        {
          v107 = v74[-2];
          v108 = v74[-1];
          v109 = *v74;
          v110 = v74[1];
          if ((atomic_load_explicit(qword_1004B0020, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8EA4();
          }

          if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8ED8();
          }

          v105 = xmmword_1004B0010;
          v106 = xmmword_1004B0030;
          if ((atomic_load_explicit(qword_1004B0020, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8EA4();
          }

          if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8ED8();
          }

          v103 = xmmword_1004B0010;
          v104 = xmmword_1004B0030;
          if ((atomic_load_explicit(qword_1004B0020, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8EA4();
          }

          if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8ED8();
          }

          v101 = xmmword_1004B0010;
          v102 = xmmword_1004B0030;
          if ((atomic_load_explicit(qword_1004B0020, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8EA4();
          }

          if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8ED8();
          }

          v75 = vdupq_n_s32(0x437F0000u);
          v76 = vmulq_f32(v107, v75);
          v77 = vmulq_f32(v108, v75);
          v78 = vmulq_f32(v109, v75);
          a8 = vcvtq_s32_f32(vaddq_f32(v78, vorrq_s8(vandq_s8(v101, v78), v102)));
          v79 = vmulq_f32(v110, v75);
          a10 = vandq_s8(xmmword_1004B0010, v79);
          a9 = vorrq_s8(a10, xmmword_1004B0030);
          a6 = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v76, vorrq_s8(vandq_s8(v105, v76), v106)))), vcvtq_s32_f32(vaddq_f32(v77, vorrq_s8(vandq_s8(v103, v77), v104))));
          a7 = vqmovn_high_s32(vqmovn_s32(a8), vcvtq_s32_f32(vaddq_f32(v79, a9)));
          *v14++ = vqmovn_high_u16(vqmovn_u16(a6), a7);
          v74 += 4;
          v73 += 16;
        }

        while (v100 - 16 > v73);
      }

      if (v73 < v100)
      {
        v80 = &v112[4 * v73 + 4];
        v81 = v99;
        do
        {
          v82 = rintf(*(v80 - 1) * 255.0);
          v83 = v82 & ~(v82 >> 31);
          if (v83 >= 255)
          {
            LOBYTE(v83) = -1;
          }

          v14->i8[0] = v83;
          v84 = rintf(*v80 * 255.0);
          v85 = v84 & ~(v84 >> 31);
          if (v85 >= 255)
          {
            LOBYTE(v85) = -1;
          }

          v14->i8[1] = v85;
          v86 = rintf(v80[1] * 255.0);
          v87 = v86 & ~(v86 >> 31);
          if (v87 >= 255)
          {
            LOBYTE(v87) = -1;
          }

          v14->i8[2] = v87;
          if (v81 == 4)
          {
            v14->i8[3] = -1;
          }

          v81 = v99;
          v14 = (v14 + v99);
          v80 += 3;
          v73 += 3;
        }

        while (v100 > v73);
      }

      v19 = v97 + 256;
      v15 += 768;
      v18 = v98 + 1;
      v20 = v96;
      v17 = v94;
      if (v97 + 256 >= v94)
      {
        return;
      }
    }

    v28 = 0;
    a10.i64[0] = __PAIR64__(dword_1004B1080, dword_1004B1070);
    a10.i64[1] = __PAIR64__(dword_1004B1070, dword_1004B1090);
    a11.i64[0] = __PAIR64__(dword_1004B1090, dword_1004B1080);
    a11.i64[1] = __PAIR64__(dword_1004B1080, dword_1004B1070);
    v29.i64[0] = __PAIR64__(dword_1004B1070, dword_1004B1090);
    v29.i64[1] = __PAIR64__(dword_1004B1090, dword_1004B1080);
    v30.i32[0] = 0;
    v30.i32[1] = dword_1004D3E08;
    v30.i64[1] = dword_1004D3E14;
    v11.i32[2] = 0;
    v11.i64[0] = __PAIR64__(dword_1004D3E14, dword_1004D3E08);
    v11.i32[3] = dword_1004D3E08;
    v12.i64[0] = dword_1004D3E14;
    v12.i64[1] = __PAIR64__(dword_1004D3E14, dword_1004D3E08);
    v31 = &v114;
    do
    {
      v32 = *(v15 + v28);
      v33 = *(v15 + v28 + 16);
      v34 = vmovl_u8(*v32.i8);
      v35 = vmovl_high_u8(v32);
      v31[-6] = vmlaq_f32(v30, a10, vcvtq_f32_u32(vmovl_u16(*v34.i8)));
      v31[-5] = vmlaq_f32(v11, a11, vcvtq_f32_u32(vmovl_high_u16(v34)));
      v31[-4] = vmlaq_f32(v12, v29, vcvtq_f32_u32(vmovl_u16(*v35.i8)));
      v31[-3] = vmlaq_f32(v30, a10, vcvtq_f32_u32(vmovl_high_u16(v35)));
      v36 = vmovl_u8(*v33.i8);
      v37 = vmovl_high_u8(v33);
      v31[-2] = vmlaq_f32(v11, a11, vcvtq_f32_u32(vmovl_u16(*v36.i8)));
      v31[-1] = vmlaq_f32(v12, v29, vcvtq_f32_u32(vmovl_high_u16(v36)));
      *v31 = vmlaq_f32(v30, a10, vcvtq_f32_u32(vmovl_u16(*v37.i8)));
      v31[1] = vmlaq_f32(v11, a11, vcvtq_f32_u32(vmovl_high_u16(v37)));
      v38 = *(v15 + v28 + 32);
      v39 = vmovl_u8(*v38.i8);
      v40 = vmovl_high_u8(v38);
      v31[2] = vmlaq_f32(v12, v29, vcvtq_f32_u32(vmovl_u16(*v39.i8)));
      v31[3] = vmlaq_f32(v30, a10, vcvtq_f32_u32(vmovl_high_u16(v39)));
      v41 = vmlaq_f32(v11, a11, vcvtq_f32_u32(vmovl_u16(*v40.i8)));
      v13 = vcvtq_f32_u32(vmovl_high_u16(v40));
      v31[4] = v41;
      v31[5] = vmlaq_f32(v12, v29, v13);
      v28 += 48;
      v31 += 12;
    }

    while (v28 < v27);
    v42 = v28;
    if (v28 >= v100)
    {
      goto LABEL_52;
    }

LABEL_25:
    v43 = 3 * v23;
    v44 = v42 + 3;
    if (v42 + 3 > v43)
    {
      v43 = v42 + 3;
    }

    v45 = v43 - 3;
    if (v45 == v42)
    {
      v46 = 0;
    }

    else
    {
      v46 = -1;
    }

    v47 = 1;
    if (v45 != v42)
    {
      v47 = 2;
    }

    v48 = v47 + (v45 - (v45 != v42) - v42) / 3;
    if (v48 < 8)
    {
      v49 = v42;
      goto LABEL_50;
    }

    v50 = 3 * v22;
    if (v48 >= 0x10)
    {
      v51 = v48 & 0x7FFFFFFFFFFFFFF0;
      a10 = vdupq_lane_s32(*a6.i8, 0);
      a11 = vdupq_lane_s32(*a8.i8, 0);
      v60 = vdupq_lane_s32(*a7.i8, 0);
      v61 = vdupq_lane_s32(*a9.f32, 0);
      if (v44 <= v50)
      {
        v62 = v50;
      }

      else
      {
        v62 = v42 + 3;
      }

      v63 = (v47 + (v62 + v46 - v42 - 3) / 3uLL) & 0xFFFFFFFFFFFFFFF0;
      v64 = &v112[4 * v42];
      v65 = v42;
      do
      {
        v66 = (v15 + v65);
        *(&v12 - 1) = vld3q_s8(v66);
        v118.val[0] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v67, xmmword_1003E3710)), v26);
        v116.val[0] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v67, xmmword_1003E3720)), v26);
        v116.val[1] = vmlaq_f32(a11, a10, vcvtq_f32_u32(vqtbl1q_s8(v12, xmmword_1003E3720)));
        v116.val[2] = vmlaq_f32(v61, v60, vcvtq_f32_u32(vqtbl1q_s8(v13, xmmword_1003E3720)));
        v117.val[0] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v67, xmmword_1003E3700)), v26);
        v68 = v64;
        vst3q_f32(v68, v116);
        v68 += 12;
        v121.val[0] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v67, xmmword_1003E3730)), v26);
        v121.val[1] = vmlaq_f32(a11, a10, vcvtq_f32_u32(vqtbl1q_s8(v12, xmmword_1003E3730)));
        v121.val[2] = vmlaq_f32(v61, v60, vcvtq_f32_u32(vqtbl1q_s8(v13, xmmword_1003E3730)));
        vst3q_f32(v68, v121);
        v117.val[1] = vmlaq_f32(a11, a10, vcvtq_f32_u32(vqtbl1q_s8(v12, xmmword_1003E3700)));
        v117.val[2] = vmlaq_f32(v61, v60, vcvtq_f32_u32(vqtbl1q_s8(v13, xmmword_1003E3700)));
        v69 = v64 + 24;
        vst3q_f32(v69, v117);
        v118.val[1] = vmlaq_f32(a11, a10, vcvtq_f32_u32(vqtbl1q_s8(v12, xmmword_1003E3710)));
        v11 = vcvtq_f32_u32(vqtbl1q_s8(v13, xmmword_1003E3710));
        v118.val[2] = vmlaq_f32(v61, v60, v11);
        v70 = v64 + 36;
        vst3q_f32(v70, v118);
        v65 += 48;
        v64 += 48;
        v63 -= 16;
      }

      while (v63);
      if (v48 == v51)
      {
        goto LABEL_52;
      }

      if ((v48 & 8) == 0)
      {
        v49 = 3 * v51 + v42;
LABEL_50:
        v71 = &v112[4 * v49 + 4];
        do
        {
          a10.i8[0] = *(v15 + v49);
          *&v72 = v26 * a10.u32[0];
          a11.i8[0] = *(v15 + v49 + 1);
          a11.f32[0] = *a8.i32 + (a11.u32[0] * *a6.i32);
          *(v71 - 1) = *&v72;
          *v71 = a11.f32[0];
          LOBYTE(v72) = *(v15 + v49 + 2);
          *a10.i32 = a9.f32[0] + (v72 * *a7.i32);
          v71[1] = *a10.i32;
          v49 += 3;
          v71 += 3;
        }

        while (v49 < v100);
        goto LABEL_52;
      }
    }

    else
    {
      v51 = 0;
    }

    v49 = 3 * (v48 & 0x7FFFFFFFFFFFFFF8) + v42;
    a10 = vdupq_lane_s32(*a6.i8, 0);
    a11 = vdupq_lane_s32(*a8.i8, 0);
    v52 = vdupq_lane_s32(*a7.i8, 0);
    v53 = vdupq_lane_s32(*a9.f32, 0);
    if (v44 <= v50)
    {
      v44 = v50;
    }

    v54 = v51 - ((v47 + (v44 + v46 - v42 - 3) / 3uLL) & 0xFFFFFFFFFFFFFFF8);
    v55 = 3 * v51 + v42;
    v56 = &v112[12 * v51 + 4 * v42];
    do
    {
      v57 = (v15 + v55);
      *v11.f32 = vld3_s8(v57);
      v119.val[0] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v11, xmmword_1003E3730)), v26);
      v119.val[1] = vmlaq_f32(a11, a10, vcvtq_f32_u32(vqtbl1q_s8(v12, xmmword_1003E3730)));
      v119.val[2] = vmlaq_f32(v53, v52, vcvtq_f32_u32(vqtbl1q_s8(v13, xmmword_1003E3730)));
      v120.val[0] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v11, xmmword_1003E3720)), v26);
      v120.val[1] = vmlaq_f32(a11, a10, vcvtq_f32_u32(vqtbl1q_s8(v12, xmmword_1003E3720)));
      v11 = vcvtq_f32_u32(vqtbl1q_s8(v13, xmmword_1003E3720));
      v120.val[2] = vmlaq_f32(v53, v52, v11);
      v58 = v56 + 24;
      vst3q_f32(v56, v120);
      v59 = v56 + 12;
      vst3q_f32(v59, v119);
      v55 += 24;
      v56 = v58;
      v54 += 8;
    }

    while (v54);
    if (v48 == (v48 & 0x7FFFFFFFFFFFFFF8))
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }
}

int *sub_1002E7514(int *result, uint64_t a2, char *a3, int a4)
{
  v4 = *result;
  v5 = 3 * a4;
  if (a4 < 17)
  {
    LODWORD(v6) = 0;
    if (v5 <= 0)
    {
      return result;
    }

    goto LABEL_17;
  }

  v6 = 0;
  v7 = qword_1004D3EE0;
  v8 = *algn_1004D3EE8;
  v9 = qword_1004D3EF0;
  v90 = v5 - 48;
  v91 = 16 * v4;
  v10.i64[0] = 0x200000002000;
  v10.i64[1] = 0x200000002000;
  v11.i64[0] = 0xF0000000FLL;
  v11.i64[1] = 0xF0000000FLL;
  *&v12 = -1;
  *(&v12 + 1) = -1;
  do
  {
    while (1)
    {
      v13 = 0;
      v14 = (a2 + v6);
      v100 = vld3q_s8(v14);
      v98[0] = v100.val[0];
      v97[0] = v100.val[1];
      v96[0] = v100.val[2];
      v15 = v99;
      do
      {
        v16 = *(v96 + v13) | (*(v98 + v13) << 8);
        v17 = *&byte_1004D3E00[4 * *(v98 + v13) + 1592];
        v18 = *(v8 + 4 * v16) * *(v7 + 4 * (*(v97 + v13) | (*(v98 + v13) << 8)));
        v19 = ((((*(v9 + 8 * v16) - 85 * v18) >> 14) + 0x3FFFFEC14000) * v17) >> 14;
        v20 = ((v18 >> 14) * v17) >> 14;
        v21 = v19 / 256 + v19 / 0x10000;
        if (v20 >= 0x8000)
        {
          v20 = 0x8000;
        }

        v22 = v20 & ~(v20 >> 31);
        if (v21 >= 0x8000)
        {
          v21 = 0x8000;
        }

        *(v15 - 32) = v22;
        *(v15 - 16) = v17;
        *v15++ = v21 & ~(v21 >> 31);
        ++v13;
      }

      while (v13 != 16);
      v23 = 0;
      v98[0] = v98[4];
      v98[1] = v98[5];
      v98[2] = v98[6];
      v98[3] = v98[7];
      v97[0] = v98[8];
      v97[1] = v98[9];
      v97[2] = v98[10];
      v97[3] = v98[11];
      v96[2] = v99[2];
      v96[3] = v99[3];
      v96[0] = v99[0];
      v96[1] = v99[1];
      v24 = (result + 1);
      v25 = (result + 2);
      v26 = (result + 3);
      v27 = (result + 4);
      v28 = (result + 5);
      v29 = (result + 6);
      v30 = (result + 7);
      v31 = (result + 8);
      v32 = vld1q_dup_f32(v25);
      v33 = vld1q_dup_f32(v27);
      v34 = vld1q_dup_f32(v29);
      v35 = vld1q_dup_f32(v31);
      v36 = vld1q_dup_f32(v26);
      v37 = vld1q_dup_f32(v30);
      v38 = vld1q_dup_f32(v24);
      v39 = (result + 9);
      v40 = vld1q_dup_f32(v28);
      v41 = vld1q_dup_f32(v39);
      v42 = *(result + 5);
      do
      {
        v43 = v98[v23];
        v44 = v97[v23];
        v45 = v96[v23];
        v46 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v44, v32), v43, v38), v45, v36), v10), 0xEuLL);
        v47 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v44, v40), v43, v33), v45, v34), v10), 0xEuLL);
        v48 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v44, v35), v43, v37), v45, v41), v10), 0xEuLL);
        v49 = vmaxq_s32(vminq_s32(v46, v11), 0);
        v50 = v49.u32[3];
        v51 = *(v42 + 2 * v49.u32[0]);
        v52 = *(v42 + 2 * v49.u32[1]);
        v53 = *(v42 + 2 * v49.u32[2]);
        v54 = vmaxq_s32(vminq_s32(v47, v11), 0);
        v46.i64[0] = __PAIR64__(v52, v51);
        v46.i32[2] = v53;
        v46.i32[3] = *(v42 + 2 * v50);
        v95[v23] = v46;
        v55 = vmaxq_s32(vminq_s32(v48, v11), 0);
        v54.i32[0] = *(v42 + 2 * v54.u32[0]);
        v54.i32[1] = *(v42 + 2 * v54.u32[1]);
        v54.i32[2] = *(v42 + 2 * v54.u32[2]);
        v54.i32[3] = *(v42 + 2 * v54.u32[3]);
        v94[v23] = v54;
        v55.i32[0] = *(v42 + 2 * v55.u32[0]);
        v55.i32[1] = *(v42 + 2 * v55.u32[1]);
        v55.i32[2] = *(v42 + 2 * v55.u32[2]);
        v55.i32[3] = *(v42 + 2 * v55.u32[3]);
        v93[v23++] = v55;
      }

      while (v23 != 4);
      v56 = vqmovn_high_u16(vqmovn_u16(vqmovn_high_u32(vqmovn_u32(v93[0]), v93[1])), vqmovn_high_u32(vqmovn_u32(v93[2]), v93[3]));
      v57 = vqmovn_high_u16(vqmovn_u16(vqmovn_high_u32(vqmovn_u32(v94[0]), v94[1])), vqmovn_high_u32(vqmovn_u32(v94[2]), v94[3]));
      v58 = vqmovn_high_u16(vqmovn_u16(vqmovn_high_u32(vqmovn_u32(v95[0]), v95[1])), vqmovn_high_u32(vqmovn_u32(v95[2]), v95[3]));
      if (v4 == 4)
      {
        break;
      }

      vst3q_s8(a3, *v56.i8);
      v6 += 48;
      a3 += v91;
      if (v6 >= v90)
      {
        goto LABEL_14;
      }
    }

    vst4q_s8(a3, *(&v12 - 3));
    v6 += 48;
    a3 += v91;
  }

  while (v6 < v90);
LABEL_14:
  v5 = 3 * a4;
  if (v6 < 3 * a4)
  {
LABEL_17:
    v59 = qword_1004D3EE0;
    v60 = *algn_1004D3EE8;
    v61 = v6;
    v62 = a3 + 1;
    v63 = v61 + 2;
    v64 = qword_1004D3EF0;
    v65 = (a2 + v61 + 2);
    do
    {
      v67 = *&byte_1004D3E00[4 * *(v65 - 2) + 1592];
      v68 = *v65 | (*(v65 - 2) << 8);
      v69 = *(v60 + 4 * v68) * *(v59 + 4 * (*(v65 - 1) | (*(v65 - 2) << 8)));
      v70 = v69 + 0x3FFF;
      if (v69 >= 0)
      {
        v70 = *(v60 + 4 * v68) * *(v59 + 4 * (*(v65 - 1) | (*(v65 - 2) << 8)));
      }

      v71 = ((v70 >> 14) * v67) / 0x4000;
      v72 = *(v64 + 8 * v68) - 85 * v69;
      v73 = ((v72 / 0x4000 - 20889600) * v67 + ((v72 / 0x4000 - 20889600) * v67 < 0 ? 0x3FFFuLL : 0)) >> 14;
      v74 = v73 / 256 + v73 / 0x10000;
      if (v71 >= 0x8000)
      {
        v71 = 0x8000;
      }

      v75 = v71 & ~(v71 >> 31);
      if (v74 >= 0x8000)
      {
        v74 = 0x8000;
      }

      v76 = v74 & ~(v74 >> 31);
      v77 = (v75 * result[1] + result[2] * v67 + v76 * result[3] + 0x2000) >> 14;
      v78 = (v75 * result[4] + result[5] * v67 + v76 * result[6] + 0x2000) >> 14;
      v79 = (result[8] * v67 + result[7] * v75 + v76 * result[9] + 0x2000) >> 14;
      if (v77 >= 4095)
      {
        v80 = 4095;
      }

      else
      {
        v80 = v77;
      }

      v81 = v80 & ~(v80 >> 31);
      if (v78 >= 4095)
      {
        v82 = 4095;
      }

      else
      {
        v82 = v78;
      }

      v83 = v82 & ~(v82 >> 31);
      if (v79 >= 4095)
      {
        v79 = 4095;
      }

      v84 = *(result + 5);
      v85 = *(v84 + 2 * v81);
      v86 = *(v84 + 2 * v83);
      v87 = *(v84 + 2 * (v79 & ~(v79 >> 31)));
      if (v87 >= 0xFF)
      {
        LOBYTE(v87) = -1;
      }

      *(v62 - 1) = v87;
      if (v86 >= 0xFF)
      {
        v88 = -1;
      }

      else
      {
        v88 = v86;
      }

      *v62 = v88;
      if (v85 >= 0xFF)
      {
        v89 = -1;
      }

      else
      {
        v89 = v85;
      }

      v62[1] = v89;
      if (v4 == 4)
      {
        v62[2] = -1;
      }

      v65 += 3;
      v62 += v4;
      v66 = v63 + 1;
      v63 += 3;
    }

    while (v66 < v5);
  }

  return result;
}

int *sub_1002E7ACC(int *result, uint64_t a2, uint64_t a3, int a4)
{
  if (*(result + 48))
  {
    v4 = qword_1004D3EB0;
  }

  else
  {
    v4 = 0;
  }

  if (a4 >= 1)
  {
    v5 = 0;
    v6 = *(result + 7);
    v7 = *(result + 8);
    v8 = *(result + 9);
    v9 = *(result + 10);
    v10 = *(result + 11);
    v16.i32[0] = result[2];
    v11.i32[0] = result[3];
    v15.i32[0] = result[1];
    v11.i32[1] = result[6];
    v12 = *result;
    v13 = a3 + 8;
    v14 = (a2 + 4);
    v15.i32[1] = result[4];
    v16.i32[1] = result[5];
    __asm { FMOV            V25.2S, #1.0 }

    v22 = vdup_n_s32(0x44800000u);
    do
    {
      v23 = *(v14 - 1);
      v24 = v23 * 0.0011071;
      if (v23 >= 8.0)
      {
        v24 = ((v23 + 16.0) * 0.0086207) * (((v23 + 16.0) * 0.0086207) * ((v23 + 16.0) * 0.0086207));
      }

      v25 = (*v14 + (v23 * v9)) * 3.0;
      v26 = 0.25 / (v14[1] + (v23 * v10));
      if (v26 > 0.25)
      {
        v26 = 0.25;
      }

      if (v26 < -0.25)
      {
        v26 = -0.25;
      }

      v27 = v26 * (v25 * (v24 * 3.0));
      v28 = ((-(v25 - (v23 * 156.0)) * v26) + -5.0) * v24;
      v29 = ((v7 * v24) + (v27 * v6)) + (v28 * v8);
      v30 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v16, v24), v15, v27), v11, v28);
      v31 = vbic_s8(v30, vcltz_f32(v30));
      v32 = vbsl_s8(vcgt_f32(v31, _D25), _D25, v31);
      if (v29 >= 0.0)
      {
        v33 = v29;
      }

      else
      {
        v33 = 0.0;
      }

      if (v33 > 1.0)
      {
        v33 = 1.0;
      }

      if (v4)
      {
        v34 = vmul_f32(v32, v22);
        v35 = vmin_s32(vmax_s32(vcvt_n_s32_f32(v32, 0xAuLL), 0), 0x300000003);
        v36 = vsub_f32(v34, vcvt_f32_u32(v35));
        v37 = vshl_n_s32(v35, 2uLL);
        v38 = (v4 + 4 * v37.u32[0]);
        v40.i32[0] = v38[2];
        v39.i32[0] = v38[3];
        v37.i32[0] = *v38;
        v41.i32[0] = v38[1];
        v42 = (v4 + 4 * v37.u32[1]);
        v39.i32[1] = v42[3];
        v40.i32[1] = v42[2];
        v41.i32[1] = v42[1];
        v37.i32[1] = *v42;
        v32 = vmla_f32(v37, v36, vmla_f32(v41, v36, vmla_f32(v40, v36, v39)));
        LODWORD(v42) = vcvts_n_s32_f32(v33, 0xAuLL);
        v43 = v42 & ~(v42 >> 31);
        if (v43 >= 1023)
        {
          v43 = 1023;
        }

        v44 = (v33 * 1024.0) - v43;
        result = (v4 + 4 * (4 * v43));
        v33 = *result + ((*(result + 1) + ((*(result + 2) + (*(result + 3) * v44)) * v44)) * v44);
      }

      *(v13 - 8) = v32;
      *v13 = v33;
      if (v12 == 4)
      {
        *(v13 + 4) = 1065353216;
      }

      v5 += 3;
      v13 += 4 * v12;
      v14 += 3;
    }

    while (v5 < (3 * a4));
  }

  return result;
}

void sub_1002E7D08(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002E7D40(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100478100);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = *(a1 + 24) + *(a1 + 32) * v4;
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002E7ACC(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

uint64_t sub_1002E7E08(uint64_t result, int *a2)
{
  v2 = 2 * *a2;
  v3 = 2 * a2[1];
  if (v2 < v3)
  {
    LODWORD(v4) = *(result + 24);
    if (v4 >= 1)
    {
      v5 = *(result + 48);
      v6 = *(result + 32) + v5 * v2;
      v7 = *(result + 40) + ((v5 * v2) >> 1);
      v8 = v2 + 1;
      do
      {
        if (v4 >= 1)
        {
          v9 = 0;
          v10 = *(result + 16);
          v11 = *(result + 8) + 2;
          v12 = (v11 + v10 * v8);
          v13 = (v11 + v10 * v2);
          v14 = v6 + 1 + v5;
          do
          {
            v15 = *(v7 + v9) - 128;
            v16 = *(v7 + 1 + v9) - 128;
            v17 = 1673527 * v16 + 0x80000;
            v18 = -852492 * v16;
            v19 = 2116026 * v15 + 0x80000;
            v20 = v18 - 409993 * v15;
            v21 = *(v6 + v9);
            if (v21 <= 0x10)
            {
              v21 = 16;
            }

            v22 = 1220542 * v21 - 19528672;
            v23 = v20 + 0x80000;
            v24 = ((v22 + v17) >> 20) & ~((v22 + v17) >> 31);
            if (v24 >= 255)
            {
              LOBYTE(v24) = -1;
            }

            *v13 = v24;
            v25 = ((v22 + v23) >> 20) & ~((v22 + v23) >> 31);
            if (v25 >= 255)
            {
              LOBYTE(v25) = -1;
            }

            *(v13 - 1) = v25;
            v26 = ((v22 + v19) >> 20) & ~((v22 + v19) >> 31);
            if (v26 >= 255)
            {
              LOBYTE(v26) = -1;
            }

            *(v13 - 2) = v26;
            v27 = *(v6 + 1 + v9);
            if (v27 <= 0x10)
            {
              v27 = 16;
            }

            v28 = 1220542 * v27 - 19528672;
            v29 = ((v28 + v17) >> 20) & ~((v28 + v17) >> 31);
            if (v29 >= 255)
            {
              LOBYTE(v29) = -1;
            }

            v13[3] = v29;
            v30 = ((v28 + v23) >> 20) & ~((v28 + v23) >> 31);
            if (v30 >= 255)
            {
              LOBYTE(v30) = -1;
            }

            v13[2] = v30;
            v31 = ((v28 + v19) >> 20) & ~((v28 + v19) >> 31);
            if (v31 >= 255)
            {
              LOBYTE(v31) = -1;
            }

            v13[1] = v31;
            v32 = *(v14 + v9 - 1);
            if (v32 <= 0x10)
            {
              v32 = 16;
            }

            v33 = 1220542 * v32 - 19528672;
            v34 = ((v33 + v17) >> 20) & ~((v33 + v17) >> 31);
            if (v34 >= 255)
            {
              LOBYTE(v34) = -1;
            }

            *v12 = v34;
            if ((((v33 + v23) >> 20) & ~((v33 + v23) >> 31)) >= 255)
            {
              v35 = -1;
            }

            else
            {
              v35 = ((v33 + v23) >> 20) & ~((v33 + v23) >> 31);
            }

            v36 = ((v33 + v19) >> 20) & ~((v33 + v19) >> 31);
            *(v12 - 1) = v35;
            if (v36 >= 255)
            {
              LOBYTE(v36) = -1;
            }

            *(v12 - 2) = v36;
            v37 = *(v14 + v9);
            if (v37 <= 0x10)
            {
              v37 = 16;
            }

            v38 = 1220542 * v37 - 19528672;
            v39 = ((v38 + v17) >> 20) & ~((v38 + v17) >> 31);
            if (v39 >= 255)
            {
              LOBYTE(v39) = -1;
            }

            v12[3] = v39;
            v40 = ((v38 + v23) >> 20) & ~((v38 + v23) >> 31);
            if (v40 >= 255)
            {
              LOBYTE(v40) = -1;
            }

            v41 = ((v38 + v19) >> 20) & ~((v38 + v19) >> 31);
            if (v41 >= 255)
            {
              LOBYTE(v41) = -1;
            }

            v12[2] = v40;
            v12[1] = v41;
            v9 += 2;
            v4 = *(result + 24);
            v12 += 6;
            v13 += 6;
          }

          while (v9 < v4);
          v5 = *(result + 48);
        }

        v2 += 2;
        v6 += 2 * v5;
        v7 += v5;
        v8 += 2;
      }

      while (v2 < v3);
    }
  }

  return result;
}

void sub_1002E80B0(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

uint64_t sub_1002E80E8(uint64_t result, int *a2)
{
  v2 = 2 * *a2;
  v3 = 2 * a2[1];
  if (v2 < v3)
  {
    LODWORD(v4) = *(result + 24);
    if (v4 >= 1)
    {
      v5 = *(result + 48);
      v6 = *(result + 32) + v5 * v2;
      v7 = *(result + 40) + ((v5 * v2) >> 1);
      v8 = v2 + 1;
      do
      {
        if (v4 >= 1)
        {
          v9 = *(result + 16);
          v10 = *(result + 8) + 2;
          v11 = (v10 + v9 * v8);
          v12 = (v10 + v9 * v2);
          v13 = (v6 + 1);
          v14 = (v6 + 1 + v5);
          v15 = (v7 + 1);
          v16 = 1;
          do
          {
            v17 = *v15 - 128;
            v18 = *(v15 - 1) - 128;
            v19 = 1673527 * v18 + 0x80000;
            v20 = -852492 * v18 - 409993 * v17;
            v21 = 2116026 * v17 + 0x80000;
            v22 = *(v13 - 1);
            v23 = v20 + 0x80000;
            if (v22 <= 0x10)
            {
              v22 = 16;
            }

            v24 = 1220542 * v22 - 19528672;
            v25 = ((v24 + v19) >> 20) & ~((v24 + v19) >> 31);
            if (v25 >= 255)
            {
              LOBYTE(v25) = -1;
            }

            *v12 = v25;
            v26 = ((v24 + v23) >> 20) & ~((v24 + v23) >> 31);
            if (v26 >= 255)
            {
              LOBYTE(v26) = -1;
            }

            v27 = ((v24 + v21) >> 20) & ~((v24 + v21) >> 31);
            *(v12 - 1) = v26;
            if (v27 >= 255)
            {
              LOBYTE(v27) = -1;
            }

            *(v12 - 2) = v27;
            v29 = *v13;
            v13 += 2;
            v28 = v29;
            if (v29 <= 0x10)
            {
              v28 = 16;
            }

            v30 = 1220542 * v28 - 19528672;
            v31 = ((v30 + v19) >> 20) & ~((v30 + v19) >> 31);
            if (v31 >= 255)
            {
              LOBYTE(v31) = -1;
            }

            v12[3] = v31;
            v32 = ((v30 + v23) >> 20) & ~((v30 + v23) >> 31);
            if (v32 >= 255)
            {
              LOBYTE(v32) = -1;
            }

            v12[2] = v32;
            v33 = ((v30 + v21) >> 20) & ~((v30 + v21) >> 31);
            if (v33 >= 255)
            {
              LOBYTE(v33) = -1;
            }

            v12[1] = v33;
            v34 = *(v14 - 1);
            if (v34 <= 0x10)
            {
              v34 = 16;
            }

            v35 = 1220542 * v34 - 19528672;
            v36 = ((v35 + v19) >> 20) & ~((v35 + v19) >> 31);
            if (v36 >= 255)
            {
              LOBYTE(v36) = -1;
            }

            *v11 = v36;
            v37 = ((v35 + v23) >> 20) & ~((v35 + v23) >> 31);
            if (v37 >= 255)
            {
              LOBYTE(v37) = -1;
            }

            *(v11 - 1) = v37;
            v38 = ((v35 + v21) >> 20) & ~((v35 + v21) >> 31);
            if (v38 >= 255)
            {
              LOBYTE(v38) = -1;
            }

            *(v11 - 2) = v38;
            v40 = *v14;
            v14 += 2;
            v39 = v40;
            if (v40 <= 0x10)
            {
              v39 = 16;
            }

            v41 = 1220542 * v39 - 19528672;
            v42 = ((v41 + v19) >> 20) & ~((v41 + v19) >> 31);
            if (v42 >= 255)
            {
              LOBYTE(v42) = -1;
            }

            v43 = ((v41 + v23) >> 20) & ~((v41 + v23) >> 31);
            v11[3] = v42;
            if (v43 >= 255)
            {
              v44 = -1;
            }

            else
            {
              v44 = v43;
            }

            v45 = ((v41 + v21) >> 20) & ~((v41 + v21) >> 31);
            v11[2] = v44;
            if (v45 >= 255)
            {
              LOBYTE(v45) = -1;
            }

            v11[1] = v45;
            v4 = *(result + 24);
            v12 += 6;
            v46 = v16 + 1;
            v11 += 6;
            v16 += 2;
            v15 += 2;
          }

          while (v46 < v4);
          v5 = *(result + 48);
        }

        v2 += 2;
        v6 += 2 * v5;
        v7 += v5;
        v8 += 2;
      }

      while (v2 < v3);
    }
  }

  return result;
}

void sub_1002E837C(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

uint64_t sub_1002E83B4(uint64_t result, int *a2)
{
  v2 = 2 * *a2;
  v3 = 2 * a2[1];
  if (v2 < v3)
  {
    LODWORD(v4) = *(result + 24);
    if (v4 >= 1)
    {
      v5 = *(result + 48);
      v6 = *(result + 32) + v5 * v2;
      v7 = *(result + 40) + ((v5 * v2) >> 1);
      v8 = v2 + 1;
      do
      {
        if (v4 >= 1)
        {
          v9 = 0;
          v10 = *(result + 16);
          v11 = *(result + 8) + 2;
          v12 = (v11 + v10 * v8);
          v13 = (v11 + v10 * v2);
          v14 = v6 + 1 + v5;
          do
          {
            v15 = *(v7 + v9) - 128;
            v16 = *(v7 + 1 + v9) - 128;
            v17 = 1673527 * v16 + 0x80000;
            v18 = -852492 * v16;
            v19 = 2116026 * v15 + 0x80000;
            v20 = v18 - 409993 * v15;
            v21 = *(v6 + v9);
            if (v21 <= 0x10)
            {
              v21 = 16;
            }

            v22 = 1220542 * v21 - 19528672;
            v23 = v20 + 0x80000;
            v24 = ((v22 + v17) >> 20) & ~((v22 + v17) >> 31);
            if (v24 >= 255)
            {
              LOBYTE(v24) = -1;
            }

            *(v13 - 2) = v24;
            v25 = ((v22 + v23) >> 20) & ~((v22 + v23) >> 31);
            if (v25 >= 255)
            {
              LOBYTE(v25) = -1;
            }

            *(v13 - 1) = v25;
            v26 = ((v22 + v19) >> 20) & ~((v22 + v19) >> 31);
            if (v26 >= 255)
            {
              LOBYTE(v26) = -1;
            }

            *v13 = v26;
            v27 = *(v6 + 1 + v9);
            if (v27 <= 0x10)
            {
              v27 = 16;
            }

            v28 = 1220542 * v27 - 19528672;
            v29 = ((v28 + v17) >> 20) & ~((v28 + v17) >> 31);
            if (v29 >= 255)
            {
              LOBYTE(v29) = -1;
            }

            v13[1] = v29;
            v30 = ((v28 + v23) >> 20) & ~((v28 + v23) >> 31);
            if (v30 >= 255)
            {
              LOBYTE(v30) = -1;
            }

            v13[2] = v30;
            v31 = ((v28 + v19) >> 20) & ~((v28 + v19) >> 31);
            if (v31 >= 255)
            {
              LOBYTE(v31) = -1;
            }

            v13[3] = v31;
            v32 = *(v14 + v9 - 1);
            if (v32 <= 0x10)
            {
              v32 = 16;
            }

            v33 = 1220542 * v32 - 19528672;
            v34 = ((v33 + v17) >> 20) & ~((v33 + v17) >> 31);
            if (v34 >= 255)
            {
              LOBYTE(v34) = -1;
            }

            *(v12 - 2) = v34;
            if ((((v33 + v23) >> 20) & ~((v33 + v23) >> 31)) >= 255)
            {
              v35 = -1;
            }

            else
            {
              v35 = ((v33 + v23) >> 20) & ~((v33 + v23) >> 31);
            }

            v36 = ((v33 + v19) >> 20) & ~((v33 + v19) >> 31);
            *(v12 - 1) = v35;
            if (v36 >= 255)
            {
              LOBYTE(v36) = -1;
            }

            *v12 = v36;
            v37 = *(v14 + v9);
            if (v37 <= 0x10)
            {
              v37 = 16;
            }

            v38 = 1220542 * v37 - 19528672;
            v39 = ((v38 + v17) >> 20) & ~((v38 + v17) >> 31);
            if (v39 >= 255)
            {
              LOBYTE(v39) = -1;
            }

            v12[1] = v39;
            v40 = ((v38 + v23) >> 20) & ~((v38 + v23) >> 31);
            if (v40 >= 255)
            {
              LOBYTE(v40) = -1;
            }

            v41 = ((v38 + v19) >> 20) & ~((v38 + v19) >> 31);
            if (v41 >= 255)
            {
              LOBYTE(v41) = -1;
            }

            v12[2] = v40;
            v12[3] = v41;
            v9 += 2;
            v4 = *(result + 24);
            v12 += 6;
            v13 += 6;
          }

          while (v9 < v4);
          v5 = *(result + 48);
        }

        v2 += 2;
        v6 += 2 * v5;
        v7 += v5;
        v8 += 2;
      }

      while (v2 < v3);
    }
  }

  return result;
}

void sub_1002E865C(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

uint64_t sub_1002E8694(uint64_t result, int *a2)
{
  v2 = 2 * *a2;
  v3 = 2 * a2[1];
  if (v2 < v3)
  {
    LODWORD(v4) = *(result + 24);
    if (v4 >= 1)
    {
      v5 = *(result + 48);
      v6 = *(result + 32) + v5 * v2;
      v7 = *(result + 40) + ((v5 * v2) >> 1);
      v8 = v2 + 1;
      do
      {
        if (v4 >= 1)
        {
          v9 = *(result + 16);
          v10 = *(result + 8) + 2;
          v11 = (v10 + v9 * v8);
          v12 = (v10 + v9 * v2);
          v13 = (v6 + 1);
          v14 = (v6 + 1 + v5);
          v15 = (v7 + 1);
          v16 = 1;
          do
          {
            v17 = *v15 - 128;
            v18 = *(v15 - 1) - 128;
            v19 = 1673527 * v18 + 0x80000;
            v20 = -852492 * v18 - 409993 * v17;
            v21 = 2116026 * v17 + 0x80000;
            v22 = *(v13 - 1);
            v23 = v20 + 0x80000;
            if (v22 <= 0x10)
            {
              v22 = 16;
            }

            v24 = 1220542 * v22 - 19528672;
            v25 = ((v24 + v19) >> 20) & ~((v24 + v19) >> 31);
            if (v25 >= 255)
            {
              LOBYTE(v25) = -1;
            }

            *(v12 - 2) = v25;
            v26 = ((v24 + v23) >> 20) & ~((v24 + v23) >> 31);
            if (v26 >= 255)
            {
              LOBYTE(v26) = -1;
            }

            v27 = ((v24 + v21) >> 20) & ~((v24 + v21) >> 31);
            *(v12 - 1) = v26;
            if (v27 >= 255)
            {
              LOBYTE(v27) = -1;
            }

            *v12 = v27;
            v29 = *v13;
            v13 += 2;
            v28 = v29;
            if (v29 <= 0x10)
            {
              v28 = 16;
            }

            v30 = 1220542 * v28 - 19528672;
            v31 = ((v30 + v19) >> 20) & ~((v30 + v19) >> 31);
            if (v31 >= 255)
            {
              LOBYTE(v31) = -1;
            }

            v12[1] = v31;
            v32 = ((v30 + v23) >> 20) & ~((v30 + v23) >> 31);
            if (v32 >= 255)
            {
              LOBYTE(v32) = -1;
            }

            v12[2] = v32;
            v33 = ((v30 + v21) >> 20) & ~((v30 + v21) >> 31);
            if (v33 >= 255)
            {
              LOBYTE(v33) = -1;
            }

            v12[3] = v33;
            v34 = *(v14 - 1);
            if (v34 <= 0x10)
            {
              v34 = 16;
            }

            v35 = 1220542 * v34 - 19528672;
            v36 = ((v35 + v19) >> 20) & ~((v35 + v19) >> 31);
            if (v36 >= 255)
            {
              LOBYTE(v36) = -1;
            }

            *(v11 - 2) = v36;
            v37 = ((v35 + v23) >> 20) & ~((v35 + v23) >> 31);
            if (v37 >= 255)
            {
              LOBYTE(v37) = -1;
            }

            *(v11 - 1) = v37;
            v38 = ((v35 + v21) >> 20) & ~((v35 + v21) >> 31);
            if (v38 >= 255)
            {
              LOBYTE(v38) = -1;
            }

            *v11 = v38;
            v40 = *v14;
            v14 += 2;
            v39 = v40;
            if (v40 <= 0x10)
            {
              v39 = 16;
            }

            v41 = 1220542 * v39 - 19528672;
            v42 = ((v41 + v19) >> 20) & ~((v41 + v19) >> 31);
            if (v42 >= 255)
            {
              LOBYTE(v42) = -1;
            }

            v43 = ((v41 + v23) >> 20) & ~((v41 + v23) >> 31);
            v11[1] = v42;
            if (v43 >= 255)
            {
              v44 = -1;
            }

            else
            {
              v44 = v43;
            }

            v45 = ((v41 + v21) >> 20) & ~((v41 + v21) >> 31);
            v11[2] = v44;
            if (v45 >= 255)
            {
              LOBYTE(v45) = -1;
            }

            v11[3] = v45;
            v4 = *(result + 24);
            v12 += 6;
            v46 = v16 + 1;
            v11 += 6;
            v16 += 2;
            v15 += 2;
          }

          while (v46 < v4);
          v5 = *(result + 48);
        }

        v2 += 2;
        v6 += 2 * v5;
        v7 += v5;
        v8 += 2;
      }

      while (v2 < v3);
    }
  }

  return result;
}

void sub_1002E8928(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

uint64_t sub_1002E8960(uint64_t result, int *a2)
{
  v2 = 2 * *a2;
  v3 = 2 * a2[1];
  if (v2 < v3)
  {
    LODWORD(v4) = *(result + 24);
    if (v4 >= 1)
    {
      v5 = *(result + 48);
      v6 = *(result + 32) + v5 * v2;
      v7 = *(result + 40) + ((v5 * v2) >> 1);
      v8 = v2 + 1;
      do
      {
        if (v4 >= 1)
        {
          v9 = 0;
          v10 = *(result + 16);
          v11 = *(result + 8) + 3;
          v12 = (v11 + v10 * v8);
          v13 = (v11 + v10 * v2);
          v14 = v6 + 1 + v5;
          do
          {
            v15 = *(v7 + v9) - 128;
            v16 = *(v7 + 1 + v9) - 128;
            v17 = 1673527 * v16 + 0x80000;
            v18 = -852492 * v16 - 409993 * v15;
            v19 = 2116026 * v15 + 0x80000;
            v20 = v18 + 0x80000;
            if (*(v6 + v9) <= 0x10u)
            {
              v21 = 16;
            }

            else
            {
              v21 = *(v6 + v9);
            }

            v22 = 1220542 * v21 - 19528672;
            v23 = ((v22 + v17) >> 20) & ~((v22 + v17) >> 31);
            if (v23 >= 255)
            {
              LOBYTE(v23) = -1;
            }

            *(v13 - 1) = v23;
            v24 = ((v22 + v20) >> 20) & ~((v22 + v20) >> 31);
            if (v24 >= 255)
            {
              LOBYTE(v24) = -1;
            }

            v25 = ((v22 + v19) >> 20) & ~((v22 + v19) >> 31);
            *(v13 - 2) = v24;
            if (v25 >= 255)
            {
              LOBYTE(v25) = -1;
            }

            *(v13 - 3) = v25;
            *v13 = -1;
            v26 = *(v6 + 1 + v9);
            if (v26 <= 0x10)
            {
              v26 = 16;
            }

            v27 = 1220542 * v26 - 19528672;
            v28 = ((v27 + v17) >> 20) & ~((v27 + v17) >> 31);
            if (v28 >= 255)
            {
              LOBYTE(v28) = -1;
            }

            v13[3] = v28;
            v29 = ((v27 + v20) >> 20) & ~((v27 + v20) >> 31);
            if (v29 >= 255)
            {
              LOBYTE(v29) = -1;
            }

            v30 = ((v27 + v19) >> 20) & ~((v27 + v19) >> 31);
            if (v30 >= 255)
            {
              LOBYTE(v30) = -1;
            }

            v13[2] = v29;
            v13[1] = v30;
            v13[4] = -1;
            v31 = *(v14 + v9 - 1);
            if (v31 <= 0x10)
            {
              v31 = 16;
            }

            v32 = 1220542 * v31 - 19528672;
            v33 = ((v32 + v17) >> 20) & ~((v32 + v17) >> 31);
            if (v33 >= 255)
            {
              LOBYTE(v33) = -1;
            }

            *(v12 - 1) = v33;
            v34 = ((v32 + v20) >> 20) & ~((v32 + v20) >> 31);
            if (v34 >= 255)
            {
              LOBYTE(v34) = -1;
            }

            v35 = ((v32 + v19) >> 20) & ~((v32 + v19) >> 31);
            if (v35 >= 255)
            {
              LOBYTE(v35) = -1;
            }

            *(v12 - 2) = v34;
            *(v12 - 3) = v35;
            *v12 = -1;
            v36 = *(v14 + v9);
            if (v36 <= 0x10)
            {
              v36 = 16;
            }

            v37 = 1220542 * v36 - 19528672;
            v38 = ((v37 + v17) >> 20) & ~((v37 + v17) >> 31);
            if (v38 >= 255)
            {
              LOBYTE(v38) = -1;
            }

            v12[3] = v38;
            v39 = ((v37 + v20) >> 20) & ~((v37 + v20) >> 31);
            if (v39 >= 255)
            {
              LOBYTE(v39) = -1;
            }

            v12[2] = v39;
            v40 = ((v37 + v19) >> 20) & ~((v37 + v19) >> 31);
            if (v40 >= 255)
            {
              LOBYTE(v40) = -1;
            }

            v12[1] = v40;
            v12[4] = -1;
            v9 += 2;
            v4 = *(result + 24);
            v12 += 8;
            v13 += 8;
          }

          while (v9 < v4);
          v5 = *(result + 48);
        }

        v2 += 2;
        v6 += 2 * v5;
        v7 += v5;
        v8 += 2;
      }

      while (v2 < v3);
    }
  }

  return result;
}

void sub_1002E8C08(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

uint64_t sub_1002E8C40(uint64_t result, int *a2)
{
  v2 = 2 * *a2;
  v3 = 2 * a2[1];
  if (v2 < v3)
  {
    LODWORD(v4) = *(result + 24);
    if (v4 >= 1)
    {
      v5 = *(result + 48);
      v6 = *(result + 32) + v5 * v2;
      v7 = *(result + 40) + ((v5 * v2) >> 1);
      v8 = v2 + 1;
      do
      {
        if (v4 >= 1)
        {
          v9 = *(result + 16);
          v10 = *(result + 8) + 3;
          v11 = (v10 + v9 * v8);
          v12 = (v10 + v9 * v2);
          v13 = (v6 + 1);
          v14 = (v6 + 1 + v5);
          v15 = (v7 + 1);
          v16 = 1;
          do
          {
            v17 = *v15 - 128;
            v18 = *(v15 - 1) - 128;
            v19 = 1673527 * v18 + 0x80000;
            v20 = -852492 * v18 - 409993 * v17;
            v21 = 2116026 * v17 + 0x80000;
            v22 = v20 + 0x80000;
            v23 = *(v13 - 1);
            if (v23 <= 0x10)
            {
              v23 = 16;
            }

            v24 = 1220542 * v23 - 19528672;
            v25 = ((v24 + v19) >> 20) & ~((v24 + v19) >> 31);
            if (v25 >= 255)
            {
              LOBYTE(v25) = -1;
            }

            *(v12 - 1) = v25;
            v26 = ((v24 + v22) >> 20) & ~((v24 + v22) >> 31);
            if (v26 >= 255)
            {
              LOBYTE(v26) = -1;
            }

            *(v12 - 2) = v26;
            v27 = ((v24 + v21) >> 20) & ~((v24 + v21) >> 31);
            if (v27 >= 255)
            {
              LOBYTE(v27) = -1;
            }

            *(v12 - 3) = v27;
            *v12 = -1;
            v29 = *v13;
            v13 += 2;
            v28 = v29;
            if (v29 <= 0x10)
            {
              v28 = 16;
            }

            v30 = 1220542 * v28 - 19528672;
            v31 = ((v30 + v19) >> 20) & ~((v30 + v19) >> 31);
            if (v31 >= 255)
            {
              LOBYTE(v31) = -1;
            }

            v12[3] = v31;
            if ((((v30 + v22) >> 20) & ~((v30 + v22) >> 31)) >= 255)
            {
              v32 = -1;
            }

            else
            {
              v32 = ((v30 + v22) >> 20) & ~((v30 + v22) >> 31);
            }

            v33 = ((v30 + v21) >> 20) & ~((v30 + v21) >> 31);
            v12[2] = v32;
            if (v33 >= 255)
            {
              LOBYTE(v33) = -1;
            }

            v12[1] = v33;
            v12[4] = -1;
            v34 = *(v14 - 1);
            if (v34 <= 0x10)
            {
              v34 = 16;
            }

            v35 = 1220542 * v34 - 19528672;
            v36 = ((v35 + v19) >> 20) & ~((v35 + v19) >> 31);
            if (v36 >= 255)
            {
              LOBYTE(v36) = -1;
            }

            *(v11 - 1) = v36;
            if ((((v35 + v22) >> 20) & ~((v35 + v22) >> 31)) >= 255)
            {
              v37 = -1;
            }

            else
            {
              v37 = ((v35 + v22) >> 20) & ~((v35 + v22) >> 31);
            }

            v38 = ((v35 + v21) >> 20) & ~((v35 + v21) >> 31);
            *(v11 - 2) = v37;
            if (v38 >= 255)
            {
              LOBYTE(v38) = -1;
            }

            *(v11 - 3) = v38;
            *v11 = -1;
            v40 = *v14;
            v14 += 2;
            v39 = v40;
            if (v40 <= 0x10)
            {
              v39 = 16;
            }

            v41 = 1220542 * v39 - 19528672;
            v42 = ((v41 + v19) >> 20) & ~((v41 + v19) >> 31);
            if (v42 >= 255)
            {
              LOBYTE(v42) = -1;
            }

            v11[3] = v42;
            v43 = ((v41 + v22) >> 20) & ~((v41 + v22) >> 31);
            if (v43 >= 255)
            {
              LOBYTE(v43) = -1;
            }

            v44 = ((v41 + v21) >> 20) & ~((v41 + v21) >> 31);
            if (v44 >= 255)
            {
              LOBYTE(v44) = -1;
            }

            v11[2] = v43;
            v11[1] = v44;
            v11[4] = -1;
            v4 = *(result + 24);
            v12 += 8;
            v45 = v16 + 1;
            v11 += 8;
            v16 += 2;
            v15 += 2;
          }

          while (v45 < v4);
          v5 = *(result + 48);
        }

        v2 += 2;
        v6 += 2 * v5;
        v7 += v5;
        v8 += 2;
      }

      while (v2 < v3);
    }
  }

  return result;
}

void sub_1002E8EE4(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

uint64_t sub_1002E8F1C(uint64_t result, int *a2)
{
  v2 = 2 * *a2;
  v3 = 2 * a2[1];
  if (v2 < v3)
  {
    LODWORD(v4) = *(result + 24);
    if (v4 >= 1)
    {
      v5 = *(result + 48);
      v6 = *(result + 32) + v5 * v2;
      v7 = *(result + 40) + ((v5 * v2) >> 1);
      v8 = v2 + 1;
      do
      {
        if (v4 >= 1)
        {
          v9 = 0;
          v10 = *(result + 16);
          v11 = *(result + 8) + 3;
          v12 = (v11 + v10 * v8);
          v13 = (v11 + v10 * v2);
          v14 = v6 + 1 + v5;
          do
          {
            v15 = *(v7 + v9) - 128;
            v16 = *(v7 + 1 + v9) - 128;
            v17 = 1673527 * v16 + 0x80000;
            v18 = -852492 * v16 - 409993 * v15;
            v19 = 2116026 * v15 + 0x80000;
            v20 = v18 + 0x80000;
            if (*(v6 + v9) <= 0x10u)
            {
              v21 = 16;
            }

            else
            {
              v21 = *(v6 + v9);
            }

            v22 = 1220542 * v21 - 19528672;
            v23 = ((v22 + v17) >> 20) & ~((v22 + v17) >> 31);
            if (v23 >= 255)
            {
              LOBYTE(v23) = -1;
            }

            *(v13 - 3) = v23;
            v24 = ((v22 + v20) >> 20) & ~((v22 + v20) >> 31);
            if (v24 >= 255)
            {
              LOBYTE(v24) = -1;
            }

            v25 = ((v22 + v19) >> 20) & ~((v22 + v19) >> 31);
            *(v13 - 2) = v24;
            if (v25 >= 255)
            {
              LOBYTE(v25) = -1;
            }

            *(v13 - 1) = v25;
            *v13 = -1;
            v26 = *(v6 + 1 + v9);
            if (v26 <= 0x10)
            {
              v26 = 16;
            }

            v27 = 1220542 * v26 - 19528672;
            v28 = ((v27 + v17) >> 20) & ~((v27 + v17) >> 31);
            if (v28 >= 255)
            {
              LOBYTE(v28) = -1;
            }

            v13[1] = v28;
            v29 = ((v27 + v20) >> 20) & ~((v27 + v20) >> 31);
            if (v29 >= 255)
            {
              LOBYTE(v29) = -1;
            }

            v30 = ((v27 + v19) >> 20) & ~((v27 + v19) >> 31);
            if (v30 >= 255)
            {
              LOBYTE(v30) = -1;
            }

            v13[2] = v29;
            v13[3] = v30;
            v13[4] = -1;
            v31 = *(v14 + v9 - 1);
            if (v31 <= 0x10)
            {
              v31 = 16;
            }

            v32 = 1220542 * v31 - 19528672;
            v33 = ((v32 + v17) >> 20) & ~((v32 + v17) >> 31);
            if (v33 >= 255)
            {
              LOBYTE(v33) = -1;
            }

            *(v12 - 3) = v33;
            v34 = ((v32 + v20) >> 20) & ~((v32 + v20) >> 31);
            if (v34 >= 255)
            {
              LOBYTE(v34) = -1;
            }

            v35 = ((v32 + v19) >> 20) & ~((v32 + v19) >> 31);
            if (v35 >= 255)
            {
              LOBYTE(v35) = -1;
            }

            *(v12 - 2) = v34;
            *(v12 - 1) = v35;
            *v12 = -1;
            v36 = *(v14 + v9);
            if (v36 <= 0x10)
            {
              v36 = 16;
            }

            v37 = 1220542 * v36 - 19528672;
            v38 = ((v37 + v17) >> 20) & ~((v37 + v17) >> 31);
            if (v38 >= 255)
            {
              LOBYTE(v38) = -1;
            }

            v12[1] = v38;
            v39 = ((v37 + v20) >> 20) & ~((v37 + v20) >> 31);
            if (v39 >= 255)
            {
              LOBYTE(v39) = -1;
            }

            v12[2] = v39;
            v40 = ((v37 + v19) >> 20) & ~((v37 + v19) >> 31);
            if (v40 >= 255)
            {
              LOBYTE(v40) = -1;
            }

            v12[3] = v40;
            v12[4] = -1;
            v9 += 2;
            v4 = *(result + 24);
            v12 += 8;
            v13 += 8;
          }

          while (v9 < v4);
          v5 = *(result + 48);
        }

        v2 += 2;
        v6 += 2 * v5;
        v7 += v5;
        v8 += 2;
      }

      while (v2 < v3);
    }
  }

  return result;
}