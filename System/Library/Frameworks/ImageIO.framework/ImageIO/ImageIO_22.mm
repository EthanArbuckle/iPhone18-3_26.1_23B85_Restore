uint64_t jx_metanode::load_recursive(uint64_t this)
{
  v1 = this;
  if (*(this + 14) == 1 && *(this + 24) && (*(this + 12) != 1 || (*(this + 13) & 1) == 0))
  {
    this = jx_metanode::finish_reading(this);
  }

  for (i = *(v1 + 64); i; i = *(i + 10))
  {
    if (*(v1 + 52) == *(v1 + 48))
    {
      break;
    }

    this = jx_metanode::load_recursive(i);
  }

  return this;
}

uint64_t jpx_metanode::get_num_regions(jpx_metanode *this)
{
  v1 = *this;
  if (!*this || *(v1 + 15) != 2)
  {
    return 0;
  }

  if ((*(v1 + 12) & 1) == 0)
  {
    jpx_metanode::get_num_regions();
  }

  return **(v1 + 16);
}

uint64_t jpx_metanode::get_regions(jpx_metanode *this)
{
  v1 = *this;
  if (*this && *(v1 + 15) == 2)
  {
    return *(*(v1 + 16) + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t jpx_metanode::get_bounding_box(jpx_metanode *this)
{
  v1 = *this;
  if (*this && *(v1 + 15) == 2 && (v2 = *(v1 + 16), *v2 >= 1))
  {
    return *(v2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t jx_source::get_codestream(jx_source *this, int a2)
{
    ;
  }

  result = *(this + 138);
  if (a2 >= 1 && result)
  {
    do
    {
      result = *(result + 856);
      if (a2 < 2)
      {
        break;
      }

      --a2;
    }

    while (result);
  }

  return result;
}

uint64_t jx_source::get_compositing_layer(jx_source *this, int a2)
{
    ;
  }

  result = *(this + 139);
  if (a2 >= 1 && result)
  {
    do
    {
      result = *(result + 800);
      if (a2 < 2)
      {
        break;
      }

      --a2;
    }

    while (result);
  }

  return result;
}

uint64_t jx_roigroup::delete_child(uint64_t result, unint64_t a2)
{
  if (a2 > 7 || (a2 & 0x8000000080000000) != 0 || (v2 = HIDWORD(a2), SHIDWORD(a2) > 7))
  {
    jx_roigroup::delete_child();
  }

  v3 = result;
LABEL_5:
  v4 = (v2 + 8 * a2);
  v5 = v3 + 128;
  if (*(v3 + 16))
  {
    v6 = *(v5 + 8 * v4);
    if (!v6)
    {
      jx_roigroup::delete_child();
    }

    jx_roigroup::~jx_roigroup(v6);
    result = MEMORY[0x186602850]();
    v7 = 0;
    *(v5 + 8 * v4) = 0;
    while (!*(v5 + v7))
    {
      v7 += 8;
      if (v7 == 512)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (*(v5 + 24 * v4))
    {
      jx_roigroup::delete_child();
    }

    v8 = 128;
    while (!*(v3 + v8))
    {
      v8 += 24;
      if (v8 == 1664)
      {
LABEL_15:
        v9 = *(v3 + 8);
        if (!v9)
        {
          v11 = *v3 + 80;
          v12 = *(v3 + 20);
          if (*(v11 + 8 * v12) == v3)
          {
            *(v11 + 8 * v12) = 0;
            jx_roigroup::~jx_roigroup(v3);

            JUMPOUT(0x186602850);
          }

          jx_roigroup::delete_child();
        }

        LODWORD(v2) = (*(v3 + 28) - v9[7]) / v9[11];
        LODWORD(a2) = (*(v3 + 24) - v9[6]) / v9[10];
        if ((a2 | v2) >= 8)
        {
          jx_roigroup::delete_child();
        }

        v10 = *&v9[2 * (v2 | (8 * a2)) + 32] == v3;
        v3 = *(v3 + 8);
        if (!v10)
        {
          jx_roigroup::delete_child();
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

void jx_roigroup::~jx_roigroup(jx_roigroup *this)
{
  if (*(this + 4))
  {
    v2 = (this + 128);
    for (i = 65; i > 1; --i)
    {
      if (*v2)
      {
        jx_roigroup::~jx_roigroup(*v2);
        MEMORY[0x186602850]();
      }

      ++v2;
    }
  }

  jp2_output_box::~jp2_output_box((this + 48));
}

void jx_meta_manager::jx_meta_manager(jx_meta_manager *this)
{
  jp2_output_box::jp2_output_box((this + 344));
  *(this + 53) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 42) = 0;
  *(this + 54) = 0x600000006;
  operator new[]();
}

void jx_meta_manager::~jx_meta_manager(jx_meta_manager *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    jx_metanode::~jx_metanode(v2);
    MEMORY[0x186602850]();
  }

  *(this + 3) = 0;
  for (i = 80; i != 336; i += 8)
  {
    v4 = *(this + i);
    if (v4)
    {
      jx_roigroup::~jx_roigroup(v4);
      MEMORY[0x186602850]();
    }
  }

  v5 = *(this + 55);
  if (v5)
  {
    MEMORY[0x186602830](v5, 0x1000C8052888210);
  }

  jp2_output_box::~jp2_output_box((this + 344));
}

BOOL jpx_meta_manager::load_matches(jpx_meta_manager *this, int a2, int *a3, int a4, int *a5)
{
  LODWORD(v6) = a4;
  LODWORD(v8) = a2;
  v10 = *(*this + 336);
    ;
  }

  if (v8 >= 1)
  {
    v8 = v8;
    do
    {
      v11 = *a3++;
      codestream = jx_source::get_codestream(*(*this + 8), v11);
      if (codestream)
      {
        jx_codestream_source::finish(codestream, 0);
      }

      --v8;
    }

    while (v8);
  }

  if (v6 >= 1)
  {
    v6 = v6;
    do
    {
      v13 = *a5++;
      compositing_layer = jx_source::get_compositing_layer(*(*this + 8), v13);
      if (compositing_layer)
      {
        jx_layer_source::finish(compositing_layer);
      }

      --v6;
    }

    while (v6);
  }

  jx_metanode::load_recursive(*(*this + 24));
  return v10 != *(*this + 336);
}

uint64_t jpx_meta_manager::enumerate_matches(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v69[0] = a6;
  v69[1] = a7;
  v9 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v10 = a2;
  v11 = __OFSUB__(HIDWORD(a7), 1);
  if (SHIDWORD(a7) < 1 || (v11 = __OFSUB__(a7, 1), a7 < 1))
  {
    if ((a4 & a3) < 0 != v11 && !a5)
    {
      if (a2)
      {
        if (*(a2 + 96) != v9 + 32)
        {
          jpx_meta_manager::enumerate_matches();
        }

        v22 = a2 + 104;
      }

      else
      {
        v22 = v9 + 32;
      }

      return *v22;
    }

    v23 = (v9 + 56);
    while (1)
    {
      while (1)
      {
LABEL_15:
        v24 = v23;
        if (v10)
        {
          if (*(v10 + 96) != v23)
          {
            jpx_meta_manager::enumerate_matches();
          }

          v24 = (v10 + 104);
        }

        v10 = *v24;
        if (!*v24)
        {
          return v10;
        }

        if (*(v10 + 15) == 1)
        {
          v25 = *(v10 + 16);
          if (v25)
          {
            break;
          }
        }
      }

      if (!a9)
      {
        goto LABEL_26;
      }

      v26 = *(v10 + 64);
      if (v26)
      {
        while (*(v26 + 15) == 2)
        {
          v26 = *(v26 + 104);
          if (!v26)
          {
            goto LABEL_15;
          }
        }

LABEL_26:
        if (!a5 || *(v25 + 48) == 1)
        {
          if ((a3 & 0x80000000) != 0)
          {
            goto LABEL_36;
          }

          v27 = *v25;
          if (v27 < 1)
          {
            LODWORD(v28) = 0;
          }

          else
          {
            v28 = 0;
            while (*(*(v25 + 2) + 4 * v28) != a3)
            {
              if (v27 == ++v28)
              {
                goto LABEL_15;
              }
            }
          }

          if (v28 != v27)
          {
LABEL_36:
            if ((a4 & 0x80000000) != 0)
            {
              return v10;
            }

            v29 = v25[6];
            if (v29 < 1)
            {
              LODWORD(v30) = 0;
            }

            else
            {
              v30 = 0;
              v31 = *(v25 + 5);
              while (*(v31 + 4 * v30) != a4)
              {
                if (v29 == ++v30)
                {
                  goto LABEL_15;
                }
              }
            }

            if (v30 != v29)
            {
              return v10;
            }
          }
        }
      }
    }
  }

  if (a2)
  {
    v13 = *(a2 + 96);
    v14 = *(v13 + 16);
    v15 = -1431655765 * ((v13 - v14 - 128) >> 3);
    v11 = __OFSUB__(v15, 64);
    if (v15 >= 0x40)
    {
      jpx_meta_manager::enumerate_matches();
    }

    v16 = v14[5];
    v17 = v16 + 1;
    v18 = v15 >> 3;
    v19 = v15 & 7;
    v20 = HIDWORD(a6) + (-8 << v16) + 1;
    v21 = *(a2 + 104);
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v20 = 0;
    v14 = 0;
    v17 = 0;
    v21 = 0;
  }

  v32 = HIDWORD(a7) + HIDWORD(a6);
  v33 = a7 + a6;
  if ((a4 & a3) < 0 != v11)
  {
    v34 = a5;
  }

  else
  {
    v34 = 1;
  }

  do
  {
LABEL_49:
    while (2)
    {
      while (2)
      {
        while (2)
        {
          v35 = v17;
          v36 = v14;
          v10 = v21;
          do
          {
            if (!v14 && v35 > 31)
            {
              return v10;
            }

            if (v10)
            {
              v17 = v35;
              goto LABEL_95;
            }

            if (v14)
            {
              if (v19 <= 6 && v14[7] + v14[11] * (v19 + 1) < v32)
              {
                ++v19;
LABEL_80:
                v37 = v14;
                v17 = v35;
                goto LABEL_81;
              }

              if (v18 <= 6 && v14[6] + v14[10] * (v18 + 1) < v33)
              {
                v40 = v20 - v14[7];
                if (v40 >= 0)
                {
                  ++v18;
                  v37 = v14;
                  v17 = v35;
                  v19 = v40 / v14[11];
                  goto LABEL_81;
                }

                v19 = 0;
                ++v18;
                goto LABEL_80;
              }

              v14 = 0;
              v21 = 0;
              v41 = *(v36 + 1);
              v17 = v35;
              if (v41)
              {
                v21 = 0;
                v19 = (v36[7] - v41[7]) / v41[11];
                v18 = (v36[6] - v41[6]) / v41[10];
                v20 = HIDWORD(v69[0]) + (-8 << v41[5]) + 1;
                v42 = v19 > 7 || v18 >= 8;
                v14 = *(v36 + 1);
                v17 = v35;
                if (v42)
                {
                  jpx_meta_manager::enumerate_matches();
                }
              }

              goto LABEL_49;
            }

            v10 = 0;
            v17 = v35 + 1;
            v37 = *(*a1 + 8 * v35++ + 80);
          }

          while (!v37);
          v38 = (-8 << v37[5]) | 1;
          v20 = v38 + HIDWORD(v69[0]);
          v39 = v38 + HIDWORD(v69[0]) - v37[7];
          if (v39 < 0)
          {
            v19 = 0;
          }

          else
          {
            v19 = v39 / v37[11];
          }

          v43 = v38 + LODWORD(v69[0]) - v37[6];
          if (v43 < 0)
          {
            v18 = 0;
          }

          else
          {
            v18 = v43 / v37[10];
          }

          v14 = 0;
          v21 = 0;
          if (v19 > 7)
          {
            continue;
          }

          break;
        }

        v21 = 0;
        if (v18 > 7)
        {
          continue;
        }

        break;
      }

LABEL_81:
      v44 = v19 + 8 * v18;
      if (v37[4] >= 1)
      {
        v21 = 0;
        v45 = *&v37[2 * v44 + 32];
        v14 = v37;
        if (!v45)
        {
          continue;
        }

        while (1)
        {
          v37 = v45;
          v46 = (-8 << v45[5]) | 1;
          v20 = v46 + HIDWORD(v69[0]);
          v47 = v46 + HIDWORD(v69[0]) - v45[7];
          if (v47 < 0)
          {
            v19 = 0;
          }

          else
          {
            v19 = v47 / v37[11];
          }

          v48 = v46 + LODWORD(v69[0]) - v37[6];
          if (v48 < 0)
          {
            v18 = 0;
          }

          else
          {
            v18 = v48 / v37[10];
          }

          if (v19 > 7 || v18 >= 8)
          {
            jpx_meta_manager::enumerate_matches();
          }

          v44 = v19 + 8 * v18;
          if (v37[4] <= 0)
          {
            break;
          }

          v45 = *&v37[2 * v44 + 32];
          if (!v45)
          {
            v21 = 0;
            v14 = v37;
            goto LABEL_49;
          }
        }
      }

      break;
    }

    v21 = 0;
    v10 = *&v37[6 * v44 + 32];
    v14 = v37;
  }

  while (!v10);
LABEL_95:
  if (*(v10 + 15) != 2 || (v49 = *(v10 + 16)) == 0)
  {
    jpx_meta_manager::enumerate_matches();
  }

  if (*(v49 + 40) < a8)
  {
    goto LABEL_104;
  }

  v67 = v20;
  v68 = v34;
  v65 = v14;
  v50 = a8;
  v51 = a5;
  v52 = a4;
  v53 = a3;
  v66 = v18;
  v54 = kdu_dims::intersects((v49 + 8), v69);
  v18 = v66;
  v20 = v67;
  v34 = v68;
  a3 = v53;
  a4 = v52;
  a5 = v51;
  a8 = v50;
  v14 = v65;
  if (!v54)
  {
    goto LABEL_104;
  }

  if (!v68)
  {
    return v10;
  }

  v55 = *(v10 + 56);
  if (!v55)
  {
    goto LABEL_104;
  }

  while (1)
  {
    if (*(v55 + 15) == 1)
    {
      v56 = *(v55 + 16);
      if (v56)
      {
        break;
      }
    }

    v55 = *(v55 + 56);
    if (!v55)
    {
      goto LABEL_104;
    }
  }

  if (v51 && *(v56 + 48) != 1)
  {
    goto LABEL_104;
  }

  if ((v53 & 0x80000000) == 0)
  {
    v57 = *v56;
    if (v57 < 1)
    {
      LODWORD(v58) = 0;
    }

    else
    {
      v58 = 0;
      while (*(*(v56 + 2) + 4 * v58) != v53)
      {
        if (v57 == ++v58)
        {
          LODWORD(v58) = *v56;
          break;
        }
      }
    }

    v59 = v58 != v57;
    if ((v52 & 0x80000000) != 0)
    {
      if (v58 != v57)
      {
        return v10;
      }
    }

    else
    {
LABEL_117:
      v60 = v56[6];
      if (v60 < 1)
      {
        LODWORD(v61) = 0;
      }

      else
      {
        v61 = 0;
        v62 = *(v56 + 5);
        while (*(v62 + 4 * v61) != v52)
        {
          if (v60 == ++v61)
          {
            goto LABEL_104;
          }
        }
      }

      if (v61 != v60 && v59)
      {
        return v10;
      }
    }

LABEL_104:
    v21 = *(v10 + 104);
    goto LABEL_49;
  }

  if ((v52 & 0x80000000) == 0)
  {
    v59 = 1;
    goto LABEL_117;
  }

  return v10;
}

void jx_registration::init(jx_registration *this, jp2_input_box *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(this + 1))
  {
    *&v13 = 0;
    *v11 = 0u;
    v12 = 0u;
    kdu_error::kdu_error(v11, "Error in Kakadu File Format Support:\n");
    (*(*v11 + 16))(v11, "JPX data source appears to contain multiple JPX Codestream Registration (creg) boxes within the same compositing layer header (jplh) box.");
    kdu_error::~kdu_error(v11);
  }

  *(this + 3) = 0;
  *v10 = 0;
  if (jp2_input_box::read(a2, &v10[1]))
  {
    v4 = jp2_input_box::read(a2, v10);
    v5 = v10[1];
    v6 = v10[1] && v4;
    if (v6 && v10[0] != 0)
    {
      *(this + 4) = v10[0];
      *(this + 5) = v5;
      if ((*(a2 + 125) & 1) != 0 || (v8 = *(a2 + 44) + *(a2 + 22) - *(a2 + 34), HIDWORD(v9) = -1431655765 * v8 + 715827882, LODWORD(v9) = HIDWORD(v9), (v9 >> 1) >= 0x2AAAAAAB))
      {
        *&v13 = 0;
        *v11 = 0u;
        v12 = 0u;
        kdu_error::kdu_error(v11, "Error in Kakadu File Format Support:\n");
        (*(*v11 + 16))(v11, "Malformed Codestream Registration (creg) box found in JPX data source.  Box size does not seem to be equal to 4+6k where k must be the number of referenced codestreams.");
        kdu_error::~kdu_error(v11);
      }

      if (v8 < 0)
      {
        *&v13 = 0;
        *v11 = 0u;
        v12 = 0u;
        kdu_error::kdu_error(v11, "Error in Kakadu File Format Support:\n");
        (*(*v11 + 16))(v11, "Malformed Codestream Registration.");
        kdu_error::~kdu_error(v11);
      }

      *this = v8 / 6;
      *(this + 1) = v8 / 6;
      is_mul_ok(v8 / 6, 0x14uLL);
      operator new[]();
    }
  }

  *&v13 = 0;
  *v11 = 0u;
  v12 = 0u;
  kdu_error::kdu_error(v11, "Error in Kakadu File Format Support:\n");
  (*(*v11 + 16))(v11, "Malformed Codestream Registration (creg) box found in JPX data source.  Insufficient or illegal fields encountered.");
  kdu_error::~kdu_error(v11);
}

void *jx_registration::finalize(void *this)
{
  if (!this[1])
  {
    *this = 0x100000001;
    operator new[]();
  }

  return this;
}

uint64_t jx_codestream_source::donate_chdr_box(jx_codestream_source *this, jp2_input_box *a2)
{
  if (*(this + 23) == 1)
  {
    v2 = *(*a2 + 16);

    return v2(a2);
  }

  v5 = this + 512;
  v6 = *(this + 65);
  if (v6 < 0)
  {
    if (*v5)
    {
      goto LABEL_19;
    }
  }

  else if (v6 || *(this + 132))
  {
LABEL_19:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  if ((*(this + 150) & 1) != 0 || *(this + 334) == 1)
  {
    goto LABEL_19;
  }

  if (v6 < 0)
  {
    if (!*v5)
    {
      goto LABEL_14;
    }

LABEL_18:
    jx_codestream_source::donate_chdr_box();
  }

  if (*(this + 132))
  {
    goto LABEL_18;
  }

LABEL_14:
  jp2_input_box::transplant((this + 24), a2);
  *v5 = *(this + 2);
  *(v5 + 4) = *(this + 12);

  return jx_codestream_source::finish(this, 0);
}

uint64_t jx_codestream_source::donate_codestream_box(jx_codestream_source *this, jp2_input_box *a2)
{
  v3 = this + 544;
  v4 = *(this + 69);
  if (v4 < 0)
  {
    if (!*v3)
    {
      goto LABEL_4;
    }

LABEL_13:
    jx_codestream_source::donate_codestream_box();
  }

  if (v4 || *(this + 140))
  {
    goto LABEL_13;
  }

LABEL_4:
  jp2_input_box::transplant((this + 568), a2);
  *v3 = *(this + 36);
  *(v3 + 4) = *(this + 148);
  if (*(this + 154) != 1718903404 || (result = jx_codestream_source::parse_fragment_list(this), result))
  {
    v6 = *(this + 76);
    if (v6 && *(v6 + 32))
    {
      result = jp2_input_box::set_codestream_scope((this + 568), 0, 1);
    }

    else
    {
      result = 1;
    }

    *(this + 21) = result;
  }

  return result;
}

uint64_t jx_codestream_source::parse_fragment_list(jx_codestream_source *this)
{
  if (*(this + 106))
  {
    return 1;
  }

  if (*(this + 154) != 1718903404)
  {
    jx_codestream_source::parse_fragment_list();
  }

  if (*(this + 150))
  {
    return 0;
  }

  result = jp2_input_box::is_complete((this + 568));
  if (result)
  {
    while (1)
    {
      if ((*(this + 334) & 1) == 0)
      {
        result = jp2_input_box::open((this + 208), (this + 568));
        if (!result)
        {
          break;
        }
      }

      v3 = (this + 208);
      if (*(this + 64) == 1718383476)
      {
        result = jp2_input_box::is_complete(v3);
        if (result)
        {
          operator new();
        }

        return result;
      }

      jp2_input_box::close(v3);
    }
  }

  return result;
}

uint64_t jpx_codestream_source::get_codestream_id(jpx_codestream_source *this)
{
  v1 = *this;
  if (!*this || (*(v1 + 20) & 1) == 0)
  {
    jpx_codestream_source::get_codestream_id();
  }

  return *(v1 + 16);
}

uint64_t jx_codestream_source::is_stream_ready(jx_codestream_source *this)
{
  if (*(this + 154) == 1718903404)
  {

    return jx_codestream_source::parse_fragment_list(this);
  }

  else
  {
    v3 = *(this + 21);
    if ((v3 & 1) == 0)
    {
      if (*(this + 694) == 1)
      {
        v4 = *(this + 76);
        if (v4 && *(v4 + 32) && (jp2_input_box::set_codestream_scope((this + 568), *(this + 4), 1) & 1) == 0)
        {
          v3 = *(this + 21);
        }

        else
        {
          v3 = 1;
          *(this + 21) = 1;
        }
      }

      else
      {
        v3 = 0;
      }
    }

    return v3 & 1;
  }
}

char *jpx_codestream_source::access_dimensions(jx_codestream_source **this, int a2)
{
  v2 = *this;
  if (!*this || (*(v2 + 20) & 1) == 0)
  {
    jx_layer_source::finish();
  }

  v3 = v2 + 392;
  v6[1] = v2 + 392;
  if (a2)
  {
    if ((*(v2 + 433) & 1) == 0)
    {
      v4 = jpx_codestream_source::open_stream(this, 0);
      if (v4)
      {
        v6[0] = 0;
        kdu_codestream::create(v6, v4);
      }
    }
  }

  return v3;
}

jpx_input_box *jpx_codestream_source::open_stream(jx_codestream_source **this, jpx_input_box *a2)
{
  v3 = *this;
  if (!v3)
  {
    jpx_codestream_source::open_stream();
  }

  if (!jx_codestream_source::is_stream_ready(v3))
  {
    return 0;
  }

  v5 = *this;
  if (a2)
  {
    goto LABEL_8;
  }

  if (*(v5 + 22))
  {
    if (*(v5 + 694))
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
      kdu_error::kdu_error(&v9, "Error in Kakadu File Format Support:\n");
      kdu_error::~kdu_error(&v9);
    }

    a2 = (v5 + 568);
LABEL_8:
    v6 = *(v5 + 106);
    if (v6)
    {
      (*(*a2 + 112))(a2, v6, *v5 + 656, *(v5 + 1), 1785737827);
    }

    else
    {
      v7 = *(v5 + 1);
      v9 = *(v5 + 34);
      *&v10 = *(v5 + 70);
      (*(*a2 + 72))(a2, v7, &v9);
    }

    return a2;
  }

  if ((*(v5 + 694) & 1) == 0)
  {
    jpx_codestream_source::open_stream();
  }

  a2 = (v5 + 568);
  *(v5 + 22) = 1;
  return a2;
}

uint64_t jpx_codestream_source::access_palette(jpx_codestream_source *this)
{
  v1 = *this;
  if (!*this || (*(v1 + 20) & 1) == 0)
  {
    jpx_codestream_source::access_palette();
  }

  return v1 + 440;
}

uint64_t jx_layer_source::donate_jplh_box(jx_layer_source *this, jp2_input_box *a2)
{
  v3 = this + 568;
  v4 = *(this + 72);
  if (v4 < 0)
  {
    if (*v3)
    {
      goto LABEL_11;
    }
  }

  else if (v4 || *(this + 146))
  {
LABEL_11:
    jx_layer_source::donate_jplh_box();
  }

  if ((*(this + 142) & 1) != 0 || *(this + 510) == 1)
  {
    goto LABEL_11;
  }

  jp2_input_box::transplant((this + 16), a2);
  *v3 = *(this + 24);
  *(v3 + 4) = *(this + 10);

  return jx_layer_source::finish(this);
}

uint64_t jx_layer_source::check_stream_headers(jx_layer_source *this)
{
  if (*(this + 12) == 1)
  {
    if (*(this + 191) < 1)
    {
LABEL_7:
      result = 1;
      *(this + 13) = 1;
      return result;
    }

    v2 = 0;
    v3 = 0;
    while (1)
    {
      codestream = jx_source::get_codestream(*this, *(*(this + 96) + v2));
      if (!codestream)
      {
        jx_layer_source::check_stream_headers();
      }

      if ((jx_codestream_source::is_stream_ready(codestream) & 1) == 0)
      {
        break;
      }

      ++v3;
      v2 += 20;
      if (v3 >= *(this + 191))
      {
        goto LABEL_7;
      }
    }
  }

  return 0;
}

uint64_t jpx_layer_source::get_layer_id(jpx_layer_source *this)
{
  v1 = *this;
  if (!*this || (*(v1 + 12) & 1) == 0)
  {
    jpx_layer_source::get_layer_id();
  }

  return *(v1 + 8);
}

uint64_t jpx_layer_source::access_colour(jpx_layer_source *this, int a2)
{
  v2 = *this;
  if (!*this || (*(v2 + 12) & 1) == 0)
  {
    jpx_layer_source::access_colour();
  }

  result = v2 + 648;
  if (a2 >= 1)
  {
    do
    {
      result = *(result + 104);
      if (a2 < 2)
      {
        break;
      }

      --a2;
    }

    while (result);
  }

  return result;
}

uint64_t jpx_layer_source::have_stream_headers(jx_layer_source **this)
{
  v2 = *this;
  if (!v2)
  {
    jpx_layer_source::have_stream_headers();
  }

  if (*(v2 + 13))
  {
    return 1;
  }

  return jx_layer_source::check_stream_headers(v2);
}

uint64_t jpx_layer_source::get_codestream_registration(uint64_t *a1, unsigned int a2, void *a3, void *a4, void *a5)
{
  v5 = *a1;
  if (!*a1 || (*(v5 + 12) & 1) == 0)
  {
    jpx_layer_source::get_codestream_registration();
  }

  *a5 = *(v5 + 776);
  if ((a2 & 0x80000000) != 0 || *(*a1 + 764) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 20 * a2;
  *a3 = *(*(*a1 + 768) + v6 + 4);
  *a4 = *(*(*a1 + 768) + v6 + 12);
  return *(*(*a1 + 768) + v6);
}

void jx_source::jx_source(jx_source *this, jp2_family_src *a2)
{
  jp2_input_box::jp2_input_box((this + 32));
  jp2_input_box::jp2_input_box((this + 224));
  jp2_input_box::jp2_input_box((this + 416));
  *(this + 38) = xmmword_1862068B0;
  *(this + 624) = 1;
  *(this + 157) = 0;
  *(this + 80) = 0;
  *(this + 41) = 0u;
  jp2_input_box::jp2_input_box((this + 680));
  *(this + 864) = 0;
  *(this + 868) = 0;
  *(this + 956) = 0;
  *(this + 121) = 0;
  *(this + 55) = 0u;
  *(this + 896) = 0;
  *(this + 904) = 0u;
  *(this + 920) = 0u;
  *(this + 936) = 0u;
  *(this + 951) = 0;
  j2_colour::j2_colour((this + 976));
  *(this + 68) = 0u;
  jx_compatibility::jx_compatibility((this + 1144));
  jx_composition::jx_composition((this + 1336));
  jx_meta_manager::jx_meta_manager((this + 1840));
}

void sub_185FBBC14(_Unwind_Exception *a1)
{
  jx_meta_manager::~jx_meta_manager(v2);
  jx_composition::~jx_composition((v1 + 167));
  jx_compatibility::~jx_compatibility((v1 + 143));
  j2_colour::~j2_colour((v1 + 122));
  j2_channels::~j2_channels((v1 + 117));
  v4 = v1[116];
  if (v4)
  {
    MEMORY[0x186602830](v4, 0x1000C808B6DE1C6);
  }

  j2_palette::~j2_palette((v1 + 108));
  jp2_input_box::~jp2_input_box((v1 + 85));
  j2_data_references::~j2_data_references((v1 + 82));
  v5 = v1[80];
  if (v5)
  {
    MEMORY[0x186602830](v5, 0x1000C8052888210);
  }

  jp2_input_box::~jp2_input_box((v1 + 52));
  jp2_input_box::~jp2_input_box((v1 + 28));
  jp2_input_box::~jp2_input_box((v1 + 4));
  _Unwind_Resume(a1);
}

void jx_source::~jx_source(jx_source *this)
{
  for (i = *(this + 138); i; i = *(this + 138))
  {
    *(this + 138) = *(i + 107);
    jx_codestream_source::~jx_codestream_source(i);
    MEMORY[0x186602850]();
  }

  for (j = *(this + 139); j; j = *(this + 139))
  {
    *(this + 139) = *(j + 100);
    jx_layer_source::~jx_layer_source(j);
    MEMORY[0x186602850]();
  }

  for (k = *(this + 135); k; k = *(this + 135))
  {
    *(this + 135) = *(k + 13);
    j2_colour::~j2_colour(k);
    MEMORY[0x186602850]();
  }

  jx_meta_manager::~jx_meta_manager((this + 1840));
  jx_composition::~jx_composition((this + 1336));
  jx_compatibility::~jx_compatibility((this + 1144));
  j2_colour::~j2_colour((this + 976));
  j2_channels::~j2_channels((this + 936));
  v5 = *(this + 116);
  if (v5)
  {
    MEMORY[0x186602830](v5, 0x1000C808B6DE1C6);
  }

  j2_palette::~j2_palette((this + 864));
  jp2_input_box::~jp2_input_box((this + 680));
  j2_data_references::~j2_data_references((this + 656));
  v6 = *(this + 80);
  if (v6)
  {
    MEMORY[0x186602830](v6, 0x1000C8052888210);
  }

  jp2_input_box::~jp2_input_box((this + 416));
  jp2_input_box::~jp2_input_box((this + 224));
  jp2_input_box::~jp2_input_box((this + 32));
}

uint64_t jp2_family_src::is_top_level_complete(jp2_family_src *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v4 = 0;
    (*(*v1 + 80))(v1, 4, 0, 0, &v4);
    v2 = v4;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t jx_source::finish_jp2_header_box(jx_source *this)
{
  if (*(this + 600))
  {
    LOBYTE(v1) = 1;
    return v1 & 1;
  }

  while (1)
  {
    v3 = *(this + 408);
    if (v3)
    {
      break;
    }

    if (*(this + 216))
    {
      goto LABEL_7;
    }

    if ((jx_source::parse_next_top_level_box(this, 0) & 1) == 0)
    {
      v3 = *(this + 408);
LABEL_7:
      if ((v3 & 1) == 0)
      {
        LOBYTE(v1) = *(this + 216);
        return v1 & 1;
      }

      break;
    }
  }

  if (*(this + 350) != 1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v10 = (this + 1088);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if ((*(this + 542) & 1) == 0 && !jp2_input_box::open((this + 416), (this + 224)))
        {
          if ((jp2_input_box::is_complete((this + 224)) & 1) == 0)
          {
            if ((*(this + 154) & 0x80000000) != 0 || *(this + 648) != 1 || *(this + 864) != 1 || *(this + 231) < 1)
            {
              goto LABEL_51;
            }

            v1 = *(this + 235);
            if (!v1)
            {
              return v1 & 1;
            }

            if (*(this + 976) != 1 || *v10 <= 0.0)
            {
              goto LABEL_51;
            }
          }

          jp2_input_box::close((this + 224));
          j2_resolution::finalize(v10);
          LOBYTE(v1) = 1;
          *(this + 600) = 1;
          return v1 & 1;
        }

        is_complete = jp2_input_box::is_complete((this + 416));
        v5 = *(this + 116);
        if (v5 <= 1668246641)
        {
          break;
        }

        if (v5 > 1885564017)
        {
          if (v5 == 1885564018)
          {
            if (is_complete)
            {
              j2_palette::init((this + 864), (this + 416));
            }

            goto LABEL_51;
          }

          if (v5 == 1919251232)
          {
            if (!is_complete)
            {
              goto LABEL_51;
            }

            j2_resolution::init(v10, (this + 416));
          }

          else
          {
LABEL_29:
            if ((jp2_input_box::close((this + 416)) & 1) == 0)
            {
              v12 = 0;
              memset(v11, 0, sizeof(v11));
              kdu_error::kdu_error(v11, "Error in Kakadu File Format Support:\n");
              (*(*&v11[0] + 16))(v11, "sub_box.close failed - corrupt jp2 file");
              kdu_error::~kdu_error(v11);
            }
          }
        }

        else
        {
          if (v5 != 1668246642)
          {
            if (v5 == 1768449138)
            {
              if (is_complete)
              {
                j2_dimensions::init((this + 608), (this + 416));
              }

              goto LABEL_51;
            }

            goto LABEL_29;
          }

          if (!is_complete)
          {
            goto LABEL_51;
          }

          v6 = (this + 976);
          do
          {
            v7 = v6;
            v6 = *(v6 + 13);
          }

          while (v6);
          if (*v7 == 1)
          {
            operator new();
          }

          j2_colour::init(v7, (this + 416));
        }
      }

      if (v5 != 1651532643)
      {
        break;
      }

      if (!is_complete)
      {
        goto LABEL_51;
      }

      j2_dimensions::process_bpcc_box((this + 608), (this + 416));
      *(this + 648) = 1;
    }

    if (v5 != 1667523942)
    {
      break;
    }

    if (!is_complete)
    {
      goto LABEL_51;
    }

    j2_channels::init((this + 936), (this + 416));
  }

  if (v5 != 1668112752)
  {
    goto LABEL_29;
  }

  if (is_complete)
  {
    j2_component_map::init((this + 896), (this + 416));
  }

LABEL_51:
  LOBYTE(v1) = 0;
  return v1 & 1;
}

uint64_t jpx_source::open(jpx_source *this, jp2_family_src *a2, char a3)
{
  v6 = *(this + 1);
  if (!v6)
  {
    operator new();
  }

  if (*(v6 + 15) == 1)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    kdu_error::kdu_error(&v14, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v14);
  }

  if (*v6 != a2 || *(a2 + 18) != *(v6 + 8))
  {
    jx_source::~jx_source(v6);
    MEMORY[0x186602850]();
    operator new();
  }

  if ((*(v6 + 12) & 1) == 0)
  {
    if ((*(v6 + 158) & 1) == 0)
    {
      v14 = xmmword_1862067D0;
      LODWORD(v15) = 0;
      if (!jp2_input_box::open((v6 + 32), a2, &v14))
      {
        goto LABEL_13;
      }

      v6 = *(this + 1);
    }

    if ((jp2_input_box::is_complete((v6 + 32)) & 1) == 0)
    {
LABEL_13:
      if (!*(a2 + 4))
      {
        (*(*this + 24))(this);
        if ((a3 & 1) == 0)
        {
          v16 = 0;
          v14 = 0u;
          v15 = 0u;
          kdu_error::kdu_error(&v14, "Error in Kakadu File Format Support:\n");
          kdu_error::~kdu_error(&v14);
        }

        return 0xFFFFFFFFLL;
      }

      return 0;
    }

    v13 = 0;
    v7 = *(this + 1);
    if (*(v7 + 80) != 1783636000 || !jp2_input_box::read((v7 + 32), &v13) || v13 != 218793738 || (v8 = *(this + 1), (*(v8 + 157) & 1) != 0) || *(v8 + 120) - *(v8 + 168) + *(v8 + 208))
    {
      (*(*this + 24))(this);
      if ((a3 & 1) == 0)
      {
        v16 = 0;
        v14 = 0u;
        v15 = 0u;
        kdu_error::kdu_error(&v14, "Error in Kakadu File Format Support:\n");
        kdu_error::~kdu_error(&v14);
      }

      return 0xFFFFFFFFLL;
    }

    jp2_input_box::close((v8 + 32));
    v6 = *(this + 1);
    *(v6 + 12) = 1;
  }

  if (*(v6 + 13))
  {
    if (*(v6 + 16))
    {
      goto LABEL_26;
    }

    goto LABEL_42;
  }

  if ((*(v6 + 158) & 1) == 0)
  {
    if (!jp2_input_box::open_next((v6 + 32)))
    {
      goto LABEL_31;
    }

    v6 = *(this + 1);
  }

  if ((jp2_input_box::is_complete((v6 + 32)) & 1) == 0)
  {
LABEL_31:
    if (!*(a2 + 4))
    {
      (*(*this + 24))(this);
      if ((a3 & 1) == 0)
      {
        v16 = 0;
        v14 = 0u;
        v15 = 0u;
        kdu_error::kdu_error(&v14, "Error in Kakadu File Format Support:\n");
        kdu_error::~kdu_error(&v14);
      }

      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  v10 = *(this + 1);
  if (v10[20] != 1718909296)
  {
    (*(*this + 24))(this);
    if ((a3 & 1) == 0)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      kdu_error::kdu_error(&v14, "Error in Kakadu File Format Support:\n");
      kdu_error::~kdu_error(&v14);
    }

    return 0xFFFFFFFFLL;
  }

  if ((jx_compatibility::init_ftyp((v10 + 286), (v10 + 8)) & 1) == 0)
  {
    (*(*this + 24))(this);
    if ((a3 & 1) == 0)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      kdu_error::kdu_error(&v14, "Error in Kakadu File Format Support:\n");
      kdu_error::~kdu_error(&v14);
    }

    return 0xFFFFFFFFLL;
  }

  v6 = *(this + 1);
  if (*(v6 + 158) == 1)
  {
    jpx_source::open();
  }

  *(v6 + 13) = 1;
  v11 = *(v6 + 1144);
  *(v6 + 16) = v11;
  if (v11)
  {
LABEL_26:
    result = 1;
    *(v6 + 15) = 1;
    return result;
  }

LABEL_42:
  if (*(v6 + 14) == 1)
  {
    jpx_source::open();
  }

  if ((*(v6 + 158) & 1) == 0)
  {
    if (!jp2_input_box::open_next((v6 + 32)))
    {
      goto LABEL_48;
    }

    v6 = *(this + 1);
  }

  if (*(v6 + 80) == 1920099697 && (jp2_input_box::is_complete((v6 + 32)) & 1) == 0)
  {
LABEL_48:
    if (!*(a2 + 4))
    {
      (*(*this + 24))(this);
      if ((a3 & 1) == 0)
      {
        v16 = 0;
        v14 = 0u;
        v15 = 0u;
        kdu_error::kdu_error(&v14, "Error in Kakadu File Format Support:\n");
        kdu_error::~kdu_error(&v14);
      }

      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  v12 = *(this + 1);
  if (v12[20] == 1920099697)
  {
    jx_compatibility::init_rreq((v12 + 286), (v12 + 8));
  }

  jx_source::parse_next_top_level_box(*(this + 1), 1);
  result = 1;
  *(*(this + 1) + 15) = 1;
  return result;
}

uint64_t jpx_source::close(jpx_source *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 15);
    jx_source::~jx_source(v2);
    MEMORY[0x186602850]();
    *(this + 1) = 0;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t jpx_source::count_codestreams(jpx_source *this, int *a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    if (*(v3 + 15) == 1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (*(v5 + 216))
        {
          break;
        }

        if ((jx_source::parse_next_top_level_box(v5, 0) & 1) == 0)
        {
          v5 = *(this + 1);
          LOBYTE(v3) = *(v5 + 216);
          goto LABEL_9;
        }
      }

      LOBYTE(v3) = 1;
LABEL_9:
      v6 = *(v5 + 20);
    }

    else
    {
      v6 = 0;
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  return v3 & 1;
}

uint64_t jpx_source::access_codestream(jpx_source *this, int a2, int a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    return 0;
  }

  v4 = a2;
  v5 = 0;
  if (a2 & 0x80000000) == 0 && (*(v3 + 15))
  {
    while (1)
    {
      v8 = *(this + 1);
      if (*(v8 + 20) > v4 || (*(v8 + 216) & 1) != 0)
      {
        break;
      }

      if ((jx_source::parse_next_top_level_box(v8, 0) & 1) == 0)
      {
        if (!v4 && *(*(this + 1) + 216) == 1)
        {
          v13 = 0;
          v11 = 0u;
          v12 = 0u;
          kdu_error::kdu_error(&v11, "Error in Kakadu File Format Support:\n");
          (*(v11 + 16))(&v11, "JPX data source appears to contain no codestreams at all.");
          goto LABEL_24;
        }

        return 0;
      }
    }

    v5 = *(v8 + 1104);
    if (v4 >= 1)
    {
      do
      {
        v5 = *(v5 + 856);
        --v4;
      }

      while (v4);
    }

    if ((jx_codestream_source::finish(v5, 1) & 1) == 0)
    {
      if (*(*(this + 1) + 216) != 1)
      {
        return 0;
      }

      if (*(v5 + 20) == 1)
      {
        v9 = *(v5 + 552);
        if (v9 < 0)
        {
          if (*(v5 + 544))
          {
            return 0;
          }
        }

        else if (v9 || *(v5 + 560))
        {
          return 0;
        }
      }

      v13 = 0;
      v11 = 0u;
      v12 = 0u;
      kdu_error::kdu_error(&v11, "Error in Kakadu File Format Support:\n");
      (*(v11 + 16))(&v11, "JPX data source appears to contain an incomplete codestream.  Specifically, this either means that an embedded contiguous or fragmented codestream has been found without sufficient descriptive metadata, or that a codestream header box has been found without any matching embedded contiguous or fragmented codestream.  Both of these conditions are illegal for JPX and JP2 data sources.");
LABEL_24:
      kdu_error::~kdu_error(&v11);
    }

    if (a3 && !jx_codestream_source::is_stream_ready(v5))
    {
      return 0;
    }
  }

  return v5;
}

uint64_t jpx_source::access_meta_manager(jpx_source *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return v1 + 1840;
  }

  else
  {
    return 0;
  }
}

void jpx_source::~jpx_source(jpx_source *this)
{
  *this = &unk_1EF4D3DB0;
  jpx_source::close(this);
}

{
  *this = &unk_1EF4D3DB0;
  jpx_source::close(this);

  JUMPOUT(0x186602850);
}

uint64_t jx_frame::reset(jx_frame *this)
{
  *(this + 3) = 0;
  result = *(this + 3);
  for (*(this + 4) = result; result; *(this + 4) = result)
  {
    *(this + 3) = *(result + 56);
    MEMORY[0x186602850]();
    result = *(this + 3);
  }

  return result;
}

void jx_metaread::jx_metaread(jx_metaread *this)
{
  jp2_input_box::jp2_input_box(this);
  jp2_input_box::jp2_input_box((v2 + 184));
  *(this + 46) = 0;
  *(this + 47) = 0;
}

uint64_t jx_roigroup::jx_roigroup(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  jp2_output_box::jp2_output_box((a1 + 48));
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = a4;
  *(a1 + 20) = a3;
  v8 = 128 << a3;
  *(a1 + 40) = 128 << a3;
  *(a1 + 44) = 128 << a3;
  if (a4 >= 1)
  {
    v9 = a4 + 1;
    do
    {
      v8 *= 8;
      --v9;
    }

    while (v9 > 1);
    *(a1 + 40) = v8;
    *(a1 + 44) = v8;
  }

  v10 = 8 * v8;
  *(a1 + 32) = v10;
  *(a1 + 36) = v10;
  bzero((a1 + 128), 0x600uLL);
  return a1;
}

void jx_compatibility::jx_compatibility(jx_compatibility *this)
{
  jp2_output_box::jp2_output_box((this + 112));
  *this = 0;
  *(this + 1) = 0x101010101010101;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 13) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
}

void jx_composition::jx_composition(jx_composition *this)
{
  jp2_output_box::jp2_output_box((this + 8));
  jp2_input_box::jp2_input_box((this + 88));
  jp2_input_box::jp2_input_box((this + 272));
  *(this + 29) = 0u;
  *(this + 61) = 0;
  *(this + 62) = 0;
  *this = 0;
  *(this + 57) = 0x100000000;
  *(this + 60) = 0;
}

void sub_185FBCEA8(_Unwind_Exception *a1)
{
  jp2_input_box::~jp2_input_box((v1 + 88));
  jp2_output_box::~jp2_output_box((v1 + 8));
  _Unwind_Resume(a1);
}

void jx_composition::~jx_composition(jx_composition *this)
{
  v2 = *(this + 59);
  for (*(this + 60) = v2; v2; *(this + 60) = v2)
  {
    *(this + 59) = *(v2 + 6);
    jx_frame::reset(v2);
    MEMORY[0x186602850](v2, 0x1020C406ACA6742);
    v2 = *(this + 59);
  }

  jp2_input_box::~jp2_input_box((this + 272));
  jp2_input_box::~jp2_input_box((this + 88));
  jp2_output_box::~jp2_output_box((this + 8));
}

void jx_compatibility::~jx_compatibility(jx_compatibility *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1000C807733839DLL);
  }

  v3 = *(this + 13);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C80D990E388);
  }

  jp2_output_box::~jp2_output_box((this + 112));
}

void j2_data_references::~j2_data_references(j2_data_references *this)
{
  if (*(this + 1))
  {
    v2 = *this;
    if (*this < 1)
    {
      goto LABEL_8;
    }

    v3 = 0;
    do
    {
      v4 = *(*(this + 1) + 8 * v3);
      if (v4)
      {
        MEMORY[0x186602830](v4, 0x1000C8077774924);
        v2 = *this;
      }

      ++v3;
    }

    while (v3 < v2);
    if (*(this + 1))
    {
LABEL_8:
      MEMORY[0x186602830]();
    }
  }
}

void jx_codestream_source::~jx_codestream_source(jx_codestream_source *this)
{
  v2 = *(this + 106);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      MEMORY[0x186602830](v3, 0x1000C800CE834B2);
    }

    MEMORY[0x186602850](v2, 0x1020C40FBFA920DLL);
  }

  jpx_input_box::~jpx_input_box((this + 568));
  v4 = *(this + 63);
  if (v4)
  {
    MEMORY[0x186602830](v4, 0x1000C808B6DE1C6);
  }

  j2_palette::~j2_palette((this + 440));
  v5 = *(this + 53);
  if (v5)
  {
    MEMORY[0x186602830](v5, 0x1000C8052888210);
  }

  jp2_input_box::~jp2_input_box((this + 208));
  jp2_input_box::~jp2_input_box((this + 24));
}

void jx_layer_source::~jx_layer_source(jx_layer_source *this)
{
  for (i = *(this + 94); i; i = *(this + 94))
  {
    *(this + 94) = *(i + 13);
    j2_colour::~j2_colour(i);
    MEMORY[0x186602850]();
  }

  v3 = *(this + 96);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C80A86A77D5);
  }

  j2_colour::~j2_colour((this + 648));
  j2_channels::~j2_channels((this + 608));
  jp2_input_box::~jp2_input_box((this + 384));
  jp2_input_box::~jp2_input_box((this + 200));
  jp2_input_box::~jp2_input_box((this + 16));
}

uint64_t jx_layer_source::jx_layer_source(uint64_t a1, uint64_t a2, int a3)
{
  jp2_input_box::jp2_input_box((a1 + 16));
  jp2_input_box::jp2_input_box((a1 + 200));
  jp2_input_box::jp2_input_box((a1 + 384));
  *(a1 + 568) = 0;
  *(a1 + 576) = -1;
  *(a1 + 584) = 0;
  *(a1 + 628) = 0;
  *(a1 + 640) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 623) = 0;
  j2_colour::j2_colour((a1 + 648));
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = 0;
  *(a1 + 792) = 0u;
  return a1;
}

void sub_185FBD240(_Unwind_Exception *a1)
{
  j2_channels::~j2_channels((v1 + 608));
  jp2_input_box::~jp2_input_box((v1 + 384));
  jp2_input_box::~jp2_input_box((v1 + 200));
  jp2_input_box::~jp2_input_box((v1 + 16));
  _Unwind_Resume(a1);
}

uint64_t jx_codestream_source::jx_codestream_source(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  jp2_input_box::jp2_input_box((a1 + 24));
  jp2_input_box::jp2_input_box((a1 + 208));
  *(a1 + 392) = xmmword_1862068B0;
  *(a1 + 408) = 1;
  *(a1 + 412) = 0;
  *(a1 + 424) = 0;
  *(a1 + 440) = 0;
  *(a1 + 444) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  *(a1 + 520) = -1;
  *(a1 + 528) = 0;
  *(a1 + 544) = xmmword_1862067D0;
  *(a1 + 560) = 0;
  jp2_input_box::jp2_input_box((a1 + 568));
  *(a1 + 568) = &unk_1EF4D3D28;
  *(a1 + 752) = 0u;
  *(a1 + 808) = -1;
  *(a1 + 768) = -1;
  *(a1 + 840) = 0;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 23) = a5;
  *(a1 + 432) = 0;
  *(a1 + 20) = 0;
  *(a1 + 22) = 0;
  *(a1 + 536) = 0;
  *(a1 + 848) = 0u;
  return a1;
}

void sub_185FBD398(_Unwind_Exception *a1)
{
  v3 = v1[63];
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C808B6DE1C6);
  }

  jx_codestream_source::jx_codestream_source((v1 + 55), v1 + 53, (v1 + 26));
  jp2_input_box::~jp2_input_box((v1 + 3));
  _Unwind_Resume(a1);
}

BOOL _cg_jpeg_calc_output_dimensions(uint64_t a1)
{
  v2 = *(a1 + 36);
  if (v2 != 202)
  {
    v3 = *a1;
    *(v3 + 10) = 21;
    *(v3 + 12) = v2;
    (**a1)(a1);
  }

  jpeg_core_output_dimensions(a1);
  v4 = *(a1 + 56);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(a1 + 304);
    do
    {
      v7 = *(a1 + 424);
      if (*(a1 + 92))
      {
        v6[9] = v7;
        v8 = v6 + 9;
        v9 = *(a1 + 428);
      }

      else
      {
        if (*(a1 + 100))
        {
          v10 = 8;
        }

        else
        {
          v10 = 4;
        }

        if (v7 <= v10)
        {
          v11 = 1;
          do
          {
            if (*(a1 + 416) % (v11 * 2 * v6[2]))
            {
              break;
            }

            v11 *= 2;
          }

          while (v7 * v11 <= v10);
        }

        else
        {
          v11 = 1;
        }

        v7 *= v11;
        v6[9] = v7;
        v8 = v6 + 9;
        v9 = *(a1 + 428);
        if (v9 <= v10)
        {
          v12 = 1;
          do
          {
            if (*(a1 + 420) % (v12 * 2 * v6[3]))
            {
              break;
            }

            v12 *= 2;
          }

          while (v9 * v12 <= v10);
          goto LABEL_17;
        }
      }

      v12 = 1;
LABEL_17:
      v13 = v9 * v12;
      v6[10] = v9 * v12;
      if (v7 <= 2 * v9 * v12)
      {
        if (v13 > 2 * v7)
        {
          v6[10] = 2 * v7;
        }
      }

      else
      {
        v7 = 2 * v13;
        *v8 = 2 * v13;
      }

      v6[11] = jdiv_round_up(v6[2] * v7 * *(a1 + 48), *(a1 + 556) * *(a1 + 416));
      v6[12] = jdiv_round_up(v6[10] * v6[3] * *(a1 + 52), *(a1 + 556) * *(a1 + 420));
      ++v5;
      v6 += 24;
      v4 = *(a1 + 56);
    }

    while (v5 < v4);
  }

  v14 = *(a1 + 64) - 1;
  if (v14 <= 6)
  {
    v4 = dword_186208700[v14];
  }

  if (*(a1 + 108))
  {
    v15 = 1;
  }

  else
  {
    v15 = v4;
  }

  *(a1 + 144) = v4;
  *(a1 + 148) = v15;
  result = use_merged_upsample(a1);
  if (result)
  {
    v17 = *(a1 + 420);
  }

  else
  {
    v17 = 1;
  }

  *(a1 + 152) = v17;
  return result;
}

BOOL use_merged_upsample(uint64_t a1)
{
  if (!*(a1 + 400) && (*(a1 + 60) | 4) == 7 && *(a1 + 56) == 3 && *(a1 + 64) == 2 && *(a1 + 144) == 3 && !*(a1 + 396) && (v2 = *(a1 + 304), v2[2] == 2) && v2[26] == 1 && v2[50] == 1 && v2[3] <= 2 && v2[27] == 1 && v2[51] == 1 && (v3 = v2[9], v3 == *(a1 + 424)) && v2[33] == v3 && v2[57] == v3 && (v4 = v2[10], v4 == *(a1 + 428)) && v2[34] == v4)
  {
    return v2[58] == v4;
  }

  else
  {
    return 0;
  }
}

uint64_t _cg_jinit_master_decompress(uint64_t a1)
{
  v2 = (**(a1 + 8))();
  *(a1 + 576) = v2;
  *v2 = prepare_for_output_pass;
  *(v2 + 8) = finish_output_pass;
  *(v2 + 16) = 0;
  v3 = *(a1 + 296);
  if (v3 != 8)
  {
    v4 = *a1;
    *(v4 + 10) = 16;
    *(v4 + 12) = v3;
    (**a1)(a1);
  }

  _cg_jpeg_calc_output_dimensions(a1);
  v5 = (**(a1 + 8))(a1, 1, 1280);
  v6 = 0;
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[6] = 0u;
  v5[7] = 0u;
  v5[8] = 0u;
  v5[9] = 0u;
  v5[10] = 0u;
  v5[11] = 0u;
  v5[12] = 0u;
  v5[13] = 0u;
  v5[14] = 0u;
  v5[15] = 0u;
  v5[16] = 0u;
  v5[17] = 0u;
  v5[18] = 0u;
  v5[19] = 0u;
  v5[20] = 0u;
  v5[21] = 0u;
  v5[22] = 0u;
  v5[23] = 0u;
  v5[24] = 0u;
  v5[25] = 0u;
  v5[26] = 0u;
  v5[27] = 0u;
  v5[28] = 0u;
  v5[29] = 0u;
  v5[30] = 0u;
  v5[31] = 0u;
  v7 = xmmword_1862086F0;
  v8.i64[0] = 0x1010101010101010;
  v8.i64[1] = 0x1010101010101010;
  *(a1 + 440) = v5 + 32;
  do
  {
    v5[v6 + 32] = v7;
    ++v6;
    v7 = vaddq_s8(v7, v8);
  }

  while (v6 != 16);
  *&v9 = -1;
  *(&v9 + 1) = -1;
  v5[79] = v9;
  v5[78] = v9;
  v5[77] = v9;
  v5[76] = v9;
  v5[75] = v9;
  v5[74] = v9;
  v5[73] = v9;
  v5[72] = v9;
  v5[71] = v9;
  v5[70] = v9;
  v5[69] = v9;
  v5[68] = v9;
  v5[67] = v9;
  v5[66] = v9;
  v5[65] = v9;
  v5[63] = v9;
  v5[64] = v9;
  v5[61] = v9;
  v5[62] = v9;
  v5[59] = v9;
  v5[60] = v9;
  v5[57] = v9;
  v5[58] = v9;
  v5[55] = v9;
  v5[56] = v9;
  v5[53] = v9;
  v5[54] = v9;
  v5[51] = v9;
  v5[52] = v9;
  v5[49] = v9;
  v5[50] = v9;
  v5[48] = v9;
  if (!*(a1 + 140) || (v10 = *(a1 + 136)) == 0 || (v11 = *(a1 + 144), v11 <= 0))
  {
    v12 = *a1;
    *(v12 + 10) = 33;
    (*v12)(a1);
    v10 = *(a1 + 136);
    v11 = *(a1 + 144);
  }

  if ((v10 * v11) >> 32)
  {
    v13 = *a1;
    *(v13 + 10) = 72;
    (*v13)(a1);
  }

  *(v2 + 24) = 0;
  v14 = use_merged_upsample(a1);
  *(v2 + 32) = 0;
  *(v2 + 28) = v14;
  *(v2 + 40) = 0;
  if (*(a1 + 108))
  {
    if (!*(a1 + 88))
    {
      *(a1 + 128) = 0;
      *(a1 + 124) = 0;
    }

    if (*(a1 + 92))
    {
      v15 = *a1;
      *(v15 + 10) = 48;
      (*v15)(a1);
    }

    if (*(a1 + 144) == 3)
    {
      if (*(a1 + 160))
      {
        *(a1 + 128) = 1;
      }

      else if (*(a1 + 116))
      {
        *(a1 + 132) = 1;
      }

      else
      {
        *(a1 + 124) = 1;
      }
    }

    else
    {
      *(a1 + 124) = 1;
      *(a1 + 132) = 0;
      *(a1 + 160) = 0;
    }

    if (*(a1 + 124))
    {
      _cg_jinit_1pass_quantizer(a1);
      *(v2 + 32) = *(a1 + 656);
    }

    if (*(a1 + 132) || *(a1 + 128))
    {
      _cg_jinit_2pass_quantizer(a1);
      *(v2 + 40) = *(a1 + 656);
    }
  }

  else
  {
    *(a1 + 128) = 0;
    *(a1 + 124) = 0;
  }

  if (!*(a1 + 92))
  {
    if (*(v2 + 28))
    {
      _cg_jinit_merged_upsampler(a1);
    }

    else
    {
      _cg_jinit_color_deconverter(a1);
      _cg_jinit_upsampler(a1);
    }

    _cg_jinit_d_post_controller(a1, *(a1 + 132));
  }

  _cg_jinit_inverse_dct(a1);
  if (*(a1 + 320))
  {
    jinit_arith_decoder(a1);
  }

  else
  {
    _cg_jinit_huff_decoder(a1);
  }

  if (*(*(a1 + 608) + 32))
  {
    v16 = 1;
  }

  else
  {
    v16 = *(a1 + 88) != 0;
  }

  _cg_jinit_d_coef_controller(a1, v16);
  if (!*(a1 + 92))
  {
    _cg_jinit_d_main_controller(a1, 0);
  }

  (*(*(a1 + 8) + 48))(a1);
  result = (*(*(a1 + 608) + 16))(a1);
  v18 = *(a1 + 16);
  if (v18 && !*(a1 + 88) && *(*(a1 + 608) + 32))
  {
    if (*(a1 + 316))
    {
      v19 = 3 * *(a1 + 56) + 2;
    }

    else
    {
      v19 = *(a1 + 56);
    }

    v20 = *(a1 + 432);
    *(v18 + 8) = 0;
    *(v18 + 16) = v19 * v20;
    if (*(a1 + 132))
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    *(v18 + 24) = 0;
    *(v18 + 28) = v21;
    ++*(v2 + 24);
  }

  return result;
}

uint64_t prepare_for_output_pass(uint64_t *a1)
{
  v2 = a1[72];
  if (*(v2 + 16))
  {
    *(v2 + 16) = 0;
    (*a1[82])(a1, 0);
    v3 = 2;
    (*a1[75])(a1, 2);
LABEL_3:
    result = (*a1[73])(a1, v3);
    goto LABEL_7;
  }

  if (*(a1 + 27) && !a1[20])
  {
    if (*(a1 + 29) && *(a1 + 33))
    {
      a1[82] = *(v2 + 40);
      *(v2 + 16) = 1;
    }

    else if (*(a1 + 31))
    {
      a1[82] = *(v2 + 32);
    }

    else
    {
      v11 = *a1;
      *(v11 + 40) = 47;
      (*v11)(a1);
    }
  }

  (*a1[79])(a1);
  result = (*(a1[74] + 16))(a1);
  if (!*(a1 + 23))
  {
    if (!*(v2 + 28))
    {
      (*a1[81])(a1);
    }

    (*a1[80])(a1);
    if (*(a1 + 27))
    {
      (*a1[82])(a1, *(v2 + 16));
    }

    if (*(v2 + 16))
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }

    (*a1[75])(a1, v10);
    v3 = 0;
    goto LABEL_3;
  }

LABEL_7:
  v5 = a1[2];
  if (v5)
  {
    v6 = *(v2 + 24);
    v7 = *(v2 + 16) ? 2 : 1;
    v8 = v7 + v6;
    *(v5 + 24) = v6;
    *(v5 + 28) = v8;
    if (*(a1 + 22))
    {
      if (!*(a1[76] + 36))
      {
        if (*(a1 + 33))
        {
          v9 = 2;
        }

        else
        {
          v9 = 1;
        }

        *(v5 + 28) = v9 + v8;
      }
    }
  }

  return result;
}

uint64_t finish_output_pass(uint64_t result)
{
  v1 = *(result + 576);
  if (*(result + 108))
  {
    result = (*(*(result + 656) + 16))();
  }

  ++*(v1 + 24);
  return result;
}

uint64_t _cg_jpeg_std_error(uint64_t result)
{
  *result = error_exit;
  *(result + 8) = emit_message;
  *(result + 16) = output_message;
  *(result + 24) = format_message;
  *(result + 32) = reset_error_mgr;
  *(result + 128) = 0;
  *(result + 40) = 0;
  *(result + 136) = 0;
  *(result + 144) = _cg_jpeg_std_message_table;
  *(result + 152) = 126;
  *(result + 160) = 0;
  *(result + 168) = 0;
  return result;
}

void error_exit(uint64_t a1)
{
  (*(*a1 + 16))(a1);
  _cg_jpeg_destroy(a1);
  exit(1);
}

uint64_t *emit_message(uint64_t *result, int a2)
{
  v2 = *result;
  if (a2 < 0)
  {
    v4 = *(v2 + 136);
    if (!v4 || *(v2 + 128) >= 3)
    {
      result = (*(v2 + 16))();
      v4 = *(v2 + 136);
    }

    *(v2 + 136) = v4 + 1;
  }

  else if (*(v2 + 128) >= a2)
  {
    v3 = *(v2 + 16);

    return v3();
  }

  return result;
}

uint64_t output_message(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  (*(*a1 + 24))(a1, v2);
  return fprintf(*MEMORY[0x1E69E9848], "%s\n", v2);
}

uint64_t format_message(uint64_t *a1, char *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  if (v4 >= 1 && v4 <= *(v3 + 152))
  {
    v9 = (*(v3 + 144) + 8 * v4);
  }

  else
  {
    v5 = *(v3 + 160);
    if (!v5)
    {
      goto LABEL_9;
    }

    v6 = *(v3 + 168);
    v7 = __OFSUB__(v4, v6);
    v8 = v4 - v6;
    if (v8 < 0 != v7 || v4 > *(v3 + 172))
    {
      goto LABEL_9;
    }

    v9 = (v5 + 8 * v8);
  }

  v10 = *v9;
  if (!*v9)
  {
LABEL_9:
    *(v3 + 48) = v4;
    v10 = **(v3 + 144);
  }

  v11 = v10;
  while (1)
  {
    v13 = *v11++;
    v12 = v13;
    if (!v13)
    {
      break;
    }

    if (v12 == 37)
    {
      if (*v11 == 115)
      {
        return sprintf(a2, v10, v3 + 48);
      }

      return sprintf(a2, v10, *(v3 + 48), *(v3 + 52), *(v3 + 56), *(v3 + 60), *(v3 + 64), *(v3 + 68), *(v3 + 72), *(v3 + 76));
    }
  }

  return sprintf(a2, v10, *(v3 + 48), *(v3 + 52), *(v3 + 56), *(v3 + 60), *(v3 + 64), *(v3 + 68), *(v3 + 72), *(v3 + 76));
}

uint64_t *reset_error_mgr(uint64_t *result)
{
  v1 = *result;
  *(v1 + 136) = 0;
  *(v1 + 40) = 0;
  return result;
}

uint64_t _cg_jinit_downsampler(uint64_t *a1)
{
  result = (*a1[1])();
  v3 = result;
  a1[68] = result;
  *result = start_pass_downsample;
  *(result + 8) = sep_downsample;
  *(result + 16) = 0;
  if (*(a1 + 75))
  {
    v4 = *a1;
    *(v4 + 40) = 26;
    result = (*v4)(a1);
  }

  if (*(a1 + 23) >= 1)
  {
    v5 = 0;
    v6 = (a1[13] + 40);
    v7 = 1;
    while (1)
    {
      v8 = *(v6 - 1) * *(v6 - 8);
      v9 = *(a1 + 90);
      v10 = *v6 * *(v6 - 7) / *(a1 + 91);
      v11 = *(a1 + 88);
      v12 = *(a1 + 89);
      *(v3 + 4 * v5 + 104) = v10;
      v13 = v8 / v9;
      if (v11 == v13 && v12 == v10)
      {
        v14 = v3 + 8 * v5;
        if (!*(a1 + 77))
        {
          v16 = fullsize_downsample;
          goto LABEL_21;
        }

        v15 = fullsize_smooth_downsample;
      }

      else
      {
        if (v11 == 2 * v13 && v12 == v10)
        {
          v7 = 0;
          v14 = v3 + 8 * v5;
          v16 = h2v1_downsample;
LABEL_21:
          *(v14 + 24) = v16;
          goto LABEL_22;
        }

        if (v11 != 2 * v13 || v12 != 2 * v10)
        {
          v18 = v11 / v13;
          if (v11 % v13 || (v19 = v12 / v10, v12 % v10))
          {
            v20 = *a1;
            *(v20 + 40) = 39;
            result = (*v20)(a1);
          }

          else
          {
            v7 = 0;
            *(v3 + 8 * v5 + 24) = int_downsample;
            v21 = v3 + v5;
            *(v21 + 144) = v18;
            *(v21 + 154) = v19;
          }

          goto LABEL_22;
        }

        v14 = v3 + 8 * v5;
        if (!*(a1 + 77))
        {
          v16 = h2v2_downsample;
          goto LABEL_21;
        }

        v15 = h2v2_smooth_downsample;
      }

      *(v14 + 24) = v15;
      *(v3 + 16) = 1;
LABEL_22:
      v6 += 24;
      if (++v5 >= *(a1 + 23))
      {
        if (*(a1 + 77) && !v7)
        {
          v22 = *a1;
          *(v22 + 40) = 101;
          v23 = *(v22 + 8);

          return v23(a1, 0);
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t sep_downsample(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  if (*(result + 92) >= 1)
  {
    v8 = result;
    v9 = 0;
    v10 = *(result + 104);
    v11 = a3;
    v12 = *(result + 544) + 104;
    do
    {
      result = (*(v12 + 8 * v9 - 80))(v8, v10, *(a2 + 8 * v9) + 8 * v11, *(a4 + 8 * v9) + 8 * (*(v12 + 4 * v9) * a5));
      ++v9;
      v10 += 96;
    }

    while (v9 < *(v8 + 92));
  }

  return result;
}

unsigned __int8 *fullsize_smooth_downsample(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(a2 + 36) * *(a2 + 28);
  v8 = *(result + 89);
  v9 = *(result + 12);
  if (v8 >= -1 && v7 - v9 >= 1)
  {
    v11 = (a3 - 8);
    v12 = (v8 + 2);
    do
    {
      v13 = *v11++;
      result = memset((v13 + v9), *(v13 + v9 - 1), (v7 + ~v9) + 1);
      --v12;
    }

    while (v12);
    v8 = *(v6 + 89);
  }

  if (v8 >= 1)
  {
    v14 = 0;
    v15 = *(v6 + 77);
    v16 = 0x10000 - (v15 << 9);
    v17 = v15 << 6;
    do
    {
      v18 = *(a4 + 8 * v14);
      v19 = (a3 + 8 * v14);
      result = *(v19 - 1);
      v20 = *v19;
      ++v14;
      v21 = *(a3 + 8 * v14);
      v22 = **v19;
      v23 = *v21 + *result + v22;
      v25 = *(v20 + 1);
      v24 = (v20 + 1);
      v26 = v21[1] + result[1] + v25;
      *v18 = ((v26 - v22 + 2 * v23) * v17 + v16 * v22 + 0x8000) >> 16;
      v27 = v18 + 1;
      if (v7 != 2)
      {
        v28 = 0;
        v29 = v21 + 2;
        result += 2;
        do
        {
          v30 = v26;
          v26 = v29[v28] + result[v28] + v24[v28 + 1];
          v27[v28] = ((v23 + v30 - v24[v28] + v26) * v17 + v16 * v24[v28] + 0x8000) >> 16;
          ++v28;
          v23 = v30;
        }

        while (v7 - 2 != v28);
        v27 += v28;
        v24 += v28;
        v23 = v30;
      }

      *v27 = ((v23 + 2 * v26 - *v24) * v17 + v16 * *v24 + 0x8000) >> 16;
    }

    while (v14 < *(v6 + 89));
  }

  return result;
}

void *fullsize_downsample(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v4 = a4;
  result = _cg_jcopy_sample_rows(a3, 0, a4, 0, *(a1 + 356), *(a1 + 48));
  v8 = *(a1 + 356);
  v9 = *(a1 + 48);
  v10 = *(a2 + 36) * *(a2 + 28);
  if (v8 >= 1 && v10 - v9 >= 1)
  {
    v12 = (v10 + ~v9);
    do
    {
      v13 = *v4++;
      result = memset((v13 + v9), *(v13 + v9 - 1), v12 + 1);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned int *h2v1_downsample(unsigned int *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = result;
  v7 = *(a2 + 36) * *(a2 + 28);
  v8 = result[89];
  v9 = result[12];
  if (v8 >= 1 && 2 * v7 - v9 >= 1)
  {
    v11 = a3;
    do
    {
      v12 = *v11++;
      result = memset((v12 + v9), *(v12 + v9 - 1), (2 * v7 + ~v9) + 1);
      --v8;
    }

    while (v8);
    LODWORD(v8) = v6[89];
  }

  if (v8 >= 1)
  {
    v13 = 0;
    do
    {
      if (v7)
      {
        v14 = 0;
        v15 = a3[v13];
        v16 = *(a4 + 8 * v13);
        v17 = v7;
        do
        {
          *v16++ = (v14 + *v15 + v15[1]) >> 1;
          v14 ^= 1u;
          v15 += 2;
          --v17;
        }

        while (v17);
        LODWORD(v8) = v6[89];
      }

      ++v13;
    }

    while (v13 < v8);
  }

  return result;
}

unsigned int *h2v2_smooth_downsample(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(a2 + 36) * *(a2 + 28);
  v8 = result[89];
  v9 = result[12];
  if (v8 >= -1 && 2 * v7 - v9 >= 1)
  {
    v11 = (a3 - 8);
    v12 = (v8 + 2);
    do
    {
      v13 = *v11++;
      result = memset((v13 + v9), *(v13 + v9 - 1), (2 * v7 + ~v9) + 1);
      --v12;
    }

    while (v12);
    v8 = v6[89];
  }

  if (v8 >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = v6[77];
    v17 = -80 * v16 + 0x4000;
    v18 = 16 * v16;
    do
    {
      v19 = *(a4 + 8 * v14);
      v20 = (a3 + 8 * v15);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(v20 - 1);
      v15 += 2;
      v24 = *(a3 + 8 * v15);
      v25 = *v22 + *v21;
      v26 = v25 + v21[1] + v22[1];
      v27 = *v23;
      v28 = *v24;
      v29 = v21 + 2;
      v30 = v22 + 2;
      v31 = v25 + v27 + v23[1] + v28 + v24[1] + v21[2] + v22[2];
      v32 = v23 + 2;
      v33 = v24 + 2;
      *v19 = ((v28 + v27 + v23[2] + v24[2] + 2 * v31) * v18 + v26 * v17 + 0x8000) >> 16;
      v34 = v19 + 1;
      if (v7 != 2)
      {
        v35 = 2;
        v36 = v7 - 2;
        do
        {
          *v34++ = ((v23[v35 + 2] + v23[v35 - 1] + v24[v35 - 1] + 2 * (v23[v35 + 1] + v23[v35] + v24[v35] + v24[v35 + 1] + v21[v35 - 1] + v21[v35 + 2] + v22[v35 - 1] + v22[v35 + 2]) + v24[v35 + 2]) * v18 + (v21[v35 + 1] + v21[v35] + v22[v35] + v22[v35 + 1]) * v17 + 0x8000) >> 16;
          v35 += 2;
          --v36;
        }

        while (v36);
        v33 = &v24[v35];
        v32 = &v23[v35];
        v30 = &v22[v35];
        v29 = &v21[v35];
      }

      v37 = v30[1] + v29[1];
      v38 = v37 + *v29 + *v30;
      v39 = v32[1];
      v40 = v33[1];
      v41 = v37 + *v32 + v39 + *v33 + v40 + *(v29 - 1) + *(v30 - 1);
      result = *(v33 - 1);
      *v34 = ((v40 + v39 + *(v32 - 1) + result + 2 * v41) * v18 + v38 * v17 + 0x8000) >> 16;
      ++v14;
    }

    while (v15 < v6[89]);
  }

  return result;
}

unsigned int *h2v2_downsample(unsigned int *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = result;
  v7 = *(a2 + 36) * *(a2 + 28);
  v8 = result[89];
  v9 = result[12];
  if (v8 >= 1 && 2 * v7 - v9 >= 1)
  {
    v11 = a3;
    do
    {
      v12 = *v11++;
      result = memset((v12 + v9), *(v12 + v9 - 1), (2 * v7 + ~v9) + 1);
      --v8;
    }

    while (v8);
    LODWORD(v8) = v6[89];
  }

  if (v8 >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      if (v7)
      {
        v16 = a3[v14];
        v15 = a3[v14 + 1];
        v17 = *(a4 + 8 * v13);
        v18 = 1;
        v19 = v7;
        do
        {
          result = v15[1];
          *v17++ = (v18 + *v16 + v16[1] + *v15 + result) >> 2;
          v18 ^= 3u;
          v16 += 2;
          v15 += 2;
          --v19;
        }

        while (v19);
        LODWORD(v8) = v6[89];
      }

      v14 += 2;
      ++v13;
    }

    while (v14 < v8);
  }

  return result;
}

unint64_t int_downsample(unint64_t result, int *a2, uint64_t *a3, uint64_t a4)
{
  v6 = result;
  v7 = a2[9] * a2[7];
  v8 = *(result + 544) + a2[1];
  v9 = *(v8 + 144);
  v10 = *(v8 + 154);
  v11 = *(result + 356);
  v12 = *(result + 48);
  if (v11 >= 1 && v7 * v9 - v12 >= 1)
  {
    v14 = a3;
    do
    {
      v15 = *v14++;
      result = memset((v15 + v12), *(v15 + v12 - 1), (v7 * v9 + ~v12) + 1);
      --v11;
    }

    while (v11);
    LODWORD(v11) = *(v6 + 356);
  }

  if (v11 >= 1)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      if (v7)
      {
        v18 = 0;
        v19 = 0;
        v20 = *(a4 + 8 * v16);
        do
        {
          if (v10)
          {
            v21 = 0;
            v22 = 0;
            result = v18;
            do
            {
              if (v9)
              {
                v23 = (a3[v17 + v21] + v18);
                v24 = v9;
                do
                {
                  v25 = *v23++;
                  v22 += v25;
                  --v24;
                }

                while (v24);
              }

              ++v21;
            }

            while (v21 != v10);
          }

          else
          {
            v22 = 0;
          }

          *v20++ = (v22 + ((v10 * v9) >> 1)) / (v10 * v9);
          ++v19;
          v18 += v9;
        }

        while (v19 != v7);
        LODWORD(v11) = *(v6 + 356);
      }

      v17 += v10;
      ++v16;
    }

    while (v17 < v11);
  }

  return result;
}

uint64_t Ktx2LoadLevelFace(int a1, int a2, int a3, int a4, int a5, size_t a6, void *__src, char *a8)
{
  if (!a8)
  {
    return 0;
  }

  result = 0;
  if (!a2 && *a8 == a1)
  {
    v11 = *(a8 + 4);
    if (v11)
    {
      if (*(a8 + 12) >= a6)
      {
        v12 = a6;
      }

      else
      {
        v12 = *(a8 + 12);
      }

      memcpy(v11, __src, v12);
      result = 0;
      *(a8 + 20) = v12;
    }

    else
    {
      return 13;
    }
  }

  return result;
}

BOOL GetKtx2VKFormatInfo(int a1, void *a2)
{
  v2 = &s_kFormatInfo;
  if (s_kFormatInfo == a1)
  {
    result = 1;
LABEL_7:
    *a2 = v2 + 1;
  }

  else
  {
    v4 = -1;
    while (v4 != 155)
    {
      v5 = v2[8];
      v2 += 8;
      ++v4;
      if (v5 == a1)
      {
        result = v4 < 0x9C;
        goto LABEL_7;
      }
    }

    _cg_jpeg_mem_term("GetKtx2VKFormatInfo", 532, "*** ERROR: GetKtx2FormatInfo: Unknown vkFormat %d\n", a1);
    return 0;
  }

  return result;
}

uint64_t ExtractFormatFromDFD(uint64_t a1, void *a2)
{
  v2 = *(a1 + 128);
  if (!v2)
  {
    _cg_jpeg_mem_term("ExtractFormatFromDFD", 591, "*** ERROR: No DFD available for format extraction\n");
    return 0;
  }

  v4 = *v2;
  if (v4 > 0x17)
  {
    v5 = v2[1];
    if (v5)
    {
      _cg_jpeg_mem_term("ExtractFormatFromDFD", 609, "*** ERROR: Non-Khronos DFD not supported: %d\n");
      return 0;
    }

    v13 = 0;
    v14 = 0;
    v12 = 0;
    if (BYTE1(v5) > 3u)
    {
      if (BYTE1(v5) - 161 < 5)
      {
        ParseCompressedDFD(v2, v4, BYTE1(v5), a2);
        return 1;
      }

      if (BYTE1(v5) != 4)
      {
        if (BYTE1(v5) != 5)
        {
          goto LABEL_23;
        }

        ParseUnormDFD(v2, v4, &v14, &v13, &v18);
        v8 = 1;
LABEL_26:
        v7 = 4;
        goto LABEL_27;
      }

      v10 = &v17;
    }

    else
    {
      if (BYTE1(v5) == 1)
      {
        ParseUnormDFD(v2, v4, &v14, &v13, &v12);
        v7 = 0;
        v8 = 0;
        if (v12)
        {
          v9 = 32;
        }

        else
        {
          v9 = 8;
        }

LABEL_28:
        ExtractFormatFromDFD(ktxTexture2 *,Ktx2FormatInfo *&)::dfdInfo = v14;
        word_1EA8DB9DE = v13;
        word_1EA8DB9E0 = v13 * v14;
        qword_1EA8DB9E4 = 0;
        unk_1EA8DB9EC = 0;
        if (v8)
        {
          v11 = v7 | 2;
        }

        else
        {
          v11 = v7;
        }

        dword_1EA8DB9F4 = v9 | v11;
        *a2 = &ExtractFormatFromDFD(ktxTexture2 *,Ktx2FormatInfo *&)::dfdInfo;
        return 1;
      }

      if (BYTE1(v5) != 2)
      {
        if (BYTE1(v5) == 3)
        {
          ParseUnormDFD(v2, v4, &v14, &v13, &v16);
          v7 = 0;
          v8 = 0;
LABEL_27:
          v9 = 8;
          goto LABEL_28;
        }

LABEL_23:
        _cg_jpeg_mem_term("ExtractFormatFromDFD", 652, "*** ERROR: Unsupported DFD color model: %d\n");
        return 0;
      }

      v10 = &v15;
    }

    ParseUnormDFD(v2, v4, &v14, &v13, v10);
    v8 = 0;
    goto LABEL_26;
  }

  _cg_jpeg_mem_term("ExtractFormatFromDFD", 602, "*** ERROR: DFD too small: %d bytes\n");
  return 0;
}

uint64_t HandleZstdCompression(uint64_t a1, void *a2)
{
  if (*(a1 + 128))
  {

    return ExtractFormatFromDFD(a1, a2);
  }

  else
  {
    _cg_jpeg_mem_term("HandleZstdCompression", 691, "*** ERROR: No DFD available for Zstd compressed texture\n", v2, v3);
    return 0;
  }
}

uint64_t HandleZlibCompression(uint64_t a1, void *a2)
{
  if (*(a1 + 128))
  {

    return ExtractFormatFromDFD(a1, a2);
  }

  else
  {
    _cg_jpeg_mem_term("HandleZlibCompression", 706, "*** ERROR: No DFD available for Zlib compressed texture\n", v2, v3);
    return 0;
  }
}

uint64_t ParseUnormDFD(uint64_t result, unsigned int a2, unsigned int *a3, unsigned int *a4, BOOL *a5)
{
  if (a2 > 0x27)
  {
    *a3 = 0;
    *a4 = 0;
    *a5 = 0;
    LODWORD(v5) = (a2 - 24) >> 4;
    if (v5 >= 8)
    {
      v5 = 8;
    }

    else
    {
      v5 = v5;
    }

    v6 = (result + 36);
    do
    {
      if ((*v6 & 0xC) == 0)
      {
        v7 = *(v6 - 2);
        ++*a3;
        if (!*a4)
        {
          *a4 = BYTE1(v7) - v7 + 1;
        }
      }

      if ((*v6 & 0x10) != 0)
      {
        *a5 = 1;
      }

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  else
  {
    *a3 = 0;
    *a4 = 0;
    *a5 = 0;
  }

  return result;
}

uint64_t ParseCompressedDFD(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  ParseCompressedDFD(unsigned int *,unsigned int,unsigned int,Ktx2FormatInfo *&)::compressedInfo = 524292;
  word_1EA8DB9FC = 32;
  qword_1EA8DBA00 = 0x400000004;
  unk_1EA8DBA0C = 0x900000000;
  if ((a3 - 161) <= 4)
  {
    dword_1EA8DBA08 = dword_186208728[a3 - 161];
  }

  *a4 = &ParseCompressedDFD(unsigned int *,unsigned int,unsigned int,Ktx2FormatInfo *&)::compressedInfo;
  return 1;
}

uint64_t GetKtx2FormatInfo(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 120);
    if (v4)
    {

      return GetKtx2VKFormatInfo(v4, a2);
    }

    else
    {
      v5 = *(v3 + 136);
      if (v5 > 3)
      {
        v6 = "Unknown";
      }

      else
      {
        v6 = off_1E6EF9000[v5];
      }

      _cg_jpeg_mem_term("GetKtx2FormatInfo", 854, "*** KTX2: Handling supercompressed texture with scheme: %s\n", v6);

      return HandleSupercompressionScheme(v3, a2);
    }
  }

  return result;
}

uint64_t Ktx2GetDataSize(int a1, int a2, int a3)
{
  v10 = 0;
  result = GetKtx2VKFormatInfo(a1, &v10);
  if (result)
  {
    v6 = (a2 + v10[2] - 1) / v10[2] * ((a3 + v10[3] - 1) / v10[3]);
    v7 = (v6 & 0xFFFFFFFF00000000) != 0;
    v8 = v6 * v10[4];
    if ((v6 & 0xFFFFFFFF00000000) == 0)
    {
      LODWORD(v6) = v6 * v10[4];
    }

    if ((v8 & 0xFFFFFFFF00000000) != 0 || v7)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

uint64_t CreateKTXTexture(IIOImageReadSession *this)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v3 = 0;
  if (!CreateKtxStream(v4, this))
  {
    v1 = ktxTexture2_CreateFromStream(v4, 0, &v3);
    if (v1)
    {
      _cg_jpeg_mem_term("CreateKTXTexture", 959, "*** ERROR: ktxTexture2_CreateFromStream failed to create ktxTexture2 [%d]\n", v1);
    }
  }

  return v3;
}

BOOL AppleEXREnabled(void)
{
  if (AppleEXREnabled(void)::onceToken != -1)
  {
    AppleEXREnabled();
  }

  return (gAppleEXREnabled & 1) == 0;
}

BOOL ___Z15AppleEXREnabledv_block_invoke()
{
  result = IIOLoadAppleOpenExrSymbols();
  if (!result)
  {
    gAppleEXREnabled = 1;
  }

  return result;
}

BOOL IIOLoadAppleOpenExrSymbols(void)
{
  v0 = dlopen("/usr/lib/libAppleEXR.dylib", 257);
  v1 = v0;
  if (v0)
  {
    gFunc_axr_get_version = dlsym(v0, "axr_get_version");
    gFunc_axr_channel_type_get_name = dlsym(v1, "axr_channel_type_get_name");
    gFunc_axr_compression_get_name = dlsym(v1, "axr_compression_get_name");
    gFunc_axr_error_get_name = dlsym(v1, "axr_error_get_name");
    gFunc_axr_flags_get_name = dlsym(v1, "axr_flags_get_name");
    gFunc_axr_line_order_get_name = dlsym(v1, "axr_line_order_get_name");
    gFunc_axr_property_flags_get_name = dlsym(v1, "axr_property_flags_get_name");
    gFunc_axr_type_get_name = dlsym(v1, "axr_type_get_name");
    gFunc_axr_type_get_size = dlsym(v1, "axr_type_get_size");
    gFunc_axr_introspect_data = dlsym(v1, "axr_introspect_data");
    gFunc_axr_data_create = dlsym(v1, "axr_data_create");
    gFunc_axr_data_create_logical_image_list = dlsym(v1, "axr_data_create_logical_image_list");
    gFunc_axr_data_get_channel_count = dlsym(v1, "axr_data_get_channel_count");
    gFunc_axr_data_get_channel_info = dlsym(v1, "axr_data_get_channel_info");
    gFunc_axr_data_get_layer_count = dlsym(v1, "axr_data_get_layer_count");
    gFunc_axr_data_get_layer_info = dlsym(v1, "axr_data_get_layer_info");
    gFunc_axr_data_get_level_count = dlsym(v1, "axr_data_get_level_count");
    gFunc_axr_data_get_level_size = dlsym(v1, "axr_data_get_level_size");
    gFunc_axr_data_get_part_count = dlsym(v1, "axr_data_get_part_count");
    gFunc_axr_data_get_part_info = dlsym(v1, "axr_data_get_part_info");
    gFunc_axr_data_get_property_count = dlsym(v1, "axr_data_get_property_count");
    gFunc_axr_data_get_property = dlsym(v1, "axr_data_get_property");
    gFunc_axr_decoder_create = dlsym(v1, "axr_decoder_create");
    gFunc_axr_decoder_copy = dlsym(v1, "axr_decoder_copy");
    gFunc_axr_decoder_append_channel = dlsym(v1, "axr_decoder_append_channel");
    gFunc_axr_decoder_append_constant_value_channel = dlsym(v1, "axr_decoder_append_constant_value_channel");
    gFunc_axr_decoder_clear_channel_list = dlsym(v1, "axr_decoder_clear_channel_list");
    gFunc_axr_decoder_create_colorspace = dlsym(v1, "axr_decoder_create_colorspace");
    gFunc_axr_decoder_get_channel_count = dlsym(v1, "axr_decoder_get_channel_count");
    gFunc_axr_decoder_get_channel_info = dlsym(v1, "axr_decoder_get_channel_info");
    gFunc_axr_decoder_get_data = dlsym(v1, "axr_decoder_get_data");
    gFunc_axr_decoder_get_info = dlsym(v1, "axr_decoder_get_info");
    gFunc_axr_decoder_get_read_pixels_info = dlsym(v1, "axr_decoder_get_read_pixels_info");
    gFunc_axr_decoder_get_read_planes_info = dlsym(v1, "axr_decoder_get_read_planes_info");
    gFunc_axr_decoder_get_read_rgba_pixels_info = dlsym(v1, "axr_decoder_get_read_rgba_pixels_info");
    gFunc_axr_decoder_translate_channel_index = dlsym(v1, "axr_decoder_translate_channel_index");
    gFunc_axr_decoder_set_subregion = dlsym(v1, "axr_decoder_set_subregion");
    gFunc_axr_decoder_read_pixels = dlsym(v1, "axr_decoder_read_pixels");
    gFunc_axr_decoder_read_planes = dlsym(v1, "axr_decoder_read_planes");
    gFunc_axr_decoder_read_rgba_pixels = dlsym(v1, "axr_decoder_read_rgba_pixels");
    gFunc_axr_encoder_append_part = dlsym(v1, "axr_encoder_append_part");
    gFunc_axr_encoder_compress = dlsym(v1, "axr_encoder_compress");
    gFunc_axr_encoder_create = dlsym(v1, "axr_encoder_create");
    gFunc_axr_part_append_attribute = dlsym(v1, "axr_part_append_attribute");
    gFunc_axr_part_append_channels = dlsym(v1, "axr_part_append_channels");
    gFunc_axr_part_create = dlsym(v1, "axr_part_create");
    gFunc_axr_part_set_preview = dlsym(v1, "axr_part_set_preview");
    gFunc_axr_part_set_chromaticities = dlsym(v1, "axr_part_set_chromaticities");
    gFunc_axr_part_create_colorspace = dlsym(v1, "axr_part_create_colorspace");
    gFunc_axr_logical_image_list_create_decoder = dlsym(v1, "axr_logical_image_list_create_decoder");
    gFunc_axr_logical_image_list_deserialize = dlsym(v1, "axr_logical_image_list_deserialize");
    gFunc_axr_logical_image_list_get_default_image_index = dlsym(v1, "axr_logical_image_list_get_default_image_index");
    gFunc_axr_logical_image_list_get_default_view_index = dlsym(v1, "axr_logical_image_list_get_default_view_index");
    gFunc_axr_logical_image_list_get_image_count = dlsym(v1, "axr_logical_image_list_get_image_count");
    gFunc_axr_logical_image_list_get_image_info = dlsym(v1, "axr_logical_image_list_get_image_info");
    gFunc_axr_logical_image_list_get_image_name = dlsym(v1, "axr_logical_image_list_get_image_name");
    gFunc_axr_logical_image_list_get_serialized_size = dlsym(v1, "axr_logical_image_list_get_serialized_size");
    gFunc_axr_logical_image_list_get_view_count = dlsym(v1, "axr_logical_image_list_get_view_count");
    gFunc_axr_logical_image_list_get_view_name = dlsym(v1, "axr_logical_image_list_get_view_name");
    gFunc_axr_logical_image_list_is_equal = dlsym(v1, "axr_logical_image_list_is_equal");
    gFunc_axr_logical_image_list_serialize = dlsym(v1, "axr_logical_image_list_serialize");
  }

  return v1 != 0;
}

void IIO_Reader_ICO::~IIO_Reader_ICO(IIO_Reader_ICO *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_ICO::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

BOOL IIO_Reader_ICO::testHeader(uint64_t a1, _BYTE *a2)
{
  result = 0;
  if (!*a2 && !a2[1] && a2[2] == 1 && !a2[3])
  {
    if (a2[4])
    {
      if (!a2[5] && a2[6] - 12 <= 0xFFFFFFF4 && a2[7] - 12 <= 0xFFFFFFF4)
      {
        v3 = a2[12];
        if (v3 <= 0x20 && ((1 << v3) & 0x101000113) != 0 && !a2[13])
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t IIO_Reader_ICO::getImageCount(IIO_Reader_ICO *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  v9 = 0;
  v8 = 0;
  BytesAtOffset = IIOImageReadSession::getBytesAtOffset(a2, &v8, 0, 6);
  if (BytesAtOffset == 6)
  {
    result = 0;
  }

  else
  {
    result = 4294967246;
  }

  if (a5)
  {
    if (BytesAtOffset == 6)
    {
      result = 0;
      *a5 = v9;
    }
  }

  return result;
}

void IIO_Reader_CUR::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

uint64_t IIO_Reader_CUR::getImageCount(IIO_Reader_CUR *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(this);
  v6 = *(*IIO_ReaderHandler::readerForType(ReaderHandler, 1229147936) + 32);

  return v6();
}

void IIO_Reader_LibJPEG::~IIO_Reader_LibJPEG(IIO_Reader_LibJPEG *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_LibJPEG::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

void sub_185FBFE68(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185FBFE4CLL);
}

uint64_t IIO_Reader_LibJPEG::initThumbnail(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Source = CGImageSourceGetSource(a2);
  Properties = IIOImagePlus::getProperties(Source);
  Session = CGImagePluginGetSession(a2);
  v9 = CGImageSourceGetSource(Session);
  Size = IIOImageReadSession::getSize(v9);
  if (!Session)
  {
    return 4294967245;
  }

  v11 = Size;
  v75 = 0;
  v12 = IIOImageReadSession::retainBytePointer(v9, &v75, 0);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    BytesAtOffset = v11;
  }

  else
  {
    v14 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    BytesAtOffset = IIOImageReadSession::getBytesAtOffset(v9, v14, 0, 4096);
  }

  if (BytesAtOffset < 0x1000 || *v14 != 255 || v14[1] != 216)
  {
    goto LABEL_18;
  }

  if (v11 - 10 <= 2)
  {
    IIO_Reader_LibJPEG::initThumbnail();
  }

  else
  {
    if (v14[2] == 255 && v14[3] == 224)
    {
      v17 = __rev16(*(v14 + 2)) + 4;
    }

    else
    {
      v17 = 2;
    }

    if (v17 < v11 - 10)
    {
      if (v14[v17] != 255)
      {
        goto LABEL_18;
      }

      v18 = &v14[v17];
      if (v14[v17 + 1] != 225)
      {
        goto LABEL_18;
      }

      v19 = *(v18 + 1);
      if (strncmp(v18 + 4, "Exif", 4uLL))
      {
        goto LABEL_18;
      }

      v23 = &v14[BytesAtOffset];
      v24 = &v14[v17 + 10];
      v25 = *v24;
      if (v25 == 77)
      {
        if (v24[1] != 77 || v24[2])
        {
          goto LABEL_76;
        }

        v26 = v19;
        v21 = 0;
        if (v24[3] != 42)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v25 != 73 || v24[1] != 73 || v24[2] != 42)
        {
          goto LABEL_76;
        }

        v26 = v19;
        v21 = 0;
        if (v24[3])
        {
LABEL_45:
          v22 = 0;
LABEL_77:
          v20 = v17 + 10;
          goto LABEL_20;
        }
      }

      if ((v24 + 8) > v23)
      {
        goto LABEL_45;
      }

      v21 = 0;
      LODWORD(v27) = *(v24 + 1);
      v28 = bswap32(v27);
      v27 = v25 == 77 ? v28 : v27;
      if (v27 < 8 || __rev16(v26) - 4 < v27)
      {
        goto LABEL_45;
      }

      v29 = &v24[v27];
      v30 = (v29 + 2);
      if ((v29 + 2) <= v23)
      {
        v31 = *v29;
        v32 = bswap32(v31) >> 16;
        if (v25 == 77)
        {
          v33 = v32;
        }

        else
        {
          v33 = v31;
        }

        if ((BytesAtOffset - v17 - v27 - 12) / 0xC <= v33)
        {
          goto LABEL_76;
        }

        if (v33)
        {
          v72 = &v14[BytesAtOffset];
          v71 = v25;
          do
          {
            if ((v30 + 1) <= v23)
            {
              v35 = *v30;
              v36 = bswap32(v35) >> 16;
              if (v25 == 77)
              {
                LOWORD(v35) = v36;
              }

              v34 = v35 == 274;
            }

            else
            {
              v34 = 0;
            }

            if ((v30 + 2) <= v23)
            {
              v38 = v30[1];
              v39 = bswap32(v38) >> 16;
              if (v25 == 77)
              {
                LOWORD(v38) = v39;
              }

              v37 = v38 == 3;
            }

            else
            {
              v37 = 0;
            }

            if ((v30 + 4) <= v23)
            {
              v40 = *(v30 + 1);
              v41 = bswap32(v40);
              if (v25 == 77)
              {
                LOWORD(v40) = v41;
              }

              if (v34 && v37 && v40 == 1 && (v30 + 5) <= v23)
              {
                v43 = v30[4];
                v44 = bswap32(v43) >> 16;
                if (v25 == 77)
                {
                  LOWORD(v43) = v44;
                }

                v45 = v43;
                if (v43 - 1 <= 7)
                {
                  v73 = v33;
                  IIONumber::IIONumber(v74, v43);
                  IIODictionary::setObjectForKey(Properties, v74, @"Orientation");
                  IIONumber::~IIONumber(v74);
                  IIONumber::IIONumber(v74, v45);
                  IIODictionary::setObjectForKeyGroup(Properties, v74, @"Orientation", @"{TIFF}");
                  IIONumber::~IIONumber(v74);
                  v25 = v71;
                  v23 = v72;
                  v33 = v73;
                }
              }
            }

            --v33;
            v30 += 6;
          }

          while (v33);
        }
      }

      else if (BytesAtOffset - v17 - v27 - 12 < 0xC)
      {
LABEL_76:
        v21 = 0;
        v22 = 0;
        goto LABEL_77;
      }

      if ((v30 + 2) <= v23)
      {
        v46 = *v30;
        v47 = bswap32(*v30);
        if (v25 == 77)
        {
          v46 = v47;
        }

        v20 = v17 + 10;
        if (!v46)
        {
          goto LABEL_19;
        }

        v48 = v17 + 10 + v46;
        if (v75)
        {
          if (v11 <= v48 + 2)
          {
            goto LABEL_19;
          }

          v14 = v13 + v48;
          v49 = v11 - v48;
        }

        else
        {
          v50 = v25;
          v49 = IIOImageReadSession::getBytesAtOffset(v9, v14, v48, 4096);
          if (v49 < 2)
          {
            goto LABEL_19;
          }

          v25 = v50;
        }

        if (v49 >= 2)
        {
          v51 = *v14;
          v52 = bswap32(v51) >> 16;
          if (v25 == 77)
          {
            v51 = v52;
          }

          if ((v49 - 2) / 0xCuLL > v51 && v51 != 0)
          {
            v54 = 0;
            v22 = 0;
            v21 = 0;
            v55 = &v14[v49];
            do
            {
              v56 = &v14[v54];
              v57 = &v14[v54 + 4];
              if (v57 <= v55)
              {
                v58 = *(v56 + 1);
                v59 = bswap32(v58) >> 16;
                if (v25 == 77)
                {
                  LOWORD(v58) = v59;
                }
              }

              else
              {
                LOWORD(v58) = 0;
              }

              v60 = (v56 + 6);
              if ((v56 + 6) <= v55)
              {
                v62 = *v57;
                v63 = bswap32(v62) >> 16;
                if (v25 == 77)
                {
                  LOWORD(v62) = v63;
                }

                v61 = v62 == 4;
              }

              else
              {
                v61 = 0;
              }

              v64 = &v14[v54 + 10];
              if (v64 <= v55)
              {
                v65 = *v60;
                v66 = bswap32(v65);
                if (v25 != 77)
                {
                  v66 = v65;
                }

                if (v58 == 513 && v61 && v66 == 1)
                {
                  if (&v14[v54 + 14] <= v55)
                  {
                    v67 = *v64;
                    v68 = bswap32(v67);
                    if (v25 == 77)
                    {
                      v21 = v68;
                    }

                    else
                    {
                      v21 = v67;
                    }
                  }

                  else
                  {
                    v21 = 0;
                  }
                }

                else if (v58 == 514 && v61 && v66 == 1)
                {
                  if (&v14[v54 + 14] <= v55)
                  {
                    v69 = *v64;
                    v70 = bswap32(v69);
                    if (v25 == 77)
                    {
                      v22 = v70;
                    }

                    else
                    {
                      v22 = v69;
                    }
                  }

                  else
                  {
                    v22 = 0;
                  }
                }
              }

              --v51;
              v54 += 12;
            }

            while (v51);
            goto LABEL_20;
          }
        }

        goto LABEL_19;
      }

      goto LABEL_76;
    }

    _cg_jpeg_mem_term("initThumbnail", 143, "*** ERROR: bad APP marker offset (%ld)\n", v17);
  }

LABEL_18:
  v20 = 0;
LABEL_19:
  v21 = 0;
  v22 = 0;
LABEL_20:
  if (v75)
  {
    IIOImageReadSession::releaseBytePointer(v9, v75);
  }

  else
  {
    free(v14);
  }

  result = 4294967246;
  if (v21)
  {
    if (v22)
    {
      CGImagePluginInitThumbJPEGAtOffset(a2, (v21 + v20), v22, a4);
    }
  }

  return result;
}

void sub_185FC0504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t IIO_Reader_LibJPEG::compareOptions(IIO_Reader_LibJPEG *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  memset(v17, 0, sizeof(v17));
  IIODictionary::IIODictionary(v17, a2);
  memset(v16, 0, sizeof(v16));
  IIODictionary::IIODictionary(v16, a3);
  Uint32ForKey = IIODictionary::getUint32ForKey(v17, @"kCGImageSourceSubsampleFactor");
  v5 = IIODictionary::getUint32ForKey(v16, @"kCGImageSourceSubsampleFactor");
  if (Uint32ForKey <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = Uint32ForKey;
  }

  if (v5 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  if (v6 == v7 && (v8 = IIODictionary::getBoolForKey(v17, @"kCGImageSourceUseCoreImage"), v8 == IIODictionary::getBoolForKey(v16, @"kCGImageSourceUseCoreImage")) && (ObjectForKey = IIODictionary::getObjectForKey(v17, @"kCGImageSourceXMPSidecar"), v10 = IIODictionary::getObjectForKey(v16, @"kCGImageSourceXMPSidecar"), (ObjectForKey != 0) == (v10 != 0)) && (!ObjectForKey || !v10 || CFEqual(ObjectForKey, v10)) && (v11 = IIOSkipMetadata(v17), IIOSkipMetadata(v16) & 1 | ((v11 & 1) == 0)) && (v12 = IIODictionary::getBoolForKey(v17, @"kCGImageSourceAddJPEGQualityInformation"), v12 == IIODictionary::getBoolForKey(v16, @"kCGImageSourceAddJPEGQualityInformation")))
  {
    BoolForKey = IIODictionary::getBoolForKey(v17, @"kCGImageSourceAddThumbnailInformation");
    v13 = BoolForKey ^ IIODictionary::getBoolForKey(v16, @"kCGImageSourceAddThumbnailInformation") ^ 1u;
  }

  else
  {
    v13 = 0;
  }

  IIODictionary::~IIODictionary(v16);
  IIODictionary::~IIODictionary(v17);
  return v13;
}

void sub_185FC06C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  IIODictionary::~IIODictionary(&a9);
  IIODictionary::~IIODictionary(&a12);
  _Unwind_Resume(a1);
}

uint64_t IIOArrayEnumerateUsingBlock(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    result = CFArrayGetTypeID();
    if (v4 == result)
    {
      result = CFArrayGetCount(v3);
      v9 = 0;
      v5 = result - 1;
      if (result >= 1)
      {
        v6 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
          result = (*(a2 + 16))(a2, ValueAtIndex, v6, &v9);
          if (v9)
          {
            break;
          }
        }

        while (v5 != v6++);
      }
    }
  }

  return result;
}

void IIODictionaryEnumerateUsingBlock(const void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFDictionaryGetTypeID())
    {
      Count = CFDictionaryGetCount(a1);
      if (Count)
      {
        v6 = Count;
        v7 = 8 * Count;
        v8 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
        v9 = malloc_type_malloc(v7, 0x80040B8603338uLL);
        v10 = v9;
        if (v8 && v9)
        {
          CFDictionaryGetKeysAndValues(a1, v8, v9);
          v12 = 0;
          if (v6 >= 1)
          {
            v11 = 0;
            do
            {
              (*(a2 + 16))(a2, v8[v11], v10[v11], &v12);
              ++v11;
            }

            while (v11 < v6 && (v12 & 1) == 0);
          }
        }

        else if (!v8)
        {
          goto LABEL_13;
        }

        free(v8);
LABEL_13:
        if (v10)
        {
          free(v10);
        }
      }
    }
  }
}

void IIOLogTypeMismatch(const void *a1, const char *a2, const char *a3)
{
  if (a1)
  {
    v5 = CFGetTypeID(a1);
    v6 = CFCopyTypeIDDescription(v5);
    if (v6)
    {
      v7 = v6;
      memset(v9, 0, sizeof(v9));
      IIOString::IIOString(v9, v6);
      v8 = IIOString::utf8String(v9);
      LogError("IIOLogTypeMismatch", 30, "*** ERROR: %s() - bad parameter: expected '%s' -- got '%s'\n", a2, a3, v8);
      CFRelease(v7);
      IIOString::~IIOString(v9);
    }
  }
}

void sub_185FC0964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t IIONumber::uint8Num(CFNumberRef *this)
{
  valuePtr = 0;
  if (CFNumberGetValue(this[2], kCFNumberSInt8Type, &valuePtr))
  {
    return valuePtr;
  }

  if (this[2])
  {
    LogError("uint8Num", 354, "CFNumberGetValue/uint8Num failed\n");
  }

  return 0;
}

uint64_t IIONumber::uint16Num(IIONumber *this)
{
  valuePtr = 0;
  v2 = *(this + 2);
  if (!v2)
  {
    goto LABEL_16;
  }

  if (!CFNumberGetValue(v2, kCFNumberSInt16Type, &valuePtr))
  {
    v11 = 0;
    if (CFNumberGetValue(*(this + 2), kCFNumberSInt32Type, &v11))
    {
      LogError("uint16Num", 369, "CFNumberGetValue/uint16_t failed: %08X\n", v11);
    }

    if (!CFNumberGetValue(*(this + 2), kCFNumberSInt32Type, &valuePtr))
    {
      v10 = 0;
      if (CFNumberGetValue(*(this + 2), kCFNumberLongType, &v10))
      {
        LOWORD(v3) = v10;
        return v3;
      }

      if (CFNumberIsFloatType(*(this + 2)))
      {
        v9[0] = 0.0;
        if (CFNumberGetValue(*(this + 2), kCFNumberDoubleType, v9))
        {
          return v9[0];
        }
      }

      v4 = CFGetTypeID(*(this + 2));
      v5 = CFCopyTypeIDDescription(v4);
      if (v5)
      {
        v6 = v5;
        memset(v9, 0, sizeof(v9));
        IIOString::IIOString(v9, v5);
        v7 = IIOString::utf8String(v9);
        LogError("uint16Num", 388, "CFNumberGetValue/uint16_t failed - '%s'\n", v7);
        CFRelease(v6);
        IIOString::~IIOString(v9);
      }

      else if (*(this + 2))
      {
        LogError("uint16Num", 393, "CFNumberGetValue/uint16_t failed\n");
      }

LABEL_16:
      LOWORD(v3) = 0;
      return v3;
    }
  }

  LOWORD(v3) = valuePtr;
  return v3;
}

void sub_185FC0BC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

const __CFNumber *IIONumber::uint32Num(IIONumber *this)
{
  valuePtr = 0;
  result = *(this + 2);
  if (result)
  {
    if (CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr))
    {
      return valuePtr;
    }

    else
    {
      v4 = 0;
      if (CFNumberGetValue(*(this + 2), kCFNumberLongType, &v4))
      {
        return v4;
      }

      else if (CFNumberIsFloatType(*(this + 2)) && (v3 = 0.0, CFNumberGetValue(*(this + 2), kCFNumberDoubleType, &v3)))
      {
        return v3;
      }

      else
      {
        if (*(this + 2))
        {
          LogError("uint32Num", 420, "CFNumberGetValue/uint32_t failed\n");
        }

        return 0;
      }
    }
  }

  return result;
}

const __CFNumber *IIONumber::uint64Num(IIONumber *this)
{
  valuePtr = 0;
  result = *(this + 2);
  if (result)
  {
    if (CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr))
    {
      return valuePtr;
    }

    else
    {
      result = *(this + 2);
      if (result)
      {
        if (CFNumberIsFloatType(result) && (v3 = 0.0, CFNumberGetValue(*(this + 2), kCFNumberDoubleType, &v3)))
        {
          return v3;
        }

        else
        {
          if (*(this + 2))
          {
            LogError("uint64Num", 437, "CFNumberGetValue/uint64_t failed\n");
          }

          return 0;
        }
      }
    }
  }

  return result;
}

float IIONumber::floatNum(IIONumber *this)
{
  valuePtr = 0.0;
  v2 = *(this + 2);
  if (v2)
  {
    if (!CFNumberGetValue(v2, kCFNumberFloatType, &valuePtr))
    {
      v4 = *(this + 2);
      v5 = 0.0;
      if (v4)
      {
        if (CFNumberGetValue(v4, kCFNumberDoubleType, &v5))
        {
          return v5;
        }

        if (*(this + 2))
        {
          LogError("floatNum", 455, "CFNumberGetValue/float failed\n");
        }
      }
    }
  }

  return valuePtr;
}

double IIONumber::doubleNum(IIONumber *this)
{
  valuePtr = 0.0;
  v2 = *(this + 2);
  v3 = 0.0;
  if (v2)
  {
    if (CFNumberGetValue(v2, kCFNumberDoubleType, &valuePtr))
    {
      return valuePtr;
    }

    else if (*(this + 2))
    {
      LogError("doubleNum", 466, "CFNumberGetValue/double failed\n");
    }
  }

  return v3;
}

void *IIOString::IIOString(void *a1, int a2, CFIndex numBytes, UInt8 *bytes)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1EF4D41F0;
  if (a2 == 2)
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = CFDataCreate(*MEMORY[0x1E695E480], bytes, numBytes);
    a1[2] = CFStringCreateFromExternalRepresentation(v5, v6, 0x100u);
    CFRelease(v6);
  }

  else if (!a2)
  {
    a1[2] = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, numBytes, 0x600u, 0);
  }

  return a1;
}

const __CFString *IIOString::length(IIOString *this)
{
  result = *(this + 2);
  if (result)
  {
    return CFStringGetLength(result);
  }

  return result;
}

float IIOArray::getFloatAtIndex(IIOArray *this, CFIndex a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0.0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, a2);
  IIONumber::IIONumber(v6, ValueAtIndex);
  v4 = IIONumber::floatNum(v6);
  IIONumber::~IIONumber(v6);
  return v4;
}

void sub_185FC1098(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

double IIOArray::getDoubleAtIndex(IIOArray *this, CFIndex a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0.0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, a2);
  IIONumber::IIONumber(v6, ValueAtIndex);
  v4 = IIONumber::doubleNum(v6);
  IIONumber::~IIONumber(v6);
  return v4;
}

void sub_185FC1110(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

const __CFNumber *IIODictionary::getUint32ForKey(IIODictionary *this, const char *a2)
{
  IIOString::IIOString(v5, a2);
  Uint32ForKey = IIODictionary::getUint32ForKey(this, v6);
  IIOString::~IIOString(v5);
  return Uint32ForKey;
}

void sub_185FC1170(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

const __CFNumber *IIODictionary::getUint64ForKey(IIODictionary *this, const char *a2)
{
  IIOString::IIOString(v5, a2);
  Uint64ForKey = IIODictionary::getUint64ForKey(this, v6);
  IIOString::~IIOString(v5);
  return Uint64ForKey;
}

void sub_185FC11D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

float IIODictionary::getFloatForKeyGroup(IIODictionary *this, const __CFString *a2, const __CFString *a3)
{
  GroupForKey = IIODictionary::getGroupForKey(this, a3, 0);
  if (!GroupForKey)
  {
    return 0.0;
  }

  Value = CFDictionaryGetValue(GroupForKey, a2);
  IIONumber::IIONumber(v8, Value);
  v6 = IIONumber::floatNum(v8);
  IIONumber::~IIONumber(v8);
  return v6;
}

void sub_185FC1258(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

float IIODictionary::getFloatFromRationalForKey(IIODictionary *this, const __CFString *a2)
{
  v3 = *(this + 1);
  v4 = 0.0;
  if (v3 && CFDictionaryContainsKey(v3, a2))
  {
    memset(v11, 0, sizeof(v11));
    v6 = *(this + 1);
    if (v6)
    {
      Value = CFDictionaryGetValue(v6, a2);
    }

    else
    {
      Value = 0;
    }

    IIOArray::IIOArray(v11, Value);
    FloatAtIndex = IIOArray::getFloatAtIndex(v11, 0);
    v9 = IIOArray::getFloatAtIndex(v11, 1);
    if (v9)
    {
      v4 = FloatAtIndex / v9;
    }

    else
    {
      v4 = 0.0;
    }

    IIOArray::~IIOArray(v11);
  }

  return v4;
}

void sub_185FC1328(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOArray::~IIOArray(va);
  _Unwind_Resume(a1);
}

double IIODictionary::getDoubleForKeyGroup(IIODictionary *this, const __CFString *a2, const __CFString *a3)
{
  GroupForKey = IIODictionary::getGroupForKey(this, a3, 0);
  if (!GroupForKey)
  {
    return 0.0;
  }

  Value = CFDictionaryGetValue(GroupForKey, a2);
  IIONumber::IIONumber(v8, Value);
  v6 = IIONumber::doubleNum(v8);
  IIONumber::~IIONumber(v8);
  return v6;
}

void sub_185FC13B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

double IIODictionary::getDoubleFromRationalForKey(IIODictionary *this, const __CFString *a2)
{
  v3 = *(this + 1);
  v4 = 0.0;
  if (v3 && CFDictionaryContainsKey(v3, a2))
  {
    memset(v11, 0, sizeof(v11));
    v6 = *(this + 1);
    if (v6)
    {
      Value = CFDictionaryGetValue(v6, a2);
    }

    else
    {
      Value = 0;
    }

    IIOArray::IIOArray(v11, Value);
    DoubleAtIndex = IIOArray::getDoubleAtIndex(v11, 0);
    v9 = IIOArray::getDoubleAtIndex(v11, 1);
    if (v9 == 0.0)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = DoubleAtIndex / v9;
    }

    IIOArray::~IIOArray(v11);
  }

  return v4;
}

void sub_185FC1474(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOArray::~IIOArray(va);
  _Unwind_Resume(a1);
}

const void *IIODictionary::getObjectForKey(IIODictionary *this, const char *a2)
{
  IIOString::IIOString(v6, a2);
  v3 = *(this + 1);
  if (v3)
  {
    Value = CFDictionaryGetValue(v3, key);
  }

  else
  {
    Value = 0;
  }

  IIOString::~IIOString(v6);
  return Value;
}

void sub_185FC14E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

const __CFDictionary *IIODictionary::getObjectForKeyGroup(IIODictionary *this, const char *a2, const char *a3)
{
  IIOString::IIOString(v10, a2);
  v5 = v11;
  IIOString::IIOString(v8, a3);
  ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(this, v5, v9);
  IIOString::~IIOString(v8);
  IIOString::~IIOString(v10);
  return ObjectForKeyGroup;
}

void sub_185FC156C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  IIOString::~IIOString(&a9);
  IIOString::~IIOString(&a12);
  _Unwind_Resume(a1);
}

__CFArray *IIODictionary::getArrayObjectForPath(IIODictionary *this, const __CFString *a2)
{
  v3 = *MEMORY[0x1E695E480];
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a2, @".");
  v15 = 0;
  theArray = 0;
  v17 = 0;
  IIOArray::IIOArray(&v15, ArrayBySeparatingStrings);
  if (theArray && (v5 = *(this + 1), (Count = CFArrayGetCount(theArray)) != 0))
  {
    v7 = 0;
    Value = 0;
    v9 = Count - 1;
    while (1)
    {
      if (theArray)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
        if (ValueAtIndex)
        {
          Value = CFDictionaryGetValue(v5, ValueAtIndex);
        }
      }

      if (!Value || v9 == v7)
      {
        break;
      }

      TypeID = CFDictionaryGetTypeID();
      ++v7;
      v5 = Value;
      if (TypeID != CFGetTypeID(Value))
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    Value = 0;
  }

  CFRelease(ArrayBySeparatingStrings);
  if (Value)
  {
    v12 = CFGetTypeID(Value);
    if (v12 == CFArrayGetTypeID())
    {
      Mutable = Value;
    }

    else
    {
      Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
      CFArrayAppendValue(Mutable, Value);
      CFAutorelease(Mutable);
    }
  }

  else
  {
    Mutable = 0;
  }

  IIOArray::~IIOArray(&v15);
  return Mutable;
}

void sub_185FC16E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOArray::~IIOArray(va);
  _Unwind_Resume(a1);
}

__CFArray *IIODictionary::getArrayObjectForPath(IIODictionary *this, const char *a2)
{
  IIOString::IIOString(v5, a2);
  ArrayObjectForPath = IIODictionary::getArrayObjectForPath(this, v6);
  IIOString::~IIOString(v5);
  return ArrayObjectForPath;
}

void sub_185FC1748(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

__CFArray *IIODictionary::getArrayObjectForPathWithIndexing(IIODictionary *this, const __CFString *a2)
{
  v3 = *MEMORY[0x1E695E480];
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a2, @".");
  v32 = 0;
  theArray = 0;
  v34 = 0;
  IIOArray::IIOArray(&v32, ArrayBySeparatingStrings);
  if (!theArray)
  {
    goto LABEL_27;
  }

  v5 = *(this + 1);
  Count = CFArrayGetCount(theArray);
  v31 = Count;
  if (!Count)
  {
    goto LABEL_27;
  }

  v7 = 0;
  while (1)
  {
    if (!theArray || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7), (v9 = ValueAtIndex) == 0))
    {
      _cg_jpeg_mem_term("getArrayObjectForPathWithIndexing", 1229, "*** Empty component at index %u\n", v7);
      goto LABEL_27;
    }

    location = CFStringFind(ValueAtIndex, @"[", 0).location;
    if (location == -1)
    {
      break;
    }

    v35.location = 0;
    v35.length = location;
    v11 = CFStringCreateWithSubstring(v3, v9, v35);
    v12 = CFStringFind(v9, @"]", 0).location;
    if (v12 == -1)
    {
      CStringPtr = CFStringGetCStringPtr(v9, 0x8000100u);
      LogError("getArrayObjectForPathWithIndexing", 1248, "Invalid array syntax: missing closing bracket in '%s'\n", CStringPtr);
      CFRelease(v11);
      goto LABEL_27;
    }

    v36.location = location + 1;
    v36.length = v12 - (location + 1);
    v13 = CFStringCreateWithSubstring(v3, v9, v36);
    v14 = CFGetTypeID(v5);
    if (v14 != CFDictionaryGetTypeID())
    {
      v23 = CFStringGetCStringPtr(v11, 0x8000100u);
      LogError("getArrayObjectForPathWithIndexing", 1291, "Current object is not a dictionary, cannot access key '%s'\n", v23);
LABEL_18:
      v21 = 0;
      goto LABEL_19;
    }

    Value = CFDictionaryGetValue(v5, v11);
    v16 = Value;
    if (!Value || (v17 = CFGetTypeID(Value), v17 != CFArrayGetTypeID()))
    {
      v24 = CFStringGetCStringPtr(v11, 0x8000100u);
      LogError("getArrayObjectForPathWithIndexing", 1284, "Key '%s' is not an array or doesn't exist\n", v24);
      goto LABEL_18;
    }

    IntValue = CFStringGetIntValue(v13);
    v19 = CFArrayGetCount(v16);
    v20 = v19;
    if (IntValue < 0 || v19 <= IntValue)
    {
      v25 = CFStringGetCStringPtr(v11, 0x8000100u);
      LogError("getArrayObjectForPathWithIndexing", 1277, "Array index %ld out of bounds (array size: %ld) for key '%s'\n", IntValue, v20, v25);
      goto LABEL_18;
    }

    v5 = CFArrayGetValueAtIndex(v16, IntValue);
    v21 = v5;
LABEL_19:
    CFRelease(v11);
    CFRelease(v13);
LABEL_20:
    if (v21)
    {
      if (v31 != ++v7)
      {
        continue;
      }
    }

    goto LABEL_28;
  }

  v22 = CFGetTypeID(v5);
  if (v22 == CFDictionaryGetTypeID())
  {
    v5 = CFDictionaryGetValue(v5, v9);
    v21 = v5;
    goto LABEL_20;
  }

  v27 = CFStringGetCStringPtr(v9, 0x8000100u);
  LogError("getArrayObjectForPathWithIndexing", 1309, "Current object is not a dictionary, cannot access key '%s'\n", v27);
LABEL_27:
  v21 = 0;
LABEL_28:
  CFRelease(ArrayBySeparatingStrings);
  if (v21)
  {
    v28 = CFGetTypeID(v21);
    if (v28 == CFArrayGetTypeID())
    {
      Mutable = v21;
    }

    else
    {
      Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
      CFArrayAppendValue(Mutable, v21);
      CFAutorelease(Mutable);
    }
  }

  else
  {
    Mutable = 0;
  }

  IIOArray::~IIOArray(&v32);
  return Mutable;
}

void sub_185FC1AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  IIOArray::~IIOArray(va);
  _Unwind_Resume(a1);
}

BOOL IIODictionary::getBoolForKey(IIODictionary *this, const char *a2)
{
  IIOString::IIOString(v5, a2);
  BoolForKey = IIODictionary::getBoolForKey(this, v6);
  IIOString::~IIOString(v5);
  return BoolForKey;
}

void sub_185FC1B70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

const __CFDictionary *IIODictionary::getBoolForKeyGroup(IIODictionary *this, const __CFString *a2, const __CFString *a3)
{
  result = IIODictionary::getGroupForKey(this, a3, 0);
  if (result)
  {
    Value = CFDictionaryGetValue(result, a2);

    return IIODictionary::getBoolFromValue(Value, Value);
  }

  return result;
}

void IIODictionary::setObjectForKey(IIODictionary *this, const void **a2, const char *a3)
{
  if (a3)
  {
    v3 = *(this + 1);
    if (v3)
    {
      IIOString::IIOString(v5, a3);
      CFDictionarySetValue(v3, key, a2[2]);
      IIOString::~IIOString(v5);
    }
  }
}

void sub_185FC1C34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void IIODictionary::setObjectForKey(IIODictionary *this, const void *a2, const char *a3)
{
  if (a3)
  {
    v3 = *(this + 1);
    if (v3)
    {
      if (a2)
      {
        IIOString::IIOString(v5, a3);
        CFDictionarySetValue(v3, key, a2);
      }

      else
      {
        IIOString::IIOString(v5, a3);
        CFDictionaryRemoveValue(v3, key);
      }

      IIOString::~IIOString(v5);
    }
  }
}

void sub_185FC1CBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void IIODictionary::setObjectForKey(IIODictionary *this, const void **a2, const __CFString *key)
{
  if (key)
  {
    v3 = *(this + 1);
    if (v3)
    {
      CFDictionarySetValue(v3, key, a2[2]);
    }
  }
}

void IIODictionary::setObjectForKeyGroup(IIODictionary *this, const void *a2, const char *a3, const char *a4)
{
  if (a3)
  {
    if (a4)
    {
      if (*(this + 1))
      {
        IIOString::IIOString(v8, a4);
        GroupForKey = IIODictionary::getGroupForKey(this, key, 1);
        IIOString::~IIOString(v8);
        if (GroupForKey)
        {
          IIOString::IIOString(v8, a3);
          if (a2)
          {
            CFDictionarySetValue(GroupForKey, key, a2);
          }

          else
          {
            CFDictionaryRemoveValue(GroupForKey, key);
          }

          IIOString::~IIOString(v8);
        }
      }
    }
  }
}

void sub_185FC1DA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void IIODictionary::setObjectForKeyGroup(IIODictionary *this, const IIONumber *a2, const __CFString *a3, const __CFString *a4)
{
  if (a3)
  {
    if (a4)
    {
      if (*(this + 1))
      {
        GroupForKey = IIODictionary::getGroupForKey(this, a4, 1);
        if (GroupForKey)
        {
          v7 = *(a2 + 2);

          CFDictionarySetValue(GroupForKey, a3, v7);
        }
      }
    }
  }
}

void IIODictionary::removeAllObjects(IIODictionary *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFDictionaryRemoveAllValues(v1);
  }
}

void IIODictionary::appendDictionary(IIODictionary *this, const __CFDictionary **a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    IIODictionaryAppendDictionary(v2, a2[1], 1);
  }
}

void IIODictionary::appendDictionaryNoOverwrite(IIODictionary *this, const __CFDictionary **a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    IIODictionaryAppendDictionary(v2, a2[1], 0);
  }
}

void KTXWritePlugin::~KTXWritePlugin(KTXWritePlugin *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t KTXWritePlugin::writeKTXHeader(IIOImageWriteSession *this, unsigned int a2, unsigned int a3, int a4, unsigned int a5, char a6, int a7, int a8, int a9, int a10, char a11, char a12)
{
  v33 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v31 = 0u;
  __ptr[0] = 0xBB31312058544BABLL;
  __ptr[1] = 0x40302010A1A0A0DLL;
  v27 = a7;
  v28 = a8;
  v29 = a9;
  v30 = a10;
  if (a5 <= 4)
  {
    LODWORD(v31) = dword_18620881C[a5];
  }

  *(&v31 + 4) = __PAIR64__(a3, a2);
  *&v32 = 0x100000000;
  HIDWORD(v31) = a4;
  DWORD2(v32) = 1;
  *v25 = *"KTXorientation";
  strcpy(&v25[15], "S=r,T=d");
  strcpy(v24, "ColorSpace_APPLE");
  v24[17] = a5 + 48;
  v24[18] = 0;
  v18 = 19;
  v19 = 23;
  strcpy(v23, "Compression_APPLE");
  strcpy(&v23[18], "APPL");
  v20 = xmmword_1862087C0;
  v21 = a6 + 48;
  v22 = 0;
  if (a12)
  {
    v13 = 52;
  }

  else
  {
    v13 = 28;
  }

  v16 = 18;
  v17 = 23;
  v15 = 0;
  if (a11)
  {
    v13 += 28;
  }

  HIDWORD(v32) = (v13 + 27) & 0xFC;
  if (IIOImageWriteSession::putBytes(this, __ptr, 0x40uLL) != 64)
  {
    return 4294967246;
  }

  IIOImageWriteSession::putBytes(this, &v19, 4uLL);
  IIOImageWriteSession::putBytes(this, v25, 0x17uLL);
  IIOImageWriteSession::putBytes(this, &v15, (24 - v19));
  if (a12)
  {
    IIOImageWriteSession::putBytes(this, &v18, 4uLL);
    IIOImageWriteSession::putBytes(this, v24, 0x13uLL);
    IIOImageWriteSession::putBytes(this, &v15, (20 - v18));
  }

  if (a11)
  {
    IIOImageWriteSession::putBytes(this, &v17, 4uLL);
    IIOImageWriteSession::putBytes(this, v23, 0x17uLL);
    IIOImageWriteSession::putBytes(this, &v15, (24 - v17));
  }

  IIOImageWriteSession::putBytes(this, &v16, 4uLL);
  IIOImageWriteSession::putBytes(this, &v20, 0x12uLL);
  IIOImageWriteSession::putBytes(this, &v15, (20 - v16));
  return 0;
}

uint64_t KTXWritePlugin::writeOne(IIOImageWriteSession **this, IIOImagePixelDataProvider *a2, IIODictionary *a3, IIODictionary *a4)
{
  if (IIODictionary::containsKey(a3, @"kCGImagePropertyEncoder"))
  {
    ObjectForKey = IIODictionary::getObjectForKey(a3, @"kCGImagePropertyEncoder");
    if (CFEqual(ObjectForKey, @"kCGImagePropertyPVREncoder"))
    {
      v8 = 0;
      v9 = 0;
      v10 = 1;
    }

    else if (CFEqual(ObjectForKey, @"kCGImagePropertyBCEncoder"))
    {
      v10 = 0;
      v9 = 0;
      v8 = 1;
    }

    else
    {
      v8 = 0;
      v10 = 0;
      v9 = CFEqual(ObjectForKey, @"kCGImagePropertyASTCEncoder") != 0;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v9 = 0;
  }

  v11 = IIOImageSource::count(a2);
  v12 = IIO_Reader::testHeaderSize(a2);
  v13 = v12;
  if (v9)
  {
    if ((gIIODebugFlags & 0x20000) != 0)
    {
      ImageIOLog("♦️  'KTX ' %d: writeOne saving image [ASTC] (%d x %d)\n", 222, v11, v12);
    }

    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    *size = 0u;
    v25 = 0u;
    ASTCWritePlugin::ASTCWritePlugin(size, this[2], this[3], 1);
    v14 = IIOWritePlugin::writeAll(size);
    ASTCWritePlugin::~ASTCWritePlugin(size, v15, v16);
    return v14;
  }

  if (v10)
  {
    if ((gIIODebugFlags & 0x20000) != 0)
    {
      ImageIOLog("♦️  'KTX ' %d: writeOne saving image [PVR] (%d x %d)\n", 228, v11, v12);
    }

    v25 = 0u;
    v26 = 0u;
    *size = 0u;
    PVRWritePlugin::PVRWritePlugin(size, this[2], this[3], 1);
    v14 = IIOWritePlugin::writeAll(size);
    PVRWritePlugin::~PVRWritePlugin(size);
    return v14;
  }

  if (v8)
  {
    if ((gIIODebugFlags & 0x20000) != 0)
    {
      ImageIOLog("♦️  'KTX ' %d: writeOne saving image [BC] (%d x %d)\n", 234, v11, v12);
    }

    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    *size = 0u;
    v25 = 0u;
    BCWritePlugin::BCWritePlugin(size, this[2], this[3], 1);
    v14 = IIOWritePlugin::writeAll(size);
    BCWritePlugin::~BCWritePlugin(size);
    return v14;
  }

  if ((gIIODebugFlags & 0x20000) != 0)
  {
    ImageIOLog("♦️  'KTX ' %d: writeOne saving image [uncompressed] (%d x %d)\n", 240, v11, v12);
  }

  Error = _cg_GifLastError(a2);
  AlphaInfo = IIOImagePixelDataProvider::getAlphaInfo(a2);
  if (Error == 16)
  {
    v20 = 5131;
  }

  else
  {
    v20 = 5126;
  }

  if (Error == 16)
  {
    v21 = 34842;
  }

  else
  {
    v21 = 34836;
  }

  v22 = KTXWritePlugin::writeKTXHeader(this[2], v11, v13, 0, 1u, AlphaInfo, v20, Error >> 3, 6408, v21, 0, 0);
  LODWORD(size[0]) = IIOImagePixelDataProvider::getBytesPerRow(a2) * v13;
  IIOImageWriteSession::putBytes(this[2], size, 4uLL);
  v23 = malloc_type_malloc(LODWORD(size[0]), 0xE4BA9756uLL);
  IIOImagePixelDataProvider::getBytes(a2, v23);
  IIOImageWriteSession::putBytes(this[2], v23, LODWORD(size[0]));
  free(v23);
  return v22;
}

void sub_185FC2438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  BCWritePlugin::~BCWritePlugin(va);
  _Unwind_Resume(a1);
}

uint64_t KTXWritePlugin::WriteProc(KTXWritePlugin *this, IIOImageDestination *a2, void *a3, void *a4, void *a5)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "KTXWritePlugin::WriteProc", 0, 0, -1, 0);
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  IIOWritePlugin::IIOWritePlugin(v11, this, a2, 1263818784);
  *&v11[0] = &unk_1EF4D4290;
  v7 = IIOWritePlugin::writeAll(v11);
  _cg_jpeg_mem_term(v11, v8, v9);
  return v7;
}

void sub_185FC2534(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _cg_jpeg_mem_term(&a9, a2, a3);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185FC251CLL);
}

uint64_t IIOFrameBufferCreateForBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (IIOFrameBufferGetTypeID_onceToken != -1)
  {
    IIOFrameBufferCreateForBuffer_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v11 = Instance;
  if (Instance)
  {
    *(Instance + 16) = a1;
    *(Instance + 24) = a2;
    *(Instance + 32) = a3;
    *(Instance + 40) = a4;
    *(Instance + 48) = a5;
  }

  else
  {
    CFShow(@"Failed to allocate IIOFrameBufferRef");
  }

  return v11;
}

CFTypeRef IIOFrameBufferRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void IIOFrameBufferRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t IIOFrameBufferGetBuffer(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t IIOFrameBufferGetBufferSize(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t IIOFrameBufferGetFrameIndex(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 40);
  }

  else
  {
    return -1;
  }
}

double IIOFrameBufferGetDelayTime(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 48);
  }

  else
  {
    return 0.0;
  }
}

uint64_t IIOGIFFrameGetNumRowsDecoded(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t IIOGIFFrameSetNumRowsDecoded(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

uint64_t IIOFrameBufferGetColorTable(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

void *IIOFrameBufferSetColorTable(void *result, void *cf)
{
  if (result)
  {
    v3 = result;
    result = result[8];
    if (result != cf)
    {
      if (result)
      {
        CFRelease(result);
      }

      if (cf)
      {
        result = CFRetain(cf);
      }

      else
      {
        result = 0;
      }

      v3[8] = result;
    }
  }

  return result;
}

uint64_t __IIOFrameBufferGetTypeID_block_invoke()
{
  sIIOFrameBufferClass = 0;
  unk_1ED569820 = "IIOFrameBuffer";
  qword_1ED569828 = iioFrameBufInit;
  unk_1ED569830 = 0;
  qword_1ED569838 = iioFrameBufFinalize;
  unk_1ED569840 = 0;
  qword_1ED569848 = 0;
  unk_1ED569850 = 0;
  qword_1ED569858 = iioFrameBufCopyDebugDesc;
  result = _CFRuntimeRegisterClass();
  sIIOFrameBufferID = result;
  return result;
}

double iioFrameBufInit(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double iioFrameBufFinalize(void *a1)
{
  v3 = a1 + 2;
  v2 = a1[2];
  if (v2)
  {
    _ImageIO_Free(v2, a1[3]);
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
  }

  v3[6] = 0;
  result = 0.0;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *v3 = 0u;
  return result;
}

__CFString *iioFrameBufCopyDebugDesc(void *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"IIOFrameBuffer %p retainCount: %d\n", a1, v3);
  CFStringAppendFormat(Mutable, 0, @"buffer = %p, bufferSize = %ld, frameIndex = %ld, delayTime = %g\n", a1[2], a1[4], a1[5], a1[6]);
  return Mutable;
}

void PBMWritePlugin::~PBMWritePlugin(PBMWritePlugin *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t PBMWritePlugin::write_P1_ASCII(IIOImageWriteSession **this, CGImageRef image, IIODictionary *a3)
{
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("%s", "write_P1_ASCII");
  }

  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v7 = Height;
  v14 = 0;
  asprintf(&v14, "P1\n# 1-bit pbm - black&white\n%ld %ld\n", Width, Height);
  if (!v14)
  {
    return 4294967246;
  }

  v8 = strlen(v14);
  IIOImageWriteSession::putBytes(this[2], v14, v8);
  free(v14);
  *&v13.renderingIntent = 0;
  *&v13.bitsPerComponent = 0x800000008;
  IIOColorSpace::IIOColorSpace(v12, *MEMORY[0x1E695F128]);
  v13.colorSpace = *(&v12[0] + 1);
  IIOColorSpace::~IIOColorSpace(v12);
  memset(&v13.bitmapInfo, 0, 20);
  memset(v12, 0, sizeof(v12));
  IIOPixelProvider::IIOPixelProvider(v12, image, &v13, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___ZN14PBMWritePlugin14write_P1_ASCIIEP7CGImageP13IIODictionary_block_invoke;
  v10[3] = &__block_descriptor_tmp_2;
  v10[4] = this;
  v10[5] = "%1d ";
  v11 = 1;
  IIOPixelProvider::iterateOverImage(v12, 0, v7, 16, v10);
  IIOPixelProvider::~IIOPixelProvider(v12);
  return 0;
}

void sub_185FC2A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIOPixelProvider::~IIOPixelProvider(va);
  _Unwind_Resume(a1);
}

uint64_t PBMWritePlugin::write_P2_ASCII(IIOImageWriteSession **this, CGImageRef image, IIODictionary *a3)
{
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("%s", "write_P2_ASCII");
  }

  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  BitsPerComponent = CGImageGetBitsPerComponent(image);
  v17 = 0;
  if (BitsPerComponent <= 0xF)
  {
    v8 = ~(-1 << BitsPerComponent);
  }

  else
  {
    v8 = 0xFFFF;
  }

  if (BitsPerComponent <= 0xF)
  {
    v9 = BitsPerComponent;
  }

  else
  {
    v9 = 16;
  }

  asprintf(&v17, "P2\n# %d-bit pgm - grayscale\n%ld %ld\n%d\n", v9, Width, Height, v8);
  if (!v17)
  {
    return 4294967246;
  }

  v10 = strlen(v17);
  IIOImageWriteSession::putBytes(this[2], v17, v10);
  free(v17);
  *&v16.renderingIntent = 0;
  v16.bitsPerComponent = v9;
  v16.bitsPerPixel = v9;
  IIOColorSpace::IIOColorSpace(v15, *MEMORY[0x1E695F128]);
  v16.colorSpace = *(&v15[0] + 1);
  IIOColorSpace::~IIOColorSpace(v15);
  memset(&v16.bitmapInfo, 0, 20);
  memset(v15, 0, sizeof(v15));
  IIOPixelProvider::IIOPixelProvider(v15, image, &v16, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = ___ZN14PBMWritePlugin14write_P2_ASCIIEP7CGImageP13IIODictionary_block_invoke;
  v12[3] = &__block_descriptor_tmp_7;
  v12[4] = this;
  v12[5] = "%3d ";
  v13 = v9;
  v14 = 1;
  IIOPixelProvider::iterateOverImage(v15, 0, Height, 16, v12);
  IIOPixelProvider::~IIOPixelProvider(v15);
  return 0;
}

void sub_185FC2C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  IIOPixelProvider::~IIOPixelProvider(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN14PBMWritePlugin14write_P2_ASCIIEP7CGImageP13IIODictionary_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  result = IIOBitStream::CreateIIOBitStream(*a3, (*(a3 + 24) * *(a3 + 8)), "r", a4);
  if (result)
  {
    v8 = result;
    v15 = 0;
    memset(__ptr, 0, sizeof(__ptr));
    if (*(a3 + 8))
    {
      v9 = 0;
      while (!*(a3 + 16))
      {
        v11 = 0;
LABEL_14:
        IIOImageWriteSession::putBytes(*(v6 + 16), __ptr, v11);
        if (++v9 >= *(a3 + 8))
        {
          return (*(*v8 + 8))(v8);
        }
      }

      v10 = 0;
      v11 = 0;
      while (1)
      {
        v13 = 0;
        if ((*(*v8 + 24))(v8, *(a1 + 48), &v13))
        {
          break;
        }

        v12 = snprintf(__ptr + v11, 100 - v11, *(a1 + 40), v13);
        if (v12 < 1)
        {
          break;
        }

        v11 += v12;
        if (v11 > 100 - 5 * *(a1 + 52))
        {
          *(__ptr + v11 - 1) = 10;
          IIOImageWriteSession::putBytes(*(v6 + 16), __ptr, v11);
          v11 = 0;
        }

        if (++v10 >= *(a3 + 16))
        {
          if (v11)
          {
            *(__ptr + v11 - 1) = 10;
          }

          goto LABEL_14;
        }
      }
    }

    return (*(*v8 + 8))(v8);
  }

  return result;
}

uint64_t PBMWritePlugin::write_P3_ASCII(IIOImageWriteSession **this, CGImageRef image, IIODictionary *a3)
{
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("%s", "write_P3_ASCII");
  }

  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  BitsPerComponent = CGImageGetBitsPerComponent(image);
  v17 = 0;
  if (BitsPerComponent <= 0xF)
  {
    v8 = ~(-1 << BitsPerComponent);
  }

  else
  {
    v8 = 0xFFFF;
  }

  if (BitsPerComponent <= 0xF)
  {
    v9 = BitsPerComponent;
  }

  else
  {
    v9 = 16;
  }

  asprintf(&v17, "P3\n# %d-bit ppm - RGB\n%ld %ld\n%d\n", v9, Width, Height, v8);
  if (!v17)
  {
    return 4294967246;
  }

  v10 = strlen(v17);
  IIOImageWriteSession::putBytes(this[2], v17, v10);
  free(v17);
  *&v16.renderingIntent = 0;
  v16.bitsPerComponent = v9;
  v16.bitsPerPixel = 3 * v9;
  IIOColorSpace::IIOColorSpace(v15, *MEMORY[0x1E695F1C0]);
  v16.colorSpace = *(&v15[0] + 1);
  IIOColorSpace::~IIOColorSpace(v15);
  memset(&v16.bitmapInfo, 0, 20);
  memset(v15, 0, sizeof(v15));
  IIOPixelProvider::IIOPixelProvider(v15, image, &v16, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = ___ZN14PBMWritePlugin14write_P3_ASCIIEP7CGImageP13IIODictionary_block_invoke;
  v12[3] = &__block_descriptor_tmp_9;
  v12[4] = this;
  v12[5] = "%3d ";
  v13 = v9;
  v14 = 3;
  IIOPixelProvider::iterateOverImage(v15, 0, Height, 16, v12);
  IIOPixelProvider::~IIOPixelProvider(v15);
  return 0;
}

void sub_185FC3008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  IIOPixelProvider::~IIOPixelProvider(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN14PBMWritePlugin14write_P3_ASCIIEP7CGImageP13IIODictionary_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v17 = 0;
  memset(__ptr, 0, sizeof(__ptr));
  result = IIOBitStream::CreateIIOBitStream(*a3, (*(a3 + 24) * *(a3 + 8)), "r", a4);
  v8 = result;
  if (*(a3 + 8))
  {
    v9 = 0;
    while (!*(a3 + 16))
    {
      v11 = 0;
LABEL_16:
      result = IIOImageWriteSession::putBytes(*(v6 + 16), __ptr, v11);
      if (++v9 >= *(a3 + 8))
      {
        goto LABEL_17;
      }
    }

    v14 = v9;
    v10 = 0;
    v11 = 0;
LABEL_5:
    v12 = 3;
    while (1)
    {
      v15 = 0;
      if ((*(*v8 + 24))(v8, *(a1 + 48), &v15))
      {
        break;
      }

      v13 = snprintf(__ptr + v11, 100 - v11, *(a1 + 40), v15);
      if (v13 < 1)
      {
        break;
      }

      v11 += v13;
      if (v11 > 100 - 5 * *(a1 + 52))
      {
        *(__ptr + v11 - 1) = 10;
        IIOImageWriteSession::putBytes(*(v6 + 16), __ptr, v11);
        v11 = 0;
      }

      if (!--v12)
      {
        if (++v10 < *(a3 + 16))
        {
          goto LABEL_5;
        }

        if (v11)
        {
          *(__ptr + v11 - 1) = 10;
        }

        v9 = v14;
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_17:
    if (!v8)
    {
      return result;
    }
  }

  return (*(*v8 + 8))(v8);
}

uint64_t PBMWritePlugin::write_P4_Binary(IIOImageWriteSession **this, CGImageRef image, IIODictionary *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("%s", "write_P4_Binary");
  }

  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v7 = Height;
  v13 = 0;
  asprintf(&v13, "P4\n# 1-bit pbm - black&white\n%ld %ld\n", Width, Height);
  if (!v13)
  {
    return 4294967246;
  }

  v8 = strlen(v13);
  IIOImageWriteSession::putBytes(this[2], v13, v8);
  free(v13);
  v14 = xmmword_186208860;
  *&v12.renderingIntent = 0;
  *&v12.bitsPerComponent = 0x100000001;
  IIOColorSpace::IIOColorSpace(v11, *MEMORY[0x1E695F128]);
  v12.colorSpace = *(&v11[0] + 1);
  IIOColorSpace::~IIOColorSpace(v11);
  *&v12.bitmapInfo = 0;
  v12.decode = &v14;
  v12.renderingIntent = kCGRenderingIntentDefault;
  memset(v11, 0, sizeof(v11));
  IIOPixelProvider::IIOPixelProvider(v11, image, &v12, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___ZN14PBMWritePlugin15write_P4_BinaryEP7CGImageP13IIODictionary_block_invoke;
  v10[3] = &__block_descriptor_tmp_11;
  v10[4] = this;
  IIOPixelProvider::iterateOverImage(v11, 0, v7, 16, v10);
  IIOPixelProvider::~IIOPixelProvider(v11);
  return 0;
}

void sub_185FC3404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  IIOPixelProvider::~IIOPixelProvider(va);
  _Unwind_Resume(a1);
}

uint64_t PBMWritePlugin::write_P5_Binary(IIOImageWriteSession **this, CGImageRef image, IIODictionary *a3)
{
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("%s", "write_P5_Binary");
  }

  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  BitsPerComponent = CGImageGetBitsPerComponent(image);
  v16 = 0;
  if (BitsPerComponent <= 0xF)
  {
    v8 = ~(-1 << BitsPerComponent);
  }

  else
  {
    v8 = 0xFFFF;
  }

  if (BitsPerComponent <= 0xF)
  {
    v9 = BitsPerComponent;
  }

  else
  {
    v9 = 16;
  }

  asprintf(&v16, "P5\n# %d-bit ppm - grayscale\n%ld %ld\n%d\n", v9, Width, Height, v8);
  if (!v16)
  {
    return 4294967246;
  }

  v10 = strlen(v16);
  IIOImageWriteSession::putBytes(this[2], v16, v10);
  free(v16);
  *&v15.renderingIntent = 0;
  if (v9 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = 16;
  }

  v15.bitsPerComponent = v11;
  v15.bitsPerPixel = v11;
  IIOColorSpace::IIOColorSpace(v14, *MEMORY[0x1E695F128]);
  v15.colorSpace = *(&v14[0] + 1);
  IIOColorSpace::~IIOColorSpace(v14);
  memset(&v15.bitmapInfo, 0, 20);
  memset(v14, 0, sizeof(v14));
  IIOPixelProvider::IIOPixelProvider(v14, image, &v15, 0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = ___ZN14PBMWritePlugin15write_P5_BinaryEP7CGImageP13IIODictionary_block_invoke;
  v13[3] = &__block_descriptor_tmp_13_0;
  v13[4] = this;
  IIOPixelProvider::iterateOverImage(v14, 0, Height, 16, v13);
  IIOPixelProvider::~IIOPixelProvider(v14);
  return 0;
}

void sub_185FC3624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIOPixelProvider::~IIOPixelProvider(va);
  _Unwind_Resume(a1);
}

uint64_t PBMWritePlugin::write_P6_Binary(IIOImageWriteSession **this, CGImageRef image, IIODictionary *a3)
{
  v18[6] = *MEMORY[0x1E69E9840];
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("%s", "write_P6_Binary");
  }

  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  BitsPerComponent = CGImageGetBitsPerComponent(image);
  v8 = BitsPerComponent;
  v17 = 0;
  if (BitsPerComponent <= 0xF)
  {
    v9 = ~(-1 << BitsPerComponent);
  }

  else
  {
    v9 = 0xFFFF;
  }

  if (BitsPerComponent <= 0xF)
  {
    v10 = BitsPerComponent;
  }

  else
  {
    v10 = 16;
  }

  asprintf(&v17, "P6\n# %d-bit ppm - RGB\n%ld %ld\n%d\n", v10, Width, Height, v9);
  if (!v17)
  {
    return 4294967246;
  }

  v11 = strlen(v17);
  IIOImageWriteSession::putBytes(this[2], v17, v11);
  v12 = v9 / dbl_186208850[v10 < 9];
  free(v17);
  v18[0] = 0;
  *&v18[1] = v12;
  v18[2] = 0;
  *&v18[3] = v12;
  v18[4] = 0;
  *&v18[5] = v12;
  *&v16.renderingIntent = 0;
  *&v16.bitsPerComponent = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v8 > 8), 0x1FuLL)), 0x3000000010, 0x1800000008);
  IIOColorSpace::IIOColorSpace(v15, *MEMORY[0x1E695F1C0]);
  v16.colorSpace = *(&v15[0] + 1);
  IIOColorSpace::~IIOColorSpace(v15);
  *&v16.bitmapInfo = 0;
  v16.decode = v18;
  v16.renderingIntent = kCGRenderingIntentDefault;
  memset(v15, 0, sizeof(v15));
  IIOPixelProvider::IIOPixelProvider(v15, image, &v16, 0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = ___ZN14PBMWritePlugin15write_P6_BinaryEP7CGImageP13IIODictionary_block_invoke;
  v14[3] = &__block_descriptor_tmp_15;
  v14[4] = this;
  IIOPixelProvider::iterateOverImage(v15, 0, Height, 16, v14);
  IIOPixelProvider::~IIOPixelProvider(v15);
  return 0;
}

void sub_185FC38CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIOPixelProvider::~IIOPixelProvider(va);
  _Unwind_Resume(a1);
}

vImage_Error PBMWritePlugin::write_Pf_Binary(IIOImageWriteSession **this, CGImageRef image, IIODictionary *a3)
{
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("%s", "write_Pf_Binary");
  }

  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v7 = Height;
  v14 = 0;
  asprintf(&v14, "Pf\n%ld %ld\n-1\n", Width, Height);
  if (!v14)
  {
    return 4294967246;
  }

  v8 = strlen(v14);
  IIOImageWriteSession::putBytes(this[2], v14, v8);
  free(v14);
  *&v13.renderingIntent = 0;
  *&v13.bitsPerComponent = 0x2000000020;
  IIOColorSpace::IIOColorSpace(v12, *MEMORY[0x1E695F128]);
  v13.colorSpace = *(&v12[0] + 1);
  IIOColorSpace::~IIOColorSpace(v12);
  v13.bitmapInfo = 8448;
  *&v13.version = 0uLL;
  memset(v12, 0, sizeof(v12));
  IIOPixelProvider::IIOPixelProvider(v12, image, &v13, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___ZN14PBMWritePlugin15write_Pf_BinaryEP7CGImageP13IIODictionary_block_invoke;
  v11[3] = &__block_descriptor_tmp_17;
  v11[4] = this;
  v9 = IIOPixelProvider::iterateOverImage(v12, 0, v7, 16, v11);
  IIOPixelProvider::~IIOPixelProvider(v12);
  return v9;
}

void sub_185FC3AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  IIOPixelProvider::~IIOPixelProvider(va);
  _Unwind_Resume(a1);
}

uint64_t PBMWritePlugin::write_PF_Binary(IIOImageWriteSession **this, CGImageRef image, IIODictionary *a3)
{
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("%s", "write_PF_Binary");
  }

  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v7 = Height;
  v13 = 0;
  asprintf(&v13, "PF\n%ld %ld\n-1\n", Width, Height);
  if (v13)
  {
    v8 = strlen(v13);
    IIOImageWriteSession::putBytes(this[2], v13, v8);
    free(v13);
    *&v12.renderingIntent = 0;
    *&v12.bitsPerComponent = 0x6000000020;
    IIOColorSpace::IIOColorSpace(v11, *MEMORY[0x1E695F1C0]);
    v12.colorSpace = *(&v11[0] + 1);
    IIOColorSpace::~IIOColorSpace(v11);
    v12.bitmapInfo = 8448;
    *&v12.version = 0uLL;
    memset(v11, 0, sizeof(v11));
    IIOPixelProvider::IIOPixelProvider(v11, image, &v12, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = ___ZN14PBMWritePlugin15write_PF_BinaryEP7CGImageP13IIODictionary_block_invoke;
    v10[3] = &__block_descriptor_tmp_19_0;
    v10[4] = this;
    IIOPixelProvider::iterateOverImage(v11, 0, v7, 16, v10);
    IIOPixelProvider::~IIOPixelProvider(v11);
  }

  return 0;
}

void sub_185FC3CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  IIOPixelProvider::~IIOPixelProvider(va);
  _Unwind_Resume(a1);
}

vImage_Error PBMWritePlugin::writeOneImage(IIOImageWriteSession **this, CGImageRef image, IIODictionary *a3, IIODictionary *a4)
{
  BitmapInfo = CGImageGetBitmapInfo(image);
  ColorSpace = CGImageGetColorSpace(image);
  Model = CGColorSpaceGetModel(ColorSpace);
  BitsPerComponent = CGImageGetBitsPerComponent(image);
  if (IIODictionary::containsKey(a3, @"kCGImageDestinationOptimizeForSize"))
  {
    BoolForKey = IIODictionary::getBoolForKey(a3, @"kCGImageDestinationOptimizeForSize");
    if ((BitmapInfo & 0x100) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    BoolForKey = BitsPerComponent > 8;
    if ((BitmapInfo & 0x100) != 0)
    {
LABEL_3:
      if (Model)
      {
        PBMWritePlugin::write_PF_Binary(this, image, v11);
        return 0;
      }

      else
      {

        return PBMWritePlugin::write_Pf_Binary(this, image, v11);
      }
    }
  }

  v15 = BitsPerComponent == 1 && Model == kCGColorSpaceModelMonochrome;
  if (BoolForKey)
  {
    if (v15)
    {

      return PBMWritePlugin::write_P4_Binary(this, image, v11);
    }

    else if (Model)
    {

      return PBMWritePlugin::write_P6_Binary(this, image, v11);
    }

    else
    {

      return PBMWritePlugin::write_P5_Binary(this, image, v11);
    }
  }

  else if (v15)
  {

    return PBMWritePlugin::write_P1_ASCII(this, image, v11);
  }

  else if (Model)
  {

    return PBMWritePlugin::write_P3_ASCII(this, image, v11);
  }

  else
  {

    return PBMWritePlugin::write_P2_ASCII(this, image, v11);
  }
}

uint64_t PBMWritePlugin::WriteProc(PBMWritePlugin *this, IIOImageDestination *a2, void *a3, void *a4, void *a5)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "PBMWritePlugin::WriteProc", 0, 0, -1, 0);
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  IIOWritePlugin::IIOWritePlugin(v11, this, a2, 1346522400);
  *&v11[0] = &unk_1EF4D4338;
  v7 = IIOWritePlugin::writeAll(v11);
  _cg_jpeg_mem_term(v11, v8, v9);
  return v7;
}

void sub_185FC3F9C(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _cg_jpeg_mem_term(&a9, a2, a3);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185FC3F84);
}

uint64_t IIOCreateDataWithContentsOfURL(void *a1)
{
  v4 = 0;
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:a1 options:0 error:&v4];
  if (!v2 && (v4 || IIO_OSAppleInternalBuild()))
  {
    NSLog(&cfstr_ErrorCannotGet_1.isa, a1);
    NSLog(&cfstr_Error.isa, v4);
    NSLog(&cfstr_IsfileurlD.isa, [a1 isFileURL]);
    NSLog(&cfstr_Isfilereferenc.isa, [a1 isFileReferenceURL]);
    NSLog(&cfstr_IsproxyD.isa, [a1 isProxy]);
  }

  return v2;
}

uint64_t IIOIsAppSuspended()
{
  if (IIOIsAppSuspended::once != -1)
  {
    IIOIsAppSuspended_cold_1();
  }

  v1 = gSharedApp;
  if (!gSharedApp)
  {
    return 1;
  }

  return [v1 isSuspended];
}

Class __IIOIsAppSuspended_block_invoke()
{
  result = NSClassFromString(&cfstr_Uiapplication.isa);
  if (result)
  {
    result = [(objc_class *)result sharedApplication];
    gSharedApp = result;
  }

  return result;
}

uint64_t RGBColorType::compare(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 > v3)
  {
    return 1;
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *a1;
  v6 = *a2;
  if (v5 > v6)
  {
    return 1;
  }

  if (v5 < v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a1[2];
  v8 = a2[2];
  v9 = v7 > v8;
  if (v7 >= v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  if (v9)
  {
    return 1;
  }

  else
  {
    return v10;
  }
}

BOOL RGBColorType::isCloseTo(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1 - *a2;
  if (v2 < 0)
  {
    v2 = *a2 - *a1;
  }

  if (v2 > 4)
  {
    return 0;
  }

  v3 = a1[1] - a2[1];
  if (v3 < 0)
  {
    v3 = a2[1] - a1[1];
  }

  if (v3 > 4)
  {
    return 0;
  }

  v4 = a1[2] - a2[2];
  if (v4 < 0)
  {
    v4 = a2[2] - a1[2];
  }

  return v4 < 5;
}

BOOL RGBColorMap::equalTo(void *a1, void *a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  if (v2 < 1)
  {
    return 1;
  }

  v3 = a1[2];
  v4 = a2[2];
  v5 = v2 - 1;
  do
  {
    v6 = RGBColorType::compare(v3, v4);
    result = v6 == 0;
    v9 = v5-- != 0;
    if (v6)
    {
      break;
    }

    v4 += 3;
    v3 += 3;
  }

  while (v9);
  return result;
}

uint64_t ColorQuantization::hist3d(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8, uint64_t *a9)
{
  v59 = *MEMORY[0x1E69E9840];
  v15 = a8 - 1;
  if ((a8 - 1) > 5)
  {
    v16 = 2;
    v56 = 1;
    v57 = 0;
    v17 = 3;
  }

  else
  {
    v56 = qword_1862088F0[v15];
    v57 = qword_1862088C0[v15];
    v16 = qword_186208920[v15];
    v17 = 4;
  }

  bzero(v58, 0x400uLL);
  for (i = 0; i != 256; ++i)
  {
    v58[i] = i * i;
  }

  v19 = a7[1];
  if (v19)
  {
    v20 = 0;
    v21 = 0;
    v22 = *a7 + v16;
    v24 = a7[2];
    v23 = a7[3];
    v25 = *a7 + v56;
    v26 = *a7 + v57;
    do
    {
      if (v24)
      {
        v27 = 0;
        v28 = (a9[5] + 2 * v21);
        v29 = 1;
        do
        {
          v30 = *(v25 + v27);
          v31 = *(v26 + v27);
          v32 = *(v22 + v27);
          v33 = (v30 >> 3) + 1 + 1089 * (v31 >> 3) + 32 * ((v30 >> 3) + 1) + (v32 >> 3) + 1090;
          ++a2[v33];
          *(a3 + 8 * v33) += v31;
          v34 = *(a4 + 8 * v33) + v30;
          LODWORD(v31) = v58[v31];
          LODWORD(v30) = v58[v30];
          *(a4 + 8 * v33) = v34;
          LODWORD(v30) = v30 + v31 + v58[v32];
          v35 = *(a5 + 8 * v33);
          v36 = *(a6 + 8 * v33);
          *v28++ = v33;
          *(a6 + 8 * v33) = v36 + v30;
          v27 += v17;
          ++v21;
          v37 = v24 > v29++;
          *(a5 + 8 * v33) = v35 + v32;
        }

        while (v37);
      }

      ++v20;
      v22 += v23;
      v25 += v23;
      v26 += v23;
    }

    while (v19 > v20);
  }

  v38 = 0;
  v39 = 35937;
  do
  {
    v41 = *a2++;
    v40 = v41;
    if (v41 > v38)
    {
      v38 = v40;
    }

    --v39;
  }

  while (v39);
  result = 0;
  v43 = v38 + 1;
  v44 = a9[2];
  v45 = a9[3];
  v46 = a9[4];
  v47 = 1;
  v49 = *a9;
  v48 = a9[1];
  do
  {
    v50 = &unk_1862088A0 + 3 * result;
    v51 = *v50;
    v52 = v50[1];
    v53 = v50[2];
    v54 = (v52 >> 3) + 1 + 1089 * (v51 >> 3) + 32 * ((v52 >> 3) + 1) + (v53 >> 3) + 1090;
    *(v48 + 8 * v54) = v43;
    *(v44 + 8 * v54) = v43 * v51;
    *(v45 + 8 * v54) = v43 * v52;
    *(v46 + 8 * v54) = v43 * v53;
    v55 = (v58[v52] + v58[v51] + v58[v53]);
    LOBYTE(v51) = v47;
    *(v49 + 8 * v54) = v43 * v55;
    result = 1;
    v47 = 0;
  }

  while ((v51 & 1) != 0);
  return result;
}

uint64_t *ColorQuantization::m3d(ColorQuantization *this, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, double *a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = 1;
  do
  {
    v26 = v6;
    v29 = 0;
    *(&v28[0] + 1) = 0;
    memset(&v28[1], 0, 240);
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    v37 = 0;
    v7 = 1;
    v27 = a6;
    v8 = a6;
    v9 = a5;
    result = a4;
    v11 = a3;
    v12 = a2;
    memset(v36, 0, sizeof(v36));
    do
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0.0;
      do
      {
        v17 += v12[v13 + 1123];
        v16 += v11[v13 + 1123];
        v15 += result[v13 + 1123];
        v19 = v9[v13 + 1123];
        v20 = *(v36 + v13 * 8 + 8) + v17;
        *(v36 + v13 * 8 + 8) = v20;
        v14 += v19;
        v21 = *(v34 + v13 * 8 + 8) + v16;
        *(v34 + v13 * 8 + 8) = v21;
        v22 = *(v32 + v13 * 8 + 8) + v15;
        *(v32 + v13 * 8 + 8) = v22;
        v23 = v8[v13 + 1123];
        v24 = *(v30 + v13 * 8 + 8) + v14;
        *(v30 + v13 * 8 + 8) = v24;
        v18 = v18 + v23;
        v25 = v18 + *(v28 + v13 * 8 + 8);
        *(v28 + v13 * 8 + 8) = v25;
        v12[v13 + 1123] = v12[v13 + 34] + v20;
        v11[v13 + 1123] = v11[v13 + 34] + v21;
        result[v13 + 1123] = result[v13 + 34] + v22;
        v9[v13 + 1123] = v9[v13 + 34] + v24;
        v8[v13 + 1123] = v25 + v8[v13 + 34];
        ++v13;
      }

      while (v13 != 32);
      ++v7;
      v12 += 33;
      v11 += 33;
      result += 33;
      v9 += 33;
      v8 += 33;
    }

    while (v7 != 33);
    v6 = v26 + 1;
    a2 += 1089;
    a3 += 1089;
    a4 += 1089;
    a5 += 1089;
    a6 = v27 + 1089;
  }

  while (v26 != 32);
  return result;
}

uint64_t ColorQuantization::vol(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = 1089 * a2[1];
  v4 = 33 * a2[3];
  v6 = a2[4];
  v5 = a2[5];
  v7 = 33 * a2[2];
  v8 = 1089 * *a2;
  return *(a3 + 8 * (v4 + v3 + v5)) + *(a3 + 8 * (v7 + v3 + v6)) - (*(a3 + 8 * (v4 + v3 + v6)) + *(a3 + 8 * (v7 + v3 + v5)) + *(a3 + 8 * (v4 + v8 + v5))) + *(a3 + 8 * (v4 + v8 + v6)) + *(a3 + 8 * (v7 + v8 + v5)) - *(a3 + 8 * (v7 + v8 + v6));
}

uint64_t ColorQuantization::bottom(uint64_t a1, _DWORD *a2, int a3, uint64_t a4)
{
  switch(a3)
  {
    case 0:
      v21 = a2[3];
      v20 = a2[4];
      v22 = v20 + 1089 * a2[1];
      v23 = a2[2];
      v16 = *(a4 + 8 * (v22 + v21 + 32 * v21));
      v24 = 1089 * *a2;
      v25 = *(a4 + 8 * (33 * v21 + v20 + v24));
      v19 = *(a4 + 8 * (v23 + v20 + 32 * v23 + v24));
      v10 = *(a4 + 8 * (v22 + v23 + 32 * v23)) + v25;
      goto LABEL_7;
    case 1:
      v12 = 33 * a2[2];
      v13 = v12 + 1089 * a2[1];
      v15 = a2[4];
      v14 = a2[5];
      v16 = *(a4 + 8 * (v13 + v14));
      v17 = v12 + 1089 * *a2;
      v18 = *(a4 + 8 * (v17 + v14));
      v19 = *(a4 + 8 * (v17 + v15));
      v10 = *(a4 + 8 * (v13 + v15)) + v18;
LABEL_7:
      v11 = v16 + v19;
      return v10 - v11;
    case 2:
      v4 = 1089 * *a2;
      v5 = a2[3] + v4 + 32 * a2[3];
      v7 = a2[4];
      v6 = a2[5];
      v8 = *(a4 + 8 * (v5 + v6));
      v9 = a2[2] + v4 + 32 * a2[2];
      v10 = *(a4 + 8 * (v5 + v7)) + *(a4 + 8 * (v9 + v6));
      v11 = v8 + *(a4 + 8 * (v9 + v7));
      return v10 - v11;
  }

  return 0;
}

uint64_t ColorQuantization::top(uint64_t a1, _DWORD *a2, int a3, int a4, uint64_t a5)
{
  switch(a3)
  {
    case 0:
      v20 = a4 + 1089 * a2[1];
      v22 = a2[2];
      v21 = a2[3];
      v8 = *(a5 + 8 * (v20 + v21 + 32 * v21));
      v9 = *(a5 + 8 * (v20 + v22 + 32 * v22));
      v23 = 1089 * *a2;
      v11 = *(a5 + 8 * (v21 + a4 + 32 * v21 + v23));
      v12 = v22 + a4 + 32 * v22 + v23;
      goto LABEL_7;
    case 1:
      v13 = 33 * a4 + 1089 * a2[1];
      v15 = a2[4];
      v14 = a2[5];
      v16 = 33 * a4 + 1089 * *a2;
      v17 = *(a5 + 8 * (v16 + v14));
      v18 = *(a5 + 8 * (v16 + v15));
      v19 = *(a5 + 8 * (v13 + v14)) - (*(a5 + 8 * (v13 + v15)) + v17);
      return v19 + v18;
    case 2:
      v5 = a2[3] + 1089 * a4 + 32 * a2[3];
      v7 = a2[4];
      v6 = a2[5];
      v8 = *(a5 + 8 * (v5 + v6));
      v9 = *(a5 + 8 * (v5 + v7));
      v10 = a2[2] + 1089 * a4 + 32 * a2[2];
      v11 = *(a5 + 8 * (v10 + v6));
      v12 = v10 + v7;
LABEL_7:
      v18 = *(a5 + 8 * v12);
      v19 = v8 - (v9 + v11);
      return v19 + v18;
  }

  return 0;
}

double ColorQuantization::variance(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = ColorQuantization::vol(a1, a2, a3[2]);
  v7 = v6;
  v8 = ColorQuantization::vol(v6, a2, a3[3]);
  v9 = v8;
  v10 = ColorQuantization::vol(v8, a2, a3[4]);
  v11 = 1089 * a2[1];
  v12 = 33 * a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = 33 * a2[2];
  v16 = 1089 * *a2;
  v17 = *(v5 + 8 * (v12 + v11 + v13)) - *(v5 + 8 * (v12 + v11 + v14)) - *(v5 + 8 * (v15 + v11 + v13)) + *(v5 + 8 * (v15 + v11 + v14)) - *(v5 + 8 * (v12 + v16 + v13)) + *(v5 + 8 * (v12 + v16 + v14)) + *(v5 + 8 * (v15 + v16 + v13)) - *(v5 + 8 * (v15 + v16 + v14));
  return v17 - (v9 * v9 + v7 * v7 + v10 * v10) / ColorQuantization::vol(v10, a2, a3[1]);
}

double ColorQuantization::maximize(uint64_t a1, _DWORD *a2, int a3, int a4, int a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v32 = a11[2];
  v16 = ColorQuantization::bottom(a1, a2, a3, v32);
  v30 = a11[3];
  v31 = v16;
  v17 = ColorQuantization::bottom(v16, a2, a3, v30);
  v28 = a11[4];
  v29 = v17;
  v27 = ColorQuantization::bottom(v17, a2, a3, v28);
  v18 = a11[1];
  v19 = ColorQuantization::bottom(v27, a2, a3, v18);
  v26 = a6;
  *a6 = -1;
  v20 = 0.0;
  if (a4 < a5)
  {
    v21 = v19;
    do
    {
      v19 = ColorQuantization::top(v19, a2, a3, a4, v18);
      v22 = v19 + v21;
      if (v19 + v21)
      {
        if (a10 != v22)
        {
          v23 = ColorQuantization::top(v19, a2, a3, a4, v28);
          v24 = ColorQuantization::top(v23, a2, a3, a4, v30);
          v19 = ColorQuantization::top(v24, a2, a3, a4, v32);
          if (((v24 + v29) * (v24 + v29) + (v19 + v31) * (v19 + v31) + (v23 + v27) * (v23 + v27)) / v22 + ((a8 - (v24 + v29)) * (a8 - (v24 + v29)) + (a7 - (v19 + v31)) * (a7 - (v19 + v31)) + (a9 - (v23 + v27)) * (a9 - (v23 + v27))) / (a10 - v22) > v20)
          {
            *v26 = a4;
            v20 = ((v24 + v29) * (v24 + v29) + (v19 + v31) * (v19 + v31) + (v23 + v27) * (v23 + v27)) / v22 + ((a8 - (v24 + v29)) * (a8 - (v24 + v29)) + (a7 - (v19 + v31)) * (a7 - (v19 + v31)) + (a9 - (v23 + v27)) * (a9 - (v23 + v27))) / (a10 - v22);
          }
        }
      }

      ++a4;
    }

    while (a5 != a4);
  }

  return v20;
}

uint64_t ColorQuantization::cut(uint64_t a1, int *a2, _DWORD *a3, void *a4)
{
  v28 = 0;
  v27 = 0;
  v7 = ColorQuantization::vol(a1, a2, a4[2]);
  v8 = ColorQuantization::vol(v7, a2, a4[3]);
  v9 = ColorQuantization::vol(v8, a2, a4[4]);
  v10 = ColorQuantization::vol(v9, a2, a4[1]);
  v11 = *a2;
  v26 = a2[1];
  v12 = ColorQuantization::maximize(v10, a2, 2, *a2 + 1, v26, &v28 + 1, v7, v8, v9, v10, a4);
  v24 = a2[2];
  v25 = a2[3];
  v14 = ColorQuantization::maximize(v13, a2, 1, v24 + 1, v25, &v28, v7, v8, v9, v10, a4);
  v15 = a2[4];
  v16 = a2[5];
  v18 = ColorQuantization::maximize(v17, a2, 0, v15 + 1, v16, &v27, v7, v8, v9, v10, a4);
  if (v12 < v14 || v12 < v18)
  {
    v21 = v25;
    v22 = v26;
    a3[1] = v26;
    a3[3] = v25;
    a3[5] = v16;
    if (v14 < v12 || v14 < v18)
    {
      v15 = v27;
      a2[5] = v27;
      a3[4] = v15;
      *a3 = v11;
      v20 = v24;
      a3[2] = v24;
      v16 = a3[5];
    }

    else
    {
      v20 = v28;
      a2[3] = v28;
      a3[2] = v20;
      *a3 = v11;
      a3[4] = v15;
      v21 = a3[3];
    }

    goto LABEL_9;
  }

  v11 = HIDWORD(v28);
  if ((v28 & 0x8000000000000000) == 0)
  {
    a3[5] = v16;
    *&v19 = __PAIR64__(v24, v26);
    v20 = v24;
    v21 = v25;
    *(&v19 + 1) = __PAIR64__(v15, v25);
    *a3 = v11;
    *(a3 + 1) = v19;
    a2[1] = v11;
    v22 = a3[1];
LABEL_9:
    a2[6] = (a2[3] - a2[2]) * (a2[1] - *a2) * (a2[5] - a2[4]);
    a3[6] = (v21 - v20) * (v22 - v11) * (v16 - v15);
    return 1;
  }

  return 0;
}

void ColorQuantization::mark(uint64_t a1, int *a2, char a3, uint64_t a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 < v5)
  {
    v6 = a2[3];
    v7 = 1089 * v4 + 1122;
    do
    {
      v8 = a2[2];
      if (v8 < v6)
      {
        LODWORD(v9) = a2[5];
        v10 = v7 + 33 * v8;
        do
        {
          v11 = a2[4];
          if (v11 < v9)
          {
            do
            {
              *(a4 + 1 + v10 + v11) = a3;
              v9 = a2[5];
              ++v11;
            }

            while (v11 < v9);
            v6 = a2[3];
          }

          ++v8;
          v10 += 33;
        }

        while (v8 < v6);
        v5 = a2[1];
      }

      ++v4;
      v7 += 1089;
    }

    while (v4 < v5);
  }
}

uint64_t ColorQuantization::lookupColorNode(uint64_t a1, unsigned __int8 *a2, unsigned int a3, unsigned __int8 a4, unsigned int a5, int a6)
{
  while (1)
  {
    v6 = *&a2[8 * ((a3 >> 5) & 4 | (a4 >> 6) & 0xFE | (a5 >> 7) & 1)];
    if (!v6)
    {
      v7 = 0;
      do
      {
        v6 = *&a2[8 * v7];
        if (v7 > 6)
        {
          break;
        }

        ++v7;
      }

      while (!v6);
    }

    if (a6 == 8)
    {
      break;
    }

    a3 *= 2;
    a4 *= 2;
    ++a6;
    a2 = v6;
    a5 *= 2;
  }

  return *v6;
}

void ColorQuantization::freeColorNodes(uint64_t a1, uint64_t a2, int a3)
{
  for (i = 0; i != 64; i += 8)
  {
    v7 = *(a2 + i);
    if (v7)
    {
      if (a3 <= 7)
      {
        ColorQuantization::freeColorNodes(a1);
        v7 = *(a2 + i);
      }

      free(v7);
    }
  }
}

unsigned __int8 *ColorQuantization::sortColorMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  while (1)
  {
    v5 = a5;
    v6 = a4;
    v7 = a3;
    v8 = a2;
    if (a5 - a4 == 1)
    {
      break;
    }

    v16 = a1;
    v17 = (a5 + a4) / 2;
    v18 = (a2 + 3 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = (a2 + 3 * a4);
    v23 = *v22;
    v18[2] = *(v22 + 2);
    *v18 = v23;
    *v22 = v19;
    *(v22 + 1) = v20;
    *(v22 + 2) = v21;
    v24 = *(a3 + v17);
    *(a3 + v17) = *(a3 + a4);
    *(a3 + a4) = v24;
    v25 = a4 + 1;
    v26 = a5;
    while (1)
    {
      if (v25 <= v26)
      {
        v27 = v26;
        v28 = v26 + 1;
        v29 = v26 - v25 + 1;
        v30 = (v8 + 2 + 3 * v25);
        while (1)
        {
          v31 = *(v30 - 1);
          if (v31 > v20)
          {
            break;
          }

          if (v31 >= v20)
          {
            v32 = *(v30 - 2);
            if (v32 > v19 || v32 >= v19 && *v30 > v21)
            {
              break;
            }
          }

          ++v25;
          v30 += 3;
          if (!--v29)
          {
            v25 = v28;
            break;
          }
        }
      }

      else
      {
        v27 = v26;
      }

      v33 = 0;
      result = (v8 + 1 + 3 * v27);
      v34 = -1;
      v35 = v7;
      while (1)
      {
        v36 = *result;
        if (v36 <= v20)
        {
          if (v36 < v20)
          {
            break;
          }

          v37 = *(result - 1);
          if (v37 <= v19 && (v37 < v19 || result[1] <= v21))
          {
            break;
          }
        }

        --v35;
        --v33;
        --v34;
        result -= 3;
      }

      v26 = v27 + v33;
      if (v25 >= v27 + v33)
      {
        break;
      }

      v38 = result - 1;
      v39 = (v8 + 3 * v25);
      v40 = *v39;
      v41 = *(v39 + 2);
      v42 = v38[2];
      *v39 = *v38;
      *(v39 + 2) = v42;
      *v38 = v40;
      v38[2] = v41;
      LOBYTE(v38) = *(v7 + v25);
      *(v7 + v25) = *(v35 + v27);
      *(v35 + v27) = v38;
    }

    v43 = *(result - 1);
    *(v22 + 2) = result[1];
    *v22 = v43;
    *(result - 1) = v19;
    *result = v20;
    result[1] = v21;
    *(v7 + v6) = *(v35 + v27);
    *(v35 + v27) = v24;
    if (v27 + v34 > v6)
    {
      result = ColorQuantization::sortColorMap(v16, v8, v7, v6);
    }

    a4 = v27 + v33 + 1;
    if (a4 >= v5)
    {
      return result;
    }

    a1 = v16;
    a2 = v8;
    a3 = v7;
    a5 = v5;
  }

  v9 = (a2 + 3 * a4);
  v10 = (a2 + 3 * a5);
  result = RGBColorType::compare(v9, v10);
  if (result >= 1)
  {
    v12 = *v9;
    v13 = v9[2];
    v14 = v10[2];
    *v9 = *v10;
    v9[2] = v14;
    *v10 = v12;
    v10[2] = v13;
    v15 = *(v7 + v6);
    *(v7 + v6) = *(v7 + v5);
    *(v7 + v5) = v15;
  }

  return result;
}

void ColorQuantization::quantizeBufferWithCustomColors(uint64_t a1, int a2, int a3, uint64_t a4, unsigned __int8 *a5, _BYTE *a6, unsigned __int8 *a7, _BYTE *a8, uint64_t a9)
{
  v15 = a1;
  memset(v21, 0, sizeof(v21));
  if (a4 >= 1)
  {
    ColorQuantization::quantizeBufferWithCustomColors(a4, a9, v21);
  }

  for (i = a3 * a2; i; --i)
  {
    v18 = *a5++;
    v17 = v18;
    LOBYTE(v18) = *a6++;
    v19 = v18;
    v20 = *a7++;
    a1 = ColorQuantization::lookupColorNode(a1, v21, v17, v19, v20, 1);
    *a8++ = a1;
  }

  ColorQuantization::freeColorNodes(v15, v21, 1);
}

uint64_t ColorQuantization::generateFromRGBImageWu(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = v10;
  v98 = v12;
  v13 = v9;
  v15 = v14;
  v17 = v16;
  v119 = *MEMORY[0x1E69E9840];
  v19 = v14[1];
  v18 = v14[2];
  v111 = 0;
  memset(v115, 0, sizeof(v115));
  memset(v114, 0, sizeof(v114));
  memset(v113, 0, sizeof(v113));
  v97 = v20;
  if ((v9 - 1) > 3)
  {
    v96 = 0;
    v21 = 256;
  }

  else
  {
    v96 = qword_186208950[v9 - 1];
    v21 = 255;
  }

  v99 = v21;
  LOWORD(v111) = v21;
  bzero(&v116, 0x1C00uLL);
  bzero(v112, 0x800uLL);
  v22 = (v19 * v18);
  v110 = v22;
  v104 = malloc_type_calloc(0x8C61uLL, 8uLL, 0x100004000313F17uLL);
  v23 = malloc_type_calloc(0x8C61uLL, 8uLL, 0x100004000313F17uLL);
  v105 = v23;
  v102 = malloc_type_calloc(0x8C61uLL, 8uLL, 0x100004000313F17uLL);
  v106 = v102;
  v101 = malloc_type_calloc(0x8C61uLL, 8uLL, 0x100004000313F17uLL);
  v107 = v101;
  v100 = malloc_type_calloc(0x8C61uLL, 8uLL, 0x100004000313F17uLL);
  v108 = v100;
  v24 = malloc_type_calloc(2uLL, v22, 0x1000040BDFB0063uLL);
  v25 = v104;
  v109 = v24;
  if (!v104 || !v23 || !v102 || !v101 || !v100)
  {
LABEL_99:
    v90 = 1;
    if (!v25)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  v26 = v24;
  if (v24)
  {
    v95 = v19;
    v94 = v15;
    v27 = v13;
    v28 = v104;
    v29 = ColorQuantization::hist3d(v24, v23, v102, v101, v100, v104, v15, v27, &v104);
    v103 = v23;
    v30 = ColorQuantization::m3d(v29, v23, v102, v101, v100, v28);
    v31 = 0;
    v116 = xmmword_186208890;
    v117 = 0x2000000000;
    v32 = 1;
    while (1)
    {
      v30 = ColorQuantization::cut(v30, &v116 + 7 * v31, &v116 + 7 * v32, &v104);
      if (v30)
      {
        v33 = 0.0;
        v34 = 0.0;
        if (v118[7 * v31] >= 2)
        {
          v34 = ColorQuantization::variance(v30, &v116 + 7 * v31, &v104);
        }

        v112[v31] = v34;
        if (v118[7 * v32] >= 2)
        {
          v33 = ColorQuantization::variance(v30, &v116 + 7 * v32, &v104);
        }

        v112[v32] = v33;
      }

      else
      {
        v112[v31] = 0.0;
        --v32;
      }

      v35 = v112[0];
      if (v32 < 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = 0;
        v36 = v32;
        v37 = 1;
        do
        {
          if (v112[v37] > v35)
          {
            v31 = v37;
            v35 = v112[v37];
          }

          ++v37;
          --v36;
        }

        while (v36);
      }

      if (v35 <= 0.0)
      {
        break;
      }

      if (++v32 >= v99)
      {
        goto LABEL_29;
      }
    }

    LOWORD(v99) = v32 + 1;
    LOWORD(v111) = v32 + 1;
LABEL_29:
    free(v28);
    v104 = 0;
    v38 = malloc_type_calloc(0x8C61uLL, 1uLL, 0x100004077774924uLL);
    if (!v38)
    {
      v90 = 0;
      goto LABEL_101;
    }

    v39 = v38;
    if (v99)
    {
      v40 = 0;
      v41 = &v116;
      do
      {
        v42 = v39;
        ColorQuantization::mark(v38, v41, v40, v39);
        v38 = ColorQuantization::vol(v43, v41, v103);
        v44 = v38;
        if (v38)
        {
          v45 = ColorQuantization::vol(v38, v41, v102);
          v46 = v44;
          LODWORD(v44) = (v45 / v44 + 0.5);
          v47 = ColorQuantization::vol(v45, v41, v101);
          v48 = (v47 / v46 + 0.5);
          v38 = ColorQuantization::vol(v47, v41, v100);
          v49 = (v38 / v46 + 0.5);
        }

        else
        {
          LOBYTE(v49) = 0;
          LOBYTE(v48) = 0;
        }

        *(v113 + v40) = v49;
        *(v114 + v40) = v48;
        *(v115 + v40++) = v44;
        v41 += 7;
        v39 = v42;
      }

      while (v99 != v40);
    }

    if (v22)
    {
      v50 = v26;
      do
      {
        *v50 = v39[*v50];
        ++v50;
        --v22;
      }

      while (v22);
    }

    *a9 = 0;
    v51 = v99;
    if (v97)
    {
      *a9 = v99;
      v51 = v99 + 1;
      LOWORD(v111) = v99 + 1;
      v52 = *(v98 + 16) + 3 * (v99 + 1);
      *(v52 - 3) = 0;
      *(v52 - 1) = 0;
    }

    v53 = 1;
    v54 = v51 - 1;
    if (v51 != 1)
    {
      v53 = 0;
      do
      {
        ++v53;
        v55 = v54 > 1;
        v54 >>= 1;
      }

      while (v55);
    }

    *v98 = 1 << v53;
    *(v98 + 4) = v53;
    if (v99)
    {
      v56 = *(v98 + 16);
      v57 = v99;
      v58 = v113;
      v59 = v114;
      v60 = v115;
      do
      {
        v61 = *v60++;
        *v56 = v61;
        v62 = *v59++;
        v56[1] = v62;
        v63 = *v58++;
        v56[2] = v63;
        v56 += 3;
        --v57;
      }

      while (v57);
    }

    if (v95)
    {
      v64 = 0;
      v65 = v11;
      do
      {
        for (i = v18; i; --i)
        {
          v67 = *v26;
          v26 += 2;
          *v65++ = v67;
        }

        ++v64;
      }

      while (v64 != v95);
      if (v97)
      {
        v68 = 0;
        v69 = v11;
        do
        {
          if (v18)
          {
            v70 = (*v94 + v94[3] * v68 + v96);
            v71 = v18;
            do
            {
              if (*v70 <= 0x3Fu)
              {
                *v69 = *a9;
              }

              ++v69;
              v70 += 4;
              --v71;
            }

            while (v71);
          }

          ++v68;
        }

        while (v68 != v95);
      }
    }

    v72 = v111;
    if (v111)
    {
      v73 = 0;
      v74 = (v111 + 15) & 0x1FFF0;
      v75 = xmmword_186205E50;
      v76 = xmmword_186205E60;
      v77 = xmmword_186205E70;
      v78 = xmmword_186205E80;
      v79 = xmmword_186205E90;
      v80 = xmmword_186205EA0;
      v81 = xmmword_186205EB0;
      v82 = vdupq_n_s64(v111 - 1);
      v83 = xmmword_186205EC0;
      v84 = vdupq_n_s64(0x10uLL);
      do
      {
        v85 = vmovn_s64(vcgeq_u64(v82, v83));
        if (vuzp1_s8(vuzp1_s16(v85, *v75.i8), *v75.i8).u8[0])
        {
          LOBYTE(v115[v73 / 0x10]) = v73;
        }

        if (vuzp1_s8(vuzp1_s16(v85, *&v75), *&v75).i8[1])
        {
          BYTE1(v115[v73 / 0x10]) = v73 | 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v75, vmovn_s64(vcgeq_u64(v82, *&v81))), *&v75).i8[2])
        {
          BYTE2(v115[v73 / 0x10]) = v73 | 2;
          BYTE3(v115[v73 / 0x10]) = v73 | 3;
        }

        v86 = vmovn_s64(vcgeq_u64(v82, v80));
        if (vuzp1_s8(*&v75, vuzp1_s16(v86, *&v75)).i32[1])
        {
          BYTE4(v115[v73 / 0x10]) = v73 | 4;
        }

        if (vuzp1_s8(*&v75, vuzp1_s16(v86, *&v75)).i8[5])
        {
          BYTE5(v115[v73 / 0x10]) = v73 | 5;
        }

        if (vuzp1_s8(*&v75, vuzp1_s16(*&v75, vmovn_s64(vcgeq_u64(v82, *&v79)))).i8[6])
        {
          BYTE6(v115[v73 / 0x10]) = v73 | 6;
          BYTE7(v115[v73 / 0x10]) = v73 | 7;
        }

        v87 = vmovn_s64(vcgeq_u64(v82, v78));
        if (vuzp1_s8(vuzp1_s16(v87, *v75.i8), *v75.i8).u8[0])
        {
          BYTE8(v115[v73 / 0x10]) = v73 | 8;
        }

        if (vuzp1_s8(vuzp1_s16(v87, *&v75), *&v75).i8[1])
        {
          BYTE9(v115[v73 / 0x10]) = v73 | 9;
        }

        if (vuzp1_s8(vuzp1_s16(*&v75, vmovn_s64(vcgeq_u64(v82, *&v77))), *&v75).i8[2])
        {
          BYTE10(v115[v73 / 0x10]) = v73 | 0xA;
          BYTE11(v115[v73 / 0x10]) = v73 | 0xB;
        }

        v88 = vmovn_s64(vcgeq_u64(v82, v76));
        if (vuzp1_s8(*&v75, vuzp1_s16(v88, *&v75)).i32[1])
        {
          BYTE12(v115[v73 / 0x10]) = v73 | 0xC;
        }

        if (vuzp1_s8(*&v75, vuzp1_s16(v88, *&v75)).i8[5])
        {
          BYTE13(v115[v73 / 0x10]) = v73 | 0xD;
        }

        if (vuzp1_s8(*&v75, vuzp1_s16(*&v75, vmovn_s64(vcgeq_u64(v82, *&v75)))).i8[6])
        {
          BYTE14(v115[v73 / 0x10]) = v73 | 0xE;
          HIBYTE(v115[v73 / 0x10]) = v73 | 0xF;
        }

        v80 = vaddq_s64(v80, v84);
        v73 += 16;
        v81 = vaddq_s64(v81, v84);
        v83 = vaddq_s64(v83, v84);
        v79 = vaddq_s64(v79, v84);
        v78 = vaddq_s64(v78, v84);
        v77 = vaddq_s64(v77, v84);
        v76 = vaddq_s64(v76, v84);
        v75 = vaddq_s64(v75, v84);
      }

      while (v74 != v73);
      ColorQuantization::sortColorMap(v17, *(v98 + 16), v115, 0, v99 - 1);
      if (v72)
      {
        for (j = 0; j != v72; ++j)
        {
          *(v114 + *(v115 + j)) = j;
        }
      }

      if (!v95)
      {
        goto LABEL_98;
      }
    }

    else
    {
      ColorQuantization::sortColorMap(v17, *(v98 + 16), v115, 0, v99 - 1);
      if (!v95)
      {
LABEL_98:
        free(v39);
        v25 = v104;
        goto LABEL_99;
      }
    }

    for (k = 0; k != v95; ++k)
    {
      for (m = v18; m; --m)
      {
        *v11 = *(v114 + *v11);
        ++v11;
      }
    }

    goto LABEL_98;
  }

  v90 = 0;
LABEL_100:
  free(v25);
LABEL_101:
  if (v105)
  {
    free(v105);
  }

  if (v106)
  {
    free(v106);
  }

  if (v107)
  {
    free(v107);
  }

  if (v108)
  {
    free(v108);
  }

  if (v109)
  {
    free(v109);
  }

  return v90;
}

BOOL ColorQuantization::generateFromIndexedImage(int a1, uint64_t a2, CGImage *a3, int a4, int a5, unsigned __int8 a6, CGColorSpaceRef space, uint64_t a8, _BYTE *a9, _DWORD *a10)
{
  if (a4 == 8)
  {
    v49 = a4;
    v14 = *(a2 + 16);
    v50 = *(a2 + 8);
    BaseColorSpace = CGColorSpaceGetBaseColorSpace(space);
    Model = CGColorSpaceGetModel(BaseColorSpace);
    if (Model == kCGColorSpaceModelRGB)
    {
      v17 = 3;
    }

    else
    {
      v17 = 1;
    }

    ColorTableCount = CGColorSpaceGetColorTableCount(space);
    v19 = malloc_type_calloc(ColorTableCount, v17, 0x100004077774924uLL);
    CGColorSpaceGetColorTable(space, v19);
    if (ColorTableCount >= 0x100)
    {
      v20 = 256;
    }

    else
    {
      v20 = ColorTableCount;
    }

    if (((ColorTableCount > 0xFF) & a6) != 0)
    {
      v21 = 255;
    }

    else
    {
      v21 = v20;
    }

    if (v21)
    {
      v22 = 0;
      v23 = 1;
      do
      {
        if (Model == kCGColorSpaceModelRGB)
        {
          v24 = *(a8 + 16);
          v25 = (v24 + v23);
          *(v25 - 1) = v19[v23 - 1];
          *v25 = v19[v23];
          v26 = &v19[3 * v22 + 2];
        }

        else
        {
          v26 = &v19[v22];
          v27 = v19[v22];
          v24 = *(a8 + 16);
          v28 = (v24 + v23);
          *(v28 - 1) = v27;
          *v28 = v27;
        }

        *(v24 + v23 + 1) = *v26;
        ++v22;
        v23 += 3;
      }

      while (v21 != v22);
      free(v19);
      v29 = (3 * v21 + *(a8 + 16) + 2);
      v30 = v21;
      do
      {
        if (*(v29 - 2))
        {
          break;
        }

        if (*(v29 - 1))
        {
          break;
        }

        if (*v29)
        {
          break;
        }

        v29 -= 3;
        --v30;
      }

      while (v30);
      v31 = v30 + 1;
    }

    else
    {
      free(v19);
      v31 = 1;
    }

    *a10 = 0;
    if (a6)
    {
      if (v31 >= v21)
      {
        v31 = v21;
      }

      *a10 = v31;
      v20 = v31 + 1;
      v32 = *(a8 + 16) + 3 * v31;
      *v32 = 0;
      *(v32 + 2) = 0;
    }

    v34 = 1;
    if (v20 != 1)
    {
      v34 = 0;
      v35 = v20 - 1;
      do
      {
        ++v34;
        v36 = v35 > 1;
        v35 >>= 1;
      }

      while (v36);
    }

    *a8 = 1 << v34;
    *(a8 + 4) = v34;
    CGImageGetDataProvider(a3);
    BytesPerRow = CGImageGetBytesPerRow(a3);
    v38 = malloc_type_malloc(BytesPerRow, 0x100004077774924uLL);
    if (a6)
    {
      if (v50)
      {
        v39 = 0;
        v40 = 0;
        while (1)
        {
          CGDataProviderGetBytesAtPosition();
          v41 = v38 + 1;
          v42 = v14;
          if (v14)
          {
            break;
          }

LABEL_42:
          putchar(10);
          if (++v39 == v50)
          {
            goto LABEL_49;
          }
        }

        while (1)
        {
          v43 = *(v41 - 1);
          *a9++ = v43;
          if (v40)
          {
            goto LABEL_40;
          }

          if ((*v41 & 0x80000000) == 0)
          {
            break;
          }

          v40 = 0;
LABEL_41:
          v41 += 2;
          if (!--v42)
          {
            goto LABEL_42;
          }
        }

        *a10 = v43;
LABEL_40:
        v40 = 1;
        goto LABEL_41;
      }
    }

    else if (v50)
    {
      for (i = 0; i != v50; ++i)
      {
        CGDataProviderGetBytesAtPosition();
        v45 = v14;
        for (j = v38; v45; --v45)
        {
          v47 = *j++;
          *a9++ = v47;
        }
      }
    }

LABEL_49:
    free(v38);
    a4 = v49;
  }

  return a4 == 8;
}

uint64_t ColorQuantization::generateFromRGBImage(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7, _BYTE *a8, int *a9)
{
  v13 = *(a2 + 24);
  v59 = *(a2 + 8);
  v62 = *(a2 + 16);
  v14 = v59 * v62;
  v15 = malloc_type_malloc(v14, 0x100004077774924uLL);
  v16 = malloc_type_malloc(v14, 0x100004077774924uLL);
  v17 = malloc_type_malloc(v14, 0x100004077774924uLL);
  if (a5)
  {
    v18 = malloc_type_malloc(v14, 0x100004077774924uLL);
  }

  else
  {
    v18 = 0;
  }

  v19 = 0;
  v58 = 0;
  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = a5;
  }

  if (v15)
  {
    v21 = v16 == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = v21 || v17 == 0;
  if (v22 || (v20 & 1) != 0)
  {
    goto LABEL_71;
  }

  v57 = v15;
  v24 = malloc_type_malloc(v13, 0x100004077774924uLL);
  if (v24)
  {
    IIOBitStream = IIOBitStream::CreateIIOBitStream(*a2, (*(a2 + 24) * *(a2 + 8)), "r", v23);
    if (IIOBitStream)
    {
      v58 = v24;
      v55 = v17;
      v56 = v18;
      v54 = v16;
      if (v59)
      {
        v26 = 0;
        v27 = (1 << (a3 - 1));
        v61 = v56;
        v28 = v16;
        v29 = v57;
        while (1)
        {
          v60 = v26;
          if (v62)
          {
            break;
          }

LABEL_45:
          v26 = v60 + 1;
          if (v60 + 1 == v59)
          {
            goto LABEL_46;
          }
        }

        v30 = 0;
        while (1)
        {
          LODWORD(v63) = 0;
          v66 = 0;
          v65 = 255;
          if (a4 <= 6 && ((1 << a4) & 0x54) != 0 && (*(*IIOBitStream + 24))(IIOBitStream, a3, &v65))
          {
            break;
          }

          if ((*(*IIOBitStream + 24))(IIOBitStream, a3, &v63) || (*(*IIOBitStream + 24))(IIOBitStream, a3, &v66 + 4) || (*(*IIOBitStream + 24))(IIOBitStream, a3, &v66) || ((a4 < 6) & a4) != 0 && (*(*IIOBitStream + 24))(IIOBitStream, a3, &v65))
          {
            break;
          }

          v31 = v65;
          if (a5 && v65 < v27)
          {
            v32 = 0;
            LODWORD(v63) = 0;
            v66 = 0;
          }

          else
          {
            v32 = v63;
          }

          if (a3 > 7)
          {
            HIDWORD(v66) = BYTE4(v66);
            v37 = v66;
          }

          else
          {
            v33 = a3;
            do
            {
              v32 |= (v32 << v33);
              v34 = v33 < 4;
              v33 *= 2;
            }

            while (v34);
            v35 = BYTE4(v66);
            v36 = a3;
            do
            {
              v35 |= (v35 << v36);
              v34 = v36 < 4;
              v36 *= 2;
            }

            while (v34);
            HIDWORD(v66) = v35;
            v37 = v66;
            v38 = a3;
            do
            {
              v37 |= (v37 << v38);
              v34 = v38 < 4;
              v38 *= 2;
            }

            while (v34);
          }

          LODWORD(v66) = v37;
          *v29++ = v32;
          *v28++ = BYTE4(v66);
          *v17++ = v66;
          if (a5)
          {
            *v61++ = v31 >= v27;
          }

          if (++v30 == v62)
          {
            goto LABEL_45;
          }
        }

        (*(*IIOBitStream + 8))(IIOBitStream);
        v19 = 0;
        v16 = v54;
        v17 = v55;
        v18 = v56;
        v15 = v57;
      }

      else
      {
LABEL_46:
        (*(*IIOBitStream + 8))(IIOBitStream);
        v39 = *a7;
        if (*a7 < 1)
        {
          v42 = 1 << a3;
          if (((a3 == 8) & a5) != 0)
          {
            v42 = 255;
          }

          v64 = v42;
          v15 = v57;
          v16 = v54;
          v17 = v55;
          v41 = a8;
          v18 = v56;
          if (_cg_GifQuantizeBuffer(v62, v59) != 1)
          {
            v19 = 0;
            goto LABEL_71;
          }
        }

        else
        {
          if (((v39 == 256) & a5) != 0)
          {
            v40 = 255;
          }

          else
          {
            v40 = v39;
          }

          v64 = v40;
          v63 = &unk_1EF4D4400;
          v15 = v57;
          v16 = v54;
          v17 = v55;
          v41 = a8;
          ColorQuantization::quantizeBufferWithCustomColors(&v63, v62, v59, v40, v57, v54, v55, a8, *(a7 + 16));
          v18 = v56;
        }

        *a9 = 0;
        v43 = v64;
        if (a5)
        {
          *a9 = v64;
          v64 = v43 + 1;
          v44 = *(a7 + 16);
          v45 = 3 * v43;
          *(v44 + v45 + 1) = 0;
          *(v45 + v44) = 0;
          if (v43)
          {
            v46 = 0;
            do
            {
              ++v46;
              v34 = v43 > 1;
              v43 >>= 1;
            }

            while (v34);
          }

          else
          {
            v46 = 1;
          }

          *a7 = 1 << v46;
          *(a7 + 4) = v46;
          v49 = v59 * v62;
          if (v59 * v62)
          {
            v50 = v18;
            do
            {
              if (!*v50)
              {
                *v41 = *a9;
              }

              ++v41;
              ++v50;
              --v49;
            }

            while (v49);
          }

          v19 = 1;
        }

        else
        {
          v47 = 1;
          v48 = v64 - 1;
          if (v64 != 1)
          {
            v47 = 0;
            do
            {
              ++v47;
              v34 = v48 > 1;
              v48 >>= 1;
            }

            while (v34);
          }

          v19 = 1;
          *a7 = 1 << v47;
          *(a7 + 4) = v47;
        }
      }

LABEL_71:
      v24 = v58;
      IIOBitStream = v19;
      if (!v15)
      {
        goto LABEL_73;
      }
    }
  }

  else
  {
    IIOBitStream = 0;
  }

  free(v15);
LABEL_73:
  if (v16)
  {
    free(v16);
  }

  if (v17)
  {
    free(v17);
  }

  if (v18)
  {
    free(v18);
  }

  if (v24)
  {
    free(v24);
  }

  return IIOBitStream;
}

size_t unixWarningHandler(const char *a1, const char *a2, va_list a3)
{
  v5 = MEMORY[0x1E69E9848];
  if (a1)
  {
    fprintf(*MEMORY[0x1E69E9848], "%s: ", a1);
  }

  fwrite("Warning, ", 9uLL, 1uLL, *v5);
  vfprintf(*v5, a2, a3);
  v6 = *v5;

  return fwrite(".\n", 2uLL, 1uLL, v6);
}

size_t unixErrorHandler(const char *a1, char *a2, va_list a3)
{
  v5 = MEMORY[0x1E69E9848];
  if (a1)
  {
    fprintf(*MEMORY[0x1E69E9848], "%s: ", a1);
  }

  vfprintf(*v5, a2, a3);
  v6 = *v5;

  return fwrite(".\n", 2uLL, 1uLL, v6);
}

void IIO_Reader_MPO::~IIO_Reader_MPO(IIO_Reader_MPO *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_MPO::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

IIOImageRead *IIO_Reader_MPO::createGlobalInfoData(IIO_Reader_MPO *this, IIOImageReadSession *a2)
{
  result = IIOImageReadSession::globalInfoForType(a2, *(this + 6));
  if (result)
  {

    return GlobalMPOInfo::createDataRepresentation(result);
  }

  return result;
}

uint64_t IIO_Reader_MPO::updateSourceProperties(IIO_Reader_MPO *this, IIOImageReadSession *a2, IIODictionary *a3, IIODictionary *a4, IIODictionary *a5, CGImageSourceStatus *a6)
{
  v8 = IIOImageReadSession::globalInfoForType(a2, *(this + 6));
  if (!v8)
  {
    v8 = ExamineMPOFile(a2);
    if (!v8)
    {
      return 4294967246;
    }
  }

  v9 = v8;
  IIONumber::IIONumber(v12, 1);
  IIODictionary::setObjectForKeyGroup(a3, v13, @"MPFormatVersion", @"{MPO}");
  IIONumber::~IIONumber(v12);
  EntryCount = GlobalMPOInfo::getEntryCount(v9);
  IIONumber::IIONumber(v12, EntryCount);
  IIODictionary::setObjectForKeyGroup(a3, v13, @"MPNumberOfImages", @"{MPO}");
  IIONumber::~IIONumber(v12);
  return 0;
}

void sub_185FC6C88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t IIO_Reader_MPO::getImageCount(IIO_Reader_MPO *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  v7 = IIOImageReadSession::globalInfoForType(a2, *(this + 6));
  if (!v7)
  {
    v7 = ExamineMPOFile(a2);
    if (!v7)
    {
      v8 = 4294967244;
      if (!a5)
      {
        return v8;
      }

      goto LABEL_4;
    }
  }

  LODWORD(v7) = GlobalMPOInfo::getEntryCount(v7);
  v8 = 0;
  if (a5)
  {
LABEL_4:
    *a5 = v7;
  }

  return v8;
}

BOOL IIO_Reader_MPO::compareOptions(IIO_Reader_MPO *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  memset(v11, 0, sizeof(v11));
  IIODictionary::IIODictionary(v11, a2);
  memset(v10, 0, sizeof(v10));
  IIODictionary::IIODictionary(v10, a3);
  Uint32ForKey = IIODictionary::getUint32ForKey(v11, @"kCGImageSourceSubsampleFactor");
  v5 = IIODictionary::getUint32ForKey(v10, @"kCGImageSourceSubsampleFactor");
  if (Uint32ForKey <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = Uint32ForKey;
  }

  if (v5 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  v8 = v6 == v7;
  IIODictionary::~IIODictionary(v10);
  IIODictionary::~IIODictionary(v11);
  return v8;
}

void sub_185FC6DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  IIODictionary::~IIODictionary(&a9);
  IIODictionary::~IIODictionary(&a12);
  _Unwind_Resume(a1);
}

uint64_t IIO_Reader_MPO::initThumbnail(uint64_t a1, uint64_t a2, unint64_t a3)
{
  Session = CGImagePluginGetSession(a2);
  Source = CGImageSourceGetSource(Session);
  v7 = IIOImageReadSession::globalInfoForType(Source, *(a1 + 24));
  if (v7)
  {
    v8 = v7;
    if (GlobalMPOInfo::getEntryCount(v7) > a3)
    {
      EntryAtIndex = GlobalMPOInfo::getEntryAtIndex(v8, a3);
      if (EntryAtIndex)
      {
        v10 = EntryAtIndex;
        v11 = _MPEntry::imageSize(EntryAtIndex);
        v12 = _MPEntry::imageOffset(v10);
        v13 = v12 ? IIOImageSource::cf(v8) + v12 : 0;
        v16 = 0;
        v14 = IIOImageReadSession::retainBytePointer(Source, &v16, 1);
        if (v14)
        {
          if ((v14 + v13 + v11) <= (IIOImageReadSession::getSize(Source) + v14))
          {
            operator new();
          }

          if (v16)
          {
            IIOImageReadSession::releaseBytePointer(Source, v16);
          }
        }
      }
    }
  }

  return 4294967245;
}

void add_points_to_path(CGPath *a1, const CGPoint *a2, unint64_t a3, int a4)
{
  if (a3)
  {
    CGPathMoveToPoint(a1, 0, a2[1].x, 1.0 - a2[1].y);
    if (a3 >= 3)
    {
      p_y = &a2[2].y;
      v9 = 2;
      do
      {
        if (3 - a3 + v9 == 2)
        {
          v10 = 0;
        }

        else
        {
          v10 = v9 + 1;
        }

        CGPathAddCurveToPoint(a1, 0, *(p_y - 1), 1.0 - *p_y, a2[v10].x, 1.0 - a2[v10].y, a2[(v9 + 2) % a3].x, 1.0 - a2[(v9 + 2) % a3].y);
        v9 += 3;
        p_y += 6;
      }

      while (v9 < a3);
    }

    if (a4)
    {

      CGPathCloseSubpath(a1);
    }
  }
}

double read_point(unsigned __int8 *a1, unint64_t *a2)
{
  result = vcvts_n_f32_s32(bswap32(*&a1[*a2 + 4]), 0x18uLL);
  *a2 += 8;
  return result;
}

void *KTXReadPlugin::KTXReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  result = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *result = &unk_1EF4D4568;
  return result;
}

void KTXReadPlugin::~KTXReadPlugin(KTXReadPlugin *this)
{
  IIOReadPlugin::~IIOReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t KTXReadPlugin::loadDataFromXPCObject(KTXReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_ktx", &length);
    if (length == 80)
    {
      v6 = data;
      result = 0;
      *(this + 29) = *v6;
      v7 = v6[1];
      v8 = v6[2];
      v9 = v6[4];
      *(this + 32) = v6[3];
      *(this + 33) = v9;
      *(this + 30) = v7;
      *(this + 31) = v8;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t KTXReadPlugin::saveDataToXPCObject(KTXReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_ktx", this + 464, 0x50uLL);
  }

  return v4;
}

uint64_t KTXReadPlugin::initialize(IIOImageReadSession **this, IIODictionary *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  __dst = 0u;
  v35 = 0u;
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  IIOScanner::IIOScanner(v32, this[3]);
  if (*(this + 369) != 1 || IIOScanner::getBytesAtOffset(v32, &__dst, 0, 0x40uLL) != 64)
  {
    goto LABEL_87;
  }

  SwapKTXHeader(&__dst);
  v3 = __dst.i32[3] == 67305985;
  *(this + 372) = __dst.i32[3] == 67305985;
  IIOScanner::setEndianness(v32, v3);
  *(this + 167) = 0;
  v4 = IIODictionary::containsKey(this[6], @"kCGImageSourceMipmapLevel");
  v5 = this[6];
  if (v4)
  {
    LOWORD(Uint32ForKey) = IIODictionary::getUint32ForKey(v5, @"kCGImageSourceMipmapLevel");
LABEL_8:
    *(this + 167) = Uint32ForKey;
    goto LABEL_10;
  }

  if (IIODictionary::containsKey(v5, @"kCGImageSourceSubsampleFactor"))
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(this[6], @"kCGImageSourceSubsampleFactor");
    if (Uint32ForKey)
    {
      Uint32ForKey = log2(Uint32ForKey);
    }

    goto LABEL_8;
  }

  LOWORD(Uint32ForKey) = *(this + 167);
LABEL_10:
  if (DWORD2(v37) <= Uint32ForKey)
  {
    if (DWORD2(v37))
    {
      v7 = WORD4(v37) - 1;
    }

    else
    {
      v7 = 0;
    }

    *(this + 167) = v7;
  }

  else
  {
    LOBYTE(v7) = Uint32ForKey;
  }

  v8 = v35;
  v9 = DWORD1(v36) >> v7;
  v10 = DWORD2(v36) >> v7;
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v10 = 1;
  }

  *(this + 61) = v9;
  *(this + 62) = v10;
  if (v8 <= 5125)
  {
    if (v8 == 5123)
    {
      v12 = 16;
LABEL_29:
      *(this + 128) = v12;
      goto LABEL_32;
    }

LABEL_28:
    v12 = 8;
    goto LABEL_29;
  }

  if (v8 == 5126)
  {
    *(this + 373) = 1;
    v13 = 32;
  }

  else
  {
    if (v8 != 5131)
    {
      goto LABEL_28;
    }

    *(this + 373) = 1;
    v13 = 16;
  }

  *(this + 128) = v13;
  *(this + 265) = 1;
LABEL_32:
  if (SDWORD2(v35) <= 6408)
  {
    if (SDWORD2(v35) <= 6406)
    {
      if ((DWORD2(v35) - 6403) < 3)
      {
        *(this + 85) = 1196573017;
        *(this + 262) = 0;
        if (v8 == 5131 || v8 == 5126)
        {
          *(this + 265) = 1;
          v14 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0E0]);
        }

        else
        {
          v14 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
        }

        this[20] = v14;
        goto LABEL_62;
      }

      if (!DWORD2(v35))
      {
        if (SHIDWORD(v35) <= 37491)
        {
          if (SHIDWORD(v35) > 37488)
          {
            if (HIDWORD(v35) == 37489)
            {
              _cg_jpeg_mem_term("initialize", 265, "SIGNED_R11_EAC [0x%04X] not handled\n");
            }

            else if (HIDWORD(v35) == 37490)
            {
              _cg_jpeg_mem_term("initialize", 268, "RG11_EAC [0x%04X] not handled\n");
            }

            else
            {
              _cg_jpeg_mem_term("initialize", 271, "SIGNED_RG11_EAC [0x%04X] not handled\n");
            }

            goto LABEL_87;
          }

          if (HIDWORD(v35) == 36196)
          {
            _cg_jpeg_mem_term("initialize", 293, "GL_ETC1_RGB8_OES [0x%04X] not handled\n");
            goto LABEL_87;
          }

          if (HIDWORD(v35) == 37488)
          {
            _cg_jpeg_mem_term("initialize", 262, "R11_EAC [0x%04X] not handled\n");
            goto LABEL_87;
          }
        }

        else
        {
          if (SHIDWORD(v35) <= 37494)
          {
            if (HIDWORD(v35) == 37492)
            {
              _cg_jpeg_mem_term("initialize", 274, "RGB8_ETC2 [0x%04X] not handled\n");
            }

            else if (HIDWORD(v35) == 37493)
            {
              _cg_jpeg_mem_term("initialize", 277, "SRGB8_ETC2 [0x%04X] not handled\n");
            }

            else
            {
              _cg_jpeg_mem_term("initialize", 280, "RGB8_PUNCHTHROUGH_ALPHA1_ETC2 [0x%04X] not handled\n");
            }

            goto LABEL_87;
          }

          switch(HIDWORD(v35))
          {
            case 0x9277:
              _cg_jpeg_mem_term("initialize", 283, "SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 [0x%04X] not handled\n");
              goto LABEL_87;
            case 0x9278:
              _cg_jpeg_mem_term("initialize", 286, "RGBA8_ETC2_EAC [0x%04X] not handled\n");
              goto LABEL_87;
            case 0x9279:
              _cg_jpeg_mem_term("initialize", 289, "SRGB8_ALPHA8_ETC2_EAC [0x%04X] not handled\n");
              goto LABEL_87;
          }
        }

        _cg_jpeg_mem_term("initialize", 297, "KTX compressed texture [0x%04X] not handled\n");
        goto LABEL_87;
      }

LABEL_67:
      _cg_jpeg_mem_term("initialize", 304, "*** ERROR: KTX ktxHeader.glFormat [0x%04X] not handled\n", DWORD2(v35));
      v17 = 0;
      v18 = 0;
      goto LABEL_63;
    }

    if (DWORD2(v35) == 6407)
    {
      v19 = MEMORY[0x1E695F108];
      if (!*(this + 373))
      {
        v19 = MEMORY[0x1E695F1C0];
      }

      this[20] = CGColorSpaceCreateWithName(*v19);
      *(this + 85) = 1380401696;
      *(this + 262) = 5;
      v17 = 4;
      v18 = 3;
      goto LABEL_63;
    }

    v15 = 6408;
LABEL_43:
    if (DWORD2(v35) == v15)
    {
      v16 = MEMORY[0x1E695F108];
      if (!*(this + 373))
      {
        v16 = MEMORY[0x1E695F1C0];
      }

      this[20] = CGColorSpaceCreateWithName(*v16);
      *(this + 85) = 1380401696;
      *(this + 262) = 3;
      v17 = 4;
      v18 = 4;
      goto LABEL_63;
    }

    goto LABEL_67;
  }

  if (SDWORD2(v35) > 36243)
  {
    if ((DWORD2(v35) - 36244) >= 3)
    {
      v15 = 36249;
      goto LABEL_43;
    }

LABEL_50:
    this[20] = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
    *(this + 85) = 1196573017;
    *(this + 262) = 0;
LABEL_62:
    v18 = 1;
    v17 = 1;
LABEL_63:
    v20 = *(this + 61);
    v21 = *(this + 62);
    if (v20 * v17 * v21 <= IIOImageReadSession::getSize(this[3]))
    {
      goto LABEL_64;
    }

    v29 = *(this + 61);
    v30 = *(this + 62);
    Size = IIOImageReadSession::getSize(this[3]);
    _cg_jpeg_mem_term("initialize", 388, "*** bad KTX: [%ldx%ld] fileSize: %d\n", v29, v30, Size);
LABEL_87:
    kdebug_trace();
    v27 = 4294967246;
    goto LABEL_88;
  }

  if (DWORD2(v35) == 6409)
  {
    goto LABEL_50;
  }

  if (DWORD2(v35) != 33319)
  {
    goto LABEL_67;
  }

  this[20] = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  *(this + 85) = 1380401696;
  *(this + 262) = 5;
  v17 = 4;
  v18 = 2;
LABEL_64:
  v22 = *(this + 128);
  *(this + 129) = v22 * v17;
  *(this + 130) = v17;
  *(this + 374) = 0;
  v23 = v35;
  *(this + 29) = __dst;
  *(this + 30) = v23;
  v24 = v37;
  *(this + 31) = v36;
  *(this + 32) = v24;
  v25 = *(this + 61) * v17;
  if ((v25 & 0xFFFFFFFF00000000) != 0)
  {
    goto LABEL_87;
  }

  v26 = v25 * (v22 >> 3);
  if ((v26 & 0xFFFFFFFF00000000) != 0)
  {
    goto LABEL_87;
  }

  v27 = 0;
  *(this + 63) = v26;
  this[66] = v18;
  this[67] = v17;
  *(this + 204) = 1;
LABEL_88:
  IIOScanner::~IIOScanner(v32);
  return v27;
}

void sub_185FC79D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  IIOScanner::~IIOScanner(va);
  _Unwind_Resume(a1);
}

uint64_t KTXReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
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

unint64_t KTXReadPlugin::calculateOffsetToRequestedImage(KTXReadPlugin *this, unint64_t a2)
{
  v4 = *(this + 167);
  v9 = 0;
  v5 = *(this + 128);
  if (v4)
  {
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = *(this + 129);
    }

    do
    {
      IIOImageReadSession::seek(*(this + 3), a2, 0);
      IIOImageReadSession::getBytes(*(this + 3), &v9, 4);
      a2 += v9 * v6 + 4;
      --v4;
    }

    while (v4);
  }

  IIOImageReadSession::seek(*(this + 3), a2, 0);
  IIOImageReadSession::getBytes(*(this + 3), &v9, 4);
  v7 = v9;
  if (v5)
  {
    v7 = v9 / v5;
  }

  return a2 + (*(this + 56) * v7) + 4;
}

void ___ZN14IIOImageSource14extractOptionsEP13IIODictionary_block_invoke(uint64_t a1, const __CFString *value)
{
  if (CFArrayContainsValue(*(a1 + 32), *(a1 + 40), value) || CFStringCompare(value, @"com.adobe.pdf", 0) == kCFCompareEqualTo)
  {
    v4 = *(a1 + 56);

    CFSetAddValue(v4, value);
  }
}

void IIOImageSource::updateAllowedFlags(IIOImageSource *this, CFSetRef theSet)
{
  *(this + 16) = CFSetGetCount(theSet);
  Count = CFSetGetCount(theSet);
  v5 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  CFSetGetValues(theSet, v5);
  *(this + 9) = 0;
  *(this + 10) = 0;
  v6 = this + 72;
  if (Count)
  {
    v7 = v5;
    do
    {
      v8 = *v7;
      v9 = IIOGetIndexForType(*v7);
      if (v9 <= 0x7F)
      {
        v10 = v9 - 64;
        if (v9 < 0x40)
        {
          v10 = v9;
        }

        *&v6[8 * (v9 > 0x3F)] |= 1 << v10;
      }

      if (CFStringCompare(v8, @"public.jpeg", 0) == kCFCompareEqualTo)
      {
        v11 = IIOGetIndexForOSType(1212829767);
        if (v11 <= 0x7F)
        {
          v12 = v11 - 64;
          if (v11 < 0x40)
          {
            v12 = v11;
          }

          *&v6[8 * (v11 > 0x3F)] |= 1 << v12;
        }
      }

      ++v7;
      --Count;
    }

    while (Count);
  }

  free(v5);
}

void IIOImageSource::IIOImageSource(IIOImageSource *this, IIODictionary *a2)
{
  *this = &unk_1EF4D46B0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  IIOImageSource::setup(this, 6);
  if (a2)
  {
    *(this + 104) = IIOImageSource::extractOptions(this, a2);
  }
}

void sub_185FC7D30(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 208) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 152) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void IIOImageSource::removeImageFromSet(uint64_t a1, IIOImagePlus **a2, const void *a3)
{
  ImageProvider = IIOImagePlus::getImageProvider(a2[3]);
  Count = CFSetGetCount(*(a1 + 184));
  v8 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
  if (v8)
  {
    v9 = v8;
    CFSetGetValues(*(a1 + 184), v8);
    if (Count >= 1)
    {
      v10 = v9;
      while (*v10 != a3)
      {
        ++v10;
        if (!--Count)
        {
          goto LABEL_15;
        }
      }

      v11 = *MEMORY[0x1E695E738];
      if (ImageProvider && ImageProvider != v11)
      {
        CFRetain(ImageProvider);
      }

      if (a2 && v11 != a2)
      {
        CFRetain(a2);
      }

      CFSetRemoveValue(*(a1 + 184), *v10);
    }

LABEL_15:

    free(v9);
  }
}

const void **IIOImageSource::getAllImagePlusValues(CFArrayRef *this, uint64_t *a2)
{
  Count = CFArrayGetCount(this[21]);
  v5 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
  if (v5)
  {
    v7.location = 0;
    v7.length = Count;
    CFArrayGetValues(this[21], v7, v5);
  }

  *a2 = Count;
  return v5;
}

const char *IIOImageSource::updateDataProvider(IIOImageSource *this, CGDataProvider *a2, CGDataProvider *a3)
{
  Source = CGImageSourceGetSource(*(this + 2));
  if (a3)
  {
    IIOImageSource::resetProperties(this, 1);
  }

  if (Source && IIOImageRead::isFinal(Source))
  {

    return LogError("updateDataProvider", 911, "*** ERROR: image source was already finalized\n");
  }

  else
  {
    if ((gIIODebugFlags & 0x10000000) != 0)
    {
      v8 = CGDataProviderCopyData(a2);
      if (v8)
      {
        v9 = v8;
        if (a3)
        {
          v10 = "imageDataProviderProg-final";
        }

        else
        {
          v10 = "imageDataProviderProg-part";
        }

        ImageIO_saveImageData(v10, v9);
        CFRelease(v9);
      }
    }

    if (Source)
    {
      result = IIOImageRead::updateDataProvider(Source, a2, a3);
    }

    else
    {
      result = CGImageReadCreateWithProvider(*(this + 1), a2, a3);
      *(this + 2) = result;
    }

    if ((gIIODebugFlags & 0x2000000000) != 0)
    {
      v11 = "NO ";
      if (a3)
      {
        v11 = "YES";
      }

      result = ImageIOLog("    %s - isr=%p  provider=%p   final=%s\n", "updateDataProvider", *(this + 1), a2, v11);
    }

    *(this + 16) = 256;
    if (a3)
    {
      pthread_mutex_lock((this + 352));
      *(this + 28) = 0;

      return pthread_mutex_unlock((this + 352));
    }
  }

  return result;
}

uint64_t IIOImageSource::resetProperties(IIOImageSource *this, int a2)
{
  Source = CGImageSourceGetSource(*(this + 2));
  if (Source)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    IIOImageRead::releaseGlobalInfoPtr(Source);
  }

  pthread_mutex_lock((this + 288));
  v6 = *(this + 15);
  if (v6)
  {
    (*(*v6 + 8))(v6);
    *(this + 15) = 0;
  }

  return pthread_mutex_unlock((this + 288));
}

uint64_t IIOImageSource::setStatus(IIOImageSource *this, CGImageSourceStatus a2)
{
  pthread_mutex_lock((this + 352));
  *(this + 28) = a2;

  return pthread_mutex_unlock((this + 352));
}

const char *IIOImageSource::updateData(IIOImageSource *this, const __CFData *a2, __CFData *a3)
{
  Source = CGImageSourceGetSource(*(this + 2));
  if (a3)
  {
    IIOImageSource::resetProperties(this, 1);
  }

  if (Source && IIOImageRead::isFinal(Source))
  {

    return LogError("updateData", 960, "*** ERROR: image source was already finalized\n");
  }

  if ((gIIODebugFlags & 0x10000000) != 0)
  {
    if (a3)
    {
      v8 = "imageDataProg-final";
    }

    else
    {
      v8 = "imageDataProg-part";
    }

    ImageIO_saveImageData(v8, a2);
  }

  if (Source)
  {
    v9 = *(this + 5);
    result = CFDataGetLength(a2);
    if (v9 > result)
    {
      goto LABEL_24;
    }

    *(this + 5) = CFDataGetLength(a2);
    result = IIOImageRead::updateData(Source, a2, a3);
    if ((gIIODebugFlags & 0x2000000000) != 0)
    {
      if (a2)
      {
        CFDataGetLength(a2);
      }

      result = ImageIOLog("    %s - update - isr=%p  rref=%p  data=%p  size=%8ld  final=%s\n");
    }
  }

  else
  {
    *(this + 5) = CFDataGetLength(a2);
    result = CGImageReadCreateWithData(*(this + 1), a2, a3);
    *(this + 2) = result;
    if ((gIIODebugFlags & 0x2000000000) != 0)
    {
      if (a2)
      {
        CFDataGetLength(a2);
      }

      result = ImageIOLog("    %s - new    - isr=%p  rref=%p  data=%p  size=%8ld  final=%s\n");
    }
  }

  *(this + 16) = 256;
LABEL_24:
  if (a3)
  {
    pthread_mutex_lock((this + 352));
    *(this + 28) = 0;

    return pthread_mutex_unlock((this + 352));
  }

  return result;
}

uint64_t IIOImageSource::updateReader(uint64_t this, IIO_Reader *a2)
{
  if (a2)
  {
    if (*(this + 104))
    {
      *(this + 104) = a2;
    }
  }

  return this;
}

uint64_t IIOImageSource::canAnimate(IIO_Reader **this)
{
  if (!IIOImageSource::bindToReader(this))
  {
    return 4294967292;
  }

  v2 = IIO_Reader::utType(this[13]);
  if (!v2)
  {
    return 4294967292;
  }

  v3 = v2;
  if (CFStringCompare(v2, @"com.compuserve.gif", 0) && CFStringCompare(v3, @"public.png", 0) && CFStringCompare(v3, @"public.heics", 0) && CFStringCompare(v3, @"public.avis", 0) && CFStringCompare(v3, @"org.webmproject.webp", 0) && CFStringCompare(v3, @"public.jpeg-xl", 0))
  {
    return 4294967292;
  }

  else
  {
    return 0;
  }
}

uint64_t IIOImageSource::getType(IIO_Reader **this)
{
  if (!IIOImageSource::bindToReader(this))
  {
    return 0;
  }

  v2 = this[13];

  return IIO_Reader::utType(v2);
}

uint64_t IIOImageSource::isCloudTranscodable(IIO_Reader **this, const __CFDictionary **a2)
{
  if (!IIOImageSource::bindToReader(this) || (v4 = IIO_Reader::utType(this[13])) == 0)
  {
    IIOImageSource::isCloudTranscodable();
    return 4294967292;
  }

  v5 = v4;
  if (CFStringCompare(v4, @"public.jpeg", 0))
  {
    if (CFStringCompare(v5, @"public.heic", 0) == kCFCompareEqualTo)
    {
      return 0;
    }

    v6 = 4294967292;
    if (CFStringCompare(v5, @"public.heics", 0))
    {
      if (CFStringCompare(v5, @"public.png", 0))
      {
        return 4294967292;
      }

      else
      {
        return 0;
      }
    }

    return v6;
  }

  v7 = IIOImageSource::copyPropertiesAtIndex(this, 0, a2);
  if (!v7)
  {
    return 4294967292;
  }

  v8 = v7;
  memset(v11, 0, sizeof(v11));
  IIODictionary::IIODictionary(v11, v7);
  ObjectForKey = IIODictionary::getObjectForKey(v11, @"ColorModel");
  if (CFStringCompare(ObjectForKey, @"Gray", 0) && CFStringCompare(ObjectForKey, @"RGB", 0))
  {
    v6 = 4294967292;
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v8);
  IIODictionary::~IIODictionary(v11);
  return v6;
}