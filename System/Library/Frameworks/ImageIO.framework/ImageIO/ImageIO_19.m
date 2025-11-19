uint64_t kd_synthesis::simulate_vertical_lifting(kd_synthesis *this, int a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = *(this + 30);
  v4 = *(this + 35);
  v5 = *(this + 36);
  v48 = 0;
  v49 = v4;
  v50 = v5;
  v6 = *(this + 28);
  v7 = v3 - (v6 + a2) - 2;
  if (v7 >= 1)
  {
    v8 = v7 & 0x7FFFFFFE;
    v3 -= v8;
    v4 -= v8;
    v5 -= v8;
    v49 = v4;
    v50 = v5;
  }

  v10 = this + 124;
  v9 = *(this + 31);
  *(this + 33) = v9;
  v11 = this + 132;
  *(this + 29) = v6;
  v12 = *(this + 32);
  *(this + 34) = v12;
  if (v9 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v9;
  }

  if (v4 <= v5)
  {
    v14 = v5;
  }

  else
  {
    v14 = v4;
  }

  v47 = v3;
  if ((*(this + 11) & 0x80000000) == 0)
  {
    v15 = 0;
    v16 = -1;
    v17 = -48;
    do
    {
      if (*&v10[4 * (v16 & 1)] <= v13 + 1)
      {
        v18 = v13;
      }

      else
      {
        v18 = *&v10[4 * (v16 & 1)];
      }

      v19 = *(&v49 + (v16 & 1));
      if (v19 >= v14 - 1)
      {
        v20 = v14;
      }

      else
      {
        v20 = *(&v49 + (v16 & 1));
      }

      v21 = v20;
      if (v16 >= 1)
      {
        v21 = v19 + 2 * (*(*(this + 10) + v15 - 28) + *(*(this + 10) + v15 - 31)) - 2;
      }

      kd_vlift_queue::init(*(this + 13) + v17, v18, v20, v16++, *(this + 98), v21);
      v22 = *(this + 11);
      v17 += 48;
      v15 += 32;
    }

    while (v16 < v22);
    v3 = v47;
    if (v22 >= 1)
    {
      v23 = 0;
      v24 = (*(this + 10) + 24);
      do
      {
        *v24 = *&v10[4 * ((v23 & 1) == 0)];
        v24 += 8;
        ++v23;
      }

      while (v22 != v23);
    }
  }

  if (*(this + 29) <= v3)
  {
    v25 = 0;
    for (i = -1; ; i = v28)
    {
      while (2)
      {
        while ((i & 0x80000000) != 0)
        {
LABEL_51:
          i = !(*(this + 29) & 1);
          if (kd_vlift_queue::simulate_access_update((*(this + 13) + 48 * -(*(this + 29) & 1)), *(this + 29), &v48))
          {
            v46 = *(this + 29);
            *(this + 29) = v46 + 1;
            i = -1;
            if (v46 >= v47)
            {
              return v25;
            }
          }
        }

        v28 = i + 1;
        v29 = 48 * i;
        v30 = 32 * i;
        while (1)
        {
          v31 = v28 - 1;
          v32 = ((v28 - 1) & 1) == 0;
          v33 = *(this + 11);
          if (v28 - 1 == v33)
          {
            v34 = *&v11[4 * (((v28 - 1) & 1) == 0)];
            if (v34 <= *(&v49 + (((v28 - 1) & 1) == 0)))
            {
              v35 = v48++;
              if (v35 >= v25)
              {
                v25 = (v35 + 1);
              }

              else
              {
                v25 = v25;
              }

              kd_vlift_queue::simulate_push_line(*(this + 13) + v29 - 48, v34, &v48);
              *&v11[4 * v32] += 2;
            }

            goto LABEL_50;
          }

          v36 = *(this + 10);
          v37 = v36 + v30;
          v38 = *(v36 + v30 + 24);
          if (v38 <= *(&v49 + (((v28 - 1) & 1) == 0)))
          {
            break;
          }

LABEL_50:
          v29 -= 48;
          v30 -= 32;
          --v28;
          if (v31 <= 0)
          {
            goto LABEL_51;
          }
        }

        v39 = *(v37 + 4);
        v40 = v33 - 1;
        v41 = *(this + 13);
        if (v31 < v40)
        {
          *(v41 + v29 + 84) = v38;
          if (*(v41 + v29 + 72) > v38 || *(v41 + v29 + 76) < v38)
          {
            i = v28 + 1;
            continue;
          }
        }

        break;
      }

      if (kd_vlift_queue::simulate_access_source((v41 + v29), (v38 ^ 1u) + 2 * v39, *(v36 + v30 + 1), &v48))
      {
        if (v31 == *(this + 11) - 1)
        {
          v42 = v48;
          v43 = ++v48;
          v44 = *(v37 + 24);
          if (v44 != *&v11[4 * v32])
          {
            kd_synthesis::simulate_vertical_lifting();
          }

          if (v42 >= v25)
          {
            v25 = v43;
          }

          else
          {
            v25 = v25;
          }

          *&v11[4 * v32] = v44 + 2;
        }

        else
        {
          kd_vlift_queue::simulate_access_update((*(this + 13) + v29 + 48), *(v37 + 24), &v48);
          v45 = v48++;
          if (v45 >= v25)
          {
            v25 = (v45 + 1);
          }

          else
          {
            v25 = v25;
          }
        }

        kd_vlift_queue::simulate_push_line(*(this + 13) + v29 - 48, *(v37 + 24), &v48);
        *(v37 + 24) += 2;
        goto LABEL_50;
      }
    }
  }

  return 0;
}

void kd_synthesis::~kd_synthesis(kd_synthesis *this)
{
  *this = &unk_1EF4D3518;
  for (i = 8; i != 40; i += 8)
  {
    v3 = *(this + i);
    if (v3)
    {
      (*(*v3 + 8))(v3);
      *(this + i) = 0;
    }
  }

  v4 = *(this + 27);
  if (v4)
  {
    MEMORY[0x186602830](v4, 0x1000C8052888210);
  }

  v5 = *(this + 28);
  if (v5)
  {
    MEMORY[0x186602830](v5, 0x1000C8052888210);
  }

  v6 = *(this + 29);
  if (v6)
  {
    MEMORY[0x186602830](v6, 0x80C80B8603338);
  }

  v7 = *(this + 30);
  if (v7)
  {
    MEMORY[0x186602830](v7, 0x1020C803C8EFFD9);
  }

  v8 = *(this + 31);
  if (v8)
  {
    MEMORY[0x186602830](v8, 0x1090C805C18EE7CLL);
  }

  v9 = *(this + 32);
  if (v9)
  {
    MEMORY[0x186602830](v9, 0x1090C805C18EE7CLL);
  }

  v10 = *(this + 33);
  if (v10)
  {
    MEMORY[0x186602830](v10, 0x1020C806F595497);
  }

  *this = &unk_1EF4D3448;
}

{
  kd_synthesis::~kd_synthesis(this);

  JUMPOUT(0x186602850);
}

uint64_t kd_synthesis::start(uint64_t a1, kdu_thread_entity *this)
{
  if ((*(a1 + 41) & 1) == 0)
  {
    if (this)
    {
      kdu_thread_entity::acquire_lock(this, 3, 1);
    }

    for (i = *(a1 + 72); i; i = *(i + 32))
    {
      kdu_line_buf::create(i);
      kdu_line_buf::create(i + 16);
    }

    *(a1 + 41) = 1;
    if (this)
    {
      kdu_thread_entity::release_lock(this, 3);
    }
  }

  v5 = 0;
  v6 = a1 + 8;
  do
  {
    result = *(v6 + v5);
    if (result)
    {
      result = (*(*result + 16))(result, this);
    }

    v5 += 8;
  }

  while (v5 != 32);
  return result;
}

uint64_t kd_synthesis::pull(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 209))
  {
    return result;
  }

  v4 = result;
  if ((*(result + 41) & 1) == 0)
  {
    result = (*(*result + 16))(result, a3);
  }

  v5 = *(v4 + 116);
  if (v5 > *(v4 + 120))
  {
    kd_synthesis::pull();
  }

  v95 = a2;
  v6 = *(v4 + 42);
  if (!*(v4 + 44) || (*(v4 + 207) & 1) != 0)
  {
    v7 = v6 & v5;
    v8 = *(v4 + 72);
    result = kd_synthesis::horizontal_synthesis(v4, v8, v6 & v5, a3);
    if (*(v4 + 207) == 1 && v7 && (*(v4 + 40) & 1) != 0)
    {
      v9 = v4 + 204;
      v10 = v4 + 192;
      v11 = 0;
      v12 = 1;
      if (*(v4 + 206))
      {
        do
        {
          v13 = v12;
          v14 = v8 + 16 * v11;
          if ((*(v14 + 6) & 2) != 0)
          {
            v15 = *(v14 + 8);
          }

          else
          {
            v15 = 0;
          }

          v16 = *(v10 + 4 * v11);
          if (v16)
          {
            v17 = (v15 + 2 * *(v9 + v11));
            do
            {
              *v17 = *v17 >> 1;
              ++v17;
              --v16;
            }

            while (v16);
          }

          v12 = 0;
          v11 = 1;
        }

        while ((v13 & 1) != 0);
      }

      else
      {
        do
        {
          v18 = v12;
          v19 = v8 + 16 * v11;
          if ((*(v19 + 6) & 2) != 0)
          {
            v20 = 0;
          }

          else
          {
            v20 = *(v19 + 8);
          }

          v21 = *(v10 + 4 * v11);
          if (v21)
          {
            v22 = (v20 + 4 * *(v9 + v11));
            do
            {
              *v22++ >>= 1;
              --v21;
            }

            while (v21);
          }

          v12 = 0;
          v11 = 1;
        }

        while ((v18 & 1) != 0);
      }
    }

    goto LABEL_27;
  }

  v38 = v4 + 140;
  v39 = v4 + 132;
  v40 = v4 + 204;
  LODWORD(v41) = -1;
  do
  {
    if ((v41 & 0x80000000) != 0)
    {
LABEL_97:
      LODWORD(v41) = !(*(v4 + 116) & 1);
      result = kd_vlift_queue::access_update(*(v4 + 104) + 48 * -(*(v4 + 116) & 1), *(v4 + 116), (v4 + 72));
      v8 = result;
      continue;
    }

    v41 = v41;
    while (1)
    {
      v42 = *(v4 + 44);
      if (v41 == v42)
      {
        if (*(v39 + 4 * ((v41 & 1) == 0)) <= *(v38 + 4 * ((v41 & 1) == 0)))
        {
          v43 = *(v4 + 72);
          if (!v43)
          {
            exception = __cxa_allocate_exception(4uLL);
            v94 = -1;
LABEL_145:
            *exception = v94;
            __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
          }

          *(v4 + 72) = *(v43 + 32);
          *(v43 + 32) = 0;
          kd_synthesis::horizontal_synthesis(v4, v43, (v41 & 1) == 0, a3);
          result = kd_vlift_queue::push_line(*(v4 + 104) + 48 * v41 - 48, *(v39 + 4 * ((v41 & 1) == 0)), v43, (v4 + 72));
          *(v39 + 4 * ((v41 & 1) == 0)) += 2;
        }

        goto LABEL_95;
      }

      v44 = *(v4 + 80) + 32 * v41;
      v45 = *(v44 + 24);
      if (v45 > *(v38 + 4 * ((v41 & 1) == 0)))
      {
        goto LABEL_95;
      }

      v46 = *(v44 + 4);
      v47 = v42 - 1;
      v48 = *(v4 + 104);
      if (v41 < v47)
      {
        v49 = (v48 + 48 * v41);
        v49[21] = v45;
        if (v49[18] > v45 || v49[19] < v45)
        {
          v8 = 0;
          LODWORD(v41) = v41 + 2;
          goto LABEL_98;
        }
      }

      result = kd_vlift_queue::access_source((v48 + 48 * v41), (v45 ^ 1u) + 2 * v46, *(v44 + 1), *(v4 + 56), (v4 + 72));
      if ((result & 1) == 0)
      {
        break;
      }

      if (v41 == *(v4 + 44) - 1)
      {
        v50 = *(v4 + 72);
        if (!v50)
        {
          goto LABEL_143;
        }

        if (*(v44 + 24) != *(v39 + 4 * ((v41 & 1) == 0)))
        {
          kd_synthesis::pull();
        }

        kd_synthesis::horizontal_synthesis(v4, *(v4 + 72), (v41 & 1) == 0, a3);
        *(v39 + 4 * ((v41 & 1) == 0)) += 2;
      }

      else
      {
        v50 = kd_vlift_queue::access_update(*(v4 + 104) + 48 * v41 + 48, *(v44 + 24), (v4 + 72));
      }

      v51 = *(v4 + 72);
      if (!v51)
      {
LABEL_143:
        exception = __cxa_allocate_exception(4uLL);
        v94 = -50;
        goto LABEL_145;
      }

      *(v4 + 72) = *(v51 + 32);
      *(v51 + 32) = 0;
      result = kd_vlift_queue::push_line(*(v4 + 104) + 48 * v41 - 48, *(v44 + 24), v51, (v4 + 72));
      if (*(v44 + 1))
      {
        v52 = 0;
        v53 = 1;
        do
        {
          v54 = v53;
          v55 = *(v4 + 192 + 4 * v52);
          if (v55)
          {
            v56 = *(v4 + 64);
            v57 = *(v44 + 1);
            v58 = v50 + 16 * v52;
            v59 = v51 + 16 * v52;
            if (*(v4 + 206) == 1)
            {
              if (*(v44 + 1))
              {
                v60 = 0;
                v61 = 8 * v57;
                do
                {
                  v62 = *(*(v4 + 56) + v60) + 16 * v52;
                  if ((*(v62 + 6) & 2) != 0)
                  {
                    v63 = *(v62 + 8);
                  }

                  else
                  {
                    v63 = 0;
                  }

                  v56[v60 / 8] = v63;
                  v60 += 8;
                }

                while (v61 != v60);
              }

              if ((*(v58 + 6) & 2) != 0)
              {
                v64 = *(v58 + 8);
              }

              else
              {
                v64 = 0;
              }

              if ((*(v59 + 6) & 2) != 0)
              {
                v70 = *(v59 + 8);
              }

              else
              {
                v70 = 0;
              }

              result = perform_synthesis_lifting_step(v44, v56, v64, v70, v55, *(v40 + v52));
            }

            else
            {
              if (*(v44 + 1))
              {
                v65 = 0;
                v66 = 8 * v57;
                do
                {
                  v67 = *(*(v4 + 56) + v65) + 16 * v52;
                  if ((*(v67 + 6) & 2) != 0)
                  {
                    v68 = 0;
                  }

                  else
                  {
                    v68 = *(v67 + 8);
                  }

                  v56[v65 / 8] = v68;
                  v65 += 8;
                }

                while (v66 != v65);
              }

              if ((*(v58 + 6) & 2) != 0)
              {
                v69 = 0;
              }

              else
              {
                v69 = *(v58 + 8);
              }

              if ((*(v59 + 6) & 2) != 0)
              {
                v71 = 0;
              }

              else
              {
                v71 = *(v59 + 8);
              }

              result = perform_synthesis_lifting_step(v44, v56, v69, v71, v55, *(v40 + v52));
            }
          }

          v53 = 0;
          v52 = 1;
        }

        while ((v54 & 1) != 0);
      }

      *(v44 + 24) += 2;
LABEL_95:
      if (v41-- <= 0)
      {
        goto LABEL_97;
      }
    }

    v8 = 0;
    LODWORD(v41) = v41 + 1;
LABEL_98:
    ;
  }

  while (!v8);
LABEL_27:
  ++*(v4 + 116);
  v23 = *(v4 + 200);
  v24 = *(v4 + 188) - v23;
  v25 = (v24 + 2) >> 1;
  v26 = v23 - *(v4 + 148);
  if (*(v4 + 43))
  {
    v27 = v23 & 1;
    v28 = v26 >> 1;
    v29 = *(v95 + 8);
    v30 = v8 + 16 * v27;
    if (*(v4 + 206))
    {
      v31 = 0;
      if ((*(v95 + 6) & 2) == 0)
      {
        v29 = 0;
      }

      if ((*(v30 + 6) & 2) != 0)
      {
        v31 = *(v30 + 8);
      }

      v32 = v28;
      v33 = (v31 + 2 * v28);
      v34 = v8 + 16 * (v27 ^ 1);
      if ((*(v34 + 6) & 2) != 0)
      {
        v35 = *(v34 + 8);
      }

      else
      {
        v35 = 0;
      }

      v81 = (v35 + 2 * v32);
      if (*(v4 + 100))
      {
        if (v24 <= 0xFFFFFFFD)
        {
          do
          {
            v82 = *v33++;
            *v29 = v82 << *(v4 + 100);
            v83 = *v81++;
            *(v29 + 2) = v83 << *(v4 + 100);
            v29 += 4;
            --v25;
          }

          while (v25);
        }
      }

      else if (v24 <= 0xFFFFFFFD)
      {
        do
        {
          v89 = *v33++;
          *v29 = v89;
          v90 = *v81++;
          *(v29 + 2) = v90;
          v29 += 4;
          --v25;
        }

        while (v25);
      }
    }

    else
    {
      v73 = 0;
      if ((*(v95 + 6) & 2) != 0)
      {
        v29 = 0;
      }

      if ((*(v30 + 6) & 2) == 0)
      {
        v73 = *(v30 + 8);
      }

      v74 = v28;
      v75 = (v73 + 4 * v28);
      v76 = v8 + 16 * (v27 ^ 1);
      if ((*(v76 + 6) & 2) != 0)
      {
        v77 = 0;
      }

      else
      {
        v77 = *(v76 + 8);
      }

      v84 = (v77 + 4 * v74);
      v85 = *(v4 + 100);
      if (v85)
      {
        if (v24 <= 0xFFFFFFFD)
        {
          v86 = (1 << v85);
          do
          {
            v87 = *v75++;
            *v29 = v87 * v86;
            v88 = *v84++;
            *(v29 + 4) = v88 * v86;
            v29 += 8;
            --v25;
          }

          while (v25);
        }
      }

      else if (v24 <= 0xFFFFFFFD)
      {
        do
        {
          v91 = *v75++;
          *v29 = v91;
          v92 = *v84++;
          *(v29 + 4) = v92;
          v29 += 8;
          --v25;
        }

        while (v25);
      }
    }
  }

  else
  {
    if (v26 >= 2)
    {
      kd_synthesis::pull();
    }

    v36 = *(v95 + 8);
    if (*(v4 + 206))
    {
      v37 = 0;
      if ((*(v95 + 6) & 2) == 0)
      {
        v36 = 0;
      }

      if ((*(v8 + 6) & 2) != 0)
      {
        v37 = *(v8 + 8);
      }

      if (*(v4 + 100))
      {
        if (v24 <= 0xFFFFFFFD)
        {
          do
          {
            *v36 = *v37 << *(v4 + 100);
            *(v36 + 2) = v37[1] << *(v4 + 100);
            v37 += 2;
            v36 += 4;
            --v25;
          }

          while (v25);
        }
      }

      else if (v24 <= 0xFFFFFFFD)
      {
        do
        {
          *v36 = *v37;
          *(v36 + 2) = v37[1];
          v37 += 2;
          v36 += 4;
          --v25;
        }

        while (v25);
      }
    }

    else
    {
      v78 = 0;
      if ((*(v95 + 6) & 2) != 0)
      {
        v36 = 0;
      }

      if ((*(v8 + 6) & 2) == 0)
      {
        v78 = *(v8 + 8);
      }

      v79 = *(v4 + 100);
      if (v79)
      {
        if (v24 <= 0xFFFFFFFD)
        {
          v80 = (1 << v79);
          do
          {
            *v36 = *v78 * v80;
            *(v36 + 4) = v78[1] * v80;
            v78 += 2;
            v36 += 8;
            --v25;
          }

          while (v25);
        }
      }

      else if (v24 <= 0xFFFFFFFD)
      {
        do
        {
          *v36 = *v78;
          *(v36 + 4) = v78[1];
          v78 += 2;
          v36 += 8;
          --v25;
        }

        while (v25);
      }
    }
  }

  return result;
}

uint64_t kd_synthesis::horizontal_synthesis(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = result;
  v5 = 0;
  v6 = result + 172;
  v7 = result + 8;
  v8 = result + 180;
  v9 = result + 170;
  v10 = result + 182;
  v11 = 2 * a3;
  v12 = 1;
  do
  {
    v13 = v12;
    if (*(v6 + 4 * v5) >= 1)
    {
      v14 = a2 + 16 * v5;
      result = (*(**(v7 + 8 * (v5 | v11)) + 24))(*(v7 + 8 * (v5 | v11)), v14, a4);
      v15 = *(v8 + v5);
      if (*(v8 + v5))
      {
        if (*(v4 + 206) == 1)
        {
          v16 = 0;
          v17 = (*(v14 + 8) + 2 * *(v9 + v5));
          v20 = *v17;
          v18 = v17 - 4;
          v19 = v20;
          v21 = vdupq_n_s64(v15 - 1);
          do
          {
            v22 = vdupq_n_s64(v16);
            v23 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v22, xmmword_186205EC0)));
            if (vuzp1_s8(vuzp1_s16(v23, *v21.i8), *v21.i8).u8[0])
            {
              v18[3] = v19;
            }

            if (vuzp1_s8(vuzp1_s16(v23, *&v21), *&v21).i8[1])
            {
              v18[2] = v19;
            }

            if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v22, xmmword_186205EB0)))), *&v21).i8[2])
            {
              v18[1] = v19;
              *v18 = v19;
            }

            v24 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v22, xmmword_186205EA0)));
            if (vuzp1_s8(*&v21, vuzp1_s16(v24, *&v21)).i32[1])
            {
              *(v18 - 1) = v19;
            }

            if (vuzp1_s8(*&v21, vuzp1_s16(v24, *&v21)).i8[5])
            {
              *(v18 - 2) = v19;
            }

            if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v22, xmmword_186205E90))))).i8[6])
            {
              *(v18 - 3) = v19;
              *(v18 - 4) = v19;
            }

            v16 += 8;
            v18 -= 8;
          }

          while (((v15 + 7) & 0x1F8) != v16);
        }

        else
        {
          v25 = 0;
          v26 = (*(v14 + 8) + 4 * *(v9 + v5));
          v29 = *v26;
          v27 = v26 - 2;
          v28 = v29;
          v30 = vdupq_n_s64(v15 - 1);
          do
          {
            v31 = vdupq_n_s64(v25);
            v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v31, xmmword_186205EC0)));
            if (vuzp1_s16(v32, *v30.i8).u8[0])
            {
              v27[1] = v28;
            }

            if (vuzp1_s16(v32, *&v30).i8[2])
            {
              *v27 = v28;
            }

            if (vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v31, xmmword_186205EB0)))).i32[1])
            {
              *(v27 - 1) = v28;
              *(v27 - 2) = v28;
            }

            v25 += 4;
            v27 -= 4;
          }

          while (((v15 + 3) & 0x1FC) != v25);
        }
      }

      v33 = *(v10 + v5);
      if (*(v10 + v5))
      {
        if (*(v4 + 206) == 1)
        {
          v34 = *(v14 + 8);
          v35 = *(v9 + v5);
          v36 = *(v6 + 4 * v5);
          v37 = (v34 + 2 * v35 + 2 * v36);
          v38 = *(v34 + 2 * (v36 + v35) - 2);
          v39 = v33 + 1;
          do
          {
            *v37++ = v38;
            --v39;
          }

          while (v39 > 1);
        }

        else
        {
          v40 = *(v14 + 8);
          v41 = *(v9 + v5);
          v42 = *(v6 + 4 * v5);
          v43 = (v40 + 4 * v41 + 4 * v42);
          v44 = *(v40 + 4 * (v42 + v41) - 4);
          v45 = v33 + 1;
          do
          {
            *v43++ = v44;
            --v45;
          }

          while (v45 > 1);
        }
      }
    }

    v12 = 0;
    v5 = 1;
  }

  while ((v13 & 1) != 0);
  if (*(v4 + 48))
  {
    if (*(v4 + 208) == 1 && *(v4 + 40) == 1 && (*(v4 + 152) & 1) != 0)
    {
      if (*(v4 + 206))
      {
        *(*(a2 + 24) + 2 * *(v4 + 169)) = *(*(a2 + 24) + 2 * *(v4 + 169)) >> 1;
      }

      else
      {
        *(*(a2 + 24) + 4 * *(v4 + 169)) >>= 1;
      }
    }

    if ((*(v4 + 208) & 1) == 0)
    {
      v46 = *(v4 + 48);
      if (v46 >= 1)
      {
        v47 = v4 + 160;
        v48 = v4 + 168;
        do
        {
          v49 = v46--;
          v50 = *(v4 + 88) + 32 * v46;
          if (*(v50 + 1))
          {
            v51 = !(v46 & 1);
            v52 = *(v47 + 4 * v51);
            v53 = *(v48 + v51);
            v54 = v46 & 1;
            v55 = a2 + 16 * v54;
            if (*(v4 + 206) == 1)
            {
              if ((*(v55 + 6) & 2) != 0)
              {
                v56 = *(v55 + 8);
              }

              else
              {
                v56 = 0;
              }

              v58 = a2 + 16 * v51;
              if ((*(v58 + 6) & 2) != 0)
              {
                v59 = *(v58 + 8);
              }

              else
              {
                v59 = 0;
              }

              result = *(v48 + v54);
              v62 = (v56 + 2 * result);
              v63 = *(v47 + 4 * v54);
              v64 = &v62[v63];
              if (*(v4 + 99))
              {
                if (*(v50 + 3))
                {
                  v65 = v64 - 1;
                  v66 = v63;
                  v67 = -1;
                  v68 = 1;
                  do
                  {
                    v62[v67] = v62[v68 - ((*(v4 + 152) ^ v46) & 1)];
                    v62[v66] = v65[v67 + ((*(v4 + 156) ^ v46) & 1)];
                    --v67;
                    ++v66;
                    v69 = v68++ >= *(v50 + 3);
                  }

                  while (!v69);
                }
              }

              else if (*(v50 + 3))
              {
                v77 = 0;
                v78 = v62 - 1;
                do
                {
                  *v78-- = *v62;
                  v64[v77++] = *(v64 - 1);
                }

                while (v77 < *(v50 + 3));
              }

              v79 = (v59 + 2 * v53);
              v80 = (*(v4 + 152) << 31 >> 31) & (1 - 2 * v51);
              v81 = *(v50 + 4);
              v82 = *(v50 + 1);
              v83 = *(v50 + 16);
              if (v82 == 2 && (v84 = *v83, *v83 == v83[1]))
              {
                v85 = *(v50 + 2);
                v86 = *(v50 + 6);
                if (v84 == 1)
                {
                  if (v52 >= 1)
                  {
                    v118 = (v56 + 2 * v81 + 2 * v80 + 2 * result + 2);
                    do
                    {
                      v119 = *v79;
                      result = (v119 - ((*(v118 - 1) + v86 + *v118) >> v85));
                      *v79++ = v119 - ((*(v118 - 1) + v86 + *v118) >> v85);
                      ++v118;
                      --v52;
                    }

                    while (v52);
                  }
                }

                else if (v84 == -1)
                {
                  if (v52 >= 1)
                  {
                    v87 = (v56 + 2 * v81 + 2 * v80 + 2 * result + 2);
                    do
                    {
                      v88 = *v79;
                      result = (v88 - ((v86 - (*(v87 - 1) + *v87)) >> v85));
                      *v79++ = v88 - ((v86 - (*(v87 - 1) + *v87)) >> v85);
                      ++v87;
                      --v52;
                    }

                    while (v52);
                  }
                }

                else if (v52 >= 1)
                {
                  v120 = (v56 + 2 * v81 + 2 * v80 + 2 * result + 2);
                  do
                  {
                    v121 = *v79;
                    result = (v121 - ((v86 + (*v120 + *(v120 - 1)) * v84) >> v85));
                    *v79++ = v121 - ((v86 + (*v120 + *(v120 - 1)) * v84) >> v85);
                    ++v120;
                    --v52;
                  }

                  while (v52);
                }
              }

              else if (v52 >= 1)
              {
                v89 = 0;
                result = &v62[v80 + v81];
                v90 = *(v50 + 2);
                v91 = *(v50 + 6);
                do
                {
                  v92 = v91;
                  if (v82)
                  {
                    v93 = 0;
                    v92 = v91;
                    do
                    {
                      v92 += v83[v93] * *(result + 2 * v93);
                      ++v93;
                    }

                    while (v82 != v93);
                  }

                  v79[v89++] -= v92 >> v90;
                  result += 2;
                }

                while (v89 != v52);
              }
            }

            else
            {
              if ((*(v55 + 6) & 2) != 0)
              {
                v57 = 0;
              }

              else
              {
                v57 = *(v55 + 8);
              }

              v60 = a2 + 16 * v51;
              if ((*(v60 + 6) & 2) != 0)
              {
                v61 = 0;
              }

              else
              {
                v61 = *(v60 + 8);
              }

              result = *(v48 + v54);
              v70 = (v57 + 4 * result);
              v71 = *(v47 + 4 * v54);
              v72 = &v70[v71];
              if (*(v4 + 99))
              {
                if (*(v50 + 3))
                {
                  v73 = v72 - 1;
                  v74 = v71;
                  v75 = -1;
                  v76 = 1;
                  do
                  {
                    v70[v75] = v70[v76 - ((*(v4 + 152) ^ v46) & 1)];
                    v70[v74] = v73[v75 + ((*(v4 + 156) ^ v46) & 1)];
                    --v75;
                    ++v74;
                    v69 = v76++ >= *(v50 + 3);
                  }

                  while (!v69);
                }
              }

              else if (*(v50 + 3))
              {
                v94 = 0;
                v95 = v70 - 1;
                do
                {
                  *v95-- = *v70;
                  v72[v94++] = *(v72 - 1);
                }

                while (v94 < *(v50 + 3));
              }

              v96 = (v61 + 4 * v53);
              v97 = (*(v4 + 152) << 31 >> 31) & (1 - 2 * v51);
              v98 = &v70[v97];
              v99 = *(v50 + 4);
              v100 = &v98[v99];
              v101 = *(v50 + 1);
              if (v101 != 2)
              {
                if (*(v4 + 40))
                {
                  goto LABEL_103;
                }

LABEL_111:
                if (v52 >= 1)
                {
                  v112 = 0;
                  v113 = *(v50 + 8);
                  result = 4 * v101;
                  do
                  {
                    if (v101)
                    {
                      v114 = 0;
                      v115 = 0.0;
                      do
                      {
                        v115 = v115 + (*(v113 + v114) * *&v100[v114 / 4]);
                        v114 += 4;
                      }

                      while (result != v114);
                    }

                    else
                    {
                      v115 = 0.0;
                    }

                    v96[v112] = v96[v112] - v115;
                    ++v112;
                    ++v100;
                  }

                  while (v112 != v52);
                }

                continue;
              }

              v102 = *(v50 + 8);
              if (*v102 != v102[1])
              {
                if (*(v4 + 40))
                {
LABEL_103:
                  if (v52 >= 1)
                  {
                    v107 = 0;
                    result = *(v50 + 2);
                    v108 = *(v50 + 6);
                    v109 = *(v50 + 16);
                    do
                    {
                      v110 = v108;
                      if (v101)
                      {
                        v111 = 0;
                        v110 = v108;
                        do
                        {
                          v110 += v100[v111] * *(v109 + v111 * 4);
                          ++v111;
                        }

                        while (v101 != v111);
                      }

                      LODWORD(v96[v107++]) -= v110 >> result;
                      ++v100;
                    }

                    while (v107 != v52);
                  }

                  continue;
                }

                goto LABEL_111;
              }

              if (*(v4 + 40))
              {
                v103 = *(v50 + 2);
                v104 = *(v50 + 6);
                v105 = **(v50 + 16);
                if (v105 == 1)
                {
                  if (v52 >= 1)
                  {
                    v122 = (v57 + 4 * v99 + 4 * v97 + 4 * result + 4);
                    do
                    {
                      result = *v96;
                      *v96++ = result - ((*(v122 - 1) + v104 + *v122) >> v103);
                      ++v122;
                      --v52;
                    }

                    while (v52);
                  }
                }

                else if (v105 == -1)
                {
                  if (v52 >= 1)
                  {
                    v106 = (v57 + 4 * v99 + 4 * v97 + 4 * result + 4);
                    do
                    {
                      result = *v96;
                      *v96++ = result - ((v104 - (*(v106 - 1) + *v106)) >> v103);
                      ++v106;
                      --v52;
                    }

                    while (v52);
                  }
                }

                else if (v52 >= 1)
                {
                  v123 = (v57 + 4 * v99 + 4 * v97 + 4 * result + 4);
                  do
                  {
                    result = (*v96 - ((v104 + (*v123 + *(v123 - 1)) * v105) >> v103));
                    *v96++ = result;
                    ++v123;
                    --v52;
                  }

                  while (v52);
                }
              }

              else if (v52 >= 1)
              {
                v116 = -*v102;
                v117 = (v57 + 4 * v99 + 4 * v97 + 4 * result + 4);
                do
                {
                  *v96 = *v96 + (v116 * (*(v117 - 1) + *v117));
                  ++v96;
                  ++v117;
                  --v52;
                }

                while (v52);
              }
            }
          }
        }

        while (v49 > 1);
      }
    }
  }

  return result;
}

uint64_t perform_synthesis_lifting_step(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if (a5 >= 1)
  {
    v6 = a6 - 16;
    if (a6 < 0x10)
    {
      v6 = 0;
    }

    v7 = v6 + 7;
    v8 = v7 & 0xFFFFFFF8;
    v9 = 16 * (v7 >> 3) + 16;
    v10 = a3 + v9;
    v11 = a6 - v8 - 8;
    v12 = a4 + v9;
    if (a6 >= 9)
    {
      LODWORD(v13) = v11;
    }

    else
    {
      LODWORD(v13) = a6;
    }

    if (a6 >= 9)
    {
      v14 = v10;
    }

    else
    {
      v12 = a4;
      v14 = a3;
    }

    v15 = v13 + a5;
    v16 = *(result + 1);
    if (v16 == 2 && (v17 = *(result + 16), v18 = *v17, *v17 == v17[1]))
    {
      v19 = *(result + 2);
      v20 = 1 << v19 >> 1;
      v21 = *a2;
      v22 = a2[1];
      v13 = v13;
      if (v18 == 1)
      {
        do
        {
          result = *(v14 + 2 * v13);
          *(v12 + 2 * v13) = result - ((v20 + *(v21 + 2 * v13) + *(v22 + 2 * v13)) >> v19);
          ++v13;
        }

        while (v13 < v15);
      }

      else if (v18 == -1)
      {
        do
        {
          result = *(v14 + 2 * v13);
          *(v12 + 2 * v13) = result - ((v20 - (*(v21 + 2 * v13) + *(v22 + 2 * v13))) >> v19);
          ++v13;
        }

        while (v13 < v15);
      }

      else
      {
        do
        {
          result = *(v14 + 2 * v13);
          *(v12 + 2 * v13) = result - ((v20 + (*(v22 + 2 * v13) + *(v21 + 2 * v13)) * v18) >> v19);
          ++v13;
        }

        while (v13 < v15);
      }
    }

    else
    {
      v23 = *(result + 2);
      v24 = *(result + 6);
      v25 = v13;
      v26 = v15;
      do
      {
        v27 = v24;
        if (v16)
        {
          v28 = *(result + 16);
          v29 = v16;
          v30 = a2;
          v27 = v24;
          do
          {
            v32 = *v28++;
            v31 = v32;
            v33 = *v30++;
            v27 += v31 * *(v33 + 2 * v25);
            --v29;
          }

          while (v29);
        }

        *(v12 + 2 * v25) = *(v14 + 2 * v25) - (v27 >> v23);
        ++v25;
      }

      while (v25 < v26);
    }
  }

  return result;
}

{
  if (a5 < 1)
  {
    return result;
  }

  v6 = a6 - 8;
  if (a6 < 8)
  {
    v6 = 0;
  }

  v7 = v6 + 3;
  v8 = v7 & 0xFFFFFFFC;
  v9 = 16 * (v7 >> 2) + 16;
  v10 = a3 + v9;
  v11 = a6 - v8 - 4;
  v12 = a4 + v9;
  if (a6 >= 5)
  {
    LODWORD(v13) = v11;
  }

  else
  {
    LODWORD(v13) = a6;
  }

  if (a6 >= 5)
  {
    v14 = v10;
  }

  else
  {
    v12 = a4;
    v14 = a3;
  }

  v15 = v13 + a5;
  v16 = *(result + 1);
  if (v16 == 2)
  {
    v17 = *(result + 8);
    v18 = *v17;
    if (*v17 == v17[1])
    {
      v19 = *a2;
      v20 = a2[1];
      if (*(result + 29))
      {
        v21 = *(result + 2);
        v22 = *(result + 6);
        v23 = **(result + 16);
        v13 = v13;
        if (v23 == 1)
        {
          do
          {
            result = *(v20 + 4 * v13);
            *(v12 + 4 * v13) = *(v14 + 4 * v13) - ((*(v19 + 4 * v13) + v22 + result) >> v21);
            ++v13;
          }

          while (v13 < v15);
        }

        else if (v23 == -1)
        {
          do
          {
            result = *(v20 + 4 * v13);
            *(v12 + 4 * v13) = *(v14 + 4 * v13) - ((v22 - (*(v19 + 4 * v13) + result)) >> v21);
            ++v13;
          }

          while (v13 < v15);
        }

        else
        {
          do
          {
            result = ((v22 + (*(v20 + 4 * v13) + *(v19 + 4 * v13)) * v23) >> v21);
            *(v12 + 4 * v13) = *(v14 + 4 * v13) - result;
            ++v13;
          }

          while (v13 < v15);
        }
      }

      else
      {
        v40 = -v18;
        v41 = v13;
        do
        {
          *(v12 + 4 * v41) = *(v14 + 4 * v41) + (v40 * (*(v19 + 4 * v41) + *(v20 + 4 * v41)));
          ++v41;
        }

        while (v41 < v15);
      }

      return result;
    }

    if (*(result + 29))
    {
      goto LABEL_25;
    }

LABEL_31:
    v35 = 0;
    v36 = v13;
    do
    {
      v37 = a2[v35];
      v38 = -*(*(result + 8) + 4 * v35);
      v39 = v36;
      do
      {
        *(v12 + 4 * v39) = *(v14 + 4 * v39) + (v38 * *(v37 + 4 * v39));
        ++v39;
      }

      while (v39 < v15);
      ++v35;
      v14 = v12;
    }

    while (v35 < *(result + 1));
    return result;
  }

  if ((*(result + 29) & 1) == 0)
  {
    if (!*(result + 1))
    {
      return result;
    }

    goto LABEL_31;
  }

LABEL_25:
  v24 = *(result + 2);
  v25 = *(result + 6);
  v26 = v13;
  v27 = v15;
  do
  {
    v28 = v25;
    if (v16)
    {
      v29 = *(result + 16);
      v30 = v16;
      v31 = a2;
      v28 = v25;
      do
      {
        v33 = *v29++;
        v32 = v33;
        v34 = *v31++;
        v28 += *(v34 + 4 * v26) * v32;
        --v30;
      }

      while (v30);
    }

    *(v12 + 4 * v26) = *(v14 + 4 * v26) - (v28 >> v24);
    ++v26;
  }

  while (v26 < v27);
  return result;
}

void kd_synthesis::kd_synthesis(kd_synthesis *this)
{
  v1 = 0;
  *this = &unk_1EF4D3518;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  for (i = 400; i != 640; i += 40)
  {
    v3 = v1;
    v4 = 32;
    do
    {
      v5 = this + v3;
      *(v5 + 100) = 0;
      *(v5 + 203) = 0;
      *(v5 + 51) = 0;
      v3 += 16;
      v4 -= 16;
    }

    while (v4);
    v1 += 40;
  }

  *(this + 13) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 33) = 0;
}

uint64_t _cg_jpeg_fdct_islow(uint64_t result, uint64_t a2, unsigned int a3)
{
  for (i = 0; i != 64; i += 8)
  {
    v4 = (result + 4 * i);
    v5 = (*(a2 + i) + a3);
    v6 = *v5;
    v7 = v5[7];
    v8 = v5[1];
    v9 = v5[6];
    v10 = (v9 + v8);
    v11 = v5[2];
    v12 = v5[5];
    v13 = (v12 + v11);
    v14 = v5[3];
    LODWORD(v5) = v5[4];
    v15 = v5 + v14 + v7 + v6;
    v16 = v7 + v6 - (v5 + v14);
    v17 = v13 + v10;
    v18 = v10 - v13;
    v19 = v6 - v7;
    v20 = v8 - v9;
    v21 = v11 - v12;
    LODWORD(v5) = v14 - v5;
    v22 = 4433 * (v16 + v18) + 1024;
    v23 = (v22 + 6270 * v16) >> 11;
    v24 = (v22 + 0x7FFFFFFC4DFLL * v18) >> 11;
    v25 = 9633 * (v5 + v20 + v21 + v19) + 1024;
    v26 = v25 - 3196 * (v21 + v19);
    v27 = v25 - 16069 * (v5 + v20);
    *v4 = 4 * (v15 + v17) - 4096;
    v4[1] = (12299 * v19 - 7373 * (v5 + v19) + v26) >> 11;
    v4[2] = v23;
    v4[3] = (25172 * v20 - 20995 * (v21 + v20) + v27) >> 11;
    v4[4] = 4 * (v15 - v17);
    v4[5] = (16819 * v21 - 20995 * (v21 + v20) + v26) >> 11;
    v4[6] = v24;
    v4[7] = (2446 * v5 - 7373 * (v5 + v19) + v27) >> 11;
  }

  v28 = 0;
  do
  {
    v29 = (result + v28);
    v30 = *(result + v28);
    v31 = *(result + v28 + 224);
    v32 = v31 + v30;
    v33 = *(result + v28 + 32);
    v34 = *(result + v28 + 192);
    v35 = *(result + v28 + 64);
    v36 = *(result + v28 + 160);
    v37 = *(result + v28 + 96);
    v38 = *(result + v28 + 128);
    v39 = v32 + v38 + v37 + 2;
    v40 = v32 - (v38 + v37);
    v41 = v36 + v35 + (v34 + v33);
    v42 = v34 + v33 - (v36 + v35);
    v43 = v30 - v31;
    v44 = v33 - v34;
    v45 = v35 - v36;
    v46 = v37 - v38;
    *v29 = (v39 + v41) >> 2;
    v29[32] = (v39 - v41) >> 2;
    v47 = 4433 * (v40 + v42) + 0x4000;
    v29[16] = (v47 + 6270 * v40) >> 15;
    v29[48] = (v47 + 0x7FFFFFFFC4DFLL * v42) >> 15;
    v48 = v45 + v43;
    v49 = v46 + v44;
    v50 = 9633 * (v49 + v48) + 0x4000;
    v51 = v50 - 3196 * v48;
    v52 = v50 - 16069 * v49;
    v53 = -7373 * (v46 + v43);
    v54 = -20995 * (v45 + v44);
    v29[8] = (v53 + 12299 * v43 + v51) >> 15;
    v29[24] = (v54 + 25172 * v44 + v52) >> 15;
    v29[40] = (v54 + 16819 * v45 + v51) >> 15;
    v29[56] = (v53 + 2446 * v46 + v52) >> 15;
    v28 += 4;
  }

  while (v28 != 32);
  return result;
}

_OWORD *jpeg_fdct_7x7(_OWORD *result, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  result[14] = 0u;
  result[15] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  result[8] = 0u;
  result[9] = 0u;
  result[6] = 0u;
  result[7] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  result[2] = 0u;
  result[3] = 0u;
  *result = 0u;
  result[1] = 0u;
  do
  {
    v4 = &result[v3];
    v5 = (*(a2 + v3 * 4) + a3);
    v6 = *v5;
    v7 = v5[6];
    v8 = v7 + v6;
    v9 = v5[1];
    v10 = v5[5];
    v11 = (v10 + v9);
    v12 = v5[2];
    v13 = v5[4];
    v14 = v13 + v12;
    v15 = v5[3];
    v16 = v6 - v7;
    v17 = v9 - v10;
    LODWORD(v5) = v12 - v13;
    v18 = v13 + v12 + v8;
    v19 = 4 * (v15 + v11 + v18) - 3584;
    v20 = v18 - 4 * v15;
    v21 = v8 - (v13 + v12);
    v22 = v11 - v14;
    v23 = (7542 * v21 + 2578 * (v11 - v14) + 2896 * v20 + 1024) >> 11;
    v24 = 7223 * (v8 - v11) + 1024;
    v25 = (v24 + 2578 * v22 + 0x7FFFFFFE95FLL * (v11 - 2 * v15)) >> 11;
    v4[6] = (v24 - 7542 * v21 + 2896 * v20) >> 11;
    LODWORD(v24) = v17 + v16;
    v26 = 1395 * (v16 - v17);
    v27 = v5 + v17;
    v28 = 5027 * (v5 + v16) + 1024;
    *v4 = v19;
    v4[1] = (v28 - v26 + 7663 * v24) >> 11;
    v4[2] = v23;
    v4[3] = (v26 - 11295 * v27 + 7663 * v24 + 1024) >> 11;
    v4[4] = v25;
    v4[5] = (v28 + 15326 * v5 - 11295 * v27) >> 11;
    v3 += 2;
  }

  while (v3 != 14);
  v29 = 0;
  do
  {
    v30 = (result + v29);
    v31 = *(result + v29);
    v32 = *(result + v29 + 192);
    v33 = v32 + v31;
    v34 = *(result + v29 + 32);
    v35 = *(result + v29 + 160);
    v36 = v35 + v34;
    v37 = *(result + v29 + 64);
    v38 = *(result + v29 + 128);
    v39 = v38 + v37;
    v40 = v38 + v37;
    v41 = *(result + v29 + 96);
    v42 = v31 - v32;
    v43 = v34 - v35;
    v44 = v37 - v38;
    *v30 = (10700 * (v41 + v36 + v40 + v33) + 0x4000) >> 15;
    v45 = 3783 * (v40 + v33 - 4 * v41);
    v46 = 9850 * (v33 - v39);
    v47 = 3367 * (v36 - v39);
    v30[16] = (v47 + v46 + v45 + 0x4000) >> 15;
    v48 = 9434 * (v33 - v36) + 0x4000;
    v30[32] = (v48 + v47 + 0x7FFFFFFFE272 * (v36 - 2 * v41)) >> 15;
    v30[48] = (v48 - v46 + v45) >> 15;
    v49 = 10009 * (v43 + v42);
    v50 = 1822 * (v42 - v43);
    v51 = 6565 * (v44 + v42) + 0x4000;
    v30[8] = (v51 - v50 + v49) >> 15;
    v30[24] = (-14752 * (v44 + v43) + v50 + v49 + 0x4000) >> 15;
    v30[40] = (v51 + 20017 * v44 - 14752 * (v44 + v43)) >> 15;
    v29 += 4;
  }

  while (v29 != 28);
  return result;
}

_OWORD *jpeg_fdct_6x6(_OWORD *result, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  result[14] = 0u;
  result[15] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  result[8] = 0u;
  result[9] = 0u;
  result[6] = 0u;
  result[7] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  result[2] = 0u;
  result[3] = 0u;
  v4 = a3;
  *result = 0u;
  result[1] = 0u;
  do
  {
    v5 = &result[v3];
    v6 = (*(a2 + v3 * 4) + v4);
    v7 = *v6;
    v8 = v6[5];
    v9 = v6[1];
    v10 = v6[4];
    v11 = v10 + v9;
    v12 = v6[2];
    LODWORD(v6) = v6[3];
    v13 = v6 + v12 + v8 + v7;
    v14 = v8 + v7 - (v6 + v12);
    v15 = v7 - v8;
    v16 = v9 - v10;
    LODWORD(v6) = v12 - v6;
    v17 = 4 * (v13 + v10 + v9) - 3072;
    v18 = (5793 * (v13 - 2 * v11) + 1024) >> 11;
    v19 = (2998 * (v6 + v15) + 1024) >> 11;
    *v5 = v17;
    v5[1] = v19 + 4 * (v16 + v15);
    v5[2] = (10033 * v14 + 1024) >> 11;
    v5[3] = 4 * (v15 - (v16 + v6));
    v5[4] = v18;
    v5[5] = v19 + 4 * (v6 - v16);
    v3 += 2;
  }

  while (v3 != 12);
  v20 = 0;
  do
  {
    v21 = (result + v20);
    v22 = *(result + v20);
    v23 = *(result + v20 + 160);
    v24 = *(result + v20 + 32);
    v25 = *(result + v20 + 128);
    v26 = v25 + v24;
    v27 = *(result + v20 + 64);
    v28 = *(result + v20 + 96);
    v29 = v28 + v27 + (v23 + v22);
    v30 = v23 + v22 - (v28 + v27);
    v31 = v22 - v23;
    v32 = v24 - v25;
    v33 = v27 - v28;
    *v21 = (14564 * (v29 + v26) + 0x4000) >> 15;
    v21[16] = (17837 * v30 + 0x4000) >> 15;
    v21[32] = (10298 * (v29 - 2 * v26) + 0x4000) >> 15;
    v34 = 5331 * (v33 + v31) + 0x4000;
    v21[8] = (v34 + 14564 * (v32 + v31)) >> 15;
    v21[24] = (14564 * (v31 - (v32 + v33)) + 0x4000) >> 15;
    v21[40] = (v34 + 14564 * (v33 - v32)) >> 15;
    v20 += 4;
  }

  while (v20 != 24);
  return result;
}

_OWORD *jpeg_fdct_5x5(_OWORD *result, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  result[14] = 0u;
  result[15] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  result[8] = 0u;
  result[9] = 0u;
  result[6] = 0u;
  result[7] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  v4 = a3;
  result[2] = 0u;
  result[3] = 0u;
  *result = 0u;
  result[1] = 0u;
  do
  {
    v5 = &result[v3];
    v6 = (*(a2 + v3 * 4) + v4);
    v7 = *v6;
    v8 = v6[4];
    v9 = v8 + v7;
    v10 = v6[1];
    v11 = v6[3];
    v12 = v11 + v10;
    LODWORD(v6) = v6[2];
    v13 = v7 - v8;
    v14 = v10 - v11;
    LODWORD(v10) = 8 * (v11 + v10 + v9 + v6) - 5120;
    LODWORD(v6) = v12 + v9 - 4 * v6;
    v15 = 6476 * (v9 - v12) + 512;
    v16 = (v15 + 2896 * v6) >> 10;
    v5[4] = (v15 - 2896 * v6) >> 10;
    v17 = 6810 * (v14 + v13) + 512;
    *v5 = v10;
    v5[1] = (v17 + 4209 * v13) >> 10;
    v5[2] = v16;
    v5[3] = (v17 + 0x3FFFFFFBA5CLL * v14) >> 10;
    v3 += 2;
  }

  while (v3 != 10);
  v18 = 0;
  do
  {
    v19 = (result + v18);
    v20 = *(result + v18);
    v21 = *(result + v18 + 128);
    v22 = *(result + v18 + 32);
    v23 = *(result + v18 + 96);
    v24 = v23 + v22;
    v25 = *(result + v18 + 64);
    v26 = v24 + v21 + v20;
    v27 = v21 + v20 - v24;
    v28 = v20 - v21;
    v29 = v22 - v23;
    *v19 = (10486 * (v26 + v25) + 0x4000) >> 15;
    v30 = 3707 * (v26 - 4 * v25);
    v31 = 8290 * v27 + 0x4000;
    v19[16] = (v31 + v30) >> 15;
    v19[32] = (v31 - v30) >> 15;
    v32 = 8716 * (v29 + v28) + 0x4000;
    v19[8] = (v32 + 5387 * v28) >> 15;
    v19[24] = (v32 + 0x7FFFFFFFA6DCLL * v29) >> 15;
    v18 += 4;
  }

  while (v18 != 20);
  return result;
}

int32x4_t jpeg_fdct_4x4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v4 = a3;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  do
  {
    v5 = (a1 + 4 * v3);
    v6 = (*(a2 + v3) + v4);
    v7 = *v6;
    v8 = v6[3];
    v9 = v8 + v7;
    v10 = v6[1];
    v11 = v6[2];
    v12 = v11 + v10;
    v13 = v7 - v8;
    v14 = v10 - v11;
    v15 = 4433 * (v14 + v13) + 256;
    *v5 = 16 * (v12 + v9) - 0x2000;
    v5[1] = (v15 + 6270 * v13) >> 9;
    v5[2] = 16 * (v9 - v12);
    v5[3] = (v15 + 0x1FFFFFFC4DFLL * v14) >> 9;
    v3 += 8;
  }

  while (v3 != 32);
  v16 = *(a1 + 96);
  v17 = vaddq_s32(v16, *a1);
  v18 = vdupq_n_s64(2uLL);
  v19 = vaddw_s32(v18, *v17.i8);
  v20 = vaddw_high_s32(v18, v17);
  v21 = *(a1 + 32);
  v22 = *(a1 + 64);
  v23 = vaddq_s32(v22, v21);
  v24 = vsubq_s32(*a1, v16);
  v25 = vsubq_s32(v21, v22);
  *&v26 = v25.i32[2];
  *(&v26 + 1) = v25.i32[3];
  v27 = v26;
  *&v26 = v25.i32[0];
  *(&v26 + 1) = v25.i32[1];
  *a1 = vshrn_high_n_s64(vshrn_n_s64(vaddw_s32(v19, *v23.i8), 2uLL), vaddw_high_s32(v20, v23), 2uLL);
  *(a1 + 64) = vshrn_high_n_s64(vshrn_n_s64(vsubw_s32(v19, *v23.i8), 2uLL), vsubw_high_s32(v20, v23), 2uLL);
  v28 = vaddl_s32(*v25.i8, *v24.i8);
  v29 = vaddl_high_s32(v25, v24);
  v29.i64[0] *= 4433;
  v29.i64[1] *= 4433;
  v28.i64[0] *= 4433;
  v28.i64[1] *= 4433;
  v30 = vdupq_n_s64(0x4000uLL);
  v31 = vaddq_s64(v28, v30);
  v32 = vdupq_n_s32(0x187Eu);
  v33 = vaddq_s64(v29, v30);
  v30.i64[0] = 0x7FFFFFFFC4DFLL * v27;
  v30.i64[1] = 0x7FFFFFFFC4DFLL * *(&v27 + 1);
  v16.i64[0] = 0x7FFFFFFFC4DFLL * v26;
  v16.i64[1] = 0x7FFFFFFFC4DFLL * *(&v26 + 1);
  *(a1 + 32) = vshrn_high_n_s64(vshrn_n_s64(vmlal_s32(v31, *v24.i8, *v32.i8), 0xFuLL), vmlal_high_s32(v33, v24, v32), 0xFuLL);
  result = vshrn_high_n_s64(vshrn_n_s64(vaddq_s64(v31, v16), 0xFuLL), vaddq_s64(v33, v30), 0xFuLL);
  *(a1 + 96) = result;
  return result;
}

_OWORD *jpeg_fdct_3x3(_OWORD *result, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  result[14] = 0u;
  result[15] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  result[8] = 0u;
  result[9] = 0u;
  result[6] = 0u;
  result[7] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  result[2] = 0u;
  result[3] = 0u;
  *result = 0u;
  result[1] = 0u;
  do
  {
    v4 = &result[v3];
    v5 = (*(a2 + v3 * 4) + a3);
    v6 = *v5;
    v7 = v5[2];
    LODWORD(v5) = v5[1];
    v4[2] = (5793 * (v7 + v6 - 2 * v5) + 256) >> 9;
    *v4 = 16 * (v7 + v6 + v5) - 6144;
    v4[1] = (10033 * (v6 - v7) + 256) >> 9;
    v3 += 2;
  }

  while (v3 != 6);
  v8 = 0;
  do
  {
    v9 = (result + v8);
    v10 = *(result + v8);
    v11 = *(result + v8 + 64);
    v12 = v11 + v10;
    v13 = *(result + v8 + 32);
    *v9 = (14564 * (v13 + v12) + 0x4000) >> 15;
    v9[16] = (10298 * (v12 - 2 * v13) + 0x4000) >> 15;
    v9[8] = (17837 * (v10 - v11) + 0x4000) >> 15;
    v8 += 4;
  }

  while (v8 != 12);
  return result;
}

double jpeg_fdct_2x2(uint64_t a1, void *a2, unsigned int a3)
{
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = (*a2 + a3);
  v5 = *v4;
  LODWORD(v4) = v4[1];
  v6 = v4 + v5;
  LODWORD(v4) = v5 - v4;
  v7 = (a2[1] + a3);
  v8 = *v7;
  LODWORD(v7) = v7[1];
  v9 = v7 + v8;
  LODWORD(v7) = v8 - v7;
  *a1 = 16 * (v9 + v6) - 0x2000;
  *(a1 + 4) = 16 * (v7 + v4);
  *(a1 + 32) = 16 * (v6 - v9);
  *(a1 + 36) = 16 * (v4 - v7);
  return result;
}

double jpeg_fdct_1x1(_OWORD *a1, void *a2, unsigned int a3)
{
  result = 0.0;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  *a1 = (*(*a2 + a3) << 6) - 0x2000;
  return result;
}

_DWORD *jpeg_fdct_9x9(_DWORD *result, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v57 = *MEMORY[0x1E69E9840];
  memset(v56, 0, sizeof(v56));
  v4 = result;
  while (1)
  {
    v5 = (*(a2 + 8 * v3) + a3);
    v6 = *v5;
    v7 = v5[8];
    v8 = (v7 + v6);
    v9 = v5[1];
    v10 = v5[7];
    v11 = (v10 + v9);
    v12 = v5[2];
    v13 = v5[6];
    v14 = (v13 + v12);
    v15 = v5[3];
    v16 = v5[5];
    v17 = (v16 + v15);
    v18 = v5[4];
    v19 = v6 - v7;
    LODWORD(v5) = v9 - v10;
    v20 = v12 - v13;
    v21 = v14 + v8 + v17;
    v22 = 2 * (v21 + v18 + v11) - 2304;
    v23 = (5793 * (v21 - 2 * (v18 + v11)) + 2048) >> 12;
    LODWORD(v11) = v11 - 2 * v18;
    v24 = 10887 * (v8 - v14) + 2048;
    v25 = (v24 + 2012 * (v17 - v8) - 5793 * v11) >> 12;
    v4[2] = (v24 + 8875 * (v14 - v17) + 5793 * v11) >> 12;
    v4[3] = (10033 * (v19 - (v20 + v15 - v16)) + 2048) >> 12;
    v26 = 7447 * (v20 + v19);
    v27 = 3962 * (v15 - v16 + v19);
    *v4 = v22;
    v4[1] = (v26 + 10033 * v5 + v27 + 2048) >> 12;
    v28 = v20 - (v15 - v16);
    v4[4] = v25;
    v4[5] = (v26 - 11409 * v28 - 10033 * v5 + 2048) >> 12;
    v4[6] = v23;
    v4[7] = (v27 - 10033 * v5 + 11409 * v28 + 2048) >> 12;
    if (v3 != 7)
    {
      break;
    }

    v4 = v56;
LABEL_6:
    ++v3;
  }

  if (v3 != 8)
  {
    v4 += 8;
    goto LABEL_6;
  }

  v29 = 0;
  do
  {
    v30 = &result[v29];
    v31 = result[v29];
    v32 = *(v56 + v29 * 4);
    v33 = v32 + v31;
    v34 = result[v29 + 8];
    v35 = result[v29 + 56];
    v36 = v35 + v34;
    v37 = result[v29 + 16];
    v38 = result[v29 + 48];
    v39 = v38 + v37;
    v40 = result[v29 + 24];
    v41 = result[v29 + 40];
    v42 = v41 + v40;
    v43 = v31 - v32;
    v44 = v37 - v38;
    v45 = v40 - v41;
    v46 = result[v29 + 32];
    v47 = v34 - v35;
    v48 = v39 + v33 + v42;
    v49 = result;
    *v30 = (12945 * (v48 + v46 + v36) + 0x4000) >> 15;
    v30[48] = (9154 * (v48 - 2 * (v46 + v36)) + 0x4000) >> 15;
    v50 = 9154 * (v36 - 2 * v46);
    v51 = 17203 * (v33 - v39) + 0x4000;
    v30[16] = (v51 + 14024 * (v39 - v42) + v50) >> 15;
    v30[32] = (v51 + 3179 * (v42 - v33) - v50) >> 15;
    v30[24] = (15855 * (v43 - (v44 + v45)) + 0x4000) >> 15;
    v52 = 11768 * (v44 + v43);
    v53 = 6262 * (v45 + v43);
    v30[8] = (v52 + 15855 * v47 + v53 + 0x4000) >> 15;
    v54 = 18029 * (v44 - v45);
    v30[40] = (v52 - 15855 * v47 - v54 + 0x4000) >> 15;
    v55 = v53 - 15855 * v47;
    result = v49;
    v30[56] = (v55 + v54 + 0x4000) >> 15;
    ++v29;
  }

  while ((v29 * 4) != 32);
  return result;
}

uint64_t jpeg_fdct_10x10(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v58 = *MEMORY[0x1E69E9840];
  memset(v57, 0, sizeof(v57));
  v4 = a1;
  while (1)
  {
    v5 = (*(a2 + 8 * v3) + a3);
    v6 = *v5;
    v7 = v5[9];
    v8 = v5[1];
    v9 = v5[8];
    v10 = (v9 + v8);
    v11 = v5[3];
    v12 = v5[6];
    v13 = (v12 + v11);
    v14 = v5[4];
    v15 = v5[5];
    v16 = v15 + v14 + v7 + v6;
    v17 = v7 + v6 - (v15 + v14);
    v18 = v13 + v10;
    v19 = v10 - v13;
    v20 = v6 - v7;
    v21 = v5[2];
    v22 = v5[7];
    v23 = v8 - v9;
    LODWORD(v8) = v22 + v21;
    v24 = v21 - v22;
    v25 = v11 - v12;
    LODWORD(v11) = v8 + v16 + v18;
    v26 = (0xFFFFFFFF204 * (v18 - (2 * v8)) + 9373 * (v16 - 2 * v8) + 2048) >> 12;
    v27 = 6810 * (v17 + v19) + 2048;
    LODWORD(v8) = v14 - v15 + v20;
    v4[4] = v26;
    v4[5] = 2 * (v8 - (v23 - v25 + v24));
    *v4 = 2 * v11 - 2560;
    v4[1] = (10323 * v23 + 11443 * v20 + (v24 << 13) + 5260 * v25 + 1812 * (v14 - v15) + 2048) >> 12;
    v28 = 2531 * (v8 + v23 - v25) - (v24 << 13) + ((v23 - v25) << 12);
    v29 = -4815 * (v25 + v23) + 7791 * (v20 - (v14 - v15)) + 2048;
    v4[2] = (v27 + 4209 * v17) >> 12;
    v4[3] = (v29 + v28) >> 12;
    v4[6] = (v27 + 0xFFFFFFFBA5CLL * v19) >> 12;
    v4[7] = (v29 - v28) >> 12;
    if (v3 != 7)
    {
      break;
    }

    v4 = v57;
LABEL_6:
    ++v3;
  }

  if (v3 != 9)
  {
    v4 += 8;
    goto LABEL_6;
  }

  v30 = 0;
  do
  {
    v31 = &a1[v30];
    v32 = a1[v30];
    v33 = *(&v57[2] + v30 * 4);
    v34 = a1[v30 + 8];
    v35 = *(v57 + v30 * 4);
    v36 = a1[v30 + 24];
    v37 = a1[v30 + 48];
    v38 = a1[v30 + 32];
    v39 = a1[v30 + 40];
    v40 = v39 + v38 + (v33 + v32);
    v41 = v33 + v32 - (v39 + v38);
    v42 = v37 + v36 + (v35 + v34);
    v43 = v35 + v34 - (v37 + v36);
    v44 = a1[v30 + 16];
    v45 = v32 - v33;
    v46 = a1[v30 + 56];
    v47 = v34 - v35;
    v48 = v46 + v44;
    v49 = v44 - v46;
    *v31 = (10486 * (v42 + v48 + v40) + 0x4000) >> 15;
    v31[32] = (11997 * (v40 - 2 * v48) + 0x7FFFFFFFEE1ALL * (v42 - 2 * v48) + 0x4000) >> 15;
    v50 = 8716 * (v41 + v43) + 0x4000;
    v31[16] = (v50 + 5387 * v41) >> 15;
    v31[48] = (v50 + 0x7FFFFFFFA6DCLL * v43) >> 15;
    v51 = v38 - v39 + v45;
    v52 = v47 - (v36 - v37);
    v31[40] = (10486 * (v51 - (v52 + v49)) + 0x4000) >> 15;
    v31[8] = (13213 * v47 + 14647 * v45 + 10486 * v49 + 6732 * (v36 - v37) + 2320 * (v38 - v39) + 0x4000) >> 15;
    result = v45 - (v38 - v39);
    v54 = 5243 * v52 - 10486 * v49 + 3240 * (v51 + v52);
    v55 = -6163 * (v36 - v37 + v47) + 9973 * result + 0x4000;
    v31[24] = (v55 + v54) >> 15;
    v31[56] = (v55 - v54) >> 15;
    ++v30;
  }

  while ((v30 * 4) != 32);
  return result;
}

uint64_t jpeg_fdct_11x11(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v74 = *MEMORY[0x1E69E9840];
  memset(v73, 0, sizeof(v73));
  v4 = a1;
  while (1)
  {
    v5 = (*(a2 + 8 * v3) + a3);
    v6 = *v5;
    v7 = v5[10];
    v8 = (v7 + v6);
    v9 = v5[2];
    v10 = v5[8];
    v11 = (v10 + v9);
    v12 = v5[3];
    v13 = v5[7];
    v14 = (v13 + v12);
    v15 = v5[4];
    v16 = v5[6];
    v17 = (v16 + v15);
    v18 = v5[5];
    v19 = v8 - 2 * v5[5];
    v20 = v11 - 2 * v5[5];
    v21 = v14 - 2 * v5[5];
    v22 = v17 - 2 * v5[5];
    v23 = 1649 * (v20 + v22) + 11116 * (v19 + v21);
    v24 = v5[1];
    v25 = v5[9];
    v26 = v6 - v7;
    v27 = (v25 + v24);
    v28 = v24 - v25;
    LODWORD(v7) = v9 - v10;
    v29 = v12 - v13;
    v30 = v27 - 2 * v18;
    LODWORD(v11) = v27 + v8 + v11 + v14 + v18;
    v31 = 0xFFFFFFFDF6ALL * v21;
    LODWORD(v21) = v30 - v21;
    v32 = 9746 * (v19 - v30) + 2048;
    v33 = v32 - v30 + (v30 << 9) + 0xFFFFFFFD494 * v20 + 4813 * v22 + 7587 * v21;
    v34 = 10538 * (v28 + v26) + 2048;
    *v4 = 2 * (v17 + v11) - 2816;
    v4[1] = (v34 + 0xFFFFFFFC8F6 * v26 + 8756 * (v7 + v26) + 6263 * (v29 + v26) + 3264 * (v15 - v16)) >> 12;
    v4[2] = (v31 + 7587 * v21 + 0xFFFFFFFD37DLL * v22 + v23 + 2048) >> 12;
    v4[3] = (v34 + 10456 * v28 - 6263 * (v7 + v28) - 11467 * (v29 + v28) + 0xFFFFFFFDDCCLL * (v15 - v16)) >> 12;
    v4[4] = v33 >> 12;
    v4[5] = (-16294 * v7 - 6263 * (v7 + v28) + 8756 * (v7 + v26) + 3264 * (v29 + v7) + 11467 * (v15 - v16) + 2048) >> 12;
    v4[6] = (v32 + 0xFFFFFFFCC25 * v19 + 0xFFFFFFFE6C3 * v20 + v23) >> 12;
    v4[7] = (10695 * v29 + 3264 * (v29 + v7) - 11467 * (v29 + v28) + 6263 * (v29 + v26) + 0xFFFFFFFD6D6 * (v15 - v16) + 2048) >> 12;
    if (v3 != 7)
    {
      break;
    }

    v4 = v73;
LABEL_6:
    ++v3;
  }

  if (v3 != 10)
  {
    v4 += 8;
    goto LABEL_6;
  }

  v35 = 0;
  do
  {
    v36 = &a1[v35];
    v37 = a1[v35];
    v38 = *(&v73[4] + v35 * 4);
    v39 = v38 + v37;
    v40 = a1[v35 + 8];
    v41 = *(&v73[2] + v35 * 4);
    v42 = v41 + v40;
    v43 = a1[v35 + 16];
    v44 = *(v73 + v35 * 4);
    v45 = v44 + v43;
    v46 = a1[v35 + 24];
    v47 = a1[v35 + 56];
    v48 = a1[v35 + 32];
    v49 = v37 - v38;
    v50 = a1[v35 + 48];
    v51 = v40 - v41;
    v52 = v43 - v44;
    v53 = a1[v35 + 40];
    v54 = 8666 * (v42 + v39 + v44 + v43 + v47 + v46 + v50 + v48 + v53) + 0x4000;
    v55 = v39 - 2 * v53;
    v56 = v42 - 2 * v53;
    v57 = 10310 * (v55 - v56) + 0x4000;
    *v36 = v54 >> 15;
    v58 = v45 - 2 * v53;
    v59 = v57 + 540 * v56 + 0x7FFFFFFFD211 * v58;
    v60 = v47 + v46 - 2 * v53;
    v61 = v50 + v48 - 2 * v53;
    v62 = v57 + 0x7FFFFFFFC925 * v55 + 0x7FFFFFFFE54DLL * v58;
    v63 = 1744 * (v58 + v61) + 11759 * (v55 + v60);
    v64 = 8026 * (v56 - v60);
    v36[16] = (v64 + 0x7FFFFFFFDD87 * v60 + 0x7FFFFFFFD0EALL * v61 + v63 + 0x4000) >> 15;
    v36[32] = (v59 + 5091 * v61 + v64) >> 15;
    v36[48] = (v62 + v63) >> 15;
    v65 = 9262 * (v52 + v49);
    v66 = 6626 * (v46 - v47 + v49);
    v67 = 11148 * (v51 + v49) + 0x4000;
    v68 = -6626 * (v52 + v51);
    v36[8] = (v67 + 0x7FFFFFFFC5C7 * v49 + v65 + v66 + 3453 * (v48 - v50)) >> 15;
    v69 = 3453 * (v46 - v47 + v52);
    result = 0x7FFFFFFFD474;
    v36[24] = (v67 + 11061 * v51 + v68 - 12131 * (v46 - v47 + v51) + 0x7FFFFFFFDBD2 * (v48 - v50)) >> 15;
    v36[40] = (v68 - 17237 * v52 + v65 + v69 + 12131 * (v48 - v50) + 0x4000) >> 15;
    v36[56] = (v69 + 11314 * (v46 - v47) + -12131 * (v46 - v47 + v51) + v66 + 0x7FFFFFFFD474 * (v48 - v50) + 0x4000) >> 15;
    ++v35;
  }

  while ((v35 * 4) != 32);
  return result;
}

uint64_t jpeg_fdct_12x12(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v74 = *MEMORY[0x1E69E9840];
  memset(v73, 0, sizeof(v73));
  v4 = a1;
  while (1)
  {
    v5 = (*(a2 + 8 * v3) + a3);
    v6 = *v5;
    v7 = v5[11];
    v8 = v5[1];
    v9 = v5[2];
    v10 = v5[9];
    v11 = (v10 + v9);
    v12 = v5[3];
    v13 = v5[8];
    v14 = (v13 + v12);
    v15 = v5[5];
    v16 = v5[6];
    v17 = v16 + v15 + v7 + v6;
    v18 = v7 + v6 - (v16 + v15);
    v19 = v14 + v11;
    v20 = v11 - v14;
    v21 = v5[10];
    v22 = v6 - v7;
    v23 = (v21 + v8);
    v24 = v8 - v21;
    v25 = v9 - v10;
    v26 = v5[4];
    LODWORD(v5) = v5[7];
    LODWORD(v6) = v12 - v13;
    v27 = (v5 + v26);
    v28 = v26 - v5;
    v29 = v15 - v16;
    v30 = v23 - v27;
    LODWORD(v9) = v19 + v23 + v27 + v17 - 1536;
    v31 = v18 - (v23 - v27 + v20);
    LODWORD(v27) = v17 - v19;
    v32 = v30 - v20 + 11190 * (v18 + v20);
    v33 = 6270 * v24 + 4433 * (v28 + v24);
    v34 = -15137 * v28 + 4433 * (v28 + v24);
    v35 = 9191 * (v25 + v22) + 4096;
    *v4 = v9;
    v4[1] = (v35 + 0x1FFFFFFFED6ALL * v22 + 7053 * (v6 + v22) + v33 + 1512 * v29) >> 13;
    v4[2] = (v32 + 4096) >> 13;
    v4[3] = (v34 + 10703 * (v22 - v6) + 0x1FFFFFFFEEAFLL * (v29 + v25) + 4096) >> 13;
    v4[4] = (10033 * v27 + 4096) >> 13;
    v4[5] = (v35 - 19165 * v25 - 1512 * (v6 + v25) - v34 + 7053 * v29) >> 13;
    v4[6] = v31;
    v4[7] = (5946 * v6 + 7053 * (v6 + v22) - 1512 * (v6 + v25) - v33 + 0x1FFFFFFFDC19 * v29 + 4096) >> 13;
    if (v3 != 7)
    {
      break;
    }

    v4 = v73;
LABEL_6:
    ++v3;
  }

  if (v3 != 11)
  {
    v4 += 8;
    goto LABEL_6;
  }

  v36 = 0;
  do
  {
    v37 = &a1[v36];
    v38 = a1[v36];
    v39 = *(&v73[6] + v36 * 4);
    v40 = a1[v36 + 16];
    v41 = *(&v73[2] + v36 * 4);
    v42 = a1[v36 + 24];
    v43 = *(v73 + v36 * 4);
    v44 = a1[v36 + 40];
    v45 = a1[v36 + 48];
    v46 = v45 + v44 + (v39 + v38);
    v47 = v39 + v38 - (v45 + v44);
    v48 = v43 + v42 + (v41 + v40);
    v49 = v41 + v40 - (v43 + v42);
    v50 = a1[v36 + 8];
    v51 = *(&v73[4] + v36 * 4);
    v52 = v38 - v39;
    v53 = v51 + v50;
    v54 = v50 - v51;
    v55 = a1[v36 + 32];
    v56 = v40 - v41;
    v57 = a1[v36 + 56];
    v58 = v57 + v55;
    v59 = v55 - v57;
    v60 = v44 - v45;
    v61 = v53 - v58;
    *v37 = (7282 * (v48 + v53 + v58 + v46) + 0x2000) >> 14;
    v37[48] = (7282 * (v47 - (v61 + v49)) + 0x2000) >> 14;
    v62 = v46 - v48;
    v63 = v52;
    v37[32] = (8918 * v62 + 0x2000) >> 14;
    v64 = v42 - v43;
    v37[16] = (9947 * (v47 + v49) + 7282 * (v61 - v49) + 0x2000) >> 14;
    v65 = 3941 * (v59 + v54);
    v66 = v65 + 5573 * v54;
    v67 = v65 - 13455 * v59;
    v68 = v56 + v52;
    v69 = 6269 * (v64 + v52);
    v70 = 8170 * v68 + 0x2000;
    v37[8] = (v70 + 0x3FFFFFFFEF7BLL * v63 + v69 + v66 + 1344 * v60) >> 14;
    result = v60 + v56;
    v37[24] = (v67 + 9514 * (v63 - v64) + 0x3FFFFFFFF09BLL * result + 0x2000) >> 14;
    v37[40] = (v70 - 17036 * v56 - 1344 * (v64 + v56) - v67 + 6269 * v60) >> 14;
    v37[56] = (v69 + 5285 * v64 - 1344 * (v64 + v56) - v66 + 0x3FFFFFFFE016 * v60 + 0x2000) >> 14;
    ++v36;
  }

  while ((v36 * 4) != 32);
  return result;
}

uint64_t jpeg_fdct_13x13(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v93 = *MEMORY[0x1E69E9840];
  memset(v92, 0, sizeof(v92));
  v88 = a1;
  v89 = a3;
  while (1)
  {
    v91 = v3;
    v4 = (*(a2 + 8 * v3) + v89);
    v5 = *v4;
    v6 = v4[12];
    v7 = v4[1];
    v8 = v4[6];
    v9 = v6 + v5 - 2 * v8;
    v10 = v4[11];
    v11 = v10 + v7;
    v12 = v10 + v7 - 2 * v8;
    v13 = v4[2];
    v14 = v4[10];
    v15 = v14 + v13;
    v16 = v14 + v13 - 2 * v8;
    v17 = v4[3];
    v18 = v4[9];
    v19 = (v18 + v17);
    v20 = v19 - 2 * v4[6];
    v21 = v4[4];
    v22 = v4[8];
    v23 = (v22 + v21);
    v24 = v23 - 2 * v4[6];
    v25 = v4[5];
    v26 = v4[7];
    v27 = (v26 + v25);
    v28 = v27 - 2 * v4[6];
    v29 = 11249 * v9 + 8672 * v12 + 4108 * v16 + 0x1FFFFFFFFA8CLL * v20 + 0x1FFFFFFFE64BLL * v24 + 0x1FFFFFFFD7EELL * v28;
    v30 = v7 - v10;
    v31 = v13 - v14;
    v32 = 9465 * (v9 - v16) - 3570 * (v20 - v24) - 2592 * (v12 - v28);
    v33 = v21 - v22;
    LODWORD(v21) = v27 + v11 + v6 + v5 + v15 + v19 + v23 + v8;
    v34 = 793 * (v9 + v16) - 7678 * (v20 + v24) + 3989 * (v12 + v28);
    v35 = v34 + v32;
    v36 = v32 - v34;
    v37 = 7682 * (v17 - v18 + v5 - v6) + 2773 * (v25 - v26 + v33);
    v38 = -2773 * (v31 + v30) + 7682 * (v33 - (v25 - v26));
    v39 = 10832 * (v30 + v5 - v6) + 4096;
    LODWORD(v27) = v31 + v5 - v6;
    *a1 = v21 - 1664;
    a1[1] = (v39 + 0x1FFFFFFFBF5BLL * (v5 - v6) + 9534 * v27 + 2611 * v33 + v37) >> 13;
    LODWORD(v21) = v17 - v18 + v30;
    a1[2] = (v29 + 4096) >> 13;
    a1[3] = (v39 + 6859 * v30 - 9534 * v21 + 0x1FFFFFFFB511 * v33 + v38) >> 13;
    v40 = -12879 * v31 + 9534 * v27;
    v41 = v17 - v18 + v31;
    a1[4] = (v35 + 4096) >> 13;
    a1[5] = (v40 - 5384 * v41 + 18515 * (v25 - v26) + v38 + 4096) >> 13;
    a1[6] = (v36 + 4096) >> 13;
    a1[7] = (18068 * (v17 - v18) - 5384 * v41 - 9534 * v21 + 0x1FFFFFFFC83FLL * (v25 - v26) + v37 + 4096) >> 13;
    if (v91 != 7)
    {
      break;
    }

    a1 = v92;
LABEL_6:
    v3 = v91 + 1;
  }

  if (v91 != 12)
  {
    a1 += 8;
    goto LABEL_6;
  }

  v42 = 0;
  do
  {
    v43 = &v88[v42];
    v44 = v88[v42];
    v45 = *(&v92[8] + v42 * 4);
    v46 = v45 + v44;
    v47 = v88[v42 + 8];
    v48 = *(&v92[6] + v42 * 4);
    v49 = v48 + v47;
    v50 = v88[v42 + 16];
    v51 = *(&v92[4] + v42 * 4);
    v52 = v88[v42 + 24];
    v53 = *(&v92[2] + v42 * 4);
    v54 = v51 + v50;
    v55 = v53 + v52;
    v56 = v88[v42 + 32];
    v57 = *(v92 + v42 * 4);
    v58 = v57 + v56;
    v59 = v44 - v45;
    v60 = v53 + v52;
    v61 = v88[v42 + 40];
    v62 = v47 - v48;
    v63 = v88[v42 + 56];
    v64 = v50 - v51;
    v65 = v52 - v53;
    v66 = v63 + v61;
    v67 = v56 - v57;
    v68 = v88[v42 + 48];
    v69 = v61 - v63;
    v70 = v49 + v46 + v54;
    v71 = v46 - 2 * v68;
    v72 = v49 - 2 * v68;
    v73 = v54 - 2 * v68;
    v74 = v60 - 2 * v68;
    v75 = v58 - 2 * v68;
    v76 = v70 + v55 + v58;
    v77 = v66 - 2 * v68;
    v78 = 7169 * (v71 - v73) - 2704 * (v74 - v75) - 1963 * (v72 - v77);
    v79 = v59;
    *v43 = (6205 * (v76 + v66 + v68) + 0x2000) >> 14;
    v80 = 8520 * v71 + 6568 * v72 + 3112 * v73 + 0x3FFFFFFFFBDELL * v74 + 0x3FFFFFFFEC87 * v75;
    v81 = 601 * (v71 + v73) - 5816 * (v74 + v75) + 3021 * (v72 + v77);
    v82 = 5819 * (v65 + v59) + 2100 * (v69 + v67);
    v83 = v81 + v78;
    result = v78 - v81;
    v85 = -2100 * (v64 + v62) + 5819 * (v67 - v69);
    v86 = 8204 * (v62 + v59) + 0x2000;
    v87 = 7221 * (v64 + v59);
    v43[8] = (v86 + 0x3FFFFFFFCF0ALL * v79 + v87 + 1978 * v67 + v82) >> 14;
    v43[32] = (v83 + 0x2000) >> 14;
    v43[24] = (v86 + 5195 * v62 - 7221 * (v65 + v62) + 0x3FFFFFFFC73FLL * v67 + v85) >> 14;
    v43[48] = (result + 0x2000) >> 14;
    v43[40] = (v87 - 9754 * v64 - 4078 * (v65 + v64) + 14023 * v69 + v85 + 0x2000) >> 14;
    v43[16] = (v80 + 0x3FFFFFFFE1A6 * v77 + 0x2000) >> 14;
    v43[56] = (-4078 * (v65 + v64) + 13685 * v65 - 7221 * (v65 + v62) + 0x3FFFFFFFD5C5 * v69 + v82 + 0x2000) >> 14;
    ++v42;
  }

  while ((v42 * 4) != 32);
  return result;
}

uint64_t jpeg_fdct_14x14(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v83 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = a1;
  memset(v82, 0, sizeof(v82));
  while (1)
  {
    v6 = (*(a2 + 8 * v3) + v4);
    v7 = *v6;
    v8 = v6[13];
    v9 = v6[1];
    v10 = v6[12];
    v11 = (v10 + v9);
    v12 = v6[2];
    v13 = v6[11];
    v14 = (v13 + v12);
    v15 = v6[4];
    v16 = v6[9];
    v17 = (v16 + v15);
    v18 = v6[5];
    v19 = v6[8];
    v20 = (v19 + v18);
    v21 = v6[6];
    v22 = v6[7];
    v23 = v22 + v21 + v8 + v7;
    v24 = v8 + v7 - (v22 + v21);
    v25 = v20 + v11;
    v26 = v11 - v20;
    v27 = v17 + v14;
    v28 = v14 - v17;
    v29 = v7 - v8;
    v30 = v9 - v10;
    v31 = v6[3];
    v32 = v6[10];
    v33 = v12 - v13;
    LODWORD(v13) = v32 + v31;
    v34 = v31 - v32;
    LODWORD(v32) = v15 - v16;
    v35 = v18 - v19;
    v36 = 9058 * (v24 + v26) + 4096;
    v37 = v36 + 5027 * v28 + 2237 * v24;
    LODWORD(v18) = v18 - v19 - v32;
    v5[6] = (v36 + 0x1FFFFFFFD3E1 * v28 + 0x1FFFFFFFC8FCLL * v26) >> 13;
    v5[7] = v29 + v34 - (v21 - v22) - (v33 + v30 + v18);
    v38 = 9810 * (v33 + v29) + 6164 * (v21 - v22 + v32);
    v39 = 11512 * v18 - (v34 << 13) - 1297 * (v33 + v30) + 4096;
    v5[4] = (0x1FFFFFFFE3C9 * (v27 - (2 * v13)) + 2578 * (v25 - 2 * v13) + 10438 * (v23 - 2 * v13) + 4096) >> 13;
    v5[5] = (v39 + 0x1FFFFFFFB409 * v33 + 9175 * v32 + v38) >> 13;
    v40 = 10935 * (v30 + v29) + 3826 * (v35 - (v21 - v22));
    v5[2] = v37 >> 13;
    v5[3] = (v39 + 0x1FFFFFFFF26ELL * v30 + 0x1FFFFFFF9DC4 * v35 + v40) >> 13;
    *v5 = v13 + v25 + v27 + v23 - 1792;
    v5[1] = (v40 + (v34 << 13) + v21 - v22 + 0x1FFFFFFFDBF0 * (v21 - v22 + v29) + v38 + 4096) >> 13;
    if (v3 != 7)
    {
      break;
    }

    v5 = v82;
LABEL_6:
    ++v3;
  }

  if (v3 != 13)
  {
    v5 += 8;
    goto LABEL_6;
  }

  v41 = 0;
  do
  {
    v42 = &a1[v41];
    v43 = a1[v41];
    v44 = *(&v82[10] + v41 * 4);
    v45 = a1[v41 + 8];
    v46 = *(&v82[8] + v41 * 4);
    v47 = a1[v41 + 16];
    v48 = *(&v82[6] + v41 * 4);
    v49 = a1[v41 + 24];
    v50 = *(&v82[4] + v41 * 4);
    v51 = a1[v41 + 40];
    v52 = a1[v41 + 48];
    v53 = a1[v41 + 56];
    v54 = v53 + v52 + (v44 + v43);
    v55 = v44 + v43 - (v53 + v52);
    v56 = *(v82 + v41 * 4) + v51;
    v57 = v43 - v44;
    v58 = v56 + (v46 + v45);
    v59 = v46 + v45;
    v60 = v45 - v46;
    v61 = v50 + v49;
    v62 = a1[v41 + 32];
    v63 = *(&v82[2] + v41 * 4);
    v64 = v59 - v56;
    LODWORD(v59) = v49 - v50;
    v65 = v63 + v62 + (v48 + v47);
    v66 = v48 + v47 - (v63 + v62);
    v67 = v62 - v63;
    v68 = v51 - *(v82 + v41 * 4);
    v69 = v52 - v53;
    *v42 = (5350 * (v65 + v61 + v58 + v54) + 0x2000) >> 14;
    v70 = 5915 * (v55 + v64) + 0x2000;
    v71 = v47 - v48;
    v72 = v68;
    v42[16] = (v70 + 3283 * v66 + 1461 * v55) >> 14;
    v73 = v71 + v60;
    v42[48] = (v70 + 0x3FFFFFFFE330 * v66 + 0x3FFFFFFFDC12 * v64) >> 14;
    v74 = v72 - v67;
    v42[56] = (5350 * (v57 + v59 - (v73 + v74 + v69)) + 0x2000) >> 14;
    v75 = 7518 * v74 - 5350 * v59 - 847 * v73 + 0x2000;
    v76 = v75 + 0x3FFFFFFFCE64 * v71;
    v42[32] = (1684 * (v58 - 2 * v61) + 0x3FFFFFFFED93 * (v65 - 2 * v61) + 6817 * (v54 - 2 * v61) + 0x2000) >> 14;
    v77 = v75 + 0x3FFFFFFFF723 * v60;
    v78 = 7141 * (v60 + v57) + 2499 * (v72 - v69);
    result = v78 + 0x3FFFFFFFE873 * v57 + 5350 * v59 + 0x3FFFFFFFFD59 * v69;
    v80 = 6406 * (v71 + v57) + 4025 * (v69 + v67);
    v42[40] = (v76 + 5992 * v67 + v80) >> 14;
    v42[24] = (v77 + 0x3FFFFFFFBFD9 * v72 + v78) >> 14;
    v42[8] = (result + v80 + 0x2000) >> 14;
    ++v41;
  }

  while ((v41 * 4) != 32);
  return result;
}

uint64_t jpeg_fdct_15x15(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v83 = *MEMORY[0x1E69E9840];
  v80 = a3;
  v4 = a1;
  memset(v82, 0, sizeof(v82));
  while (1)
  {
    v5 = (*(a2 + 8 * v3) + v80);
    v6 = *v5;
    v7 = v5[14];
    v8 = (v7 + v6);
    v9 = v5[1];
    v10 = v5[13];
    v11 = (v10 + v9);
    v12 = v5[2];
    v13 = v5[12];
    v14 = (v13 + v12);
    v15 = v5[3];
    v16 = v5[11];
    v17 = (v16 + v15);
    v18 = v5[4];
    v19 = v5[10];
    v20 = (v19 + v18);
    v21 = v5[5];
    v22 = v5[9];
    v23 = (v22 + v21);
    v24 = v6 - v7;
    v25 = v5[6];
    v26 = v9 - v10;
    v27 = v5[8];
    v28 = v12 - v13;
    v29 = (v27 + v25);
    v30 = v5[7];
    v31 = v15 - v16;
    v32 = v25 - v27;
    v33 = v20 + v8 + v23;
    v34 = v17 + v11 + v29;
    LODWORD(v27) = v30 + v14 + v33 + v34;
    v35 = 0x1FFFFFFFF204 * (v34 - 2 * (v30 + v14)) + 9373 * (v33 - 2 * (v30 + v14));
    v36 = v14 - 2 * v30 + ((v20 + v11) >> 1);
    v37 = v29 - v36;
    v38 = 11332 * (v8 - v17) + 6476 * (v11 - v20) + 7752 * (v29 - v23) + 4096;
    v39 = v38 + 12543 * (v17 - v36) + 0x1FFFFFFFB860 * v37;
    v40 = v38 + 6541 * (v23 - v36) + 0x1FFFFFFFFD14 * (v8 - v36);
    v41 = 11018 * (v18 - v19 + v26) + 4712 * (v21 - v22 + v31) + 11522 * (v24 - v32);
    *v4 = v27 - 1920;
    v4[1] = (3897 * v31 + 10033 * v28 + 0x1FFFFFFFEF8FLL * (v18 - v19) + 13930 * v32 + v41 + 4096) >> 13;
    v4[2] = v39 >> 13;
    v4[3] = (6810 * (v26 - (v31 + v32)) + 11018 * (v24 - (v18 - v19 + v21 - v22)) + 4096) >> 13;
    v4[4] = v40 >> 13;
    v4[5] = (10033 * (v24 - (v28 + v31) + v21 - v22 + v32) + 4096) >> 13;
    v4[6] = (v35 + 4096) >> 13;
    v4[7] = (-17828 * v26 - 2912 * v24 - 10033 * v28 + 0x1FFFFFFFE42FLL * (v21 - v22) + v41 + 4096) >> 13;
    if (v3 != 7)
    {
      break;
    }

    v4 = v82;
LABEL_6:
    ++v3;
  }

  if (v3 != 14)
  {
    v4 += 8;
    goto LABEL_6;
  }

  v42 = 0;
  do
  {
    v43 = &a1[v42];
    v44 = a1[v42];
    v45 = *(&v82[12] + v42 * 4);
    v46 = v45 + v44;
    v47 = a1[v42 + 8];
    v48 = *(&v82[10] + v42 * 4);
    v49 = v48 + v47;
    v50 = a1[v42 + 16];
    v51 = *(&v82[8] + v42 * 4);
    v52 = v51 + v50;
    v53 = a1[v42 + 24];
    v54 = *(&v82[6] + v42 * 4);
    v55 = v54 + v53;
    v56 = a1[v42 + 32];
    v57 = *(&v82[4] + v42 * 4);
    v58 = v57 + v56;
    v59 = a1[v42 + 40];
    v60 = *(&v82[2] + v42 * 4);
    v61 = a1[v42 + 48];
    v62 = *(v82 + v42 * 4);
    v63 = v54 + v53;
    v64 = v44 - v45;
    v65 = v47 - v48;
    v66 = a1[v42 + 56];
    v67 = v50 - v51;
    v68 = v57 + v56;
    v69 = v53 - v54;
    v70 = v56 - v57;
    v71 = v68 + v46 + v60 + v59;
    v72 = v63 + v49 + v62 + v61;
    v73 = v66 + v52;
    *v43 = (9321 * (v72 + v71 + v73) + 0x4000) >> 15;
    v43[48] = (0x7FFFFFFFF017 * (v72 - 2 * v73) + 10664 * (v71 - 2 * v73) + 0x4000) >> 15;
    v74 = v52 - 2 * v66 + ((v68 + v49) >> 1);
    v75 = 12893 * (v46 - v55) + 7369 * (v49 - v58) + 8820 * (v62 + v61 - (v60 + v59)) + 0x4000;
    v76 = v59 - v60;
    result = v64 - (v70 + v76);
    v78 = 12536 * (v70 + v65) + 5361 * (v76 + v69) + 13109 * (v64 - (v61 - v62));
    v43[8] = (4434 * v69 + 11415 * v67 + 0x7FFFFFFFED4CLL * v70 + 15850 * (v61 - v62) + v78 + 0x4000) >> 15;
    v43[24] = (7748 * (v65 - (v69 + (v61 - v62))) + 12536 * result + 0x4000) >> 15;
    v43[40] = (11415 * (v64 - (v67 + v69) + v76 + v61 - v62) + 0x4000) >> 15;
    v43[16] = (v75 + 14271 * (v63 - v74) + 0x7FFFFFFFAE82 * (v62 + v61 - v74)) >> 15;
    v43[32] = (v75 + 7442 * (v60 + v59 - v74) + 0x7FFFFFFFFCACLL * (v46 - v74)) >> 15;
    v43[56] = (-20284 * v65 - 3314 * v64 - 11415 * v67 + 0x7FFFFFFFE05ALL * v76 + v78 + 0x4000) >> 15;
    ++v42;
  }

  while ((v42 * 4) != 32);
  return result;
}

uint64_t jpeg_fdct_16x16(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v3 = a1;
  v4 = 0;
  v89 = *MEMORY[0x1E69E9840];
  v82 = a3;
  memset(v88, 0, sizeof(v88));
  while (1)
  {
    v87 = v4;
    v5 = (*(a2 + 8 * v4) + v82);
    v85 = *v5;
    v86 = v5[15];
    v6 = (v86 + v85);
    v84 = v5[1];
    v7 = v5[14];
    v8 = v5[2];
    v9 = v5[13];
    v10 = v5[3];
    v11 = v5[12];
    v12 = (v11 + v10);
    v13 = v5[4];
    v14 = v5[11];
    v15 = (v14 + v13);
    v16 = v5[5];
    v17 = v5[10];
    v18 = v5[6];
    v19 = v5[7];
    v20 = v5[8];
    v21 = (v20 + v19);
    v22 = v21 + v6;
    v23 = v5[9];
    LODWORD(v5) = v23 + v18 + v7 + v84;
    v24 = v17 + v16 + v9 + v8;
    v25 = 10703 * (v21 + v6 - (v15 + v12)) + 4433 * (v5 - v24);
    v26 = v6 - v21;
    v27 = v7 + v84 - (v23 + v18);
    v28 = v9 + v8 - (v17 + v16);
    LODWORD(v6) = v84 - v7;
    v29 = v8 - v9;
    v30 = 2260 * (v12 - v15 - v27) + 11363 * (v26 - v28) + 1024;
    v31 = v30 + 17799 * v28 + 11893 * v27;
    v32 = v10 - v11;
    v33 = v13 - v14;
    v34 = v24 + v15 + v12 + v5 + v22;
    v35 = v30 + 0x7FFFFFFDE07 * (v12 - v15) + 0x7FFFFFFF93ELL * v26;
    v36 = 11086 * (v6 + v85 - v86) + 3363 * (v18 - v23 - (v19 - v20));
    v37 = 10217 * (v29 + v85 - v86) + 5461 * (v19 - v20 + v16 - v17);
    v38 = 8956 * (v10 - v11 + v85 - v86) + 7350 * (v13 - v14 - (v19 - v20));
    v39 = 1136 * (v29 + v6) + 11529 * (v18 - v23 - (v16 - v17));
    v40 = -5461 * (v32 + v6) - 10217 * (v18 - v23 + v13 - v14);
    v41 = -11086 * (v32 + v29) + 3363 * (v16 - v17 - v33);
    *v3 = 4 * v34 - 0x2000;
    v3[1] = (v37 + 0x7FFFFFFB6D6 * (v85 - v86) + 6387 * (v19 - v20) + v36 + v38 + 1024) >> 11;
    v3[2] = v31 >> 11;
    v3[3] = (v40 + 589 * v6 + 0x7FFFFFFCAC1 * (v18 - v23) + v39 + v36 + 1024) >> 11;
    v3[4] = (v25 + 1024) >> 11;
    v3[5] = (v41 + 1024 - 9222 * v29 + 10055 * (v16 - v17) + v39 + v37) >> 11;
    v3[6] = v35 >> 11;
    v3[7] = (v41 + 1024 + 8728 * v32 + 17760 * v33 + v40 + v38) >> 11;
    if (v87 != 7)
    {
      break;
    }

    v3 = v88;
LABEL_6:
    v4 = v87 + 1;
  }

  if (v87 != 15)
  {
    v3 += 8;
    goto LABEL_6;
  }

  v42 = 0;
  do
  {
    v43 = &a1[v42];
    v44 = a1[v42];
    v45 = *(&v88[14] + v42 * 4);
    v46 = a1[v42 + 8];
    v47 = *(&v88[12] + v42 * 4);
    v48 = a1[v42 + 16];
    v49 = *(&v88[10] + v42 * 4);
    v50 = a1[v42 + 24];
    v51 = *(&v88[8] + v42 * 4);
    v52 = a1[v42 + 32];
    v53 = a1[v42 + 40];
    v54 = *(&v88[4] + v42 * 4);
    v55 = a1[v42 + 48];
    v56 = *(&v88[2] + v42 * 4);
    v57 = a1[v42 + 56];
    v58 = *(v88 + v42 * 4);
    v59 = v58 + v57 + (v45 + v44);
    v60 = v45 + v44 - (v58 + v57);
    v61 = v56 + v55 + (v47 + v46);
    v62 = *(&v88[6] + v42 * 4);
    v63 = v47 + v46 - (v56 + v55);
    v64 = v54 + v53 + (v49 + v48);
    v65 = v49 + v48 - (v54 + v53);
    v66 = v62 + v52 + (v51 + v50);
    v67 = v51 + v50 - (v62 + v52);
    v68 = v44 - v45;
    v69 = v48 - v49;
    v70 = v50 - v51;
    v71 = v52 - v62;
    v72 = v53 - v54;
    *v43 = (v66 + v64 + v61 + v59 + 8) >> 4;
    v43[32] = (10703 * (v59 - v66) + 4433 * (v61 - v64) + 0x10000) >> 17;
    v73 = 2260 * (v67 - v63) + 11363 * (v60 - v65) + 0x10000;
    v43[16] = (v73 + 17799 * v65 + 11893 * v63) >> 17;
    result = v55 - v56;
    v43[48] = (v73 + 0x1FFFFFFFFDE07 * v67 + 0x1FFFFFFFFF93ELL * v60) >> 17;
    v75 = 11086 * (v46 - v47 + v68) + 3363 * (result - (v57 - v58));
    v76 = 10217 * (v69 + v68) + 5461 * (v57 - v58 + (v53 - v54));
    v77 = 8956 * (v70 + v68) + 7350 * (v71 - (v57 - v58));
    v78 = 1136 * (v69 + (v46 - v47)) + 11529 * (result - v72);
    v79 = -5461 * (v70 + (v46 - v47)) - 10217 * (result + v71);
    v80 = -11086 * (v70 + v69) + 3363 * (v72 - v71);
    v43[8] = (v76 + 0x1FFFFFFFFB6D6 * v68 + 6387 * (v57 - v58) + v75 + v77 + 0x10000) >> 17;
    v43[24] = (v79 + 589 * (v46 - v47) + 0x1FFFFFFFFCAC1 * result + v78 + v75 + 0x10000) >> 17;
    v43[40] = (v80 + 0x10000 - 9222 * v69 + 10055 * v72 + v78 + v76) >> 17;
    v43[56] = (v80 + 0x10000 + 8728 * v70 + 17760 * v71 + v79 + v77) >> 17;
    ++v42;
  }

  while ((v42 * 4) != 32);
  return result;
}

uint64_t jpeg_fdct_16x8(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v4 = a3;
  do
  {
    v5 = (*(a2 + v3) + v4);
    v6 = *v5;
    v7 = v5[15];
    v8 = (v7 + v6);
    v9 = v5[1];
    v10 = v5[14];
    v11 = v5[2];
    v12 = v5[13];
    v13 = v5[3];
    v14 = v5[5];
    v15 = v5[10];
    v16 = v5[6];
    v17 = v5[9];
    v18 = v5[7];
    v19 = v5[8];
    v20 = (v19 + v18);
    v21 = v20 + v8;
    v22 = v8 - v20;
    LODWORD(v20) = v17 + v16 + v10 + v9;
    v23 = v10 + v9 - (v17 + v16);
    v24 = v15 + v14 + v12 + v11;
    v25 = v12 + v11 - (v15 + v14);
    v26 = v5[12];
    v27 = v6 - v7;
    v28 = v5[4];
    LODWORD(v7) = v9 - v10;
    v29 = (v26 + v13);
    v30 = v5[11];
    LODWORD(v6) = v11 - v12;
    v31 = (v30 + v28);
    LODWORD(v5) = v13 - v26;
    v32 = v29 - v31;
    v33 = v31 + v29;
    v34 = v18 - v19;
    v35 = 11086 * (v7 + v27) + 3363 * (v16 - v17 - (v18 - v19));
    v36 = v28 - v30;
    v37 = v14 - v15;
    v38 = 10703 * (v21 - v33) + 4433 * (v20 - v24);
    v39 = v24 + v33 + v20 + v21;
    v40 = 2260 * (v32 - v23) + 11363 * (v22 - v25) + 1024;
    v41 = v40 + 17799 * v25;
    v42 = 10217 * (v6 + v27) + 5461 * (v34 + v37);
    v43 = 8956 * (v5 + v27) + 7350 * (v36 - v34);
    v44 = v40 + 0x7FFFFFFDE07 * v32;
    v45 = 1136 * (v6 + v7) + 11529 * (v16 - v17 - v37);
    v46 = v41 + 11893 * v23;
    v47 = -5461 * (v5 + v7) - 10217 * (v16 - v17 + v36);
    v48 = v44 + 0x7FFFFFFF93ELL * v22;
    v49 = -11086 * (v5 + v6) + 3363 * (v37 - v36) + 1024;
    v50 = (result + 4 * v3);
    v50[4] = (v38 + 1024) >> 11;
    v50[5] = (v49 - 9222 * v6 + 10055 * v37 + v45 + v42) >> 11;
    *v50 = 4 * v39 - 0x2000;
    v50[1] = (v42 + 0x7FFFFFFB6D6 * v27 + 6387 * v34 + v35 + v43 + 1024) >> 11;
    v50[2] = v46 >> 11;
    v50[3] = (v47 + 589 * v7 + 0x7FFFFFFCAC1 * (v16 - v17) + v45 + v35 + 1024) >> 11;
    v50[6] = v48 >> 11;
    v50[7] = (v49 + 8728 * v5 + 17760 * v36 + v47 + v43) >> 11;
    v3 += 8;
  }

  while (v3 != 64);
  v51 = 0;
  do
  {
    v52 = (result + v51);
    v53 = *(result + v51);
    v54 = *(result + v51 + 224);
    v55 = *(result + v51 + 32);
    v56 = *(result + v51 + 192);
    v57 = *(result + v51 + 64);
    v58 = *(result + v51 + 160);
    v59 = v58 + v57;
    v60 = *(result + v51 + 96);
    v61 = *(result + v51 + 128);
    v62 = v61 + v60 + (v54 + v53);
    v63 = v54 + v53 - (v61 + v60);
    v64 = v59 + v56 + v55;
    v65 = v56 + v55 - v59;
    v66 = v53 - v54;
    v67 = v60 - v61;
    *v52 = (v64 + v62 + 4) >> 3;
    v52[32] = (v62 - v64 + 4) >> 3;
    v68 = 4433 * (v63 + v65) + 0x8000;
    v52[16] = (v68 + 6270 * v63) >> 16;
    v52[48] = (v68 + 0xFFFFFFFFC4DFLL * v65) >> 16;
    v69 = v57 - v58 + v66;
    v70 = v67 + v55 - v56;
    v71 = 9633 * (v70 + v69);
    v72 = v71 - 3196 * v69;
    v73 = v71 - 16069 * v70;
    v74 = -7373 * (v67 + v66) + 0x8000;
    v52[8] = (v74 + 12299 * v66 + v72) >> 16;
    v75 = -20995 * (v57 - v58 + (v55 - v56)) + 0x8000;
    v52[24] = (v75 + 25172 * (v55 - v56) + v73) >> 16;
    v52[40] = (v75 + 16819 * (v57 - v58) + v72) >> 16;
    v52[56] = (v74 + 2446 * v67 + v73) >> 16;
    v51 += 4;
  }

  while (v51 != 32);
  return result;
}

uint64_t jpeg_fdct_14x7(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  *(result + 224) = 0u;
  *(result + 240) = 0u;
  do
  {
    v4 = (*(a2 + v3) + a3);
    v5 = *v4;
    v6 = v4[13];
    v7 = v4[1];
    v8 = v4[12];
    v9 = v4[2];
    v10 = (v8 + v7);
    v11 = v4[11];
    v12 = (v11 + v9);
    v13 = v4[3];
    v14 = v4[5];
    v15 = v4[8];
    v16 = (v15 + v14);
    v17 = v4[6];
    v18 = v4[7];
    v19 = v18 + v17 + v6 + v5;
    v20 = v6 + v5 - (v18 + v17);
    v21 = v16 + v10;
    v22 = v10 - v16;
    v23 = v4[10];
    v24 = v5 - v6;
    LODWORD(v5) = v4[4];
    v25 = v7 - v8;
    LODWORD(v6) = v23 + v13;
    LODWORD(v8) = v4[9];
    v26 = v9 - v11;
    v27 = (v8 + v5);
    v28 = v13 - v23;
    v29 = v27 + v12;
    v30 = v12 - v27;
    LODWORD(v5) = v5 - v8;
    v31 = v14 - v15;
    v32 = v17 - v18;
    v33 = (2 * v6);
    LODWORD(v11) = v6 + v21 + v29 + v19;
    v34 = 0x7FFFFFFE3C9 * (v29 - v33) + 2578 * (v21 - v33);
    v35 = 9058 * (v20 + v22) + 1024;
    v36 = v35 + 5027 * v30;
    v37 = v34 + 10438 * (v19 - v33);
    v38 = v35 + 0x7FFFFFFD3E1 * v30;
    LODWORD(v17) = v24 + v28 - (v17 - v18) - (v26 + v25 + v31 - v5);
    v39 = v36 + 2237 * v20;
    v40 = 9810 * (v26 + v24) + 6164 * (v32 + v5);
    v41 = 10935 * (v25 + v24) + 3826 * (v31 - v32);
    v42 = 11512 * (v31 - v5) - (v28 << 13) - 1297 * (v26 + v25) + 1024;
    v43 = v42 + 0x7FFFFFFB409 * v26 + 9175 * v5;
    v44 = v42 + 0x7FFFFFFF26ELL * v25;
    v45 = (result + 4 * v3);
    v45[6] = (v38 + 0x7FFFFFFC8FCLL * v22) >> 11;
    v45[7] = 4 * v17;
    v45[4] = (v37 + 1024) >> 11;
    v45[5] = (v43 + v40) >> 11;
    v45[2] = v39 >> 11;
    v45[3] = (v44 + 0x7FFFFFF9DC4 * v31 + v41) >> 11;
    *v45 = 4 * v11 - 7168;
    v45[1] = (v41 + (v28 << 13) + v32 + 0x7FFFFFFDBF0 * (v32 + v24) + v40 + 1024) >> 11;
    v3 += 8;
  }

  while (v3 != 56);
  v46 = 0;
  do
  {
    v47 = (result + v46);
    v48 = *(result + v46);
    v49 = *(result + v46 + 192);
    v50 = v49 + v48;
    v51 = *(result + v46 + 32);
    v52 = *(result + v46 + 160);
    v53 = v52 + v51;
    v54 = *(result + v46 + 64);
    v55 = *(result + v46 + 128);
    v56 = v55 + v54;
    v57 = v55 + v54;
    v58 = *(result + v46 + 96);
    v59 = v48 - v49;
    v60 = v51 - v52;
    v61 = v54 - v55;
    *v47 = (10700 * (v58 + v53 + v57 + v50) + 0x8000) >> 16;
    v62 = 3783 * (v57 + v50 - 4 * v58);
    v63 = 9850 * (v50 - v56);
    v64 = 3367 * (v53 - v56);
    v47[16] = (v64 + v63 + v62 + 0x8000) >> 16;
    v65 = 9434 * (v50 - v53) + 0x8000;
    v47[32] = (v65 + v64 + 0xFFFFFFFFE272 * (v53 - 2 * v58)) >> 16;
    v47[48] = (v65 - v63 + v62) >> 16;
    v66 = 10009 * (v60 + v59);
    v67 = 1822 * (v59 - v60);
    v68 = 6565 * (v61 + v59) + 0x8000;
    v47[8] = (v68 - v67 + v66) >> 16;
    v47[24] = (-14752 * (v61 + v60) + v67 + v66 + 0x8000) >> 16;
    v47[40] = (v68 + 20017 * v61 - 14752 * (v61 + v60)) >> 16;
    v46 += 4;
  }

  while (v46 != 32);
  return result;
}

_OWORD *jpeg_fdct_12x6(_OWORD *result, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  result[14] = 0u;
  result[15] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  do
  {
    v4 = (*(a2 + v3 * 4) + a3);
    v5 = *v4;
    v6 = v4[11];
    v7 = v4[1];
    v8 = v4[2];
    v9 = v4[9];
    v10 = (v9 + v8);
    v11 = v4[3];
    v12 = v4[8];
    v13 = (v12 + v11);
    v14 = v4[5];
    v15 = v4[6];
    v16 = v15 + v14 + v6 + v5;
    v17 = v6 + v5 - (v15 + v14);
    v18 = v13 + v10;
    v19 = v10 - v13;
    v20 = v4[10];
    v21 = v5 - v6;
    v22 = (v20 + v7);
    v23 = v7 - v20;
    LODWORD(v6) = v4[4];
    LODWORD(v4) = v4[7];
    LODWORD(v5) = v11 - v12;
    v24 = (v4 + v6);
    v25 = v6 - v4;
    v26 = &result[v3];
    v27 = v14 - v15;
    v28 = v22 - v24;
    LODWORD(v15) = v18 + v22 + v24 + v16;
    LODWORD(v24) = v17 - (v22 - v24 + v19);
    v29 = v28 - v19 + 11190 * (v17 + v19);
    v30 = 6270 * v23 + 4433 * (v25 + v23);
    v31 = -15137 * v25 + 4433 * (v25 + v23);
    v32 = 9191 * (v8 - v9 + v21) + 1024;
    *v26 = 4 * v15 - 6144;
    v26[1] = (v32 + 0x7FFFFFFED6ALL * v21 + 7053 * (v5 + v21) + v30 + 1512 * v27) >> 11;
    v26[2] = (v29 + 1024) >> 11;
    v26[3] = (v31 + 10703 * (v21 - v5) + 0x7FFFFFFEEAFLL * (v27 + v8 - v9) + 1024) >> 11;
    v26[4] = (10033 * (v16 - v18) + 1024) >> 11;
    v26[5] = (v32 - 19165 * (v8 - v9) - 1512 * (v5 + v8 - v9) - v31 + 7053 * v27) >> 11;
    v26[6] = 4 * v24;
    v26[7] = (5946 * v5 + 7053 * (v5 + v21) - 1512 * (v5 + v8 - v9) - v30 + 0x7FFFFFFDC19 * v27 + 1024) >> 11;
    v3 += 2;
  }

  while (v3 != 12);
  v33 = 0;
  do
  {
    v34 = (result + v33);
    v35 = *(result + v33);
    v36 = *(result + v33 + 160);
    v37 = *(result + v33 + 32);
    v38 = *(result + v33 + 128);
    v39 = v38 + v37;
    v40 = *(result + v33 + 64);
    v41 = *(result + v33 + 96);
    v42 = v41 + v40 + (v36 + v35);
    v43 = v36 + v35 - (v41 + v40);
    v44 = v35 - v36;
    v45 = v37 - v38;
    v46 = v40 - v41;
    *v34 = (14564 * (v42 + v39) + 0x8000) >> 16;
    v34[16] = (17837 * v43 + 0x8000) >> 16;
    v34[32] = (10298 * (v42 - 2 * v39) + 0x8000) >> 16;
    v47 = 5331 * (v46 + v44) + 0x8000;
    v34[8] = (v47 + 14564 * (v45 + v44)) >> 16;
    v34[24] = (14564 * (v44 - (v45 + v46)) + 0x8000) >> 16;
    v34[40] = (v47 + 14564 * (v46 - v45)) >> 16;
    v33 += 4;
  }

  while (v33 != 32);
  return result;
}

_OWORD *jpeg_fdct_10x5(_OWORD *result, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  result[14] = 0u;
  result[15] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  do
  {
    v4 = (*(a2 + v3 * 4) + a3);
    v5 = *v4;
    v6 = v4[9];
    v7 = v4[1];
    v8 = v4[8];
    v9 = (v8 + v7);
    v10 = v4[3];
    v11 = v4[6];
    v12 = (v11 + v10);
    v13 = v4[4];
    v14 = v4[5];
    v15 = v14 + v13 + v6 + v5;
    v16 = v6 + v5 - (v14 + v13);
    v17 = v12 + v9;
    v18 = v9 - v12;
    v19 = v5 - v6;
    v20 = v4[2];
    v21 = v4[7];
    v22 = v7 - v8;
    LODWORD(v7) = v21 + v20;
    v23 = v20 - v21;
    v24 = &result[v3];
    v25 = v10 - v11;
    LODWORD(v11) = v7 + v15 + v17;
    v26 = (0x7FFFFFFF204 * (v17 - (2 * v7)) + 9373 * (v15 - 2 * v7) + 1024) >> 11;
    v27 = 6810 * (v16 + v18) + 1024;
    LODWORD(v7) = v13 - v14 + v19;
    v24[4] = v26;
    v24[5] = 4 * (v7 - (v22 - v25 + v23));
    *v24 = 4 * v11 - 5120;
    v24[1] = (10323 * v22 + 11443 * v19 + (v23 << 13) + 5260 * v25 + 1812 * (v13 - v14) + 1024) >> 11;
    v28 = 2531 * (v7 + v22 - v25) - (v23 << 13) + ((v22 - v25) << 12);
    v29 = -4815 * (v25 + v22) + 7791 * (v19 - (v13 - v14)) + 1024;
    v24[2] = (v27 + 4209 * v16) >> 11;
    v24[3] = (v29 + v28) >> 11;
    v24[6] = (v27 + 0x7FFFFFFBA5CLL * v18) >> 11;
    v24[7] = (v29 - v28) >> 11;
    v3 += 2;
  }

  while (v3 != 10);
  v30 = 0;
  do
  {
    v31 = (result + v30);
    v32 = *(result + v30);
    v33 = *(result + v30 + 128);
    v34 = *(result + v30 + 32);
    v35 = *(result + v30 + 96);
    v36 = v35 + v34;
    v37 = *(result + v30 + 64);
    v38 = v36 + v33 + v32;
    v39 = v33 + v32 - v36;
    v40 = v32 - v33;
    v41 = v34 - v35;
    *v31 = (10486 * (v38 + v37) + 0x4000) >> 15;
    v42 = 3707 * (v38 - 4 * v37);
    v43 = 8290 * v39 + 0x4000;
    v31[16] = (v43 + v42) >> 15;
    v31[32] = (v43 - v42) >> 15;
    v44 = 8716 * (v41 + v40) + 0x4000;
    v31[8] = (v44 + 5387 * v40) >> 15;
    v31[24] = (v44 + 0x7FFFFFFFA6DCLL * v41) >> 15;
    v30 += 4;
  }

  while (v30 != 32);
  return result;
}

int32x4_t *jpeg_fdct_8x4(int32x4_t *result, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  result[14] = 0u;
  result[15] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  result[8] = 0u;
  result[9] = 0u;
  do
  {
    v4 = &result[v3];
    v5 = (*(a2 + v3 * 4) + a3);
    v6 = *v5;
    v7 = v5[7];
    v8 = v5[1];
    v9 = v5[6];
    v10 = (v9 + v8);
    v11 = v5[2];
    v12 = v5[5];
    v13 = (v12 + v11);
    v14 = v5[3];
    LODWORD(v5) = v5[4];
    v15 = v5 + v14 + v7 + v6;
    v16 = v7 + v6 - (v5 + v14);
    v17 = v13 + v10;
    v18 = v10 - v13;
    v19 = v6 - v7;
    v20 = v8 - v9;
    v21 = v11 - v12;
    LODWORD(v5) = v14 - v5;
    v22 = 4433 * (v16 + v18) + 512;
    v23 = (v22 + 6270 * v16) >> 10;
    v24 = (v22 + 0x3FFFFFFC4DFLL * v18) >> 10;
    v25 = 9633 * (v5 + v20 + v21 + v19) + 512;
    v26 = v25 - 3196 * (v21 + v19);
    v27 = v25 - 16069 * (v5 + v20);
    v4->i32[0] = 8 * (v15 + v17) - 0x2000;
    v4->i32[1] = (12299 * v19 - 7373 * (v5 + v19) + v26) >> 10;
    v4->i32[2] = v23;
    v4->i32[3] = (25172 * v20 - 20995 * (v21 + v20) + v27) >> 10;
    v4[1].i32[0] = 8 * (v15 - v17);
    v4[1].i32[1] = (16819 * v21 - 20995 * (v21 + v20) + v26) >> 10;
    v4[1].i32[2] = v24;
    v4[1].i32[3] = (2446 * v5 - 7373 * (v5 + v19) + v27) >> 10;
    v3 += 2;
  }

  while (v3 != 8);
  v28 = result + 4;
  v29 = 8;
  v30 = vdupq_n_s64(2uLL);
  v31 = vdupq_n_s64(0x4000uLL);
  v32 = vdupq_n_s32(0x187Eu);
  do
  {
    v33 = v28[-4];
    v34 = v28[2];
    v35 = vaddq_s32(v34, v33);
    v36 = vaddw_s32(v30, *v35.i8);
    v37 = vaddw_high_s32(v30, v35);
    v38 = v28[-2];
    v39 = vaddq_s32(*v28, v38);
    v40 = vsubq_s32(v33, v34);
    v41 = vsubq_s32(v38, *v28);
    v42.i64[0] = v41.i32[2];
    v42.i64[1] = v41.i32[3];
    v43 = v42;
    v42.i64[0] = v41.i32[0];
    v42.i64[1] = v41.i32[1];
    v28[-4] = vshrn_high_n_s64(vshrn_n_s64(vaddw_s32(v36, *v39.i8), 2uLL), vaddw_high_s32(v37, v39), 2uLL);
    *v28 = vshrn_high_n_s64(vshrn_n_s64(vsubw_s32(v36, *v39.i8), 2uLL), vsubw_high_s32(v37, v39), 2uLL);
    v44 = vaddl_s32(*v41.i8, *v40.i8);
    v45 = vaddl_high_s32(v41, v40);
    v45.i64[0] *= 4433;
    v45.i64[1] *= 4433;
    v44.i64[0] *= 4433;
    v44.i64[1] *= 4433;
    v46 = vaddq_s64(v44, v31);
    v47 = vaddq_s64(v45, v31);
    v36.i64[0] = 0x7FFFFFFFC4DFLL * v43.i64[0];
    v36.i64[1] = 0x7FFFFFFFC4DFLL * v43.i64[1];
    v43.i64[0] = 0x7FFFFFFFC4DFLL * v42.i64[0];
    v43.i64[1] = 0x7FFFFFFFC4DFLL * v42.i64[1];
    v28[-2] = vshrn_high_n_s64(vshrn_n_s64(vmlal_s32(v46, *v40.i8, *v32.i8), 0xFuLL), vmlal_high_s32(v47, v40, v32), 0xFuLL);
    v28[2] = vshrn_high_n_s64(vshrn_n_s64(vaddq_s64(v46, v43), 0xFuLL), vaddq_s64(v47, v36), 0xFuLL);
    ++v28;
    v29 -= 4;
  }

  while (v29);
  return result;
}

_OWORD *jpeg_fdct_6x3(_OWORD *result, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  result[14] = 0u;
  result[15] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  result[8] = 0u;
  result[9] = 0u;
  result[6] = 0u;
  result[7] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  v4 = a3;
  result[2] = 0u;
  result[3] = 0u;
  *result = 0u;
  result[1] = 0u;
  do
  {
    v5 = &result[v3];
    v6 = (*(a2 + v3 * 4) + v4);
    v7 = *v6;
    v8 = v6[5];
    v9 = v6[1];
    v10 = v6[4];
    v11 = v10 + v9;
    v12 = v6[2];
    LODWORD(v6) = v6[3];
    v13 = v6 + v12 + v8 + v7;
    v14 = v8 + v7 - (v6 + v12);
    v15 = v7 - v8;
    v16 = v9 - v10;
    LODWORD(v6) = v12 - v6;
    v17 = 8 * (v13 + v10 + v9) - 6144;
    v18 = (5793 * (v13 - 2 * v11) + 512) >> 10;
    v19 = (2998 * (v6 + v15) + 512) >> 10;
    *v5 = v17;
    v5[1] = v19 + 8 * (v16 + v15);
    v5[2] = (10033 * v14 + 512) >> 10;
    v5[3] = 8 * (v15 - (v16 + v6));
    v5[4] = v18;
    v5[5] = v19 + 8 * (v6 - v16);
    v3 += 2;
  }

  while (v3 != 6);
  v20 = 0;
  do
  {
    v21 = (result + v20);
    v22 = *(result + v20);
    v23 = *(result + v20 + 64);
    v24 = v23 + v22;
    v25 = *(result + v20 + 32);
    *v21 = (14564 * (v25 + v24) + 0x4000) >> 15;
    v21[16] = (10298 * (v24 - 2 * v25) + 0x4000) >> 15;
    v21[8] = (17837 * (v22 - v23) + 0x4000) >> 15;
    v20 += 4;
  }

  while (v20 != 24);
  return result;
}

double jpeg_fdct_4x2(uint64_t a1, void *a2, unsigned int a3)
{
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = (*a2 + a3);
  v5 = *v4;
  v6 = v4[3];
  v7 = v4[1];
  LODWORD(v4) = v4[2];
  v8 = v4 + v7 + v6 + v5;
  v9 = v6 + v5 - (v4 + v7);
  v10 = v5 - v6;
  LODWORD(v4) = v7 - v4;
  v11 = 4433 * (v4 + v10) + 512;
  v12 = v11 + 6270 * v10;
  v13 = v11 - 15137 * v4;
  v14 = (a2[1] + a3);
  LODWORD(v11) = *v14;
  v15 = v14[3];
  v16 = v14[1];
  LODWORD(v14) = v14[2];
  v17 = v14 + v16 + v15 + v11;
  v18 = v15 + v11 - (v14 + v16);
  LODWORD(v11) = v11 - v15;
  LODWORD(v14) = v16 - v14;
  v19 = v14 + v11;
  v20 = 6270 * v11 + 4433 * (v14 + v11);
  v21 = -15137 * v14 + 4433 * v19;
  *a1 = 8 * (v17 + v8) - 0x2000;
  *(a1 + 4) = (v20 + v12) >> 10;
  *(a1 + 32) = 8 * (v8 - v17);
  *(a1 + 36) = (v12 - v20) >> 10;
  *(a1 + 8) = 8 * (v18 + v9);
  *(a1 + 12) = (v21 + v13) >> 10;
  *(a1 + 40) = 8 * (v9 - v18);
  *(a1 + 44) = (v13 - v21) >> 10;
  return result;
}

double jpeg_fdct_2x1(uint64_t a1, void *a2, unsigned int a3)
{
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = (*a2 + a3);
  v5 = *v4;
  LODWORD(v4) = v4[1];
  *a1 = 32 * (v4 + v5) - 0x2000;
  *(a1 + 4) = 32 * (v5 - v4);
  return result;
}

uint64_t jpeg_fdct_8x16(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v3 = a1;
  v4 = 0;
  v70 = *MEMORY[0x1E69E9840];
  memset(v69, 0, sizeof(v69));
  while (1)
  {
    v5 = (*(a2 + 8 * v4) + a3);
    v6 = *v5;
    v7 = v5[7];
    v8 = v5[1];
    v9 = v5[6];
    v10 = (v9 + v8);
    v11 = v5[2];
    v12 = v5[5];
    v13 = (v12 + v11);
    v14 = v5[3];
    LODWORD(v5) = v5[4];
    v15 = v5 + v14 + v7 + v6;
    v16 = v7 + v6 - (v5 + v14);
    v17 = v13 + v10;
    v18 = v10 - v13;
    v19 = v6 - v7;
    v20 = v8 - v9;
    v21 = v11 - v12;
    LODWORD(v5) = v14 - v5;
    v22 = 4433 * (v16 + v18) + 1024;
    v23 = (v22 + 6270 * v16) >> 11;
    v24 = (v22 + 0x7FFFFFFC4DFLL * v18) >> 11;
    LODWORD(v13) = v5 + v20 + v21 + v19;
    v25 = -3196 * (v21 + v19) + 9633 * v13;
    v26 = -16069 * (v5 + v20) + 9633 * v13;
    v27 = -20995 * (v21 + v20);
    v28 = -7373 * (v5 + v19) + 1024;
    *v3 = 4 * (v15 + v17) - 4096;
    v3[1] = (v28 + 12299 * v19 + v25) >> 11;
    v3[2] = v23;
    v3[3] = (v27 + 1024 + 25172 * v20 + v26) >> 11;
    v3[4] = 4 * (v15 - v17);
    v3[5] = (v27 + 1024 + 16819 * v21 + v25) >> 11;
    v3[6] = v24;
    v3[7] = (v28 + 2446 * v5 + v26) >> 11;
    if (v4 != 7)
    {
      break;
    }

    v3 = v69;
LABEL_6:
    ++v4;
  }

  if (v4 != 15)
  {
    v3 += 8;
    goto LABEL_6;
  }

  v29 = 0;
  do
  {
    v30 = &a1[v29];
    v31 = a1[v29];
    v32 = *(&v69[14] + v29 * 4);
    v33 = a1[v29 + 8];
    v34 = *(&v69[12] + v29 * 4);
    v35 = a1[v29 + 16];
    v36 = *(&v69[10] + v29 * 4);
    v37 = a1[v29 + 24];
    v38 = *(&v69[8] + v29 * 4);
    v39 = a1[v29 + 32];
    v40 = a1[v29 + 40];
    v41 = *(&v69[4] + v29 * 4);
    v42 = a1[v29 + 48];
    v43 = *(&v69[2] + v29 * 4);
    v44 = a1[v29 + 56];
    v45 = *(v69 + v29 * 4);
    v46 = v45 + v44 + (v32 + v31);
    v47 = v32 + v31 - (v45 + v44);
    v48 = v43 + v42 + (v34 + v33);
    v49 = *(&v69[6] + v29 * 4);
    v50 = v34 + v33 - (v43 + v42);
    v51 = v41 + v40 + (v36 + v35);
    v52 = v36 + v35 - (v41 + v40);
    v53 = v49 + v39 + (v38 + v37);
    v54 = v38 + v37 - (v49 + v39);
    v55 = v31 - v32;
    v56 = v35 - v36;
    v57 = v37 - v38;
    v58 = v39 - v49;
    v59 = v40 - v41;
    *v30 = (v53 + v51 + v48 + v46 + 4) >> 3;
    v30[32] = (10703 * (v46 - v53) + 4433 * (v48 - v51) + 0x8000) >> 16;
    v60 = 2260 * (v54 - v50) + 11363 * (v47 - v52) + 0x8000;
    v30[16] = (v60 + 17799 * v52 + 11893 * v50) >> 16;
    v61 = v42 - v43;
    v30[48] = (v60 + 0xFFFFFFFFDE07 * v54 + 0xFFFFFFFFF93ELL * v47) >> 16;
    v62 = 11086 * (v33 - v34 + v55) + 3363 * (v61 - (v44 - v45));
    v63 = 10217 * (v56 + v55) + 5461 * (v44 - v45 + (v40 - v41));
    result = 8956 * (v57 + v55) + 7350 * (v58 - (v44 - v45));
    v65 = 1136 * (v56 + (v33 - v34)) + 11529 * (v61 - (v40 - v41));
    v66 = -5461 * (v57 + (v33 - v34)) - 10217 * (v61 + v58);
    v67 = -11086 * (v57 + v56) + 3363 * (v59 - v58);
    v30[8] = (v63 + 0xFFFFFFFFB6D6 * v55 + 6387 * (v44 - v45) + v62 + result + 0x8000) >> 16;
    v30[24] = (v66 + 589 * (v33 - v34) + 0xFFFFFFFFCAC1 * v61 + v65 + v62 + 0x8000) >> 16;
    v30[40] = (v67 + 0x8000 - 9222 * v56 + 10055 * v59 + v65 + v63) >> 16;
    v30[56] = (v67 + 0x8000 + 8728 * v57 + 17760 * v58 + v66 + result) >> 16;
    ++v29;
  }

  while ((v29 * 4) != 32);
  return result;
}

_OWORD *jpeg_fdct_7x14(_OWORD *result, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v69 = *MEMORY[0x1E69E9840];
  memset(v68, 0, sizeof(v68));
  *result = 0u;
  result[1] = 0u;
  result[2] = 0u;
  result[3] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  result[6] = 0u;
  result[7] = 0u;
  result[8] = 0u;
  result[9] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  v4 = result;
  result[14] = 0u;
  result[15] = 0u;
  while (1)
  {
    v5 = (*(a2 + 8 * v3) + a3);
    v6 = *v5;
    v7 = v5[6];
    v8 = v7 + v6;
    v9 = v5[1];
    v10 = v5[5];
    v11 = (v10 + v9);
    v12 = v5[2];
    v13 = v5[4];
    v14 = v13 + v12;
    v15 = v5[3];
    v16 = v6 - v7;
    v17 = v9 - v10;
    LODWORD(v5) = v12 - v13;
    v18 = v13 + v12 + v8;
    v19 = 4 * (v15 + v11 + v18) - 3584;
    v20 = v18 - 4 * v15;
    v21 = v8 - (v13 + v12);
    v22 = v11 - v14;
    v23 = (7542 * v21 + 2578 * (v11 - v14) + 2896 * v20 + 1024) >> 11;
    v24 = 7223 * (v8 - v11) + 1024;
    v25 = (v24 + 2578 * v22 + 0x7FFFFFFE95FLL * (v11 - 2 * v15)) >> 11;
    v4[6] = (v24 - 7542 * v21 + 2896 * v20) >> 11;
    LODWORD(v24) = v17 + v16;
    v26 = 1395 * (v16 - v17);
    v27 = v5 + v17;
    v28 = 5027 * (v5 + v16) + 1024;
    *v4 = v19;
    v4[1] = (v28 - v26 + 7663 * v24) >> 11;
    v4[2] = v23;
    v4[3] = (v26 - 11295 * v27 + 7663 * v24 + 1024) >> 11;
    v4[4] = v25;
    v4[5] = (v28 + 15326 * v5 - 11295 * v27) >> 11;
    if (v3 != 7)
    {
      break;
    }

    v4 = v68;
LABEL_6:
    ++v3;
  }

  if (v3 != 13)
  {
    v4 += 8;
    goto LABEL_6;
  }

  v29 = 0;
  do
  {
    v30 = (result + v29);
    v31 = *(result + v29);
    v32 = *(&v68[10] + v29);
    v33 = *(result + v29 + 32);
    v34 = *(&v68[8] + v29);
    v35 = *(result + v29 + 64);
    v36 = *(&v68[6] + v29);
    v37 = *(result + v29 + 96);
    v38 = *(&v68[4] + v29);
    v39 = *(result + v29 + 160);
    v40 = *(v68 + v29);
    v41 = v36 + v35;
    v42 = *(result + v29 + 192);
    v43 = *(result + v29 + 224);
    v44 = v43 + v42 + (v32 + v31);
    v45 = v32 + v31 - (v43 + v42);
    v46 = v31 - v32;
    v47 = v40 + v39 + (v34 + v33);
    v48 = v34 + v33;
    v49 = v33 - v34;
    v50 = v38 + v37;
    v51 = v35 - v36;
    v52 = *(result + v29 + 128);
    v53 = *(&v68[2] + v29);
    v54 = v48 - (v40 + v39);
    v55 = v37 - v38;
    v56 = v53 + v52 + v41;
    v57 = v41 - (v53 + v52);
    v58 = v52 - v53;
    v59 = v39 - v40;
    *v30 = (5350 * (v56 + v50 + v47 + v44) + 0x4000) >> 15;
    v60 = 5915 * (v45 + v54) + 0x4000;
    v30[16] = (v60 + 3283 * v57 + 1461 * v45) >> 15;
    v61 = (v60 + 0x7FFFFFFFE330 * v57 + 0x7FFFFFFFDC12 * v54) >> 15;
    v62 = v51 + v49;
    v30[48] = v61;
    v63 = v59 - v58;
    v30[56] = (5350 * (v46 + v55 - (v62 + v63 + v42 - v43)) + 0x4000) >> 15;
    v64 = 7518 * v63 - 5350 * v55 - 847 * v62 + 0x4000;
    v65 = v64 + 0x7FFFFFFFCE64 * v51;
    v30[32] = (1684 * (v47 - 2 * v50) + 0x7FFFFFFFED93 * (v56 - 2 * v50) + 6817 * (v44 - 2 * v50) + 0x4000) >> 15;
    v66 = 7141 * (v49 + v46) + 2499 * (v59 - (v42 - v43));
    v67 = 6406 * (v51 + v46) + 4025 * (v42 - v43 + v58);
    v30[40] = (v65 + 5992 * v58 + v67) >> 15;
    v30[24] = (v64 + 0x7FFFFFFFF723 * v49 + 0x7FFFFFFFBFD9 * v59 + v66) >> 15;
    v30[8] = (v66 + 0x7FFFFFFFE873 * v46 + 5350 * v55 + 0x7FFFFFFFFD59 * (v42 - v43) + v67 + 0x4000) >> 15;
    v29 += 4;
  }

  while (v29 != 28);
  return result;
}

int *jpeg_fdct_6x12(int *result, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v55 = *MEMORY[0x1E69E9840];
  memset(v54, 0, sizeof(v54));
  *result = 0u;
  *(result + 1) = 0u;
  *(result + 2) = 0u;
  *(result + 3) = 0u;
  *(result + 4) = 0u;
  *(result + 5) = 0u;
  *(result + 6) = 0u;
  *(result + 7) = 0u;
  *(result + 8) = 0u;
  *(result + 9) = 0u;
  *(result + 10) = 0u;
  *(result + 11) = 0u;
  v4 = a3;
  *(result + 12) = 0u;
  *(result + 13) = 0u;
  v5 = result;
  *(result + 14) = 0u;
  *(result + 15) = 0u;
  while (1)
  {
    v6 = (*(a2 + 8 * v3) + v4);
    v7 = *v6;
    v8 = v6[5];
    v9 = v6[1];
    v10 = v6[4];
    v11 = v10 + v9;
    v12 = v6[2];
    LODWORD(v6) = v6[3];
    v13 = v6 + v12 + v8 + v7;
    v14 = v8 + v7 - (v6 + v12);
    v15 = v7 - v8;
    v16 = v9 - v10;
    LODWORD(v6) = v12 - v6;
    v17 = 4 * (v13 + v10 + v9) - 3072;
    v18 = (5793 * (v13 - 2 * v11) + 1024) >> 11;
    v19 = (2998 * (v6 + v15) + 1024) >> 11;
    *v5 = v17;
    v5[1] = v19 + 4 * (v16 + v15);
    v5[2] = (10033 * v14 + 1024) >> 11;
    v5[3] = 4 * (v15 - (v16 + v6));
    v5[4] = v18;
    v5[5] = v19 + 4 * (v6 - v16);
    if (v3 != 7)
    {
      break;
    }

    v5 = v54;
LABEL_6:
    ++v3;
  }

  if (v3 != 11)
  {
    v5 += 8;
    goto LABEL_6;
  }

  v20 = 0;
  do
  {
    v21 = &result[v20];
    v22 = result[v20];
    v23 = *(&v54[6] + v20 * 4);
    v24 = result[v20 + 16];
    v25 = *(&v54[2] + v20 * 4);
    v26 = result[v20 + 24];
    v27 = *(v54 + v20 * 4);
    v28 = result[v20 + 40];
    v29 = result[v20 + 48];
    v30 = v29 + v28 + (v23 + v22);
    v31 = v23 + v22 - (v29 + v28);
    v32 = v27 + v26 + (v25 + v24);
    v33 = v25 + v24 - (v27 + v26);
    v34 = result[v20 + 8];
    v35 = *(&v54[4] + v20 * 4);
    v36 = v22 - v23;
    v37 = v35 + v34;
    v38 = v34 - v35;
    v39 = result[v20 + 32];
    v40 = v24 - v25;
    v41 = result[v20 + 56];
    v42 = v26 - v27;
    v43 = v41 + v39;
    v44 = v39 - v41;
    v45 = v28 - v29;
    v46 = v37 - v43;
    *v21 = (7282 * (v32 + v37 + v43 + v30) + 0x4000) >> 15;
    v21[48] = (7282 * (v31 - (v46 + v33)) + 0x4000) >> 15;
    v47 = v36;
    v21[32] = (8918 * (v30 - v32) + 0x4000) >> 15;
    v21[16] = (9947 * (v31 + v33) + 7282 * (v46 - v33) + 0x4000) >> 15;
    v48 = 3941 * (v44 + v38);
    v49 = v48 + 5573 * v38;
    v50 = v48 - 13455 * v44;
    v51 = v40 + v36;
    v52 = 6269 * (v42 + v36);
    v53 = 8170 * v51 + 0x4000;
    v21[8] = (v53 + 0x7FFFFFFFEF7BLL * v47 + v52 + v49 + 1344 * v45) >> 15;
    v21[24] = (v50 + 9514 * (v47 - v42) + 0x7FFFFFFFF09BLL * (v45 + v40) + 0x4000) >> 15;
    v21[40] = (v53 - 17036 * v40 - 1344 * (v42 + v40) - v50 + 6269 * v45) >> 15;
    v21[56] = (v52 + 5285 * v42 - 1344 * (v42 + v40) - v49 + 0x7FFFFFFFE016 * v45 + 0x4000) >> 15;
    ++v20;
  }

  while ((v20 * 4) != 24);
  return result;
}

_OWORD *jpeg_fdct_5x10(_OWORD *result, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v45 = *MEMORY[0x1E69E9840];
  memset(v44, 0, sizeof(v44));
  *result = 0u;
  result[1] = 0u;
  result[2] = 0u;
  result[3] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  result[6] = 0u;
  result[7] = 0u;
  result[8] = 0u;
  result[9] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  v4 = a3;
  result[12] = 0u;
  result[13] = 0u;
  v5 = result;
  result[14] = 0u;
  result[15] = 0u;
  while (1)
  {
    v6 = (*(a2 + 8 * v3) + v4);
    v7 = *v6;
    v8 = v6[4];
    v9 = v8 + v7;
    v10 = v6[1];
    v11 = v6[3];
    v12 = v11 + v10;
    LODWORD(v6) = v6[2];
    v13 = v7 - v8;
    v14 = v10 - v11;
    LODWORD(v10) = 4 * (v11 + v10 + v9 + v6) - 2560;
    LODWORD(v6) = v12 + v9 - 4 * v6;
    v15 = 6476 * (v9 - v12) + 1024;
    v16 = (v15 + 2896 * v6) >> 11;
    v5[4] = (v15 - 2896 * v6) >> 11;
    v17 = 6810 * (v14 + v13) + 1024;
    *v5 = v10;
    v5[1] = (v17 + 4209 * v13) >> 11;
    v5[2] = v16;
    v5[3] = (v17 + 0x7FFFFFFBA5CLL * v14) >> 11;
    if (v3 != 7)
    {
      break;
    }

    v5 = v44;
LABEL_6:
    ++v3;
  }

  if (v3 != 9)
  {
    v5 += 8;
    goto LABEL_6;
  }

  v18 = 0;
  do
  {
    v19 = (result + v18);
    v20 = *(result + v18);
    v21 = *(&v44[2] + v18);
    v22 = *(result + v18 + 32);
    v23 = *(v44 + v18);
    v24 = *(result + v18 + 96);
    v25 = *(result + v18 + 192);
    v26 = *(result + v18 + 128);
    v27 = *(result + v18 + 160);
    v28 = v27 + v26 + (v21 + v20);
    v29 = v21 + v20 - (v27 + v26);
    v30 = v25 + v24 + (v23 + v22);
    v31 = v23 + v22 - (v25 + v24);
    v32 = *(result + v18 + 64);
    v33 = v20 - v21;
    v34 = *(result + v18 + 224);
    v35 = v22 - v23;
    v36 = v34 + v32;
    v37 = v32 - v34;
    v38 = v26 - v27;
    *v19 = (10486 * (v30 + v36 + v28) + 0x4000) >> 15;
    v19[32] = (11997 * (v28 - 2 * v36) + 0x7FFFFFFFEE1ALL * (v30 - 2 * v36) + 0x4000) >> 15;
    v39 = 8716 * (v29 + v31) + 0x4000;
    v19[16] = (v39 + 5387 * v29) >> 15;
    v19[48] = (v39 + 0x7FFFFFFFA6DCLL * v31) >> 15;
    v40 = v38 + v33;
    v41 = v35 - (v24 - v25);
    v19[40] = (10486 * (v40 - (v41 + v37)) + 0x4000) >> 15;
    v19[8] = (13213 * v35 + 14647 * v33 + 10486 * v37 + 6732 * (v24 - v25) + 2320 * v38 + 0x4000) >> 15;
    v42 = 5243 * v41 - 10486 * v37 + 3240 * (v40 + v41);
    v43 = -6163 * (v24 - v25 + v35) + 9973 * (v33 - v38) + 0x4000;
    v19[24] = (v43 + v42) >> 15;
    v19[56] = (v43 - v42) >> 15;
    v18 += 4;
  }

  while (v18 != 20);
  return result;
}

_OWORD *jpeg_fdct_4x8(_OWORD *result, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  result[14] = 0u;
  result[15] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  result[8] = 0u;
  result[9] = 0u;
  result[6] = 0u;
  result[7] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  result[2] = 0u;
  result[3] = 0u;
  v4 = a3;
  *result = 0u;
  result[1] = 0u;
  do
  {
    v5 = &result[v3];
    v6 = (*(a2 + v3 * 4) + v4);
    v7 = *v6;
    v8 = v6[3];
    v9 = v8 + v7;
    v10 = v6[1];
    v11 = v6[2];
    v12 = v11 + v10;
    v13 = v7 - v8;
    v14 = v10 - v11;
    v15 = 4433 * (v14 + v13) + 512;
    *v5 = 8 * (v12 + v9) - 4096;
    v5[1] = (v15 + 6270 * v13) >> 10;
    v5[2] = 8 * (v9 - v12);
    v5[3] = (v15 + 0x3FFFFFFC4DFLL * v14) >> 10;
    v3 += 2;
  }

  while (v3 != 16);
  v16 = 0;
  do
  {
    v17 = (result + v16);
    v18 = *(result + v16);
    v19 = *(result + v16 + 224);
    v20 = v19 + v18;
    v21 = *(result + v16 + 32);
    v22 = *(result + v16 + 192);
    v23 = *(result + v16 + 64);
    v24 = *(result + v16 + 160);
    v25 = v24 + v23;
    v26 = *(result + v16 + 96);
    v27 = *(result + v16 + 128);
    v28 = v20 + v27 + v26 + 2;
    v29 = v20 - (v27 + v26);
    v30 = v25 + v22 + v21;
    v31 = v22 + v21 - v25;
    v32 = v18 - v19;
    v33 = v21 - v22;
    v34 = v23 - v24;
    v35 = v26 - v27;
    *v17 = (v28 + v30) >> 2;
    v17[32] = (v28 - v30) >> 2;
    v36 = 4433 * (v29 + v31) + 0x4000;
    v17[16] = (v36 + 6270 * v29) >> 15;
    v17[48] = (v36 + 0x7FFFFFFFC4DFLL * v31) >> 15;
    v37 = v34 + v32;
    v38 = v35 + v33;
    v39 = 9633 * (v38 + v37) + 0x4000;
    v40 = v39 - 3196 * v37;
    v41 = v39 - 16069 * v38;
    v42 = -7373 * (v35 + v32);
    v43 = -20995 * (v34 + v33);
    v17[8] = (v42 + 12299 * v32 + v40) >> 15;
    v17[24] = (v43 + 25172 * v33 + v41) >> 15;
    v17[40] = (v43 + 16819 * v34 + v40) >> 15;
    v17[56] = (v42 + 2446 * v35 + v41) >> 15;
    v16 += 4;
  }

  while (v16 != 16);
  return result;
}

_OWORD *jpeg_fdct_3x6(_OWORD *result, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  result[14] = 0u;
  result[15] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  result[8] = 0u;
  result[9] = 0u;
  result[6] = 0u;
  result[7] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  result[2] = 0u;
  result[3] = 0u;
  *result = 0u;
  result[1] = 0u;
  do
  {
    v4 = &result[v3];
    v5 = (*(a2 + v3 * 4) + a3);
    v6 = *v5;
    v7 = v5[2];
    LODWORD(v5) = v5[1];
    v4[2] = (5793 * (v7 + v6 - 2 * v5) + 512) >> 10;
    *v4 = 8 * (v7 + v6 + v5) - 3072;
    v4[1] = (10033 * (v6 - v7) + 512) >> 10;
    v3 += 2;
  }

  while (v3 != 12);
  v8 = 0;
  do
  {
    v9 = (result + v8);
    v10 = *(result + v8);
    v11 = *(result + v8 + 160);
    v12 = *(result + v8 + 32);
    v13 = *(result + v8 + 128);
    v14 = v13 + v12;
    v15 = *(result + v8 + 64);
    v16 = *(result + v8 + 96);
    v17 = v16 + v15 + (v11 + v10);
    v18 = v11 + v10 - (v16 + v15);
    v19 = v10 - v11;
    v20 = v12 - v13;
    v21 = v15 - v16;
    *v9 = (14564 * (v17 + v14) + 0x4000) >> 15;
    v9[16] = (17837 * v18 + 0x4000) >> 15;
    v9[32] = (10298 * (v17 - 2 * v14) + 0x4000) >> 15;
    v22 = 5331 * (v21 + v19) + 0x4000;
    v9[8] = (v22 + 14564 * (v20 + v19)) >> 15;
    v9[24] = (14564 * (v19 - (v20 + v21)) + 0x4000) >> 15;
    v9[40] = (v22 + 14564 * (v21 - v20)) >> 15;
    v8 += 4;
  }

  while (v8 != 12);
  return result;
}

_OWORD *jpeg_fdct_2x4(_OWORD *result, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  result[14] = 0u;
  result[15] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  result[8] = 0u;
  result[9] = 0u;
  result[6] = 0u;
  result[7] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  result[2] = 0u;
  result[3] = 0u;
  *result = 0u;
  result[1] = 0u;
  do
  {
    v4 = &result[v3];
    v5 = (*(a2 + v3 * 4) + a3);
    v6 = *v5;
    LODWORD(v5) = v5[1];
    *v4 = v5 + v6 - 256;
    v4[1] = v6 - v5;
    v3 += 2;
  }

  while (v3 != 8);
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = *(result + 24);
    v10 = v9 + *result;
    v11 = *(result + 8);
    v12 = *(result + 16);
    v13 = *result - v9;
    v14 = v11 - v12;
    *result = 8 * (v12 + v11 + v10);
    *(result + 16) = 8 * (v10 - (v12 + v11));
    v15 = 4433 * (v14 + v13) + 512;
    *(result + 8) = (v15 + 6270 * v13) >> 10;
    *(result + 24) = (v15 + 0x3FFFFFFC4DFLL * v14) >> 10;
    result = (result + 4);
    v7 = 0;
  }

  while ((v8 & 1) != 0);
  return result;
}

double jpeg_fdct_1x2(_OWORD *a1, void *a2, unsigned int a3)
{
  result = 0.0;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  v4 = *(*a2 + a3);
  v5 = *(a2[1] + a3);
  *a1 = 32 * (v5 + v4) - 0x2000;
  *(a1 + 8) = 32 * (v4 - v5);
  return result;
}

uint64_t _cg_jpeg_open_backing_store(void *a1, size_t (**a2)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, size_t a5))
{
  v11 = *MEMORY[0x1E69E9840];
  bzero(v10, 0x400uLL);
  if (confstr(65537, v10, 0x400uLL) && (strcpy(v9, "libjpeg_temp-XXXXXX"), strlen(v9), __strncat_chk(), v4 = mktemp(v10), (v5 = fopen(v4, "w+b")) != 0))
  {
    v6 = v5;
    result = unlink(v4);
    a2[3] = v6;
  }

  else
  {
    a2[3] = 0;
    v8 = *a1;
    *(v8 + 10) = 65;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    *(v8 + 5) = 0u;
    *(v8 + 6) = 0u;
    *(v8 + 7) = 0u;
    result = (**a1)(a1);
  }

  *a2 = read_backing_store;
  a2[1] = write_backing_store;
  a2[2] = close_backing_store;
  return result;
}

size_t read_backing_store(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, size_t a5)
{
  if (fseek(*(a2 + 24), a4, 0))
  {
    v9 = *a1;
    *(v9 + 40) = 67;
    (*v9)(a1);
  }

  result = fread(a3, 1uLL, a5, *(a2 + 24));
  if (result != a5)
  {
    v11 = *a1;
    *(v11 + 40) = 66;
    v12 = *v11;

    return v12(a1);
  }

  return result;
}

size_t write_backing_store(uint64_t *a1, uint64_t a2, const void *a3, uint64_t a4, size_t a5)
{
  if (fseek(*(a2 + 24), a4, 0))
  {
    v9 = *a1;
    *(v9 + 40) = 67;
    (*v9)(a1);
  }

  result = fwrite(a3, 1uLL, a5, *(a2 + 24));
  if (result != a5)
  {
    v11 = *a1;
    *(v11 + 40) = 68;
    v12 = *v11;

    return v12(a1);
  }

  return result;
}

void kdu_warning::~kdu_warning(kdu_warning *this)
{
  *this = &unk_1EF4D3560;
  v1 = *(this + 2);
  if (v1)
  {
    (*(*v1 + 32))(v1, 1);
  }
}

{
  kdu_warning::~kdu_warning(this);
}

{
  kdu_warning::~kdu_warning(this);

  JUMPOUT(0x186602850);
}

void sub_185F97928(_Unwind_Exception *a1, int a2)
{
  if (a2 < 0)
  {
    __cxa_call_unexpected(a1);
  }

  _Unwind_Resume(a1);
}

void sub_185F979A4(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x186602850](v3, v2);
  if (a2 < 0)
  {
    __cxa_call_unexpected(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t kdu_warning::put_text(kdu_warning *this, const char *a2)
{
  result = *(this + 2);
  if (!result)
  {
    return result;
  }

  if (*a2 != 60 || a2[1] != 35 || a2[2] != 62 || a2[3])
  {
    goto LABEL_6;
  }

  v5 = *(this + 3);
  if (v5)
  {
    if (*v5)
    {
      result = (*(*result + 16))(result, *(this + 3));
      v6 = *(this + 3);
      if (*v6)
      {
        v7 = v6 + 1;
        do
        {
          *(this + 3) = v7;
        }

        while (*v7++);
        v6 = v7 - 1;
      }

      *(this + 3) = v6 + 1;
      return result;
    }

LABEL_6:
    v4 = *(*result + 16);

    return v4();
  }

  v9 = *(this + 4);
  if (!v9 || !*v9)
  {
    goto LABEL_6;
  }

  result = (*(*result + 24))(result, *(this + 4));
  v10 = *(this + 4);
  if (*v10)
  {
    do
    {
      v11 = v10[1];
      ++v10;
    }

    while (v11);
  }

  *(this + 4) = v10 + 1;
  return result;
}

void kdu_error::kdu_error(kdu_error *this)
{
  *this = &unk_1EF4D35A0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  kdu_error::put_text(this, "Kakadu Error:\n");
}

void kdu_error::kdu_error(kdu_error *this, const char *a2)
{
  *this = &unk_1EF4D35A0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  if (*a2)
  {
    kdu_error::put_text(this, a2);
  }
}

void kdu_error::~kdu_error(kdu_error *this)
{
  *this = &unk_1EF4D35A0;
  v1 = *(this + 2);
  if (v1)
  {
    (*(*v1 + 32))(v1, 1);
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = -1;
  __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
}

{
  kdu_error::~kdu_error(this);
}

{
  kdu_error::~kdu_error(this);
}

void sub_185F97C38(_Unwind_Exception *a1, int a2)
{
  if (a2 < 0)
  {
    __cxa_call_unexpected(a1);
  }

  _Unwind_Resume(a1);
}

void sub_185F97C7C(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x186602850](v2, 0x10F1C40713AC7E1);
  if (a2 < 0)
  {
    __cxa_call_unexpected(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t kdu_error::put_text(kdu_error *this, const char *a2)
{
  result = *(this + 2);
  if (!result)
  {
    return result;
  }

  if (*a2 != 60 || a2[1] != 35 || a2[2] != 62 || a2[3])
  {
    goto LABEL_6;
  }

  v5 = *(this + 3);
  if (v5)
  {
    if (*v5)
    {
      result = (*(*result + 16))(result, *(this + 3));
      v6 = *(this + 3);
      if (*v6)
      {
        v7 = v6 + 1;
        do
        {
          *(this + 3) = v7;
        }

        while (*v7++);
        v6 = v7 - 1;
      }

      *(this + 3) = v6 + 1;
      return result;
    }

LABEL_6:
    v4 = *(*result + 16);

    return v4();
  }

  v9 = *(this + 4);
  if (!v9 || !*v9)
  {
    goto LABEL_6;
  }

  result = (*(*result + 24))(result, *(this + 4));
  v10 = *(this + 4);
  if (*v10)
  {
    do
    {
      v11 = v10[1];
      ++v10;
    }

    while (v11);
  }

  *(this + 4) = v10 + 1;
  return result;
}

uint64_t kdu_warning::flush(kdu_warning *this)
{
  result = *(this + 2);
  if (result)
  {
    return (*(*result + 32))(result, 0);
  }

  return result;
}

uint64_t kdu_error::flush(kdu_error *this)
{
  result = *(this + 2);
  if (result)
  {
    return (*(*result + 32))(result, 0);
  }

  return result;
}

uint64_t _cg_jpeg_add_quant_table(uint64_t a1, signed int a2, uint64_t a3, int a4, __int32 a5, int32x2_t a6, double a7, int32x2_t a8)
{
  v13 = *(a1 + 36);
  if (v13 != 100)
  {
    v14 = *a1;
    *(v14 + 10) = 21;
    *(v14 + 12) = v13;
    (**a1)(a1);
  }

  if (a2 >= 4)
  {
    v15 = *a1;
    *(v15 + 10) = 32;
    *(v15 + 12) = a2;
    (**a1)(a1);
  }

  result = *(a1 + 112 + 8 * a2);
  if (!result)
  {
    result = _cg_jpeg_alloc_quant_table(a1);
    *(a1 + 112 + 8 * a2) = result;
  }

  a6.i32[0] = 0;
  v17 = 0;
  v18 = vdupq_n_s64(a4);
  a8.i32[0] = a5;
  v19 = vdup_lane_s32(vceq_s32(a8, a6), 0);
  v20 = v18.i64[1];
  v21 = v18.i64[0];
  v22 = v18.i64[0];
  v23 = vdupq_n_s64(0x63CDuLL);
  v24 = vdupq_n_s64(0x32uLL);
  v25 = vdupq_n_s64(1uLL);
  v26 = vdupq_n_s64(0x7FFFuLL);
  do
  {
    v27 = *(a3 + 16);
    v28.i64[0] = v27.u32[2];
    v28.i64[1] = v27.u32[3];
    v29 = v28;
    v28.i64[1] = v27.u32[1];
    v30.i64[0] = v22 * *a3;
    v31.i64[0] = v22 * *(a3 + 8);
    v30.i64[1] = v20 * HIDWORD(*a3);
    v31.i64[1] = v20 * HIDWORD(*a3);
    v27.i64[0] = v22 * v27.u32[0];
    v27.i64[1] = v20 * v28.i64[1];
    v29.i64[0] *= v21;
    v29.i64[1] *= v20;
    v32 = vuzp1q_s16(vuzp1q_s32(vcgtq_s64(v30, v23), vcgtq_s64(v31, v23)), vuzp1q_s32(vcgtq_s64(v27, v23), vcgtq_s64(v29, v23)));
    v33 = vaddq_s64(v29, v24);
    v34 = vaddq_s64(v30, v24);
    v35 = vaddq_s64(v31, v24);
    v36 = v35.i64[0];
    v37 = (v35.i64[0] * 0xA3D70A3D70A3D70BLL) >> 64;
    *v35.i8 = vbic_s8(vmovn_s16(v32), v19);
    v31.i64[0] = ((v37 + v36) >> 6) + ((v37 + v36) >> 63);
    v32.i64[0] = v34.i64[0] / 100;
    v38 = vaddq_s64(v27, v24);
    v33.i64[0] /= 100;
    v31.i64[1] = v35.i64[1] / 100;
    v32.i64[1] = v34.i64[1] / 100;
    v33.i64[1] /= 100;
    v38.i64[0] /= 100;
    v38.i64[1] /= 100;
    v39 = vcgtq_s64(v38, v25);
    v40 = vsubq_s64(vandq_s8(v38, v39), vmvnq_s8(v39));
    v41 = vcgtq_s64(v33, v25);
    v42 = vsubq_s64(vandq_s8(v33, v41), vmvnq_s8(v41));
    v43 = vcgtq_s64(v32, v25);
    v44 = vcgtq_s64(v31, v25);
    v45 = vsubq_s64(vandq_s8(v32, v43), vmvnq_s8(v43));
    v46 = vsubq_s64(vandq_s8(v31, v44), vmvnq_s8(v44));
    v47 = vcltzq_s16(vshlq_n_s16(vmovl_u8(*v35.i8), 0xFuLL));
    *(result + v17) = vorrq_s8((*&v47 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), vbicq_s8(vuzp1q_s16(vuzp1q_s32(vbslq_s8(vcgtq_s64(v26, v45), v45, v26), vbslq_s8(vcgtq_s64(v26, v46), v46, v26)), vuzp1q_s32(vbslq_s8(vcgtq_s64(v26, v40), v40, v26), vbslq_s8(vcgtq_s64(v26, v42), v42, v26))), v47));
    a3 += 32;
    v17 += 16;
  }

  while (v17 != 128);
  *(result + 128) = 0;
  return result;
}

uint64_t _cg_jpeg_set_quality(uint64_t a1, int a2, __int32 a3, int32x2_t a4, double a5, int32x2_t a6)
{
  if (a2 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a2;
  }

  if (v8 >= 100)
  {
    v8 = 100;
  }

  if (a2 > 49)
  {
    v9 = 200 - 2 * v8;
  }

  else
  {
    v9 = 0x1388u / v8;
  }

  _cg_jpeg_add_quant_table(a1, 0, &std_luminance_quant_tbl, v9, a3, a4, a5, a6);

  return _cg_jpeg_add_quant_table(a1, 1, &std_chrominance_quant_tbl, v9, a3, v10, v11, v12);
}

uint64_t _cg_jpeg_set_defaults(uint64_t a1, double a2, double a3, int32x2_t a4)
{
  v5 = *(a1 + 36);
  if (v5 != 100)
  {
    v6 = *a1;
    *(v6 + 10) = 21;
    *(v6 + 12) = v5;
    (**a1)(a1);
  }

  if (!*(a1 + 104))
  {
    *(a1 + 104) = (**(a1 + 8))(a1, 0, 960);
  }

  *(a1 + 72) = 0x100000001;
  *(a1 + 88) = 8;
  _cg_jpeg_add_quant_table(a1, 0, &std_luminance_quant_tbl, 50, 1, 0x100000001, a3, a4);
  _cg_jpeg_add_quant_table(a1, 1, &std_chrominance_quant_tbl, 50, 1, v7, v8, v9);
  if (*(a1 + 160))
  {
    _cg_jpeg_std_huff_table(a1, 1, 0);
  }

  if (*(a1 + 192))
  {
    _cg_jpeg_std_huff_table(a1, 0, 0);
  }

  if (*(a1 + 168))
  {
    _cg_jpeg_std_huff_table(a1, 1, 1u);
  }

  if (*(a1 + 200))
  {
    _cg_jpeg_std_huff_table(a1, 0, 1u);
  }

  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0x101010101010101;
  *(a1 + 248) = 0x101010101010101;
  *(a1 + 256) = 0x505050505050505;
  *(a1 + 264) = 0x505050505050505;
  *(a1 + 280) = 0;
  *(a1 + 272) = 0;
  *(a1 + 288) = 0;
  *(a1 + 292) = *(a1 + 88) > 8;
  *(a1 + 296) = 0;
  *(a1 + 304) = 1;
  *(a1 + 316) = 0;
  *(a1 + 308) = 0;
  *(a1 + 328) = 257;
  *(a1 + 330) = 0;
  *(a1 + 332) = 65537;
  *(a1 + 340) = 0;

  return _cg_jpeg_default_colorspace(a1);
}

uint64_t _cg_jpeg_default_colorspace(uint64_t a1)
{
  v1 = *(a1 + 60);
  if (v1 > 3)
  {
    if (v1 <= 5)
    {
      if (v1 == 4)
      {
        v2 = 4;
      }

      else
      {
        v2 = 5;
      }

      return _cg_jpeg_set_colorspace(a1, v2);
    }

    if (v1 == 6)
    {
      v2 = 6;
      return _cg_jpeg_set_colorspace(a1, v2);
    }

    if (v1 == 7)
    {
      v2 = 7;
      return _cg_jpeg_set_colorspace(a1, v2);
    }
  }

  else
  {
    if (v1 > 1)
    {
      v2 = 3;
      return _cg_jpeg_set_colorspace(a1, v2);
    }

    if (!v1)
    {
      v2 = 0;
      return _cg_jpeg_set_colorspace(a1, v2);
    }

    if (v1 == 1)
    {
      v2 = 1;
      return _cg_jpeg_set_colorspace(a1, v2);
    }
  }

  v4 = *a1;
  *(v4 + 40) = 10;
  return (*v4)(a1);
}

uint64_t _cg_jpeg_set_colorspace(uint64_t result, int a2)
{
  v3 = result;
  v4 = *(result + 36);
  if (v4 != 100)
  {
    v5 = *result;
    *(v5 + 10) = 21;
    *(v5 + 12) = v4;
    result = (**result)(result);
  }

  *(v3 + 96) = a2;
  *(v3 + 324) = 0;
  *(v3 + 336) = 0;
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      *(v3 + 336) = 1;
      *(v3 + 92) = 4;
      if (a2 == 4)
      {
        v17 = *(v3 + 104);
        *v17 = 67;
        *(v17 + 8) = xmmword_1862079D0;
        *(v17 + 24) = 0;
        *(v17 + 96) = 77;
        *(v17 + 104) = xmmword_1862079D0;
        *(v17 + 120) = 0;
        *(v17 + 192) = 89;
        *(v17 + 200) = xmmword_1862079D0;
        *(v17 + 216) = 0;
        *(v17 + 288) = 75;
        *(v17 + 296) = xmmword_1862079D0;
        *(v17 + 312) = 0;
      }

      else
      {
        v7 = *(v3 + 104);
        *v7 = 1;
        *(v7 + 8) = xmmword_186207DE0;
        *(v7 + 24) = 0;
        *(v7 + 96) = 2;
        *&v8 = 0x100000001;
        *(&v8 + 1) = 0x100000001;
        *(v7 + 104) = v8;
        *(v7 + 120) = 1;
        *(v7 + 192) = 3;
        *(v7 + 200) = v8;
        *(v7 + 216) = 1;
        *(v7 + 288) = 4;
        *(v7 + 296) = xmmword_186207DE0;
        *(v7 + 312) = 0;
      }

      return result;
    }

    if (a2 != 6)
    {
      if (a2 == 7)
      {
        *(v3 + 324) = 1;
        *(v3 + 328) = 2;
        *(v3 + 92) = 3;
        v11 = *(v3 + 104);
        *v11 = 1;
        *(v11 + 8) = xmmword_186207DE0;
        *(v11 + 24) = 0;
        *(v11 + 96) = 34;
        *&v12 = 0x100000001;
        *(&v12 + 1) = 0x100000001;
        *(v11 + 104) = v12;
        *(v11 + 120) = 1;
        *(v11 + 192) = 35;
        *(v11 + 200) = v12;
        *(v11 + 216) = 1;
        return result;
      }

      goto LABEL_26;
    }

    *(v3 + 324) = 1;
    *(v3 + 328) = 2;
    *(v3 + 92) = 3;
    v18 = *(v3 + 104);
    *v18 = 114;
    *(v18 + 8) = 0x100000001;
    v19 = *(v3 + 340) == 1;
    *(v18 + 16) = 0;
    *(v18 + 20) = v19;
    *(v18 + 24) = v19;
    *(v18 + 96) = 103;
    *(v18 + 104) = xmmword_1862079D0;
    *(v18 + 120) = 0;
    v20 = 98;
LABEL_24:
    *(v18 + 192) = v20;
    *(v18 + 200) = 0x100000001;
    *(v18 + 208) = 0;
    *(v18 + 212) = v19;
    *(v18 + 216) = v19;
    return result;
  }

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      *(v3 + 324) = 1;
      *(v3 + 92) = 3;
      v9 = *(v3 + 104);
      *v9 = 1;
      *(v9 + 8) = xmmword_186207DE0;
      *(v9 + 24) = 0;
      *(v9 + 96) = 2;
      *&v10 = 0x100000001;
      *(&v10 + 1) = 0x100000001;
      *(v9 + 104) = v10;
      *(v9 + 120) = 1;
      *(v9 + 192) = 3;
      *(v9 + 200) = v10;
      *(v9 + 216) = 1;
      return result;
    }

    *(v3 + 336) = 1;
    *(v3 + 92) = 3;
    v18 = *(v3 + 104);
    *v18 = 82;
    *(v18 + 8) = 0x100000001;
    v19 = *(v3 + 340) == 1;
    *(v18 + 16) = 0;
    *(v18 + 20) = v19;
    *(v18 + 24) = v19;
    *(v18 + 96) = 71;
    *(v18 + 104) = xmmword_1862079D0;
    *(v18 + 120) = 0;
    v20 = 66;
    goto LABEL_24;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      *(v3 + 324) = 1;
      *(v3 + 92) = 1;
      v6 = *(v3 + 104);
      *v6 = 1;
      *(v6 + 8) = xmmword_1862079D0;
      *(v6 + 24) = 0;
      return result;
    }

LABEL_26:
    v21 = *v3;
    *(v21 + 40) = 11;
    v22 = *v21;

    return v22(v3);
  }

  v13 = *(v3 + 56);
  *(v3 + 92) = v13;
  if ((v13 - 11) > 0xFFFFFFF5 || (v14 = *v3, *(v14 + 40) = 27, *(v14 + 48) = v13, *(*v3 + 52) = 10, result = (**v3)(v3), v13 = *(v3 + 92), v13 >= 1))
  {
    v15 = 0;
    v16 = *(v3 + 104);
    do
    {
      *v16 = v15;
      *(v16 + 8) = xmmword_1862079D0;
      *(v16 + 24) = 0;
      ++v15;
      v16 += 96;
    }

    while (v13 != v15);
  }

  return result;
}

uint64_t _cg_jinit_marker_writer(uint64_t a1)
{
  result = (**(a1 + 8))();
  *(a1 + 528) = result;
  *result = write_file_header;
  *(result + 8) = write_frame_header;
  *(result + 16) = write_scan_header;
  *(result + 24) = write_file_trailer;
  *(result + 32) = write_tables_only;
  *(result + 40) = write_marker_header;
  *(result + 48) = write_marker_byte;
  *(result + 56) = 0;
  return result;
}

uint64_t write_file_header(uint64_t a1)
{
  v2 = *(a1 + 528);
  emit_byte(a1, 255);
  result = emit_byte(a1, 216);
  *(v2 + 56) = 0;
  if (*(a1 + 324))
  {
    emit_byte(a1, 255);
    emit_byte(a1, 224);
    emit_byte(a1, 0);
    emit_byte(a1, 16);
    emit_byte(a1, 74);
    emit_byte(a1, 70);
    emit_byte(a1, 73);
    emit_byte(a1, 70);
    emit_byte(a1, 0);
    emit_byte(a1, *(a1 + 328));
    emit_byte(a1, *(a1 + 329));
    emit_byte(a1, *(a1 + 330));
    v4 = *(a1 + 332);
    emit_byte(a1, SHIBYTE(v4));
    emit_byte(a1, v4);
    v5 = *(a1 + 334);
    emit_byte(a1, SHIBYTE(v5));
    emit_byte(a1, v5);
    emit_byte(a1, 0);
    result = emit_byte(a1, 0);
  }

  if (*(a1 + 336))
  {
    emit_byte(a1, 255);
    emit_byte(a1, 238);
    emit_byte(a1, 0);
    emit_byte(a1, 14);
    emit_byte(a1, 65);
    emit_byte(a1, 100);
    emit_byte(a1, 111);
    emit_byte(a1, 98);
    emit_byte(a1, 101);
    emit_byte(a1, 0);
    emit_byte(a1, 100);
    emit_byte(a1, 0);
    emit_byte(a1, 0);
    emit_byte(a1, 0);
    emit_byte(a1, 0);
    v6 = *(a1 + 96);
    if (v6 == 3)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2 * (v6 == 5);
    }

    return emit_byte(a1, v7);
  }

  return result;
}

uint64_t write_frame_header(uint64_t a1)
{
  v2 = *(a1 + 92);
  if (v2 < 1)
  {
    v7 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = (*(a1 + 104) + 16);
    do
    {
      v6 = *v5;
      v5 += 24;
      v3 += emit_dqt(a1, v6);
      ++v4;
      v2 = *(a1 + 92);
    }

    while (v4 < v2);
    v7 = v3 != 0;
  }

  if (*(a1 + 292))
  {
    goto LABEL_7;
  }

  if (*(a1 + 348))
  {
    goto LABEL_22;
  }

  if (*(a1 + 88) != 8 || *(a1 + 476) != 8)
  {
    v10 = 0;
    goto LABEL_21;
  }

  if (v2 < 1)
  {
    v10 = 1;
  }

  else
  {
    v9 = (*(a1 + 104) + 24);
    v10 = 1;
    do
    {
      if (*(v9 - 1) > 1 || *v9 >= 2)
      {
        v10 = 0;
      }

      v9 += 24;
      --v2;
    }

    while (v2);
  }

  if (v10)
  {
    v14 = v7;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_21:
    if (!*(a1 + 348))
    {
      if (v10)
      {
        v8 = -64;
        goto LABEL_23;
      }

      goto LABEL_43;
    }

LABEL_22:
    v8 = -62;
    goto LABEL_23;
  }

  v15 = *a1;
  *(v15 + 40) = 77;
  (*(v15 + 8))(a1, 0);
  if (!*(a1 + 292))
  {
    if (!*(a1 + 348))
    {
LABEL_43:
      v8 = -63;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_7:
  if (*(a1 + 348))
  {
    v8 = -54;
  }

  else
  {
    v8 = -55;
  }

LABEL_23:
  result = emit_sof(a1, v8);
  v12 = *(a1 + 340);
  if (v12)
  {
    if (v12 != 1 || *(a1 + 92) <= 2)
    {
      v13 = *a1;
      *(v13 + 40) = 28;
      (*v13)(a1);
    }

    emit_byte(a1, 255);
    emit_byte(a1, 248);
    emit_byte(a1, 0);
    emit_byte(a1, 24);
    emit_byte(a1, 13);
    emit_byte(a1, 0);
    emit_byte(a1, 255);
    emit_byte(a1, 3);
    emit_byte(a1, *(*(a1 + 104) + 96));
    emit_byte(a1, **(a1 + 104));
    emit_byte(a1, *(*(a1 + 104) + 192));
    emit_byte(a1, 128);
    emit_byte(a1, 0);
    emit_byte(a1, 0);
    emit_byte(a1, 0);
    emit_byte(a1, 0);
    emit_byte(a1, 0);
    emit_byte(a1, 0);
    emit_byte(a1, 1);
    emit_byte(a1, 0);
    emit_byte(a1, 0);
    emit_byte(a1, 0);
    emit_byte(a1, 0);
    emit_byte(a1, 1);
    emit_byte(a1, 0);
    result = emit_byte(a1, 0);
  }

  if (*(a1 + 348) && *(a1 + 476) != 8)
  {
    emit_byte(a1, 255);
    emit_byte(a1, 218);
    emit_byte(a1, 0);
    emit_byte(a1, 6);
    emit_byte(a1, 0);
    emit_byte(a1, 0);
    emit_byte(a1, *(a1 + 476) * *(a1 + 476) - 1);

    return emit_byte(a1, 0);
  }

  return result;
}

uint64_t write_scan_header(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 528);
  if (*(a1 + 292))
  {
    v24 = 0uLL;
    v25 = 0uLL;
    v3 = *(a1 + 372);
    if (v3 >= 1)
    {
      v4 = (a1 + 376);
      v5 = *(a1 + 460);
      v6 = *(a1 + 464);
      while (1)
      {
        v7 = *v4;
        if (!v5 && !*(a1 + 468))
        {
          break;
        }

        if (v6)
        {
          goto LABEL_7;
        }

LABEL_8:
        ++v4;
        if (!--v3)
        {
          goto LABEL_12;
        }
      }

      v25.i8[*(v7 + 20)] = 1;
      if (!v6)
      {
        goto LABEL_8;
      }

LABEL_7:
      v24.i8[*(v7 + 24)] = 1;
      goto LABEL_8;
    }

LABEL_12:
    v8 = vaddl_high_s8(v25, v24);
    v9 = vaddl_s8(*v25.i8, *v24.i8);
    v10 = vaddvq_s32(vaddq_s32(vaddl_s16(*v9.i8, *v8.i8), vaddl_high_s16(v9, v8)));
    if (v10)
    {
      emit_byte(a1, 255);
      emit_byte(a1, 204);
      v11 = 2 * v10 + 2;
      emit_byte(a1, SHIBYTE(v11));
      emit_byte(a1, v11 & 0xFE);
      for (i = 0; i != 16; ++i)
      {
        if (v25.i8[i])
        {
          emit_byte(a1, i);
          emit_byte(a1, *(a1 + i + 224) + 16 * *(a1 + i + 240));
        }

        if (v24.i8[i])
        {
          emit_byte(a1, i | 0x10);
          emit_byte(a1, *(a1 + i + 256));
        }
      }
    }
  }

  else if (*(a1 + 372) >= 1)
  {
    v13 = 47;
    do
    {
      v14 = *(a1 + 8 * v13);
      if (!*(a1 + 460) && !*(a1 + 468))
      {
        emit_dht(a1, *(v14 + 20), 0);
      }

      if (*(a1 + 464))
      {
        emit_dht(a1, *(v14 + 24), 1);
      }

      v15 = v13 - 46;
      ++v13;
    }

    while (v15 < *(a1 + 372));
  }

  if (*(a1 + 316) != *(v2 + 56))
  {
    emit_byte(a1, 255);
    emit_byte(a1, 221);
    emit_byte(a1, 0);
    emit_byte(a1, 4);
    v16 = *(a1 + 316);
    emit_byte(a1, SBYTE1(v16));
    emit_byte(a1, v16);
    *(v2 + 56) = *(a1 + 316);
  }

  emit_byte(a1, 255);
  emit_byte(a1, 218);
  v17 = 2 * *(a1 + 372) + 6;
  emit_byte(a1, (2 * *(a1 + 372) + 6) >> 8);
  emit_byte(a1, v17 & 0xFE);
  emit_byte(a1, *(a1 + 372));
  if (*(a1 + 372) >= 1)
  {
    v18 = 0;
    do
    {
      v19 = *(a1 + 8 * v18 + 376);
      emit_byte(a1, *v19);
      if (*(a1 + 460) || *(a1 + 468))
      {
        LOBYTE(v20) = 0;
      }

      else
      {
        v20 = 16 * v19[5];
      }

      v21 = *(a1 + 464);
      if (v21)
      {
        v21 = v19[6];
      }

      emit_byte(a1, v21 + v20);
      ++v18;
    }

    while (v18 < *(a1 + 372));
  }

  emit_byte(a1, *(a1 + 460));
  emit_byte(a1, *(a1 + 464));
  v22 = *(a1 + 472) + 16 * *(a1 + 468);

  return emit_byte(a1, v22);
}

uint64_t write_file_trailer(uint64_t a1)
{
  emit_byte(a1, 255);

  return emit_byte(a1, 217);
}

uint64_t write_tables_only(uint64_t a1)
{
  emit_byte(a1, 255);
  emit_byte(a1, 216);
  for (i = 0; i != 4; ++i)
  {
    if (*(a1 + 8 * i + 112))
    {
      emit_dqt(a1, i);
    }
  }

  if (!*(a1 + 292))
  {
    for (j = 0; j != 4; ++j)
    {
      v4 = a1 + 8 * j;
      if (*(v4 + 160))
      {
        emit_dht(a1, j, 0);
      }

      if (*(v4 + 192))
      {
        emit_dht(a1, j, 1);
      }
    }
  }

  emit_byte(a1, 255);

  return emit_byte(a1, 217);
}

uint64_t write_marker_header(uint64_t *a1, char a2, unsigned int a3)
{
  v3 = a3;
  if (a3 >= 0xFFFE)
  {
    v6 = *a1;
    *(v6 + 40) = 12;
    (*v6)(a1);
  }

  emit_byte(a1, 255);
  emit_byte(a1, a2);
  v7 = v3 + 2;
  emit_byte(a1, SHIBYTE(v7));

  return emit_byte(a1, v7);
}

uint64_t emit_byte(uint64_t result, char a2)
{
  v2 = *(result + 40);
  v3 = (*v2)++;
  *v3 = a2;
  v4 = *(v2 + 8) - 1;
  *(v2 + 8) = v4;
  if (!v4)
  {
    v5 = result;
    result = (*(v2 + 24))();
    if (!result)
    {
      v6 = *v5;
      *(v6 + 40) = 25;
      v7 = *v6;

      return v7(v5);
    }
  }

  return result;
}

uint64_t emit_dqt(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = *(a1 + 8 * a2 + 112);
  if (!v4)
  {
    v5 = *a1;
    *(v5 + 10) = 54;
    *(v5 + 12) = a2;
    (**a1)(a1);
  }

  v6 = *(a1 + 488);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = *(a1 + 480);
    v9 = v6 + 1;
    do
    {
      v10 = *v8++;
      if (*(v4 + 2 * v10) > 0xFFu)
      {
        v7 = 1;
      }

      else
      {
        v7 = v7;
      }

      --v9;
    }

    while (v9);
  }

  if (!*(v4 + 128))
  {
    emit_byte(a1, 255);
    emit_byte(a1, 219);
    v11 = *(a1 + 488);
    v12 = 2 * v11 + 5;
    v13 = v11 + 4;
    if (v7)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    emit_byte(a1, SHIBYTE(v14));
    emit_byte(a1, v14);
    emit_byte(a1, v2 + 16 * v7);
    if ((*(a1 + 488) & 0x80000000) == 0)
    {
      v15 = 0;
      do
      {
        v16 = *(v4 + 2 * *(*(a1 + 480) + 4 * v15));
        if (v7)
        {
          emit_byte(a1, SHIBYTE(v16));
        }

        emit_byte(a1, v16);
      }

      while (v15++ < *(a1 + 488));
    }

    *(v4 + 128) = 1;
  }

  return v7;
}

uint64_t emit_sof(uint64_t a1, char a2)
{
  emit_byte(a1, 255);
  emit_byte(a1, a2);
  v4 = 3 * *(a1 + 92) + 8;
  emit_byte(a1, (3 * *(a1 + 92) + 8) >> 8);
  emit_byte(a1, v4);
  if (*(a1 + 86) || *(a1 + 80) >= 0x10000u)
  {
    v5 = *a1;
    *(v5 + 10) = 42;
    *(v5 + 12) = 0xFFFF;
    (**a1)(a1);
  }

  emit_byte(a1, *(a1 + 88));
  v6 = *(a1 + 84);
  emit_byte(a1, SBYTE1(v6));
  emit_byte(a1, v6);
  v7 = *(a1 + 80);
  emit_byte(a1, SBYTE1(v7));
  emit_byte(a1, v7);
  result = emit_byte(a1, *(a1 + 92));
  if (*(a1 + 92) >= 1)
  {
    v9 = 0;
    v10 = *(a1 + 104);
    do
    {
      emit_byte(a1, *v10);
      emit_byte(a1, v10[3] + 16 * v10[2]);
      result = emit_byte(a1, v10[4]);
      ++v9;
      v10 += 24;
    }

    while (v9 < *(a1 + 92));
  }

  return result;
}

void *emit_dht(void *result, int a2, int a3)
{
  v3 = result;
  v4 = result + 24;
  if (a3)
  {
    v5 = a2 + 16;
  }

  else
  {
    v5 = a2;
  }

  if (!a3)
  {
    v4 = result + 20;
  }

  v6 = v4[a2];
  if (!v6)
  {
    v7 = *result;
    *(v7 + 10) = 52;
    *(v7 + 12) = v5;
    result = (**result)(result);
  }

  if (!*(v6 + 276))
  {
    emit_byte(v3, 255);
    emit_byte(v3, 196);
    v8 = *(v6 + 1);
    v9 = vmovl_high_u8(v8);
    v10 = vmovl_u8(*v8.i8);
    v10.i32[0] = vaddvq_s32(vaddq_s32(vaddl_u16(*v10.i8, *v9.i8), vaddl_high_u16(v10, v9)));
    v11 = v10.u32[0];
    v12 = v10.i8[0] + 19;
    emit_byte(v3, (v10.i16[0] + 19) >> 8);
    emit_byte(v3, v12);
    emit_byte(v3, v5);
    for (i = 0; i != 16; ++i)
    {
      result = emit_byte(v3, *(v6 + 1 + i));
    }

    if (v11)
    {
      v14 = (v6 + 17);
      do
      {
        v15 = *v14++;
        result = emit_byte(v3, v15);
        --v11;
      }

      while (v11);
    }

    *(v6 + 276) = 1;
  }

  return result;
}

uint64_t jpeg_calc_jpeg_dimensions(uint64_t result)
{
  v1 = result;
  if (*(result + 51) || *(result + 55))
  {
    v2 = *result;
    *(v2 + 10) = 42;
    *(v2 + 12) = 65500;
    result = (**result)(result);
  }

  v3 = v1[9].u32[0];
  v4 = v1[59].i32[1];
  v5 = v4 * v1[9].i32[1];
  if (v3 >= v5)
  {
    v1[10] = vmul_s32(v1[6], vdup_n_s32(v4));
    v7 = 0x100000001;
  }

  else if (v5 <= 2 * v3)
  {
    v1[10].i32[0] = jdiv_round_up(v1[6].u32[0] * v4, 2);
    result = jdiv_round_up(v1[59].i32[1] * v1[6].u32[1], 2);
    v1[10].i32[1] = result;
    v7 = 0x200000002;
  }

  else if (3 * v3 >= v5)
  {
    v1[10].i32[0] = jdiv_round_up(v1[6].u32[0] * v4, 3);
    result = jdiv_round_up(v1[59].i32[1] * v1[6].u32[1], 3);
    v1[10].i32[1] = result;
    v7 = 0x300000003;
  }

  else if (v5 <= 4 * v3)
  {
    v1[10].i32[0] = jdiv_round_up(v1[6].u32[0] * v4, 4);
    result = jdiv_round_up(v1[59].i32[1] * v1[6].u32[1], 4);
    v1[10].i32[1] = result;
    v7 = 0x400000004;
  }

  else if (5 * v3 >= v5)
  {
    v1[10].i32[0] = jdiv_round_up(v1[6].u32[0] * v4, 5);
    result = jdiv_round_up(v1[59].i32[1] * v1[6].u32[1], 5);
    v1[10].i32[1] = result;
    v7 = 0x500000005;
  }

  else if (6 * v3 >= v5)
  {
    v1[10].i32[0] = jdiv_round_up(v1[6].u32[0] * v4, 6);
    result = jdiv_round_up(v1[59].i32[1] * v1[6].u32[1], 6);
    v1[10].i32[1] = result;
    v7 = 0x600000006;
  }

  else if (7 * v3 >= v5)
  {
    v1[10].i32[0] = jdiv_round_up(v1[6].u32[0] * v4, 7);
    result = jdiv_round_up(v1[59].i32[1] * v1[6].u32[1], 7);
    v1[10].i32[1] = result;
    v7 = 0x700000007;
  }

  else if (v5 <= 8 * v3)
  {
    v1[10].i32[0] = jdiv_round_up(v1[6].u32[0] * v4, 8);
    result = jdiv_round_up(v1[59].i32[1] * v1[6].u32[1], 8);
    v1[10].i32[1] = result;
    v7 = 0x800000008;
  }

  else if (9 * v3 >= v5)
  {
    v1[10].i32[0] = jdiv_round_up(v1[6].u32[0] * v4, 9);
    result = jdiv_round_up(v1[59].i32[1] * v1[6].u32[1], 9);
    v1[10].i32[1] = result;
    v7 = 0x900000009;
  }

  else if (10 * v3 >= v5)
  {
    v1[10].i32[0] = jdiv_round_up(v1[6].u32[0] * v4, 10);
    result = jdiv_round_up(v1[59].i32[1] * v1[6].u32[1], 10);
    v1[10].i32[1] = result;
    v7 = 0xA0000000ALL;
  }

  else if (11 * v3 >= v5)
  {
    v1[10].i32[0] = jdiv_round_up(v1[6].u32[0] * v4, 11);
    result = jdiv_round_up(v1[59].i32[1] * v1[6].u32[1], 11);
    v1[10].i32[1] = result;
    v7 = 0xB0000000BLL;
  }

  else if (12 * v3 >= v5)
  {
    v1[10].i32[0] = jdiv_round_up(v1[6].u32[0] * v4, 12);
    result = jdiv_round_up(v1[59].i32[1] * v1[6].u32[1], 12);
    v1[10].i32[1] = result;
    v7 = 0xC0000000CLL;
  }

  else if (13 * v3 >= v5)
  {
    v1[10].i32[0] = jdiv_round_up(v1[6].u32[0] * v4, 13);
    result = jdiv_round_up(v1[59].i32[1] * v1[6].u32[1], 13);
    v1[10].i32[1] = result;
    v7 = 0xD0000000DLL;
  }

  else if (14 * v3 >= v5)
  {
    v1[10].i32[0] = jdiv_round_up(v1[6].u32[0] * v4, 14);
    result = jdiv_round_up(v1[59].i32[1] * v1[6].u32[1], 14);
    v1[10].i32[1] = result;
    v7 = 0xE0000000ELL;
  }

  else
  {
    v6 = v1[6].u32[0] * v4;
    if (15 * v3 >= v5)
    {
      v1[10].i32[0] = jdiv_round_up(v6, 15);
      result = jdiv_round_up(v1[59].i32[1] * v1[6].u32[1], 15);
      v1[10].i32[1] = result;
      v7 = 0xF0000000FLL;
    }

    else
    {
      v1[10].i32[0] = jdiv_round_up(v6, 16);
      result = jdiv_round_up(v1[59].i32[1] * v1[6].u32[1], 16);
      v1[10].i32[1] = result;
      v7 = 0x1000000010;
    }
  }

  v1[45] = v7;
  return result;
}

uint64_t _cg_jinit_compress_master(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 != 8)
  {
    v3 = *a1;
    *(v3 + 10) = 16;
    *(v3 + 12) = v2;
    (**a1)(a1);
  }

  if (!*(a1 + 52) || (v4 = *(a1 + 48)) == 0 || (v5 = *(a1 + 56), v5 <= 0))
  {
    v6 = *a1;
    *(v6 + 10) = 33;
    (*v6)(a1);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
  }

  if ((v5 * v4) >> 32)
  {
    v7 = *a1;
    *(v7 + 10) = 72;
    (*v7)(a1);
  }

  jpeg_calc_jpeg_dimensions(a1);
  _cg_jinit_c_master_control(a1, 0);
  if (!*(a1 + 288))
  {
    _cg_jinit_color_converter(a1);
    _cg_jinit_downsampler(a1);
    _cg_jinit_c_prep_controller(a1, 0);
  }

  _cg_jinit_forward_dct(a1);
  if (*(a1 + 292))
  {
    jinit_arith_encoder(a1);
  }

  else
  {
    _cg_jinit_huff_encoder(a1);
  }

  v8 = *(a1 + 272) > 1 || *(a1 + 296) != 0;
  _cg_jinit_c_coef_controller(a1, v8);
  _cg_jinit_c_main_controller(a1, 0);
  _cg_jinit_marker_writer(a1);
  (*(*(a1 + 8) + 48))(a1);
  v9 = **(a1 + 528);

  return v9(a1);
}

int32x4_t *_cg_jpeg_fdct_ifast(int32x4_t *result, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v4 = a3;
  do
  {
    i32 = result[v3].i32;
    v6 = (*(a2 + v3 * 4) + v4);
    v7 = *v6;
    v8 = v6[7];
    v9 = v8 + v7;
    v10 = v7 - v8;
    v11 = v6[1];
    v12 = v6[6];
    v13 = v12 + v11;
    v14 = v11 - v12;
    v15 = v6[2];
    v16 = v6[5];
    v17 = v16 + v15;
    v18 = v15 - v16;
    v19 = v6[3];
    LODWORD(v6) = v6[4];
    v20 = v6 + v19;
    LODWORD(v6) = v19 - v6;
    v21 = v20 + v9;
    v22 = v9 - v20;
    v23 = v17 + v13;
    v24 = v13 - v17;
    v25 = v21 + v23 - 1024;
    v26 = v21 - v23;
    v27 = 181 * (v24 + v22);
    v28 = v22 + (v27 >> 8);
    v29 = v22 - (v27 >> 8);
    LODWORD(v6) = v6 + v18;
    v30 = v18 + v14;
    v31 = v14 + v10;
    v32 = (98 * (v6 - v31)) >> 8;
    LODWORD(v6) = v32 + ((139 * v6) >> 8);
    v33 = v32 + ((334 * v31) >> 8);
    v30 *= 181;
    v34 = v10 - (v30 >> 8);
    i32[4] = v26;
    i32[5] = v6 + v34;
    i32[2] = v28;
    i32[3] = v34 - v6;
    LODWORD(v6) = v10 + (v30 >> 8);
    *i32 = v25;
    i32[1] = v33 + v6;
    i32[6] = v29;
    i32[7] = v6 - v33;
    v3 += 2;
  }

  while (v3 != 16);
  v35 = result + 8;
  v36 = 8;
  v37.i64[0] = 0xB5000000B5;
  v37.i64[1] = 0xB5000000B5;
  v38.i64[0] = 0x6200000062;
  v38.i64[1] = 0x6200000062;
  v39.i64[0] = 0x8B0000008BLL;
  v39.i64[1] = 0x8B0000008BLL;
  v40 = vdupq_n_s32(0x14Eu);
  do
  {
    v41 = v35[-8];
    v42 = v35[6];
    v43 = vaddq_s32(v42, v41);
    v44 = vsubq_s32(v41, v42);
    v45 = v35[-6];
    v46 = v35[4];
    v47 = vaddq_s32(v46, v45);
    v48 = vsubq_s32(v45, v46);
    v49 = v35[-4];
    v50 = v35[2];
    v51 = vaddq_s32(v50, v49);
    v52 = vsubq_s32(v49, v50);
    v53 = v35[-2];
    v54 = vaddq_s32(*v35, v53);
    v55 = vsubq_s32(v53, *v35);
    v56 = vaddq_s32(v54, v43);
    v57 = vsubq_s32(v43, v54);
    v58 = vaddq_s32(v51, v47);
    v35[-8] = vaddq_s32(v56, v58);
    *v35 = vsubq_s32(v56, v58);
    v59 = vaddq_s32(vsubq_s32(v47, v51), v57);
    v60 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v59.i8, 0xB5000000B5), 8uLL), vmull_high_s32(v59, v37), 8uLL);
    v35[-4] = vaddq_s32(v57, v60);
    v35[4] = vsubq_s32(v57, v60);
    v61 = vaddq_s32(v55, v52);
    v62 = vaddq_s32(v52, v48);
    v63 = vaddq_s32(v48, v44);
    v64 = vsubq_s32(v61, v63);
    v65 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v64.i8, 0x6200000062), 8uLL), vmull_high_s32(v64, v38), 8uLL);
    v66 = vaddq_s32(v65, vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v61.i8, 0x8B0000008BLL), 8uLL), vmull_high_s32(v61, v39), 8uLL));
    v67 = vaddq_s32(v65, vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v63.i8, *v40.i8), 8uLL), vmull_high_s32(v63, v40), 8uLL));
    v68 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v62.i8, 0xB5000000B5), 8uLL), vmull_high_s32(v62, v37), 8uLL);
    v69 = vaddq_s32(v44, v68);
    v70 = vsubq_s32(v44, v68);
    v35[2] = vaddq_s32(v66, v70);
    v35[-2] = vsubq_s32(v70, v66);
    v35[-6] = vaddq_s32(v67, v69);
    v35[6] = vsubq_s32(v69, v67);
    ++v35;
    v36 -= 4;
  }

  while (v36);
  return result;
}

uint64_t _cg_jinit_2pass_quantizer(uint64_t a1)
{
  v2 = (**(a1 + 8))();
  *(a1 + 656) = v2;
  *v2 = start_pass_2_quant;
  *(v2 + 24) = new_color_map_2_quant;
  *(v2 + 64) = 0;
  *(v2 + 80) = 0;
  if (*(a1 + 144) != 3)
  {
    v3 = *a1;
    *(v3 + 10) = 48;
    (*v3)(a1);
  }

  v4 = 0;
  *(v2 + 48) = (**(a1 + 8))(a1, 1, 256);
  do
  {
    result = (*(*(a1 + 8) + 8))(a1, 1, 4096);
    *(*(v2 + 48) + v4) = result;
    v4 += 8;
  }

  while (v4 != 256);
  *(v2 + 56) = 1;
  if (!*(a1 + 132))
  {
    *(v2 + 32) = 0;
    goto LABEL_13;
  }

  v6 = *(a1 + 120);
  if (v6 < 8)
  {
    v7 = 8;
    v8 = 58;
LABEL_11:
    v9 = *a1;
    *(v9 + 10) = v8;
    *(v9 + 12) = v7;
    (**a1)(a1);
    goto LABEL_12;
  }

  if (v6 >= 0x101)
  {
    v7 = 256;
    v8 = 59;
    goto LABEL_11;
  }

LABEL_12:
  result = (*(*(a1 + 8) + 16))(a1, 1, v6, 3);
  *(v2 + 32) = result;
  *(v2 + 40) = v6;
LABEL_13:
  if (*(a1 + 112))
  {
    *(a1 + 112) = 2;
    *(v2 + 64) = (*(*(a1 + 8) + 8))(a1, 1, 6 * (*(a1 + 136) + 2));

    return init_error_limit(a1);
  }

  return result;
}

void start_pass_2_quant(uint64_t a1, int a2)
{
  v3 = *(a1 + 656);
  v4 = *(v3 + 48);
  if (*(a1 + 112))
  {
    *(a1 + 112) = 2;
    v5 = pass2_fs_dither;
    if (a2)
    {
LABEL_3:
      *(v3 + 8) = prescan_quantize;
      *(v3 + 16) = finish_pass1;
      v6 = 1;
      v7 = 56;
      goto LABEL_16;
    }
  }

  else
  {
    v5 = pass2_no_dither;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  *(v3 + 8) = v5;
  *(v3 + 16) = finish_pass2;
  v8 = *(a1 + 156);
  if (v8 < 1)
  {
    v9 = 1;
    v10 = 58;
    goto LABEL_9;
  }

  if (v8 >= 0x101)
  {
    v9 = 256;
    v10 = 59;
LABEL_9:
    v11 = *a1;
    *(v11 + 10) = v10;
    *(v11 + 12) = v9;
    (**a1)(a1);
  }

  if (*(a1 + 112) != 2)
  {
    goto LABEL_17;
  }

  v12 = 6 * (*(a1 + 136) + 2);
  v13 = *(v3 + 64);
  if (!v13)
  {
    v13 = (*(*(a1 + 8) + 8))(a1, 1, v12);
    *(v3 + 64) = v13;
  }

  bzero(v13, v12);
  if (!*(v3 + 80))
  {
    init_error_limit(a1);
  }

  v6 = 0;
  v7 = 72;
LABEL_16:
  *(v3 + v7) = v6;
LABEL_17:
  if (*(v3 + 56))
  {
    for (i = 0; i != 256; i += 8)
    {
      bzero(*(v4 + i), 0x1000uLL);
    }

    *(v3 + 56) = 0;
  }
}

uint64_t init_error_limit(uint64_t a1)
{
  v1 = *(a1 + 656);
  result = (**(a1 + 8))();
  v3 = 0;
  v4 = 0;
  v5 = result + 1020;
  *(v1 + 80) = result + 1020;
  do
  {
    *(v5 + 4 * v4) = v4;
    *(v5 + 4 * v3) = v3;
    ++v4;
    --v3;
  }

  while (v4 != 16);
  v6 = 16;
  v7 = 271;
  v8 = 956;
  do
  {
    *(result + 4 * v7) = v6;
    *(result + v8) = -v6;
    v6 += (v7++ - 1) & 1;
    v8 -= 4;
  }

  while (v7 != 303);
  v9 = 1212;
  for (i = 828; i != -4; i -= 4)
  {
    *(result + v9) = 32;
    *(result + i) = -32;
    v9 += 4;
  }

  return result;
}

uint64_t prescan_quantize(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = *(*(result + 656) + 48);
    v6 = *(result + 136);
    do
    {
      if (v6)
      {
        v7 = *(a2 + 8 * v4);
        v8 = v6;
        do
        {
          v9 = *(v5 + (*v7 & 0xF8)) + ((16 * v7[1]) & 0xFC0);
          v10 = (v7[2] >> 2) & 0x3E;
          v11 = *(v9 + v10);
          if (((v11 + 1) & 0x10000) == 0)
          {
            LOWORD(v11) = v11 + 1;
          }

          *(v9 + v10) = v11;
          v7 += 3;
          --v8;
        }

        while (v8);
      }

      ++v4;
    }

    while (v4 != a4);
  }

  return result;
}

uint64_t finish_pass1(uint64_t a1)
{
  v2 = *(a1 + 656);
  *(a1 + 160) = *(v2 + 32);
  v3 = *(v2 + 40);
  v4 = 1;
  v5 = (**(a1 + 8))();
  *v5 = xmmword_186208010;
  *(v5 + 16) = 0x1F00000000;
  v52 = v5;
  v53 = a1;
  update_box(a1, v5);
  if (v3 < 2)
  {
    goto LABEL_29;
  }

  v6 = 1;
  while (1)
  {
    if (v3 >= 2 * v6)
    {
      v7 = 0;
      v11 = 0;
      v12 = v6;
      v13 = v52;
      do
      {
        if (*(v13 + 32) > v11 && *(v13 + 24) > 0)
        {
          v11 = *(v13 + 32);
          v7 = v13;
        }

        v13 += 40;
        --v12;
      }

      while (v12);
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = v6;
      v10 = v52;
      do
      {
        if (*(v10 + 24) > v8)
        {
          v8 = *(v10 + 24);
          v7 = v10;
        }

        v10 += 40;
        --v9;
      }

      while (v9);
    }

    if (!v7)
    {
      break;
    }

    v14 = (v52 + 40 * v6);
    v15 = v7 + 1;
    v16 = v7[1];
    v17 = v7[3];
    v14[3] = v17;
    v18 = v7[5];
    v14[5] = v18;
    v19 = *v7;
    *v14 = *v7;
    v14[1] = v16;
    v20 = v7[2];
    v14[2] = v20;
    v21 = v14 + 2;
    v22 = v7[4];
    v14[4] = v22;
    v23 = 16 * (v16 - v19);
    v24 = v23 <= 12 * (v17 - v20);
    if (v23 <= 12 * (v17 - v20))
    {
      v23 = 12 * (v17 - v20);
    }

    if (v23 >= 8 * (v18 - v22))
    {
      v25 = v24;
    }

    else
    {
      v25 = 2;
    }

    if (v25 == 2)
    {
      v26 = v22 + v18;
      v15 = v7 + 5;
      v21 = v14 + 4;
    }

    else if (v25 == 1)
    {
      v26 = v20 + v17;
      v15 = v7 + 3;
    }

    else
    {
      v26 = v19 + v16;
      v21 = (v52 + 40 * v6);
    }

    *v15 = v26 / 2;
    *v21 = v26 / 2 + 1;
    update_box(a1, v7);
    update_box(a1, v14);
    if (++v6 == v3)
    {
      goto LABEL_28;
    }
  }

  LODWORD(v3) = v6;
LABEL_28:
  v4 = v3;
  if (v3 >= 1)
  {
LABEL_29:
    v27 = 0;
    v51 = v2;
    do
    {
      v28 = (v52 + 40 * v27);
      v29 = v28[1];
      v30 = *v28;
      if (v30 <= v29)
      {
        v34 = 0;
        v33 = 0;
        v32 = 0;
        v31 = 0;
        v35 = v28[5];
        v36 = v28[4];
        v37 = v28[3];
        v38 = v28[2];
        v39 = v29 + 1;
        do
        {
          if (v38 <= v37)
          {
            v40 = v38;
            do
            {
              if (v36 <= v35)
              {
                v41 = (*(*(*(v53 + 656) + 48) + 8 * v30) + (v40 << 6) + 2 * v36);
                v42 = (8 * v36) | 4;
                v43 = v35 - v36 + 1;
                do
                {
                  v44 = *v41++;
                  v45 = v31 + v44;
                  v46 = v32 + v44 * ((8 * v30) | 4);
                  v47 = v33 + v44 * ((4 * v40) | 2);
                  v48 = v34 + v44 * v42;
                  if (v44)
                  {
                    v31 = v45;
                    v32 = v46;
                    v33 = v47;
                    v34 = v48;
                  }

                  v42 += 8;
                  --v43;
                }

                while (v43);
              }

              ++v40;
            }

            while (v37 + 1 != v40);
          }

          ++v30;
        }

        while (v39 != v30);
      }

      else
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
      }

      *(**(v53 + 160) + v27) = (v32 + (v31 >> 1)) / v31;
      *(*(*(v53 + 160) + 8) + v27) = (v33 + (v31 >> 1)) / v31;
      *(*(*(v53 + 160) + 16) + v27++) = (v34 + (v31 >> 1)) / v31;
    }

    while (v27 != v4);
    v2 = v51;
  }

  *(v53 + 156) = v4;
  v49 = *v53;
  *(v49 + 40) = 98;
  *(v49 + 48) = v4;
  result = (*(*v53 + 8))(v53, 1);
  *(v2 + 56) = 1;
  return result;
}

uint64_t pass2_fs_dither(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v57 = result;
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = *(result + 656);
    v6 = *(v5 + 48);
    v7 = *(result + 136);
    result = *(result + 440);
    v8 = *(v5 + 80);
    v9 = *(v57 + 160);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v45 = (v7 - 1);
    v43 = (3 * v7 + 3);
    v44 = (3 * v7 - 3);
    v47 = *(v57 + 656);
    v48 = a4;
    v46 = *(v57 + 136);
    v55 = *v9;
    v56 = *(v57 + 440);
    v53 = v12;
    v54 = v6;
    v52 = v8;
    do
    {
      v13 = *(a2 + 8 * v4);
      v14 = *(a3 + 8 * v4);
      if (*(v5 + 72))
      {
        v15 = 0;
        v13 += v44;
        v14 += v45;
        v16 = (*(v5 + 64) + 2 * v43);
        v17 = -3;
        v18 = -1;
      }

      else
      {
        v16 = *(v5 + 64);
        v17 = 3;
        v15 = 1;
        v18 = 1;
      }

      *(v5 + 72) = v15;
      if (v7)
      {
        v51 = v4;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v63 = v17;
        v64 = v17;
        v28 = (v13 + 2);
        v58 = v18;
        do
        {
          v65 = v24;
          v66 = v25;
          v67 = v26;
          v29 = &v16[v63];
          v30 = *(result + *(v8 + 4 * ((v19 + v16[v63] + 8) >> 4)) + *(v28 - 2));
          v31 = *(result + *(v8 + 4 * ((v20 + v16[v63 + 1] + 8) >> 4)) + *(v28 - 1));
          v32 = *(result + *(v8 + 4 * ((v21 + v16[v63 + 2] + 8) >> 4)) + *v28);
          v33 = *(v6 + 8 * (v30 >> 3)) + (v31 >> 2 << 6);
          v34 = *(v33 + 2 * (v32 >> 3));
          if (!*(v33 + 2 * (v32 >> 3)))
          {
            v62 = v16;
            v61 = v14;
            v35 = v11;
            v59 = v22;
            v60 = v23;
            fill_inverse_cmap(v57, v30 >> 3, v31 >> 2, v32 >> 3);
            v22 = v59;
            v23 = v60;
            v16 = v62;
            v8 = v52;
            v12 = v53;
            v11 = v35;
            v14 = v61;
            v10 = v55;
            result = v56;
            v18 = v58;
            v6 = v54;
            v34 = *(v33 + 2 * (v32 >> 3));
          }

          v36 = v34 - 1;
          *v14 = v36;
          v37 = v30 - *(v10 + v36);
          v38 = v31 - *(v11 + v36);
          v39 = v32 - *(v12 + v36);
          v40 = 3 * (v30 - *(v10 + v36)) + v66;
          v25 = 5 * v37 + v22;
          v41 = 3 * (v31 - *(v11 + v36)) + v67;
          v26 = 5 * v38 + v23;
          v42 = 3 * (v32 - *(v12 + v36)) + v27;
          v19 = 7 * v37;
          v27 = 5 * v39 + v65;
          v20 = 7 * v38;
          *v16 = v40;
          v16[1] = v41;
          v21 = 7 * v39;
          v14 += v18;
          v28 += v64;
          v16[2] = v42;
          v16 = v29;
          v22 = v37;
          v23 = v38;
          v24 = v39;
          --v7;
        }

        while (v7);
        v16 = v29;
        v4 = v51;
        v5 = v47;
        v7 = v46;
      }

      else
      {
        v27 = 0;
        v26 = 0;
        v25 = 0;
      }

      *v16 = v25;
      v16[1] = v26;
      v16[2] = v27;
      ++v4;
    }

    while (v4 != v48);
  }

  return result;
}

void pass2_no_dither(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v6 = 0;
    v7 = *(*(a1 + 656) + 48);
    v8 = *(a1 + 136);
    v9 = a4;
    do
    {
      if (v8)
      {
        v10 = *(a3 + 8 * v6);
        v11 = *(a2 + 8 * v6);
        v12 = v8;
        do
        {
          v13 = *v11 >> 3;
          v14 = v11[1] >> 2;
          v15 = v11[2] >> 3;
          v16 = (*(v7 + 8 * v13) + (v14 << 6) + 2 * v15);
          v17 = *v16;
          if (!*v16)
          {
            fill_inverse_cmap(a1, v13, v14, v15);
            LOBYTE(v17) = *v16;
          }

          *v10++ = v17 - 1;
          v11 += 3;
          --v12;
        }

        while (v12);
      }

      ++v6;
    }

    while (v6 != v9);
  }
}

uint64_t update_box(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 656) + 48);
  LODWORD(v4) = *a2;
  v3 = *(a2 + 4);
  v5 = *(a2 + 8);
  v6 = *(a2 + 12);
  v7 = v5;
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  v10 = v8;
  if (v3 > *a2)
  {
    v11 = v4;
    result = (v6 + 1);
    while (v5 > v6)
    {
LABEL_4:
      if (v3 + 1 == ++v11)
      {
        goto LABEL_14;
      }
    }

    v12 = v5;
    while (v8 > v9)
    {
LABEL_11:
      if (result == ++v12)
      {
        goto LABEL_4;
      }
    }

    v13 = (*(v2 + 8 * v11) + (v12 << 6) + 2 * v8);
    v14 = v9 - v8 + 1;
    while (!*v13)
    {
      ++v13;
      if (!--v14)
      {
        goto LABEL_11;
      }
    }

    *a2 = v11;
    LODWORD(v4) = v11;
  }

LABEL_14:
  if (v3 > v4)
  {
    v15 = v3;
    result = (v6 + 1);
    while (v5 > v6)
    {
LABEL_17:
      v16 = v15-- <= v4;
      if (v16)
      {
        goto LABEL_28;
      }
    }

    v17 = v5;
    while (v8 > v9)
    {
LABEL_25:
      if (result == ++v17)
      {
        goto LABEL_17;
      }
    }

    v18 = (*(v2 + 8 * v15) + (v17 << 6) + 2 * v8);
    v19 = v9 - v8 + 1;
    while (!*v18)
    {
      ++v18;
      if (!--v19)
      {
        goto LABEL_25;
      }
    }

    *(a2 + 4) = v15;
    v3 = v15;
  }

LABEL_28:
  if (v6 > v5)
  {
    result = (v3 + 1);
    while (v3 < v4)
    {
LABEL_31:
      if (v6 + 1 == ++v7)
      {
        goto LABEL_41;
      }
    }

    v20 = v4;
    while (v8 > v9)
    {
LABEL_38:
      if (result == ++v20)
      {
        goto LABEL_31;
      }
    }

    v21 = (*(v2 + 8 * v20) + (v7 << 6) + 2 * v8);
    v22 = v9 - v8 + 1;
    while (!*v21)
    {
      ++v21;
      if (!--v22)
      {
        goto LABEL_38;
      }
    }

    *(a2 + 8) = v7;
    v5 = v7;
  }

LABEL_41:
  if (v6 > v5)
  {
    v23 = v6;
    result = (v3 + 1);
    while (v3 < v4)
    {
LABEL_44:
      v16 = v23-- <= v5;
      if (v16)
      {
        goto LABEL_55;
      }
    }

    v24 = v4;
    while (v8 > v9)
    {
LABEL_52:
      if (result == ++v24)
      {
        goto LABEL_44;
      }
    }

    v25 = (*(v2 + 8 * v24) + (v23 << 6) + 2 * v8);
    v26 = v9 - v8 + 1;
    while (!*v25)
    {
      ++v25;
      if (!--v26)
      {
        goto LABEL_52;
      }
    }

    *(a2 + 12) = v23;
    v6 = v23;
  }

LABEL_55:
  if (v9 > v8)
  {
    result = (v3 + 1);
    while (v3 < v4)
    {
LABEL_58:
      if (v9 + 1 == ++v10)
      {
        goto LABEL_68;
      }
    }

    v27 = v4;
    while (v6 < v5)
    {
LABEL_65:
      if (result == ++v27)
      {
        goto LABEL_58;
      }
    }

    v28 = (*(v2 + 8 * v27) + (v5 << 6) + 2 * v10);
    v29 = v6 - v5 + 1;
    while (!*v28)
    {
      v28 += 32;
      if (!--v29)
      {
        goto LABEL_65;
      }
    }

    *(a2 + 16) = v10;
    v8 = v10;
  }

LABEL_68:
  if (v9 > v8)
  {
    v30 = v9;
    result = (v3 + 1);
    while (v3 < v4)
    {
LABEL_71:
      v16 = v30-- <= v8;
      if (v16)
      {
        goto LABEL_82;
      }
    }

    v31 = v4;
    while (v6 < v5)
    {
LABEL_79:
      if (result == ++v31)
      {
        goto LABEL_71;
      }
    }

    v32 = (*(v2 + 8 * v31) + (v5 << 6) + 2 * v30);
    v33 = v6 - v5 + 1;
    while (!*v32)
    {
      v32 += 32;
      if (!--v33)
      {
        goto LABEL_79;
      }
    }

    *(a2 + 20) = v30;
    v9 = v30;
  }

LABEL_82:
  *(a2 + 24) = 12 * (v6 - v5) * (12 * (v6 - v5)) + 16 * (v3 - v4) * (16 * (v3 - v4)) + 8 * (v9 - v8) * (8 * (v9 - v8));
  v34 = 0;
  if (v3 >= v4)
  {
    result = (v6 + 1);
    v4 = v4;
    v35 = v3 + 1;
    do
    {
      if (v6 >= v5)
      {
        v36 = v5;
        do
        {
          if (v9 >= v8)
          {
            v37 = (*(v2 + 8 * v4) + (v36 << 6) + 2 * v8);
            v38 = v9 - v8 + 1;
            do
            {
              if (*v37++)
              {
                ++v34;
              }

              --v38;
            }

            while (v38);
          }

          ++v36;
        }

        while (result != v36);
      }

      ++v4;
    }

    while (v35 != v4);
  }

  *(a2 + 32) = v34;
  return result;
}

void fill_inverse_cmap(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  __b[256] = *MEMORY[0x1E69E9840];
  v8 = *(*(a1 + 656) + 48);
  memset(v72, 0, sizeof(v72));
  memset(v71, 0, sizeof(v71));
  v9 = *(a1 + 156);
  bzero(__b, 0x800uLL);
  if (v9 > 0)
  {
    v10 = 0;
    v11 = (32 * (a2 >> 2)) | 4;
    v12 = 4 * a3;
    v13 = v12 & 0xFFFFFFFFFFFFFFE0 | 2;
    v14 = 8 * a4;
    v15 = v14 & 0xFFFFFFFFFFFFFFE0 | 4;
    v16 = (8 * a2) | 0x1C;
    v17 = v12 | 0x1E;
    v18 = (v13 + (v12 | 0x1E)) >> 1;
    v19 = v14 | 0x1C;
    v20 = *(a1 + 160);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    v24 = 0x7FFFFFFFLL;
    do
    {
      v25 = *(v21 + v10);
      if ((v11 + v16) >> 1 >= v25)
      {
        v26 = (8 * a2) | 0x1C;
      }

      else
      {
        v26 = (32 * (a2 >> 2)) | 4;
      }

      v27 = 2 * (v25 - v16) * (2 * (v25 - v16));
      if (v25 <= v16)
      {
        v27 = 0;
      }

      else
      {
        v26 = (32 * (a2 >> 2)) | 4;
      }

      if (v25 < v11)
      {
        v26 = (8 * a2) | 0x1C;
        v27 = 2 * (v25 - v11) * (2 * (v25 - v11));
      }

      v28 = 2 * (v25 - v26) * (2 * (v25 - v26));
      v29 = *(v22 + v10);
      if (v18 >= v29)
      {
        v30 = v17;
      }

      else
      {
        v30 = v13;
      }

      v31 = v27 + 3 * (v29 - v17) * 3 * (v29 - v17);
      if (v29 <= v17)
      {
        v31 = v27;
      }

      else
      {
        v30 = v13;
      }

      v32 = v27 + 3 * (v29 - v13) * 3 * (v29 - v13);
      if (v29 >= v13)
      {
        v32 = v31;
      }

      else
      {
        v30 = v17;
      }

      v33 = v28 + 3 * (v29 - v30) * 3 * (v29 - v30);
      v34 = *(v23 + v10);
      if ((v15 + v19) >> 1 >= v34)
      {
        v35 = v19;
      }

      else
      {
        v35 = v15;
      }

      v36 = v32 + (v34 - v19) * (v34 - v19);
      if (v34 <= v19)
      {
        v36 = v32;
      }

      else
      {
        v35 = v15;
      }

      v37 = v32 + (v34 - v15) * (v34 - v15);
      if (v34 >= v15)
      {
        v37 = v36;
      }

      else
      {
        v35 = v19;
      }

      v38 = v33 + (v34 - v35) * (v34 - v35);
      __b[v10] = v37;
      if (v38 < v24)
      {
        v24 = v38;
      }

      ++v10;
    }

    while (v9 != v10);
    v39 = 0;
    v40 = 0;
    do
    {
      if (__b[v39] <= v24)
      {
        *(v72 + v40++) = v39;
      }

      ++v39;
    }

    while (v9 != v39);
    memset_pattern16(__b, &unk_186208020, 0x400uLL);
    if (v40 >= 1)
    {
      v41 = 0;
      v42 = v13;
      v43 = v15;
      do
      {
        v44 = *(v72 + v41);
        v45 = *(a1 + 160);
        v46 = 2 * (v11 - *(*v45 + v44));
        v47 = v42 - *(v45[1] + v44);
        v48 = v43 - *(v45[2] + v44);
        v49 = 3 * v47 * 3 * v47 + v46 * v46 + v48 * v48;
        v50 = 32 * v46 + 256;
        v51 = 72 * v47 + 144;
        v52 = 16 * v48 + 64;
        v53 = 3;
        v54 = __b;
        v55 = v71;
        do
        {
          v56 = v53;
          v57 = 7;
          v58 = v51;
          v59 = v49;
          do
          {
            v60 = v57;
            v61 = -4;
            v62 = v52;
            v63 = v59;
            do
            {
              if (v63 < *v54)
              {
                *v54 = v63;
                *v55 = v44;
              }

              v63 += v62;
              v62 += 128;
              ++v54;
              ++v55;
            }

            while (!__CFADD__(v61++, 1));
            v59 += v58;
            v58 += 288;
            v57 = v60 - 1;
          }

          while (v60);
          v49 += v50;
          v50 += 512;
          v53 = v56 - 1;
        }

        while (v56);
        ++v41;
      }

      while (v41 != v40);
    }
  }

  v65 = 0;
  v66 = v71;
  do
  {
    v67 = 0;
    v68 = *(v8 + 8 * (v65 | (a2 & 0xFFFFFFFC))) + ((2 * a4) & 0x1FFFFFFF8) + ((a3 & 0xFFFFFFF8) << 6);
    do
    {
      for (i = 0; i != 8; i += 2)
      {
        v70 = *v66++;
        *(v68 + i) = v70 + 1;
      }

      ++v67;
      v68 += 64;
    }

    while (v67 != 8);
    ++v65;
  }

  while (v65 != 4);
}

uint64_t _cg_jpeg_CreateDecompress(char *a1, int a2, uint64_t a3)
{
  *(a1 + 1) = 0;
  if (a2 != 90)
  {
    v5 = *a1;
    *(v5 + 40) = 13;
    *(v5 + 48) = 90;
    *(*a1 + 52) = a2;
    (**a1)(a1);
  }

  if (a3 != 664)
  {
    v6 = *a1;
    *(v6 + 40) = 22;
    *(v6 + 48) = 664;
    *(*a1 + 52) = a3;
    (**a1)(a1);
  }

  v7 = *a1;
  v8 = *(a1 + 3);
  bzero(a1, 0x298uLL);
  *a1 = v7;
  *(a1 + 3) = v8;
  *(a1 + 8) = 1;
  _cg_jinit_memory_mgr(a1);
  *(a1 + 2) = 0;
  *(a1 + 5) = 0;
  *(a1 + 51) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  _cg_jinit_marker_reader(a1);
  result = _cg_jinit_input_controller(a1);
  *(a1 + 9) = 200;
  return result;
}

uint64_t _cg_jpeg_read_header(uint64_t a1, int a2)
{
  v4 = *(a1 + 36);
  if ((v4 & 0xFFFFFFFE) != 0xC8)
  {
    v5 = *a1;
    *(v5 + 10) = 21;
    *(v5 + 12) = v4;
    (**a1)(a1);
  }

  v6 = _cg_jpeg_consume_input(a1);
  if (v6 == 2)
  {
    if (a2)
    {
      v7 = *a1;
      *(v7 + 40) = 53;
      (*v7)(a1);
    }

    _cg_jpeg_abort(a1);
  }

  return v6;
}

uint64_t _cg_jpeg_consume_input(uint64_t *a1)
{
  v2 = *(a1 + 9);
  if (v2 > 202)
  {
    if ((v2 - 203) >= 6 && v2 != 210)
    {
LABEL_11:
      v5 = *a1;
      *(v5 + 10) = 21;
      *(v5 + 12) = v2;
      (**a1)(a1);
      return 0;
    }

    v3 = *a1[76];

    return v3();
  }

  switch(v2)
  {
    case 200:
      (*(a1[76] + 8))(a1);
      (*(a1[5] + 16))(a1);
      *(a1 + 9) = 201;
      break;
    case 201:
      break;
    case 202:
      return 1;
    default:
      goto LABEL_11;
  }

  result = (*a1[76])(a1);
  if (result == 1)
  {
    v6 = *(a1 + 14);
    if (v6 == 1)
    {
      v13 = 1;
      goto LABEL_51;
    }

    if (v6 == 4)
    {
      if (*(a1 + 97) && (v14 = *(a1 + 392), *(a1 + 392)))
      {
        if (v14 != 2)
        {
          v15 = *a1;
          *(v15 + 10) = 116;
          *(v15 + 12) = v14;
          (*(*a1 + 8))(a1, 0xFFFFFFFFLL);
        }

        v13 = 4;
        v6 = 5;
      }

      else
      {
        v6 = 4;
        v13 = 4;
      }

      goto LABEL_51;
    }

    if (v6 != 3)
    {
      v6 = 0;
      v13 = 0;
      goto LABEL_51;
    }

    v7 = a1[38];
    v8 = *v7;
    v9 = v7[24];
    v10 = v7[48];
    if (v8 != 1 || v9 != 2 || v10 != 3)
    {
      if (v8 == 1 && v9 == 34 && v10 == 35)
      {
        v13 = 2;
        v6 = 7;
LABEL_51:
        *(a1 + 15) = v6;
        *(a1 + 16) = v13;
        v19 = *(a1 + 139);
        *(a1 + 17) = v19;
        *(a1 + 18) = v19;
        a1[10] = 0x3FF0000000000000;
        *(a1 + 11) = xmmword_186207E00;
        *(a1 + 13) = xmmword_186208040;
        a1[20] = 0;
        *(a1 + 15) = xmmword_186208050;
        result = 1;
        *(a1 + 9) = 202;
        return result;
      }

      if (v8 == 82 && v9 == 71 && v10 == 66)
      {
LABEL_39:
        v6 = 2;
        v13 = 2;
        goto LABEL_51;
      }

      if (v8 == 114 && v9 == 103 && v10 == 98)
      {
        v13 = 2;
        v6 = 6;
        goto LABEL_51;
      }

      if (!*(a1 + 94))
      {
        if (*(a1 + 97))
        {
          v16 = *(a1 + 392);
          if (!*(a1 + 392))
          {
            goto LABEL_39;
          }

          if (v16 != 1)
          {
            v17 = *a1;
            *(v17 + 40) = 116;
            *(v17 + 48) = v16;
            (*(*a1 + 8))(a1, 0xFFFFFFFFLL);
          }
        }

        else
        {
          v18 = *a1;
          *(v18 + 48) = v8;
          *(v18 + 52) = v9;
          *(v18 + 56) = v10;
          *(v18 + 40) = 113;
          (*(v18 + 8))(a1, 1);
        }
      }
    }

    v13 = 2;
    v6 = 3;
    goto LABEL_51;
  }

  return result;
}

uint64_t _cg_jpeg_input_complete(uint64_t a1)
{
  v2 = *(a1 + 36);
  if ((v2 - 211) <= 0xFFFFFFF4)
  {
    v3 = *a1;
    *(v3 + 10) = 21;
    *(v3 + 12) = v2;
    (**a1)(a1);
  }

  return *(*(a1 + 608) + 36);
}

uint64_t _cg_jpeg_has_multiple_scans(uint64_t a1)
{
  v2 = *(a1 + 36);
  if ((v2 - 211) <= 0xFFFFFFF6)
  {
    v3 = *a1;
    *(v3 + 10) = 21;
    *(v3 + 12) = v2;
    (**a1)(a1);
  }

  return *(*(a1 + 608) + 32);
}

uint64_t _cg_jpeg_finish_decompress(uint64_t a1)
{
  v2 = *(a1 + 36);
  if ((v2 - 205) > 1 || *(a1 + 88))
  {
    if (v2 == 210)
    {
      goto LABEL_10;
    }

    if (v2 != 207)
    {
      v3 = *a1;
      *(v3 + 10) = 21;
      *(v3 + 12) = v2;
      (**a1)(a1);
      goto LABEL_10;
    }
  }

  else
  {
    if (*(a1 + 168) < *(a1 + 140))
    {
      v4 = *a1;
      *(v4 + 10) = 69;
      (*v4)(a1);
    }

    (*(*(a1 + 576) + 8))(a1);
  }

  *(a1 + 36) = 210;
LABEL_10:
  while (1)
  {
    v5 = *(a1 + 608);
    if (*(v5 + 36))
    {
      break;
    }

    result = (*v5)(a1);
    if (!result)
    {
      return result;
    }
  }

  (*(*(a1 + 40) + 48))(a1);
  _cg_jpeg_abort(a1);
  return 1;
}

uint64_t _cg_jinit_upsampler(uint64_t *a1)
{
  result = (*a1[1])();
  v3 = result;
  a1[80] = result;
  *result = start_pass_upsample;
  *(result + 8) = sep_upsample;
  *(result + 16) = 0;
  if (*(a1 + 100))
  {
    v4 = *a1;
    *(v4 + 40) = 26;
    result = (*v4)(a1);
  }

  if (*(a1 + 14) >= 1)
  {
    v5 = 0;
    for (i = (a1[38] + 36); ; i += 24)
    {
      v7 = *(a1 + 106);
      v8 = *(i - 7);
      v9 = *i;
      v10 = i[1] * *(i - 6) / *(a1 + 107);
      v11 = *(a1 + 104);
      v12 = *(a1 + 105);
      *(v3 + 4 * v5 + 192) = v10;
      v13 = noop_upsample;
      if (i[4])
      {
        v14 = v9 * v8 / v7;
        v13 = fullsize_upsample;
        if (v14 != v11 || v10 != v12)
        {
          break;
        }
      }

      v15 = v3 + 104;
LABEL_24:
      *(v15 + 8 * v5++) = v13;
      if (v5 >= *(a1 + 14))
      {
        return result;
      }
    }

    if (2 * v14 == v11 && v10 == v12)
    {
      v21 = v3 + 8 * v5;
      v22 = h2v1_upsample;
    }

    else
    {
      if (2 * v14 != v11 || 2 * v10 != v12)
      {
        v18 = v11 / v14;
        if (v11 % v14 || (v19 = v12 / v10, v12 % v10))
        {
          v20 = *a1;
          *(v20 + 40) = 39;
          (*v20)(a1);
        }

        else
        {
          *(v3 + 8 * v5 + 104) = int_upsample;
          v25 = v3 + v5;
          *(v25 + 232) = v18;
          *(v25 + 242) = v19;
        }

        goto LABEL_23;
      }

      v21 = v3 + 8 * v5;
      v22 = h2v2_upsample;
    }

    *(v21 + 104) = v22;
LABEL_23:
    v23 = *(a1[1] + 16);
    v24 = _cg_jround_up(*(a1 + 34), *(a1 + 104));
    result = v23(a1, 1, v24, *(a1 + 105));
    v13 = result;
    v15 = v3 + 24;
    goto LABEL_24;
  }

  return result;
}

uint64_t start_pass_upsample(uint64_t result)
{
  v1 = *(result + 640);
  v2 = *(result + 140);
  *(v1 + 184) = *(result + 420);
  *(v1 + 188) = v2;
  return result;
}

uint64_t sep_upsample(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, _DWORD *a6, int a7)
{
  v11 = *(a1 + 640);
  v12 = *(v11 + 184);
  v13 = *(a1 + 420);
  if (v12 >= v13)
  {
    if (*(a1 + 56) >= 1)
    {
      v15 = 0;
      v16 = *(a1 + 304);
      v17 = (v11 + 104);
      do
      {
        v18 = v17 - 10;
        v19 = *v17++;
        v19(a1, v16, *(a2 + 8 * v15) + 8 * (*(v11 + 192 + 4 * v15) * *a3), v18);
        ++v15;
        v16 += 96;
      }

      while (v15 < *(a1 + 56));
      v13 = *(a1 + 420);
    }

    v12 = 0;
    *(v11 + 184) = 0;
  }

  v20 = v13 - v12;
  if (v20 >= *(v11 + 188))
  {
    v20 = *(v11 + 188);
  }

  if (v20 >= a7 - *a6)
  {
    v21 = a7 - *a6;
  }

  else
  {
    v21 = v20;
  }

  result = (*(*(a1 + 648) + 8))(a1, v11 + 24);
  *a6 += v21;
  v23 = *(v11 + 188) - v21;
  v24 = *(v11 + 184) + v21;
  *(v11 + 184) = v24;
  *(v11 + 188) = v23;
  if (v24 >= *(a1 + 420))
  {
    ++*a3;
  }

  return result;
}

uint64_t h2v1_upsample(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(result + 420);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *a4;
    do
    {
      v7 = *(result + 136);
      if (v7)
      {
        v8 = *(v6 + 8 * v5);
        v9 = &v8[v7];
        v10 = *(a3 + 8 * v5);
        do
        {
          v11 = *v10++;
          *v8 = v11;
          v8[1] = v11;
          v8 += 2;
        }

        while (v8 < v9);
        v4 = *(result + 420);
      }

      ++v5;
    }

    while (v5 < v4);
  }

  return result;
}

char *h2v2_upsample(char *result, uint64_t a2, uint64_t a3, char **a4)
{
  if (*(result + 105) >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = *a4;
    do
    {
      v9 = *(v5 + 34);
      if (v9)
      {
        v10 = *&v8[8 * v7];
        v11 = &v10[v9];
        v12 = *(a3 + 8 * v6);
        do
        {
          v13 = *v12++;
          *v10 = v13;
          v10[1] = v13;
          v10 += 2;
        }

        while (v10 < v11);
        v14 = *(v5 + 34);
      }

      else
      {
        v14 = 0;
      }

      result = _cg_jcopy_sample_rows(v8, v7, v8, v7 | 1, 1, v14);
      ++v6;
      v7 += 2;
    }

    while (*(v5 + 105) > v7);
  }

  return result;
}

void *int_upsample(void *result, uint64_t a2, uint64_t a3, char **a4)
{
  if (*(result + 105) >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *a4;
    v8 = result[80] + *(a2 + 4);
    v9 = *(v8 + 242);
    v10 = *(v8 + 232);
    do
    {
      v11 = *(v4 + 34);
      if (v11)
      {
        v12 = *&v7[8 * v6];
        v13 = &v12[v11];
        v14 = *(a3 + 8 * v5);
        do
        {
          if (v10)
          {
            result = memset(v12, *v14, v10);
            v12 += (v10 - 1) + 1;
          }

          ++v14;
        }

        while (v12 < v13);
      }

      if (v9 >= 2)
      {
        result = _cg_jcopy_sample_rows(v7, v6, v7, v6 + 1, v9 - 1, *(v4 + 34));
      }

      ++v5;
      v6 += v9;
    }

    while (*(v4 + 105) > v6);
  }

  return result;
}

uint64_t _cg_jinit_d_post_controller(uint64_t a1, int a2)
{
  result = (**(a1 + 8))();
  *(a1 + 600) = result;
  *result = start_pass_dpost;
  *(result + 16) = 0;
  *(result + 24) = 0;
  if (*(a1 + 108))
  {
    v5 = result;
    v6 = *(a1 + 420);
    *(result + 32) = v6;
    v7 = *(a1 + 8);
    v8 = *(a1 + 136);
    v9 = *(a1 + 144);
    v10 = (v9 * v8);
    if (a2)
    {
      v11 = *(v7 + 32);
      v12 = _cg_jround_up(*(a1 + 140), v6);
      result = v11(a1, 1, 0, v10, v12, *(v5 + 32));
      *(v5 + 16) = result;
    }

    else
    {
      result = (*(v7 + 16))(a1, 1, (v9 * v8));
      *(v5 + 24) = result;
    }
  }

  return result;
}

uint64_t start_pass_dpost(uint64_t result, int a2)
{
  v2 = *(result + 600);
  if (a2 == 3)
  {
    if (!*(v2 + 16))
    {
      v5 = *result;
      *(v5 + 40) = 3;
      result = (*v5)(result);
    }

    v4 = post_process_prepass;
    goto LABEL_13;
  }

  if (a2 == 2)
  {
    if (!*(v2 + 16))
    {
      v3 = *result;
      *(v3 + 40) = 3;
      result = (*v3)(result);
    }

    v4 = post_process_2pass;
LABEL_13:
    *(v2 + 8) = v4;
    goto LABEL_16;
  }

  if (a2)
  {
    v6 = *result;
    *(v6 + 40) = 3;
    result = (*v6)(result);
  }

  else if (*(result + 108))
  {
    *(v2 + 8) = post_process_1pass;
    if (!*(v2 + 24))
    {
      result = (*(*(result + 8) + 56))();
      *(v2 + 24) = result;
    }
  }

  else
  {
    *(v2 + 8) = *(*(result + 640) + 8);
  }

LABEL_16:
  *(v2 + 36) = 0;
  *(v2 + 40) = 0;
  return result;
}

uint64_t post_process_1pass(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v9 = a1[75];
  (*(a1[80] + 8))();
  result = (*(a1[82] + 8))(a1, *(v9 + 24), a5 + 8 * *a6, 0);
  *a6 = *a6;
  return result;
}

uint64_t post_process_prepass(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v11 = a1[75];
  v12 = *(v11 + 40);
  if (v12)
  {
    v13 = *(v11 + 24);
  }

  else
  {
    v13 = (*(a1[1] + 56))(a1, *(v11 + 16), *(v11 + 36), *(v11 + 32), 1);
    *(v11 + 24) = v13;
    v12 = *(v11 + 40);
  }

  result = (*(a1[80] + 8))(a1, a2, a3, a4, v13, v11 + 40, *(v11 + 32));
  v15 = *(v11 + 40);
  v16 = v15 - v12;
  if (v15 > v12)
  {
    result = (*(a1[82] + 8))(a1, *(v11 + 24) + 8 * v12, 0, v16);
    *a6 += v16;
    v15 = *(v11 + 40);
  }

  v17 = *(v11 + 32);
  if (v15 >= v17)
  {
    *(v11 + 36) = *(v11 + 36) + v17;
  }

  return result;
}

uint64_t post_process_2pass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, int a7)
{
  v11 = *(a1 + 600);
  v12 = *(v11 + 40);
  if (v12)
  {
    v13 = *(v11 + 24);
  }

  else
  {
    v13 = (*(*(a1 + 8) + 56))(a1, *(v11 + 16), *(v11 + 36), *(v11 + 32), 0);
    *(v11 + 24) = v13;
    v12 = *(v11 + 40);
  }

  v14 = *(v11 + 32) - v12;
  v15 = *a6;
  if (v14 >= a7 - v15)
  {
    v14 = a7 - v15;
  }

  v16 = *(a1 + 140) - *(v11 + 36);
  if (v14 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v14;
  }

  result = (*(*(a1 + 656) + 8))(a1, v13 + 8 * v12, a5 + 8 * v15, v17);
  *a6 += v17;
  v19 = *(v11 + 40) + v17;
  *(v11 + 40) = v19;
  v20 = *(v11 + 32);
  if (v19 >= v20)
  {
    *(v11 + 36) = *(v11 + 36) + v20;
  }

  return result;
}

void *KTX2ReadPlugin::KTX2ReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  result = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *result = &unk_1EF4D3620;
  result[58] = 0;
  return result;
}

void KTX2ReadPlugin::~KTX2ReadPlugin(KTX2ReadPlugin *this)
{
  *this = &unk_1EF4D3620;
  v2 = *(this + 58);
  if (v2)
  {
    (**(v2 + 8))();
  }

  IIOReadPlugin::~IIOReadPlugin(this);
}

{
  KTX2ReadPlugin::~KTX2ReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t KTX2ReadPlugin::loadDataFromXPCObject(KTX2ReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_ktx", &length);
    if (length == 32)
    {
      v6 = data;
      result = 0;
      v7 = v6[1];
      *(this + 29) = *v6;
      *(this + 30) = v7;
      *(this + 58) = 0;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t KTX2ReadPlugin::saveDataToXPCObject(KTX2ReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_ktx", this + 464, 0x20uLL);
  }

  return v4;
}

uint64_t KTX2ReadPlugin::initialize(IIOImageReadSession **this, IIODictionary *a2)
{
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  IIOScanner::IIOScanner(v26, this[3]);
  v25 = 0;
  if (*(this + 369) != 1)
  {
    goto LABEL_26;
  }

  KTXTexture = CreateKTXTexture(this[3]);
  v4 = KTXTexture;
  if (!KTXTexture)
  {
    goto LABEL_26;
  }

  v5 = *(KTXTexture + 36);
  v6 = *(KTXTexture + 40);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v6 = 1;
  }

  *(this + 61) = v5;
  *(this + 62) = v6;
  *(this + 128) = 8;
  if (!GetKtx2FormatInfo(KTXTexture, &v25))
  {
    goto LABEL_26;
  }

  v8 = v25;
  *(this + 128) = v25[1];
  if ((v8[12] & 2) != 0)
  {
    *(this + 373) = 1;
  }

  v9 = *v8;
  if (v9 == 3)
  {
    v10 = 5;
  }

  else
  {
    if (v9 != 4)
    {
      *(this + 262) = 5;
      v11 = MEMORY[0x1E695F140];
      goto LABEL_20;
    }

    v10 = 3;
  }

  *(this + 262) = v10;
  if (*(this + 373))
  {
    v11 = MEMORY[0x1E695F108];
  }

  else
  {
    v11 = MEMORY[0x1E695F1C0];
  }

LABEL_20:
  this[20] = CGColorSpaceCreateWithName(*v11);
  *(this + 85) = 1380401696;
  if (*(v4 + 30))
  {
    v12 = *(this + 61);
    v13 = *(this + 62);
    v14 = *v25;
    if (v13 * v12 * v14 > IIOImageReadSession::getSize(this[3]))
    {
      v20 = *(this + 61);
      v21 = *(this + 62);
      v22 = *v25;
      Size = IIOImageReadSession::getSize(this[3]);
      _cg_jpeg_mem_term("initialize", 161, "*** bad KTX: [%ldx%ld]  channels: %ld  fileSize: %d\n", v20, v21, v22, Size);
LABEL_26:
      kdebug_trace();
      v18 = 4294967246;
      goto LABEL_27;
    }
  }

  v15 = *(this + 128);
  *(this + 129) = 4 * v15;
  *(this + 130) = 4;
  *(this + 374) = 0;
  this[58] = v4;
  v16 = *(this + 61);
  if (v16 >> 30)
  {
    goto LABEL_26;
  }

  v17 = 4 * v16 * (v15 >> 3);
  if ((v17 & 0xFFFFFFFF00000000) != 0)
  {
    goto LABEL_26;
  }

  v18 = 0;
  *(this + 63) = v17;
  v19 = v25;
  this[59] = *v25;
  this[60] = 4;
  *(this + 122) = *(v19 + 5);
  *(this + 204) = 1;
LABEL_27:
  IIOScanner::~IIOScanner(v26);
  return v18;
}

void sub_185F9C674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIOScanner::~IIOScanner(va);
  _Unwind_Resume(a1);
}

uint64_t KTX2ReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  if (v2 == 12)
  {
    return IIOReadPlugin::setupImageProviderCallbackV2(a1, a2);
  }

  if (v2 == 1)
  {
    return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

uint64_t _cg_jpeg_start_decompress(uint64_t a1)
{
  v2 = *(a1 + 36);
  if (v2 == 204)
  {
    goto LABEL_22;
  }

  if (v2 != 203)
  {
    if (v2 != 202)
    {
      v4 = *a1;
      *(v4 + 10) = 21;
      *(v4 + 12) = v2;
      (**a1)(a1);
LABEL_22:

      return output_pass_setup(a1);
    }

    _cg_jinit_master_decompress(a1);
    if (*(a1 + 88))
    {
      *(a1 + 36) = 207;
      return 1;
    }

    *(a1 + 36) = 203;
  }

  if (!*(*(a1 + 608) + 32))
  {
LABEL_21:
    *(a1 + 180) = *(a1 + 172);
    goto LABEL_22;
  }

  v5 = *(a1 + 16);
  while (1)
  {
    if (v5)
    {
      (*v5)(a1);
    }

    result = (**(a1 + 608))(a1);
    if (!result)
    {
      return result;
    }

    if (result == 2)
    {
      goto LABEL_21;
    }

    v5 = *(a1 + 16);
    if ((result & 0xFFFFFFFD) == 1 && v5 != 0)
    {
      v7 = *(v5 + 16);
      v8 = *(v5 + 8) + 1;
      *(v5 + 8) = v8;
      if (v8 >= v7)
      {
        *(v5 + 16) = v7 + *(a1 + 432);
      }
    }
  }
}

uint64_t output_pass_setup(uint64_t a1)
{
  if (*(a1 + 36) != 204)
  {
    (**(a1 + 576))(a1);
    *(a1 + 168) = 0;
    *(a1 + 36) = 204;
  }

  if (*(*(a1 + 576) + 16))
  {
    v2 = *(a1 + 168);
    do
    {
      while (1)
      {
        v3 = *(a1 + 140);
        if (v2 < v3)
        {
          break;
        }

        (*(*(a1 + 576) + 8))(a1);
        (**(a1 + 576))(a1);
        v2 = 0;
        *(a1 + 168) = 0;
        if (!*(*(a1 + 576) + 16))
        {
          goto LABEL_12;
        }
      }

      v4 = *(a1 + 16);
      if (v4)
      {
        *(v4 + 8) = v2;
        *(v4 + 16) = v3;
        (*v4)(a1);
        v2 = *(a1 + 168);
      }

      (*(*(a1 + 584) + 8))(a1, 0, a1 + 168, 0);
      v5 = *(a1 + 168) == v2;
      v2 = *(a1 + 168);
    }

    while (!v5);
    return 0;
  }

  else
  {
LABEL_12:
    if (*(a1 + 92))
    {
      v6 = 206;
    }

    else
    {
      v6 = 205;
    }

    *(a1 + 36) = v6;
    return 1;
  }
}

uint64_t _cg_jpeg_read_scanlines(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 36);
  if (v6 != 205)
  {
    v7 = *a1;
    *(v7 + 10) = 21;
    *(v7 + 12) = v6;
    (**a1)(a1);
  }

  v8 = *(a1 + 168);
  v9 = *(a1 + 140);
  if (v8 >= v9)
  {
    v12 = *a1;
    *(v12 + 10) = 126;
    (v12[1])(a1, 0xFFFFFFFFLL);
    return 0;
  }

  else
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      *(v10 + 8) = v8;
      *(v10 + 16) = v9;
      (*v10)(a1);
    }

    v13 = 0;
    (*(*(a1 + 584) + 8))(a1, a2, &v13, a3);
    result = v13;
    *(a1 + 168) += v13;
  }

  return result;
}

uint64_t _cg_jpeg_read_raw_data(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 36);
  if (v6 != 206)
  {
    v7 = *a1;
    *(v7 + 10) = 21;
    *(v7 + 12) = v6;
    (**a1)(a1);
  }

  v8 = *(a1 + 168);
  v9 = *(a1 + 140);
  if (v8 >= v9)
  {
    v13 = *a1;
    *(v13 + 10) = 126;
    (v13[1])(a1, 0xFFFFFFFFLL);
    return 0;
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    *(v10 + 8) = v8;
    *(v10 + 16) = v9;
    (*v10)(a1);
  }

  v11 = (*(a1 + 428) * *(a1 + 420));
  if (v11 > a3)
  {
    v12 = *a1;
    *(v12 + 10) = 24;
    (*v12)(a1);
  }

  if (!(*(*(a1 + 592) + 24))(a1, a2))
  {
    return 0;
  }

  *(a1 + 168) += v11;
  return v11;
}

uint64_t _cg_jpeg_start_output(uint64_t a1, int a2)
{
  v4 = *(a1 + 36);
  if (v4 != 204 && v4 != 207)
  {
    v5 = *a1;
    *(v5 + 10) = 21;
    *(v5 + 12) = v4;
    (**a1)(a1);
  }

  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  if (*(*(a1 + 608) + 36) && v6 >= *(a1 + 172))
  {
    v6 = *(a1 + 172);
  }

  *(a1 + 180) = v6;

  return output_pass_setup(a1);
}

uint64_t _cg_jpeg_finish_output(uint64_t a1)
{
  v2 = *(a1 + 36);
  if ((v2 - 205) > 1)
  {
    if (v2 == 208)
    {
      goto LABEL_6;
    }

LABEL_5:
    v3 = *a1;
    *(v3 + 10) = 21;
    *(v3 + 12) = v2;
    (**a1)(a1);
    goto LABEL_6;
  }

  if (!*(a1 + 88))
  {
    goto LABEL_5;
  }

  (*(*(a1 + 576) + 8))(a1);
  *(a1 + 36) = 208;
LABEL_6:
  while (*(a1 + 172) <= *(a1 + 180))
  {
    v4 = *(a1 + 608);
    if (*(v4 + 36))
    {
      break;
    }

    result = (*v4)(a1);
    if (!result)
    {
      return result;
    }
  }

  *(a1 + 36) = 207;
  return 1;
}

uint64_t _cg_jpeg_idct_float(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = *(result + 440);
  memset(v70, 0, sizeof(v70));
  v6 = *(a2 + 88);
  v7 = (a3 + 64);
  v8 = v70;
  for (i = 9; i > 1; --i)
  {
    v10 = *(v7 - 24);
    v11 = *(v7 - 16);
    if (v10 | v11)
    {
      goto LABEL_9;
    }

    if (*(v7 - 8) || *v7 || v7[8] || v7[16] || v7[24])
    {
      v11 = 0;
LABEL_9:
      v12 = *v6 * *(v7 - 32);
      v13 = v6[16] * v11;
      v14 = v6[32] * *v7;
      v15 = v6[48] * v7[16];
      v16 = v12 + v14;
      v17 = v12 - v14;
      v18 = v13 + v15;
      v19 = -((v13 + v15) - ((v13 - v15) * 1.4142));
      v20 = v16 + v18;
      v21 = v16 - v18;
      v22 = v17 + v19;
      v23 = v17 - v19;
      v24 = v6[8] * v10;
      v25 = v6[24] * *(v7 - 8);
      v26 = v6[40] * v7[8];
      v27 = v6[56] * v7[24];
      v28 = v25 + v26;
      v29 = v26 - v25;
      v30 = v24 + v27;
      v31 = v24 - v27;
      v32 = v28 + v30;
      v33 = (v30 - v28) * 1.4142;
      v34 = (v29 + v31) * 1.8478;
      v35 = (v34 + (v29 * -2.6131)) - v32;
      v36 = v33 - v35;
      v37 = (v34 + (v31 * -1.0824)) - v36;
      *v8 = v20 + v32;
      v8[56] = v20 - v32;
      v8[8] = v22 + v35;
      v8[48] = v22 - v35;
      v8[16] = v23 + v36;
      v8[40] = v23 - v36;
      v8[24] = v21 + v37;
      v38 = v21 - v37;
      v39 = 32;
      goto LABEL_10;
    }

    v38 = *v6 * *(v7 - 32);
    *v8 = v38;
    v8[8] = v38;
    v8[16] = v38;
    v8[24] = v38;
    v8[32] = v38;
    v8[40] = v38;
    v8[48] = v38;
    v39 = 56;
LABEL_10:
    v8[v39] = v38;
    ++v8;
    ++v6;
    ++v7;
  }

  v40 = 0;
  v41 = v5 - 384;
  do
  {
    v42 = &v70[v40];
    v43 = (*(a4 + v40 * 4) + a5);
    v44 = v42[1];
    v45 = *v42 + 512.5;
    v46 = v42[4];
    v47 = v42[5];
    v48 = v45 + v46;
    v49 = v42[2];
    v50 = v42[3];
    v51 = v42[6];
    v52 = v42[7];
    v53 = v49 + v51;
    v54 = v45 - v46;
    v55 = -((v49 + v51) - ((v49 - v51) * 1.4142));
    v56 = v47 + v50;
    v57 = v47 - v50;
    v58 = v48 + v53;
    v59 = v48 - v53;
    v60 = v44 + v52;
    v61 = v44 - v52;
    v62 = v56 + v60;
    v63 = v60 - v56;
    v64 = v54 + v55;
    v65 = v54 - v55;
    v66 = (v57 + v61) * 1.8478;
    v67 = (v66 + (v57 * -2.6131)) - v62;
    v68 = (v63 * 1.4142) - v67;
    *v43 = *(v41 + ((v58 + v62) & 0x3FFLL));
    v43[7] = *(v41 + ((v58 - v62) & 0x3FFLL));
    v43[1] = *(v41 + ((v64 + v67) & 0x3FFLL));
    v43[6] = *(v41 + ((v64 - v67) & 0x3FFLL));
    v43[2] = *(v41 + ((v65 + v68) & 0x3FFLL));
    v69 = (v66 + (v61 * -1.0824)) - v68;
    v43[5] = *(v41 + ((v65 - v68) & 0x3FFLL));
    v43[3] = *(v41 + ((v59 + v69) & 0x3FFLL));
    v43[4] = *(v41 + ((v59 - v69) & 0x3FFLL));
    v40 += 2;
  }

  while (v40 != 16);
  return result;
}

int32x4_t *kd_encoder::init(uint64_t a1, int32x4_t *a2, uint64_t a3, int a4, uint64_t a5, kdu_thread_entity *a6, char *a7, float a8)
{
  v37 = a2;
  if (*(a1 + 96) || *(a1 + 136))
  {
    kd_encoder::init();
  }

  if (a6)
  {
    *(a1 + 136) = kdu_thread_entity::add_queue(a6, a1 + 8, a7, "block encoder");
  }

  *(a1 + 24) = a2;
  *(a1 + 104) = a5;
  *(a1 + 32) = kdu_subband::get_K_max(&v37);
  *(a1 + 34) = kdu_subband::get_K_max_prime(&v37);
  *(a1 + 36) = kdu_subband::get_reversible(&v37);
  *(a1 + 37) = 0;
  *(a1 + 40) = kdu_subband::get_delta(&v37) * a8;
  msb_wmse = kdu_subband::get_msb_wmse(&v37);
  *(a1 + 48) = 1065353216;
  *(a1 + 44) = msb_wmse;
  kdu_subband::get_roi_weight(&v37, (a1 + 48));
  v36 = 0uLL;
  kdu_subband::get_dims(&v37, &v36);
  v34 = 0;
  v35 = 0;
  kdu_subband::get_block_size(&v37, &v35, &v34);
  result = kdu_subband::get_valid_blocks(&v37, (a1 + 52));
  v17 = v36.i32[2];
  *(a1 + 68) = v36.i64[1];
  v18 = v35.i16[0];
  *(a1 + 78) = v34.i16[2];
  *(a1 + 80) = v35.i16[2];
  *(a1 + 82) = v18;
  *(a1 + 39) = 1;
  if (!a6)
  {
    *(a1 + 84) = v18;
    v23 = (a1 + 84);
    *(a1 + 76) = 0;
    LOWORD(v20) = v17;
    if (v17 > v18)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  result = kdu_thread_entity::get_num_threads(a6);
  v19 = *(a1 + 82);
  v20 = *(a1 + 68);
  if (result > 1)
  {
    v21 = *(a1 + 82);
    if (v20 < v19)
    {
      v21 = v20;
    }

    v22 = (v21 * *(a1 + 72) + (v21 * *(a1 + 72) < 0 ? 0x1FFFuLL : 0)) >> 13;
    if (*(a1 + 64) <= v22)
    {
      kd_encoder::init();
    }

    if (v22 <= 1)
    {
      LODWORD(v22) = 1;
    }

    if (v22 >= 32)
    {
      LOBYTE(v22) = 32;
    }

    *(a1 + 39) = v22;
  }

  *(a1 + 84) = v19;
  v23 = (a1 + 84);
  *(a1 + 76) = 0;
  if (v20 <= v19)
  {
LABEL_22:
    *v23 = v20;
    goto LABEL_23;
  }

  result = kdu_thread_entity::get_num_threads(a6);
  if (result >= 2)
  {
    v24 = 8u / *(a1 + 39) + 1;
    result = kdu_subband::get_band_idx(&v37);
    if (result <= v24)
    {
      v25 = *(a1 + 68) - v34.i32[0];
      if (v25 >= *(a1 + 82))
      {
        LOWORD(v25) = *(a1 + 82);
      }

      *(a1 + 84) += v25;
      v33 = kdu_node::access_resolution(&v37);
      result = kdu_resolution::get_dwt_level(&v33);
      *(a1 + 76) = 64 - result;
    }
  }

LABEL_23:
  v26 = 0;
  *(a1 + 86) = 0;
  v27 = v34.i32[1];
  *(a1 + 88) = v34.i16[0];
  *(a1 + 92) = 0;
  *(a1 + 38) = 0;
  v28 = *(a1 + 72);
  if (v27 < v28)
  {
    v29 = -v27;
    if (a4)
    {
      v30 = 7;
    }

    else
    {
      v30 = 3;
    }

    v26 = v30 & v29;
    *(a1 + 38) = v26;
  }

  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  if (v36.i32[3] >= 1 && *(v36.i64 + 4) > 0)
  {
    *(a1 + 96) = a3;
    if (*a3)
    {
      v31 = v28 + v26;
      if (a4)
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }

      *(a3 + 4) += (((v31 << v32) + 15) & 0xFFFFFFF0) * *(a1 + 84);
      operator new[]();
    }

    kdu_sample_allocator::pre_alloc();
  }

  *(a1 + 68) = 0;
  return result;
}

void kd_encoder::~kd_encoder(kd_encoder *this)
{
  *this = &unk_1EF4D3768;
  *(this + 1) = &unk_1EF4D3798;
  v2 = *(this + 14);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x20C8093837F09);
  }

  v3 = *(this + 15);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x20C8093837F09);
  }

  v4 = *(this + 16);
  if (v4)
  {
    MEMORY[0x186602830](v4, 0x10C80436913F5);
  }

  v5 = *(this + 13);
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(this + 1) = &unk_1EF4D3478;
  *this = &unk_1EF4D34F0;
}

{
  kd_encoder::~kd_encoder(this);

  JUMPOUT(0x186602850);
}

void non-virtual thunk tokd_encoder::~kd_encoder(kd_encoder *this)
{
  kd_encoder::~kd_encoder((this - 8));
}

{
  kd_encoder::~kd_encoder((this - 8));

  JUMPOUT(0x186602850);
}

uint64_t kd_encoder::push(uint64_t result, int *a2, kdu_thread_entity *this)
{
  v5 = result;
  if (!this && *(result + 136))
  {
    kd_encoder::push();
  }

  if (!*a2)
  {
    return result;
  }

  if ((*(result + 37) & 1) == 0)
  {
    if (this)
    {
      kdu_thread_entity::acquire_lock(this, 3, 1);
    }

    v6 = *(v5 + 84);
    if (*(v5 + 112))
    {
      if (v6 >= 1)
      {
        v7 = 0;
        v8 = *(v5 + 38);
        do
        {
          v9 = kdu_sample_allocator::alloc16(*(v5 + 96), 0, *(v5 + 72) + v8);
          v8 = *(v5 + 38);
          *(*(v5 + 112) + 8 * v7++) = v9 + 2 * *(v5 + 38);
          v10 = *(v5 + 84);
        }

        while (v7 < v10);
LABEL_15:
        LOWORD(v6) = v10;
      }
    }

    else if (v6 >= 1)
    {
      v11 = 0;
      v12 = *(v5 + 38);
      do
      {
        v13 = kdu_sample_allocator::alloc32(*(v5 + 96), 0, *(v5 + 72) + v12);
        v12 = *(v5 + 38);
        *(*(v5 + 120) + 8 * v11++) = v13 + 4 * *(v5 + 38);
        v10 = *(v5 + 84);
      }

      while (v11 < v10);
      goto LABEL_15;
    }

    if (*(v5 + 128))
    {
      v14 = v6 < 1;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      v15 = 0;
      do
      {
        *(*(v5 + 128) + 8 * v15++) = kdu_sample_allocator::alloc16(*(v5 + 96), 0, (*(v5 + 72) + 1) >> 1);
      }

      while (v15 < *(v5 + 84));
    }

    *(v5 + 37) = 1;
    if (this)
    {
      kdu_thread_entity::release_lock(this, 3);
    }
  }

  if (*(v5 + 68) <= 0)
  {
    kd_encoder::push();
  }

  v16 = *(v5 + 86);
  if (v16 == *(v5 + 88))
  {
    v17 = *(v5 + 136);
    if (!v17)
    {
      kd_encoder::push();
    }

    kdu_thread_entity::process_jobs(this, v17, 0, 1);
    v18 = *(v5 + 84);
    v19 = *(v5 + 82);
    if (v18 <= v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(v5 + 82);
    }

    if (*(v5 + 88) <= v19)
    {
      LOWORD(v16) = v20;
    }

    else
    {
      LOWORD(v16) = 0;
    }

    *(v5 + 86) = v16;
    if (*(v5 + 68) < v19)
    {
      LOWORD(v19) = *(v5 + 68);
    }

    v21 = v19 + v16;
    *(v5 + 88) = v21;
    if (v18 < v21)
    {
      kd_encoder::push();
    }
  }

  v22 = *a2;
  if (*a2 != *(v5 + 72))
  {
    kd_encoder::push();
  }

  v23 = *(v5 + 120);
  if (v23)
  {
    v24 = *(v23 + 8 * v16);
    if ((*(a2 + 6) & 2) != 0)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(a2 + 1);
    }

    v26 = 4 * v22;
  }

  else
  {
    v24 = *(*(v5 + 112) + 8 * v16);
    if ((*(a2 + 6) & 2) != 0)
    {
      v25 = *(a2 + 1);
    }

    else
    {
      v25 = 0;
    }

    v26 = 2 * v22;
  }

  memcpy(v24, v25, v26);
  result = *(v5 + 104);
  if (result)
  {
    if (this)
    {
      kdu_thread_entity::acquire_lock(this, 4, 1);
      result = *(v5 + 104);
    }

    result = (*(*result + 24))(result, *(*(v5 + 128) + 8 * *(v5 + 86)), *(v5 + 72));
    if (this)
    {
      result = kdu_thread_entity::release_lock(this, 4);
    }
  }

  --*(v5 + 68);
  v27 = *(v5 + 86) + 1;
  *(v5 + 86) = v27;
  if (*(v5 + 88) == v27)
  {
    v28 = *(v5 + 136);
    v29 = *(v5 + 39);
    if (v28)
    {
      result = kdu_thread_entity::add_jobs(this, v28, v29, *(v5 + 76));
      if (!*(v5 + 76) || *(v5 + 92))
      {
        return result;
      }

      v30 = *(v5 + 82);
      if (*(v5 + 88) > v30)
      {
        kd_encoder::push();
      }

      v31 = 1;
      v32 = *(v5 + 82);
    }

    else
    {
      if (v29 != 1)
      {
        kd_encoder::push();
      }

      result = (*(*v5 + 24))(v5, this, *(v5 + 92));
      v32 = 0;
      LOWORD(v30) = *(v5 + 82);
      v31 = *(v5 + 92) + 1;
    }

    *(v5 + 86) = v32;
    *(v5 + 92) = v31;
    if (*(v5 + 68) < v30)
    {
      LOWORD(v30) = *(v5 + 68);
    }

    v33 = v30 + v32;
    *(v5 + 88) = v33;
    if (*(v5 + 84) < v33)
    {
      kd_encoder::push();
    }
  }

  return result;
}

void kd_encoder::do_job(kd_encoder *this, kdu_thread_entity *a2, int a3)
{
  v4 = this;
  v5 = *(this + 39);
  v6 = *(this + 16);
  v7 = *(this + 13);
  v8 = *(this + 14);
  v9 = *(this + 14);
  v10 = *(this + 16);
  v11 = a3 / v5;
  if ((a3 / v5))
  {
    v12 = *(this + 15);
    v13 = *(this + 41);
    v14 = v12 + 8 * v13;
    if (!v12)
    {
      v14 = 0;
    }

    v15 = v9 + 8 * v13;
    if (!v9)
    {
      v15 = 0;
    }

    v16 = v10 + 8 * v13;
    if (!v10)
    {
      v16 = 0;
    }

    if (*(this + 42) > *(this + 41))
    {
      v10 = v16;
      v9 = v15;
      v12 = v14;
    }

    v130 = v12;
  }

  else
  {
    v130 = *(this + 15);
  }

  if (v11 >= *(this + 15))
  {
    kd_encoder::do_job();
  }

  v125 = v9;
  if (v5 >= 2)
  {
    v17 = a3 % v5 * v6;
    v18 = v17 / v5;
    v19 = (v6 + v17) / v5;
    v6 = v19 - v18;
    if (v19 <= v18)
    {
      kd_encoder::do_job();
    }

    if (v18 < 1)
    {
      v20 = 0;
    }

    else
    {
      v8 = (v18 + v8);
      v20 = *(this + 39) + (v18 - 1) * *(this + 40);
    }

    v21 = (this + 24);
    conservative_slope_threshold = kdu_subband::get_conservative_slope_threshold((this + 24));
    goto LABEL_21;
  }

  v21 = (this + 24);
  conservative_slope_threshold = kdu_subband::get_conservative_slope_threshold((this + 24));
  if (v6 >= 1)
  {
    v20 = 0;
LABEL_21:
    v127 = v21;
    v128 = (v11 + v7);
    v132 = (v4 + 32);
    v133 = v4;
    v137 = (v4 + 34);
    v126 = a2;
    v131 = v10;
    while (1)
    {
      v22 = kdu_subband::open_block(v21, v128 | (v8 << 32), 0, a2);
      if (!v22)
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = -50;
        __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
      }

      v23 = v22;
      v24 = ((*v22 + 3) & 0xFFFFFFFC) * v22[1];
      if (v24 <= 0)
      {
        kd_encoder::do_job();
      }

      if (v22[28] < v24)
      {
        if (v24 <= 0x1000)
        {
          v25 = 4096;
        }

        else
        {
          v25 = ((*v22 + 3) & 0xFFFFFFFC) * v22[1];
        }

        kdu_block::set_max_samples(v22, v25);
      }

      v26 = *v23;
      v27 = HIDWORD(*v23);
      if (*(v23 + 2) != *v23 || v23[3] || v23[2])
      {
        kd_encoder::do_job();
      }

      if (*(v23 + 24))
      {
        v28 = *v23;
      }

      else
      {
        v28 = HIDWORD(*v23);
      }

      if (*(v23 + 24))
      {
        v29 = HIDWORD(*v23);
      }

      else
      {
        v29 = *v23;
      }

      if (v28 + v20 > *(v4 + 18))
      {
        kd_encoder::do_job();
      }

      v134 = v28 + v20;
      v135 = v8;
      v136 = v6;
      v30 = *(v23 + 12);
      v31 = *(v23 + 25) ? v29 - 1 : 0;
      v32 = *(v23 + 25) ? -1 : 1;
      v33 = *(v23 + 26) ? v28 - 1 : 0;
      v34 = v33 + v20;
      v35 = *(v23 + 26) ? -1 : 1;
      if (!v130)
      {
        break;
      }

      v36 = (v130 + 8 * v31);
      v37 = v132;
      if (!*(v4 + 36))
      {
        v53 = 1.0 / *(v4 + 10);
        v54 = v53 / (1 << (*(v4 + 16) - 31));
        v55 = v53 * (0x80000000 >> *(v4 + 16));
        if (*(v4 + 16) > 31)
        {
          v55 = v54;
        }

        if ((v23[6] & 1) == 0)
        {
          if (v26)
          {
            v40 = 0;
            v70 = *v23;
            do
            {
              if (v27)
              {
                v71 = 0;
                v72 = (*v36 + 4 * v34);
                do
                {
                  v73 = v55 * *v72;
                  v74 = v73;
                  if (v73 < 0.0)
                  {
                    v74 = -v73 | 0x80000000;
                  }

                  v30[v71] = v74;
                  v40 |= v74;
                  v72 += v35;
                  ++v71;
                }

                while (v28 != v71);
              }

              v36 += v32;
              v30 += v26 >> 32;
              --v70;
            }

            while (v70);
LABEL_134:
            LOBYTE(v41) = 0;
            goto LABEL_147;
          }

          goto LABEL_135;
        }

        if (v27)
        {
          v40 = 0;
          do
          {
            if (v26)
            {
              v56 = (*v36 + 4 * v34);
              v57 = v30;
              v58 = v28;
              do
              {
                v59 = v55 * *v56;
                v60 = v59;
                if (v59 < 0.0)
                {
                  v60 = -v59 | 0x80000000;
                }

                *v57 = v60;
                v40 |= v60;
                v56 += v35;
                v57 += v26 >> 32;
                --v58;
              }

              while (v58);
            }

            v36 += v32;
            ++v30;
            LODWORD(v27) = v27 - 1;
          }

          while (v27);
          goto LABEL_146;
        }

LABEL_94:
        v40 = 0;
LABEL_146:
        LOBYTE(v41) = 1;
        goto LABEL_147;
      }

      v38 = *v132;
      v39 = 31 - v38;
      if (v38 >= 32)
      {
        v140 = 0;
        v138 = 0u;
        v139 = 0u;
        kdu_error::kdu_error(&v138, "Kakadu Core Error:\n");
        (*(v138 + 16))(&v138, "Insufficient implementation precision available for true reversible compression!");
        kdu_error::~kdu_error(&v138);
      }

      if (v23[6])
      {
        v40 = 0;
        if (v29)
        {
          v65 = v29;
          do
          {
            if (v28)
            {
              v66 = (*v36 + 4 * v34);
              v67 = v30;
              v68 = v28;
              do
              {
                if (*v66 >= 0)
                {
                  v69 = *v66 << v39;
                }

                else
                {
                  v69 = (-*v66 << v39) | 0x80000000;
                }

                *v67 = v69;
                v40 |= v69;
                v66 += v35;
                v67 += v26 >> 32;
                --v68;
              }

              while (v68);
            }

            v36 += v32;
            ++v30;
            --v65;
          }

          while (v65);
          LOBYTE(v41) = 1;
LABEL_106:
          a2 = v126;
          goto LABEL_147;
        }

        LOBYTE(v41) = 1;
      }

      else
      {
        if (v29)
        {
          v40 = 0;
          v41 = v29;
          do
          {
            if (v28)
            {
              v42 = 0;
              v43 = (*v36 + 4 * v34);
              do
              {
                if (*v43 >= 0)
                {
                  v44 = *v43 << v39;
                }

                else
                {
                  v44 = (-*v43 << v39) | 0x80000000;
                }

                v30[v42] = v44;
                v40 |= v44;
                v43 += v35;
                ++v42;
              }

              while (v28 != v42);
            }

            v36 += v32;
            v30 += v26 >> 32;
            --v41;
          }

          while (v41);
          goto LABEL_106;
        }

        LOBYTE(v41) = 0;
        v40 = 0;
      }

      a2 = v126;
LABEL_147:
      v88 = *v137;
      v89 = *v37;
      v90 = __OFSUB__(v88, v89);
      v91 = v88 - v89;
      if (!((v91 < 0) ^ v90 | (v91 == 0)))
      {
        v92 = *(v23 + 12);
        v93 = -1 << ~v89;
        if (v91 < v89)
        {
          v140 = 0;
          v138 = 0u;
          v139 = 0u;
          kdu_error::kdu_error(&v138, "Kakadu Core Error:\n");
          (*(v138 + 16))(&v138, "You have selected too small a value for the ROI up-shift parameter.  The up-shift should be at least as large as the largest number of magnitude bit-planes in any subband; otherwise, the foreground and background regions might not be properly distinguished by the decompressor.");
          kdu_error::~kdu_error(&v138);
        }

        if (v41)
        {
          if (v28)
          {
            v96 = v28;
            do
            {
              if (v29)
              {
                v97 = 0;
                do
                {
                  *(v92 + 4 * v97++) &= v93;
                }

                while (v29 != v97);
              }

              v92 += 4 * (v26 >> 32);
              --v96;
            }

            while (v96);
          }

          LOBYTE(v41) = 1;
        }

        else
        {
          if (v29)
          {
            v94 = v29;
            do
            {
              if (v28)
              {
                v95 = 0;
                do
                {
                  *(v92 + 4 * v95++) &= v93;
                }

                while (v28 != v95);
              }

              v92 += 4 * (v26 >> 32);
              --v94;
            }

            while (v94);
          }

          LOBYTE(v41) = 0;
        }

        a2 = v126;
      }

      if (!v131)
      {
        goto LABEL_204;
      }

      v98 = *v137;
      v99 = *v37;
      if (v98 != *v37)
      {
        v104 = v98 - v99;
        if (v104 < v99)
        {
          kd_encoder::do_job();
        }

        v105 = (v131 + 8 * v31);
        v106 = *(v23 + 12);
        if (v41)
        {
          if (v29)
          {
            v107 = 0;
            v108 = 0;
            do
            {
              if (v28)
              {
                v109 = (*v105 + v34);
                v110 = v106;
                v111 = v28;
                do
                {
                  if (*v109)
                  {
                    v107 = 1;
                  }

                  else
                  {
                    *v110 = ((*v110 & 0x7FFFFFFF) >> v104) | *v110 & 0x80000000;
                    v108 = 1;
                  }

                  v109 += v35;
                  v110 += v26 >> 32;
                  --v111;
                }

                while (v111);
              }

              v105 += v32;
              ++v106;
              --v29;
            }

            while (v29);
            goto LABEL_197;
          }

LABEL_203:
          v40 = (v40 & 0x7FFFFFFF) >> v104;
LABEL_204:
          v103 = 1;
LABEL_205:
          v115 = v37;
        }

        else
        {
          if (!v29)
          {
            goto LABEL_203;
          }

          v107 = 0;
          v108 = 0;
          do
          {
            if (v28)
            {
              v112 = 0;
              v113 = (*v105 + v34);
              do
              {
                if (*v113)
                {
                  v107 = 1;
                }

                else
                {
                  v106[v112] = ((v106[v112] & 0x7FFFFFFF) >> v104) | v106[v112] & 0x80000000;
                  v108 = 1;
                }

                v113 += v35;
                ++v112;
              }

              while (v28 != v112);
            }

            v105 += v32;
            v106 += v26 >> 32;
            --v29;
          }

          while (v29);
LABEL_197:
          v114 = (v40 & 0x7FFFFFFF) >> v104;
          if ((v107 & 1) == 0)
          {
            v40 = v114;
          }

          v115 = v137;
          if ((v108 & 1) == 0)
          {
            v115 = v37;
          }

          v103 = 1;
        }

        v116 = *v115;
        goto LABEL_207;
      }

      if (v29)
      {
        v100 = (v131 + 8 * v31);
        while (!v28)
        {
LABEL_174:
          v100 += v32;
          if (!--v29)
          {
            v103 = 0;
            goto LABEL_205;
          }
        }

        v101 = (*v100 + v34);
        v102 = v28;
        while (!*v101)
        {
          v101 += v35;
          if (!--v102)
          {
            goto LABEL_174;
          }
        }

        goto LABEL_204;
      }

      v103 = 0;
      v116 = *v37;
LABEL_207:
      v117 = v116;
      if (v116 >= 31 && *(v133 + 36) == 1 && *v137 > *v37 && (*(v23 + 121) & 1) == 0)
      {
        *(v23 + 121) = 1;
        v140 = 0;
        v138 = 0u;
        v139 = 0u;
        kdu_warning::kdu_warning(&v138, "Kakadu Core Warning:\n");
        kdu_warning::~kdu_warning(&v138);
      }

      if (v117 >= 31)
      {
        v118 = 31;
      }

      else
      {
        v118 = v117;
      }

      v119 = v40 & 0x7FFFFFFF;
      if ((v40 & 0x7FFFFFFF) == 0)
      {
        v23[11] = 31;
        v4 = v133;
LABEL_221:
        v120 = 0;
        v23[11] = v118;
        goto LABEL_222;
      }

      v120 = 3 * v118 + 1;
      v121 = -1;
      v4 = v133;
      do
      {
        v119 *= 2;
        ++v121;
        v120 -= 3;
      }

      while ((v119 & 0x80000000) == 0);
      v23[11] = v121;
      if (v121 >= v118)
      {
        goto LABEL_221;
      }

LABEL_222:
      v23[12] = v120;
      v122 = *(v4 + 11);
      if (v103)
      {
        v122 = v122 * *(v4 + 12);
      }

      (*(**(v4 + 2) + 16))(*(v4 + 2), v23, *(v4 + 36), conservative_slope_threshold, v122);
      v123 = v23;
      v21 = v127;
      kdu_subband::close_block(v127, v123, a2);
      v8 = (v135 + 1);
      v20 = v134;
      v6 = v136 - 1;
      if (v136 <= 1)
      {
        return;
      }
    }

    v45 = (v125 + 8 * v31);
    v37 = v132;
    if (*(v4 + 36))
    {
      v46 = *v132;
      if (v46 >= 32)
      {
        kd_encoder::do_job();
      }

      v47 = 31 - v46;
      if ((v23[6] & 1) == 0)
      {
        if (v26)
        {
          v40 = 0;
          v79 = *v23;
          do
          {
            if (v27)
            {
              v80 = 0;
              v81 = (*v45 + 2 * v34);
              do
              {
                v82 = *v81;
                if (v82 >= 0)
                {
                  v83 = v82 << v47;
                }

                else
                {
                  v83 = (-v82 << v47) | 0x80000000;
                }

                v30[v80] = v83;
                v40 |= v83;
                v81 += v35;
                ++v80;
              }

              while (v28 != v80);
            }

            v45 += v32;
            v30 += v26 >> 32;
            --v79;
          }

          while (v79);
          goto LABEL_134;
        }

        goto LABEL_135;
      }

      if (v27)
      {
        v40 = 0;
        do
        {
          if (v26)
          {
            v48 = (*v45 + 2 * v34);
            v49 = v30;
            v50 = v28;
            do
            {
              v51 = *v48;
              if (v51 >= 0)
              {
                v52 = v51 << v47;
              }

              else
              {
                v52 = (-v51 << v47) | 0x80000000;
              }

              *v49 = v52;
              v40 |= v52;
              v48 += v35;
              v49 += v26 >> 32;
              --v50;
            }

            while (v50);
          }

          v45 += v32;
          ++v30;
          LODWORD(v27) = v27 - 1;
        }

        while (v27);
        goto LABEL_146;
      }
    }

    else
    {
      v61 = 1.0 / (*(v4 + 10) * 8192.0);
      v62 = v61 / (1 << (*(v4 + 16) - 31));
      v63 = v61 * (0x80000000 >> *(v4 + 16));
      if (*(v4 + 16) > 31)
      {
        v63 = v62;
      }

      v64 = (v63 + 0.5);
      if ((v23[6] & 1) == 0)
      {
        if (v26)
        {
          v40 = 0;
          v75 = *v23;
          do
          {
            if (v27)
            {
              v76 = 0;
              v77 = (*v45 + 2 * v34);
              do
              {
                v78 = *v77 * v64;
                if (v78 < 0)
                {
                  v78 = 0x80000000 - v78;
                }

                v30[v76] = v78;
                v40 |= v78;
                v77 += v35;
                ++v76;
              }

              while (v28 != v76);
            }

            v45 += v32;
            v30 += v26 >> 32;
            --v75;
          }

          while (v75);
          goto LABEL_134;
        }

LABEL_135:
        LOBYTE(v41) = 0;
        v40 = 0;
        goto LABEL_147;
      }

      if (v27)
      {
        v40 = 0;
        do
        {
          if (v26)
          {
            v84 = (*v45 + 2 * v34);
            v85 = v30;
            v86 = v28;
            do
            {
              v87 = *v84 * v64;
              if (v87 < 0)
              {
                v87 = 0x80000000 - v87;
              }

              *v85 = v87;
              v40 |= v87;
              v84 += v35;
              v85 += v26 >> 32;
              --v86;
            }

            while (v86);
          }

          v45 += v32;
          ++v30;
          LODWORD(v27) = v27 - 1;
        }

        while (v27);
        goto LABEL_146;
      }
    }

    goto LABEL_94;
  }
}