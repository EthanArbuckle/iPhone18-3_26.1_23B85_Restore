uint64_t jp2_input_box::close(jp2_input_box *this)
{
  if (*(this + 126) != 1)
  {
    return 1;
  }

  v2 = *(this + 5);
  if (v2 && *(v2 + 32))
  {
    jp2_input_box::is_complete(this);
  }

  *(this + 126) = 0;
  *(this + 12) = 0;
  *(this + 32) = 0;
  v3 = *(this + 125);
  if ((v3 & 1) != 0 || (v4 = *(this + 11), *(this + 17) >= v4))
  {
    result = 1;
  }

  else
  {
    result = 0;
    *(this + 17) = v4;
  }

  v6 = *(this + 4);
  if (v6)
  {
    *(v6 + 127) = 0;
    v7 = *(this + 9);
    *(v6 + 136) += v7;
    if (v3)
    {
      if (!v7)
      {
        *(v6 + 136) = *(this + 17);
      }

      v8 = *(*v6 + 16);

      return v8(v6);
    }
  }

  return result;
}

uint64_t jp2_input_box::is_complete(jp2_input_box *this)
{
  if (*(this + 126) == 1)
  {
    v2 = *(this + 5);
    if (v2)
    {
      v3 = *(v2 + 32);
      if (v3)
      {
        if ((*(this + 12) & 0x8000000000000000) != 0 || (*(this + 30) & 0x80000000) != 0)
        {
          jp2_input_box::is_complete();
        }

        v4 = (*(*v3 + 80))(v3);
        LOBYTE(v2) = *(this + 30) == 4 && *(this + 125) != 1 && *(this + 11) <= v4;
      }

      else
      {
        LOBYTE(v2) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t jp2_input_box::transplant(jp2_input_box *this, jp2_input_box *a2)
{
  if ((*(this + 126) & 1) != 0 || (*(a2 + 126) & 1) == 0)
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    kdu_error::kdu_error(v6, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(v6);
  }

  v2 = *(a2 + 8);
  *(this + 6) = *(a2 + 6);
  *(this + 8) = v2;
  v3 = *(a2 + 5);
  *(this + 4) = 0;
  *(this + 5) = v3;
  *(this + 12) = *(a2 + 12);
  *(this + 56) = *(a2 + 56);
  *(this + 72) = *(a2 + 72);
  *(this + 88) = *(a2 + 88);
  *(this + 104) = *(a2 + 104);
  *(this + 30) = *(a2 + 30);
  *(this + 124) = *(a2 + 124);
  *(this + 125) = *(a2 + 125);
  *(this + 63) = 1;
  *(this + 32) = *(a2 + 32);
  *(this + 136) = *(a2 + 136);
  LODWORD(v3) = *(a2 + 44);
  *(this + 44) = v3;
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      *(this + v4 + 152) = *(a2 + v4 + 152);
      ++v4;
    }

    while (v4 < *(this + 44));
  }

  return (*(*a2 + 16))(a2);
}

uint64_t jp2_input_box::seek(jp2_input_box *this, uint64_t a2)
{
  if (*(this + 126) != 1 || *(this + 127) == 1)
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    kdu_error::kdu_error(v6, "Error in Kakadu File Format Support:\n");
    (*(*&v6[0] + 16))(v6, "Attempting to seek inside a JP2 box which is not open, or is sharing its read pointer with an open sub-box.");
    kdu_error::~kdu_error(v6);
  }

  result = *(*(this + 5) + 68);
  if (result == 1)
  {
    v4 = *(this + 10);
    v5 = *(this + 11);
    if (v4 + a2 < v5)
    {
      v5 = v4 + a2;
    }

    if (v5 > v4)
    {
      v4 = v5;
    }

    *(this + 17) = v4;
    *(this + 44) = 0;
  }

  return result;
}

uint64_t jp2_input_box::set_tileheader_scope(jp2_input_box *this, int a2)
{
  if (*(this + 126) != 1)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  v5 = *(this + 5);
  if (!v5)
  {
    return 0;
  }

  result = *(v5 + 32);
  if (!result)
  {
    return result;
  }

  if ((*(this + 18) & 0x8000000000000000) != 0)
  {
    return 0;
  }

  *(this + 30) = 1;
  *(this + 12) = a2;
  *(this + 10) = 0;
  *(this + 17) = 0;
  v8 = 0;
  LODWORD(v7) = (*(*result + 80))(result, 1);
  result = v8;
  v7 = v7;
  if (!v8)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(this + 11) = v7;
  return result;
}

uint64_t jp2_input_box::set_precinct_scope(jp2_input_box *this, uint64_t a2)
{
  if (*(this + 126) != 1)
  {
    return 0;
  }

  v2 = *(this + 5);
  if (!v2 || !*(v2 + 32) || (*(this + 18) & 0x8000000000000000) != 0)
  {
    return 0;
  }

  *(this + 30) = 0;
  *(this + 12) = a2;
  *(this + 17) = 0;
  *(this + 5) = xmmword_1862067E0;
  return 1;
}

uint64_t jp2_input_box::set_codestream_scope(jp2_input_box *this, uint64_t a2, int a3)
{
  if (*(this + 126) == 1 && (v5 = *(this + 5)) != 0 && *(this + 13) <= a2 && *(this + 14) > a2)
  {
    *(this + 30) = 3;
    *(this + 12) = 0;
    *(this + 17) = 0;
    *(this + 18) = a2;
    *(this + 5) = xmmword_1862067E0;
    if (a3)
    {
      v9 = v3;
      v10 = v4;
      v8 = 0;
      (*(**(v5 + 32) + 80))(*(v5 + 32), 3, a2, 0, &v8);
      v6 = v8;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

size_t jp2_input_box::read(jp2_input_box *this, unsigned __int8 *a2, size_t a3)
{
  if (!*(this + 5) || *(this + 126) != 1 || *(this + 127) == 1)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    kdu_error::kdu_error(&v34, "Error in Kakadu File Format Support:\n");
    (*(v34 + 16))(&v34, "Illegal attempt to read from a JP2 box which is either not open or else has an open sub-box.");
    kdu_error::~kdu_error(&v34);
  }

  v6 = *(this + 11) - *(this + 17);
  if (*(this + 125) & 1 | (v6 >= a3))
  {
    v7 = a3;
  }

  else
  {
    v7 = v6;
  }

  if (v7 < 1)
  {
    return 0;
  }

  if (v7 > a3)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    kdu_warning::kdu_warning(&v34, "Warning in Kakadu File Format Support:\n");
    (*(v34 + 16))(&v34, "Corrupt JP2 Data");
    kdu_warning::~kdu_warning(&v34);
    v7 = a3;
  }

  (*(**(this + 5) + 16))(*(this + 5));
  v8 = *(this + 5);
  v9 = *(v8 + 32);
  if (v9)
  {
    if ((*(v8 + 68) & 1) == 0)
    {
      jp2_input_box::read();
    }

    v10 = *(this + 30);
    if (v10 == 4)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(this + 18);
    }

    v15 = *(this + 12);
    if (*(v8 + 48) != v15 || *(v8 + 64) != v10 || *(v8 + 56) != v11)
    {
      *(v8 + 64) = v10;
      *(v8 + 48) = v15;
      *(v8 + 56) = v11;
      *(v8 + 40) = 0;
      (*(*v9 + 160))(v9);
      v8 = *(this + 5);
    }

    if (*(v8 + 40) != *(this + 17))
    {
      v16 = (*(**(v8 + 32) + 40))(*(v8 + 32));
      v8 = *(this + 5);
      if ((v16 & 1) == 0)
      {
        (*(*v8 + 24))(v8);
        v36 = 0;
        v34 = 0u;
        v35 = 0u;
        kdu_error::kdu_error(&v34, "Error in Kakadu File Format Support:\n");
        (*(v34 + 16))(&v34, "Caching source does not appear to support seeking!");
        kdu_error::~kdu_error(&v34);
      }
    }

    v12 = (*(**(v8 + 32) + 32))(*(v8 + 32), a2, v7);
    v17 = *(this + 17) + v12;
    *(this + 17) = v17;
    v18 = *(this + 5);
    v18[5] = v17;
    if (v12 < v7)
    {
      v18[6] = -1;
    }

    (*(*v18 + 24))(v18);
    if (v12 < v7)
    {
      v33 = 0;
      v19 = (*(**(*(this + 5) + 32) + 80))(*(*(this + 5) + 32), *(this + 30), v11, *(this + 12), &v33);
      if (v33 == 1 && *(this + 17) == v19)
      {
        v20 = v19;
        if ((*(this + 125) & 1) == 0 && *(this + 30) == 4)
        {
          v21 = *(this + 11);
          if (v21 != v19 && v21 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v36 = 0;
            v34 = 0u;
            v35 = 0u;
            kdu_error::kdu_error(&v34, "Error in Kakadu File Format Support:\n");
            (*(v34 + 16))(&v34, "Cached data-bin appears to be complete yet terminates prior to the end of the current JP2 box.");
            kdu_error::~kdu_error(&v34);
          }

          *(this + 11) = v19;
          return v12;
        }

LABEL_55:
        *(this + 11) = v20;
        *(this + 125) = 0;
      }
    }
  }

  else
  {
    v13 = *(v8 + 40);
    v14 = *(this + 17);
    if (*(v8 + 68))
    {
      if (v13 != v14)
      {
        if (*(v8 + 16))
        {
          fseek(*(v8 + 16), v14, 0);
        }

        else
        {
          v32 = *(v8 + 24);
          if (v32)
          {
            (*(*v32 + 40))(v32);
          }
        }
      }
    }

    else
    {
      for (; v13 < v14; v14 = *(this + 17))
      {
        v22 = v13 + 24;
        v23 = v14 - v13;
        if (v22 <= v14)
        {
          v24 = 24;
        }

        else
        {
          v24 = v23;
        }

        v25 = *(v8 + 16);
        if (v25)
        {
          v24 = v24;
          fread(this + 152, 1uLL, v24, v25);
        }

        else
        {
          (*(**(v8 + 24) + 32))(*(v8 + 24), this + 152, v24);
          v24 = v24;
        }

        v8 = *(this + 5);
        v13 = *(v8 + 40) + v24;
        *(v8 + 40) = v13;
      }

      if (v13 != v14)
      {
        (*(*v8 + 24))(v8);
        v36 = 0;
        v34 = 0u;
        v35 = 0u;
        kdu_error::kdu_error(&v34, "Error in Kakadu File Format Support:\n");
        (*(v34 + 16))(&v34, "Non-seekable JP2 sources must be read sequentially.  You are attempting to read from multiple boxes simultaneously.");
        kdu_error::~kdu_error(&v34);
      }
    }

    v26 = *(this + 5);
    v27 = *(v26 + 16);
    if (v27)
    {
      v12 = fread(a2, 1uLL, v7, v27);
    }

    else
    {
      v28 = *(v26 + 24);
      v12 = v7;
      if (v28)
      {
        v12 = (*(*v28 + 32))(v28, a2, v7);
      }
    }

    v29 = *(this + 17) + v12;
    *(this + 17) = v29;
    v30 = *(this + 5);
    v30[5] = v29;
    (*(*v30 + 24))(v30);
    if (v12 < v7 && *(this + 125) == 1)
    {
      v20 = *(this + 17);
      goto LABEL_55;
    }
  }

  return v12;
}

BOOL jp2_input_box::read(jp2_input_box *this, unsigned int *a2)
{
  v2 = *(this + 44);
  if (v2 >= 4)
  {
    jp2_input_box::read();
  }

  v5 = *(this + 44) + (*(*this + 32))(this, this + v2 + 152, (4 - v2));
  *(this + 44) = v5;
  if (v5 >= 4)
  {
    if (v5 != 4)
    {
      jp2_input_box::read();
    }

    v6 = *(this + 152);
    *a2 = v6;
    v7 = *(this + 153) | (v6 << 8);
    *a2 = v7;
    v8 = *(this + 154) | (v7 << 8);
    *a2 = v8;
    *a2 = *(this + 155) | (v8 << 8);
    *(this + 44) = 0;
  }

  return v5 > 3;
}

BOOL jp2_input_box::read(jp2_input_box *this, unsigned __int16 *a2)
{
  v4 = *(this + 44);
  if (v4 >= 2)
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    kdu_error::kdu_error(v8, "Error in Kakadu File Format Support:\n");
    (*(*&v8[0] + 16))(v8, "Attempting to read a 2-byte word from a JP2 box, after first reading a partial 4-byte word!");
    kdu_error::~kdu_error(v8);
  }

  v5 = *(this + 44) + (*(*this + 32))(this, this + v4 + 152, (2 - v4));
  *(this + 44) = v5;
  if (v5 >= 2)
  {
    if (v5 != 2)
    {
      jp2_input_box::read();
    }

    v6 = *(this + 152);
    *a2 = v6;
    *a2 = *(this + 153) | (v6 << 8);
    *(this + 44) = 0;
  }

  return v5 > 1;
}

uint64_t jp2_family_tgt::open(uint64_t this, kdu_compressed_target *a2)
{
  if (*(this + 8) || *(this + 16))
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
    kdu_error::kdu_error(v2, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(v2);
  }

  *(this + 16) = a2;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

FILE *jp2_family_tgt::close(jp2_family_tgt *this)
{
  v3 = (this + 8);
  result = *(this + 1);
  if (result)
  {
    result = fclose(result);
  }

  *(this + 32) = 0;
  *v3 = 0;
  v3[1] = 0;
  return result;
}

void jp2_output_box::jp2_output_box(jp2_output_box *this)
{
  *this = &unk_1EF4D29C0;
  *(this + 2) = 0;
  *(this + 72) = 0;
  *(this + 12) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0;
  *(this + 7) = -1;
  *(this + 8) = 0;
}

void jp2_output_box::~jp2_output_box(jp2_output_box *this)
{
  *this = &unk_1EF4D29C0;
  v2 = *(this + 8);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1000C8077774924);
  }

  *this = &unk_1EF4D2B00;
}

{
  *this = &unk_1EF4D29C0;
  v2 = *(this + 8);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1000C8077774924);
  }

  *this = &unk_1EF4D2B00;

  JUMPOUT(0x186602850);
}

uint64_t jp2_output_box::open(uint64_t this, jp2_family_tgt *a2, int a3, int a4)
{
  if (*(this + 8))
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    kdu_error::kdu_error(&v4, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v4);
  }

  *(this + 16) = 0;
  *(this + 24) = 0;
  if (a2)
  {
    if (*(a2 + 32) == 1)
    {
      v6 = 0;
      v4 = 0u;
      v5 = 0u;
      kdu_error::kdu_error(&v4, "Error in Kakadu File Format Support:\n");
      kdu_error::~kdu_error(&v4);
    }
  }

  else if (a4)
  {
    jp2_output_box::open();
  }

  if (*(this + 64) || *(this + 32))
  {
    jp2_output_box::open();
  }

  *(this + 8) = a3;
  *(this + 12) = a4;
  *(this + 16) = a2;
  *(this + 40) = 0;
  *(this + 48) = -1;
  *(this + 56) = -1;
  *(this + 72) = 0;
  *(this + 73) = a4;
  *(this + 74) = 0;
  if (a4)
  {
    return jp2_output_box::write_header(this);
  }

  return this;
}

uint64_t jp2_output_box::write_header(jp2_output_box *this)
{
  if (!*(this + 2) || !*(this + 2) && !*(this + 3))
  {
    jp2_output_box::write_header();
  }

  if ((*(this + 73) & 1) == 0)
  {
    jp2_output_box::write_header();
  }

  if ((*(this + 7) & 0x8000000000000000) == 0)
  {
    jp2_output_box::write_header();
  }

  v2 = *(this + 5);
  *(this + 5) = -16;
  if (*(this + 12) == 1)
  {
    if (*(this + 74) == 1)
    {
      jp2_output_box::write_header();
    }

    v8 = 0;
  }

  else
  {
    v3 = *(this + 6);
    if ((v3 & 0x8000000000000000) != 0)
    {
      jp2_output_box::write_header();
    }

    v4 = 8;
    if (v3 > 0x1FFFFFFF7)
    {
      v4 = 16;
    }

    if (*(this + 74))
    {
      v5 = v4 + v3 + 8;
    }

    else
    {
      v5 = v4 + v3;
    }

    if (v3 > 0x1FFFFFFF7 || (*(this + 74) & 1) != 0)
    {
      v8 = 0x1000000;
      (*(*this + 40))(this, &v8, 4);
      v8 = bswap32(*(this + 2));
      (*(*this + 40))(this, &v8, 4);
      HIBYTE(v8) = BYTE4(v5);
      BYTE2(v8) = BYTE5(v5);
      BYTE1(v8) = BYTE6(v5);
      LOBYTE(v8) = HIBYTE(v5);
      (*(*this + 40))(this, &v8, 4);
      v6 = bswap32(v5);
      goto LABEL_20;
    }

    v8 = bswap32(v5);
  }

  (*(*this + 40))(this, &v8, 4);
  v6 = bswap32(*(this + 2));
LABEL_20:
  v8 = v6;
  result = (*(*this + 40))(this, &v8, 4);
  *(this + 5) = v2;
  return result;
}

uint64_t jp2_output_box::open(uint64_t this, jp2_output_box *a2, int a3, int a4)
{
  v5 = this;
  if (*(this + 8))
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    kdu_error::kdu_error(v6, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(v6);
  }

  if (*(this + 64) || *(this + 32))
  {
    jp2_output_box::open();
  }

  *(this + 8) = a3;
  *(this + 12) = a4;
  *(this + 16) = 0;
  *(this + 24) = a2;
  *(this + 40) = 0;
  *(this + 48) = -1;
  *(this + 56) = -1;
  *(this + 72) = 0;
  *(this + 73) = a4;
  *(this + 74) = 0;
  if (a4)
  {
    jp2_output_box::set_rubber_length(a2);
    if (*(a2 + 12) != 1 || (*(a2 + 73) & 1) == 0)
    {
      jp2_output_box::open();
    }

    return jp2_output_box::write_header(v5);
  }

  return this;
}

uint64_t jp2_output_box::set_rubber_length(uint64_t this)
{
  if (!*(this + 8))
  {
    jp2_output_box::set_rubber_length();
  }

  v1 = this;
  if ((*(this + 16) || *(this + 24)) && (*(this + 12) & 1) == 0)
  {
    if (*(this + 73) == 1)
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
      kdu_error::kdu_error(&v9, "Error in Kakadu File Format Support:\n");
      (*(v9 + 16))(&v9, "Attempting to set a rubber length for a JP2 box whose total length has already been declared, or is to be written at the end.");
      kdu_error::~kdu_error(&v9);
    }

    if ((*(this + 56) & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
      kdu_error::kdu_error(&v9, "Error in Kakadu File Format Support:\n");
      (*(v9 + 16))(&v9, "Attempting to set a rubber length for a JP2 box which is currently inside a rewrite section.");
      kdu_error::~kdu_error(&v9);
    }

    v2 = *(this + 24);
    if (v2)
    {
      jp2_output_box::set_rubber_length(v2);
    }

    *(v1 + 12) = 1;
    *(v1 + 73) = 1;
    this = jp2_output_box::write_header(v1);
    if (*(v1 + 64))
    {
      v3 = *(v1 + 24);
      if (v3)
      {
        *(v1 + 72) = (*(*v3 + 40))(v3) ^ 1;
      }

      else
      {
        v4 = *(v1 + 16);
        v5 = *(v4 + 8);
        if (v5)
        {
          v6 = fwrite(*(v1 + 64), 1uLL, *(v1 + 40), v5);
          v7 = *(v1 + 40);
          *(v1 + 72) = v6 != v7;
        }

        else
        {
          v8 = *(v4 + 16);
          if (!v8)
          {
            jp2_output_box::set_rubber_length();
          }

          *(v1 + 72) = (*(*v8 + 40))(v8) ^ 1;
          v7 = *(v1 + 40);
        }

        *(*(v1 + 16) + 24) += v7;
      }

      this = *(v1 + 64);
      if (this)
      {
        this = MEMORY[0x186602830](this, 0x1000C8077774924);
      }

      *(v1 + 32) = 0;
      *(v1 + 64) = 0;
    }
  }

  return this;
}

uint64_t jp2_output_box::open_next(jp2_output_box *this)
{
  if (*(this + 3))
  {
    v1 = *(*this + 64);
  }

  else
  {
    if (!*(this + 2))
    {
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      kdu_error::kdu_error(v3, "Error in Kakadu File Format Support:\n");
      kdu_error::~kdu_error(v3);
    }

    v1 = *(*this + 56);
  }

  return v1();
}

uint64_t jp2_output_box::set_target_size(uint64_t this, uint64_t a2)
{
  v2 = this;
  if (*(this + 12) == 1)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    kdu_error::kdu_error(&v9, "Error in Kakadu File Format Support:\n");
    (*(v9 + 16))(&v9, "Attempting to set the target size of a JP2 box which has already been assigned a rubber length.");
    kdu_error::~kdu_error(&v9);
  }

  if (*(this + 73) == 1)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    kdu_error::kdu_error(&v9, "Error in Kakadu File Format Support:\n");
    (*(v9 + 16))(&v9, "Attempting to set the target size of a JP2 box whose content length is already known, or is to be written at the end.");
    kdu_error::~kdu_error(&v9);
  }

  if ((*(this + 56) & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    kdu_error::kdu_error(&v9, "Error in Kakadu File Format Support:\n");
    (*(v9 + 16))(&v9, "Attempting to set the target size of a JP2 box which is currently inside a rewrite section.");
    kdu_error::~kdu_error(&v9);
  }

  if (!*(this + 8))
  {
    jp2_output_box::set_target_size();
  }

  if (*(this + 16) || *(this + 24))
  {
    *(this + 48) = a2;
    if (*(this + 40) > a2)
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
      kdu_error::kdu_error(&v9, "Error in Kakadu File Format Support:\n");
      (*(v9 + 16))(&v9, "Attempting to set the target size of a JP2 box to which a larger number of bytes has already been written.");
      kdu_error::~kdu_error(&v9);
    }

    *(this + 73) = 1;
    this = jp2_output_box::write_header(this);
    if (*(v2 + 64))
    {
      v3 = *(v2 + 24);
      if (v3)
      {
        *(v2 + 72) = (*(*v3 + 40))(v3) ^ 1;
      }

      else
      {
        v4 = *(v2 + 16);
        v5 = *(v4 + 8);
        if (v5)
        {
          v6 = fwrite(*(v2 + 64), 1uLL, *(v2 + 40), v5);
          v7 = *(v2 + 40);
          *(v2 + 72) = v6 != v7;
        }

        else
        {
          v8 = *(v4 + 16);
          if (!v8)
          {
            jp2_output_box::set_target_size();
          }

          *(v2 + 72) = (*(*v8 + 40))(v8) ^ 1;
          v7 = *(v2 + 40);
        }

        *(*(v2 + 16) + 24) += v7;
      }

      this = *(v2 + 64);
      if (this)
      {
        this = MEMORY[0x186602830](this, 0x1000C8077774924);
      }

      *(v2 + 32) = 0;
      *(v2 + 64) = 0;
    }
  }

  return this;
}

uint64_t jp2_output_box::write_header_last(uint64_t this)
{
  v1 = this;
  if (!*(this + 8))
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    kdu_error::kdu_error(&v5, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v5);
  }

  if ((*(this + 73) & 1) == 0 && (*(this + 74) & 1) == 0)
  {
    v2 = *(this + 16);
    if (v2)
    {
      if (*(v2 + 8) || (v3 = *(v2 + 16)) != 0 && (v4 = (*(*v3 + 24))(v3, 0), (*(**(*(v1 + 16) + 16) + 32))(*(*(v1 + 16) + 16)), (v4 & 1) != 0))
      {
        *(v1 + 74) = 1;
        this = (*(*v1 + 48))(v1, 0x7FFFFFFFFFFFFFFFLL);
        if ((*(v1 + 73) & 1) == 0)
        {
          jp2_output_box::write_header_last();
        }

        return this;
      }
    }

    else if (!*(this + 24))
    {
      return this;
    }

    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    kdu_error::kdu_error(&v5, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v5);
  }

  return this;
}

uint64_t jp2_output_box::close(jp2_output_box *this)
{
  if (!*(this + 2))
  {
    v3 = 1;
    return v3 & 1;
  }

  (*(*this + 32))(this);
  v2 = *(this + 6);
  if (v2 < 0 || *(this + 74) == 1)
  {
    *(this + 6) = *(this + 5);
  }

  else if (v2 != *(this + 5))
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    kdu_error::kdu_error(v20, "Error in Kakadu File Format Support:\n");
    (*(*&v20[0] + 16))(v20, "Attempting to close an output JP2 box whose length was defined ahead of time, having written less bytes than indicated by that length value.");
    kdu_error::~kdu_error(v20);
  }

  if (*(this + 2) || *(this + 3))
  {
    if (*(this + 73))
    {
      if (*(this + 8))
      {
        jp2_output_box::close();
      }
    }

    else
    {
      *(this + 73) = 1;
      jp2_output_box::write_header(this);
      if (*(this + 8))
      {
        v4 = *(this + 3);
        if (v4)
        {
          *(this + 72) = (*(*v4 + 40))(v4) ^ 1;
        }

        else
        {
          v6 = *(this + 2);
          v7 = *(v6 + 8);
          if (v7)
          {
            v8 = fwrite(*(this + 8), 1uLL, *(this + 5), v7);
            v9 = *(this + 5);
            *(this + 72) = v8 != v9;
          }

          else
          {
            v10 = *(v6 + 16);
            if (!v10)
            {
              jp2_output_box::close();
            }

            *(this + 72) = (*(*v10 + 40))(v10) ^ 1;
            v9 = *(this + 5);
          }

          *(*(this + 2) + 24) += v9;
        }

        v11 = *(this + 8);
        if (v11)
        {
          MEMORY[0x186602830](v11, 0x1000C8077774924);
        }

        *(this + 8) = 0;
        *(this + 8) = 0;
      }
    }
  }

  else
  {
    v5 = *(this + 8);
    if (v5)
    {
      MEMORY[0x186602830](v5, 0x1000C8077774924);
    }

    *(this + 8) = 0;
    *(this + 8) = 0;
    *(this + 73) = 0;
  }

  if (*(this + 74) == 1)
  {
    v12 = *(this + 2);
    if (v12)
    {
      v13 = v12[1];
      if (v13)
      {
        fflush(v13);
        v14 = *(this + 2);
        v15 = *(v14 + 24);
        v16 = v15 - *(this + 6) - 16;
        *(v14 + 24) = v16;
        fseek(*(v14 + 8), v16, 0);
        jp2_output_box::write_header(this);
        fseek(*(*(this + 2) + 8), v15, 0);
LABEL_34:
        *(*(this + 2) + 24) = v15;
        goto LABEL_35;
      }

      v17 = v12[2];
      if (v17)
      {
        v15 = v12[3];
        v12[3] = v15 - (*(this + 6) + 16);
        if (((*(*v17 + 24))(v17) & 1) == 0)
        {
          jp2_output_box::close();
        }

        jp2_output_box::write_header(this);
        (*(**(*(this + 2) + 16) + 32))(*(*(this + 2) + 16));
        goto LABEL_34;
      }
    }

    jp2_output_box::close();
  }

LABEL_35:
  *(this + 2) = 0;
  if (*(this + 12) == 1)
  {
    v18 = *(this + 2);
    if (v18)
    {
      *(v18 + 32) = 1;
    }
  }

  v3 = *(this + 72) ^ 1;
  return v3 & 1;
}

uint64_t jp2_output_box::start_rewrite(jp2_output_box *this, uint64_t a2)
{
  if (!*(this + 2))
  {
    return 0;
  }

  result = 0;
  if ((a2 & 0x8000000000000000) == 0 && (*(this + 7) & 0x8000000000000000) != 0)
  {
    v5 = *(this + 5);
    if (v5 < a2)
    {
      return 0;
    }

    *(this + 7) = v5;
    *(this + 5) = v5 - a2;
    if (*(this + 73) != 1)
    {
      return 1;
    }

    v6 = *(this + 2);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        if (a2)
        {
          fflush(v7);
          v8 = *(this + 2);
          v9 = *(v8 + 24) - a2;
          *(v8 + 24) = v9;
          fseek(*(v8 + 8), v9, 0);
        }

        return 1;
      }

      v11 = *(v6 + 16);
      if (v11 && (*(*v11 + 24))(v11, a2))
      {
        *(*(this + 2) + 24) -= a2;
        return 1;
      }
    }

    else
    {
      v10 = *(this + 3);
      if (v10 && ((*(*v10 + 24))(v10, a2) & 1) != 0)
      {
        return 1;
      }
    }

    result = 0;
    *(this + 7) = -1;
    *(this + 5) += a2;
  }

  return result;
}

BOOL jp2_output_box::end_rewrite(jp2_output_box *this)
{
  v1 = *(this + 7);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v3 = *(this + 5);
    v4 = v1 - v3;
    if (v1 - v3 < 0)
    {
      jp2_output_box::end_rewrite();
    }

    *(this + 5) = v1;
    *(this + 7) = -1;
    if (*(this + 73) == 1)
    {
      v5 = *(this + 2);
      if (v5)
      {
        v6 = *(v5 + 8);
        if (v6)
        {
          if (v1 != v3)
          {
            fflush(v6);
            v7 = *(this + 2);
            v8 = *(v7 + 24) + v4;
            *(v7 + 24) = v8;
            fseek(*(v7 + 8), v8, 0);
          }
        }

        else
        {
          v10 = *(v5 + 16);
          if (!v10 || !(*(*v10 + 32))(v10))
          {
            jp2_output_box::end_rewrite();
          }

          *(*(this + 2) + 24) += v4;
        }
      }

      else
      {
        v9 = *(this + 3);
        if (!v9)
        {
          jp2_output_box::end_rewrite();
        }

        if (((*(*v9 + 32))(v9) & 1) == 0)
        {
          jp2_output_box::end_rewrite();
        }
      }
    }
  }

  return v1 >= 0;
}

BOOL jp2_output_box::write(jp2_output_box *this, const unsigned __int8 *__ptr, size_t __nitems)
{
  if (!*(this + 2) || (*(this + 72) & 1) != 0)
  {
    return 0;
  }

  v5 = __nitems;
  v6 = *(this + 7);
  v7 = __nitems;
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = *(this + 5);
    v9 = v8 + __nitems;
    v10 = v6 - v8;
    if (v9 > v6)
    {
      v7 = v10;
    }

    else
    {
      v7 = __nitems;
    }
  }

  if (v7 <= 0)
  {
    return v7 == v5;
  }

  v11 = *(this + 6);
  v12 = *(this + 5) + v7;
  *(this + 5) = v12;
  if ((v11 & 0x8000000000000000) == 0 && v12 > v11)
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    kdu_error::kdu_error(v21, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(v21);
  }

  if (*(this + 73) != 1)
  {
    v15 = *(this + 5);
    v16 = *(this + 8);
    if (v15 > v16)
    {
      if ((*(this + 7) & 0x8000000000000000) != 0)
      {
        *(this + 8) = v15 + v16 + 1024;
        operator new[]();
      }

      jp2_output_box::write();
    }

    memcpy((*(this + 8) + v15 - v7), __ptr, v7);
    return v7 == v5;
  }

  v13 = *(this + 3);
  if (v13)
  {
    v14 = (*(*v13 + 40))(v13, __ptr, v7);
    *(this + 72) = v14 ^ 1;
  }

  else
  {
    v17 = *(this + 2);
    v18 = *(v17 + 8);
    if (v18)
    {
      v14 = fwrite(__ptr, 1uLL, v7, v18) == v7;
      if (v14)
      {
        v19 = 0;
      }

      else
      {
        v19 = 1;
      }
    }

    else
    {
      v20 = *(v17 + 16);
      if (!v20)
      {
        jp2_output_box::write();
      }

      v14 = (*(*v20 + 40))(v20, __ptr, v7);
      v19 = v14 ^ 1;
    }

    *(this + 72) = v19;
    *(*(this + 2) + 24) += v7;
  }

  return (v7 == v5) & v14;
}

void jp2_dimensions::init(uint64_t *a1, uint64_t a2, int a3, unsigned __int8 a4, int a5)
{
  if (*a1)
  {
    if (*(*a1 + 20))
    {
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      kdu_error::kdu_error(v6, "Error in Kakadu File Format Support:\n");
      (*(*&v6[0] + 16))(v6, "JP2 dimensions may be initialized only once!");
      kdu_error::~kdu_error(v6);
    }

    if (a3 > 0)
    {
      **a1 = a2;
      v5 = *a1;
      *(v5 + 20) = a3;
      *(v5 + 24) = a4;
      *(v5 + 8) = a5;
      *(v5 + 12) = 2;
      *(v5 + 16) = 1;
      operator new[]();
    }

    jp2_dimensions::init();
  }

  jp2_dimensions::init();
}

void j2_dimensions::init(j2_dimensions *this, jp2_input_box *a2)
{
  if (*(this + 5))
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    kdu_error::kdu_error(&v10, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v10);
  }

  if (*(a2 + 12) == 1768449138)
  {
    *v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    if (!jp2_input_box::read(a2, &v9[1]) || !jp2_input_box::read(a2, v9) || !jp2_input_box::read(a2, &v8) || (*(*a2 + 32))(a2, &v7 + 1, 1) != 1 || (*(*a2 + 32))(a2, &v7, 1) != 1 || (*(*a2 + 32))(a2, &v6 + 1, 1) != 1 || (*(*a2 + 32))(a2, &v6, 1) != 1)
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
      kdu_error::kdu_error(&v10, "Error in Kakadu File Format Support:\n");
      (*(v10 + 16))(&v10, "Malformed image header box (ihdr) found in JP2-family data source.  Not all fields were present.");
      kdu_error::~kdu_error(&v10);
    }

    if (((*(*a2 + 16))(a2) & 1) == 0)
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
      kdu_error::kdu_error(&v10, "Error in Kakadu File Format Support:\n");
      (*(v10 + 16))(&v10, "Malformed image header box (ihdr) found in JP2-family data source.  The box appears to be too long.");
      kdu_error::~kdu_error(&v10);
    }

    v4 = v8;
    if ((v8 - 1) >> 14 || v7 > 9u || HIBYTE(v6) > 1u || v6 > 1u || HIBYTE(v7) != 255 && (HIBYTE(v7) & 0x7Eu) >= 0x26)
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
      kdu_error::kdu_error(&v10, "Error in Kakadu File Format Support:\n");
      (*(v10 + 16))(&v10, "Malformed image header box (ihdr) found in JP2-family data source.  The box contains fields which do not conform to their legal range.");
      kdu_error::~kdu_error(&v10);
    }

    v5 = v9[0];
    if ((v9[1] & 0x80000000) == 0 && (v9[0] & 0x80000000) == 0)
    {
      *this = v9[1];
      *(this + 1) = v5;
      *(this + 5) = v4;
      *(this + 24) = HIBYTE(v6) != 0;
      *(this + 25) = v6 != 0;
      *(this + 2) = v7;
      operator new[]();
    }

    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    kdu_error::kdu_error(&v10, "Error in Kakadu File Format Support:\n");
    (*(v10 + 16))(&v10, "Sorry: Cannot process JP2-family data sources whose image header box contains height or width values larger than 2^{31}-1.");
    kdu_error::~kdu_error(&v10);
  }

  j2_dimensions::init();
}

uint64_t j2_dimensions::process_bpcc_box(j2_dimensions *this, jp2_input_box *a2)
{
  v12 = 0;
  if (*(this + 5) >= 1)
  {
    v4 = 0;
    while ((*(*a2 + 32))(a2, &v12, 1) == 1)
    {
      v5 = v12 & 0x7F;
      if (v5 >= 0x26)
      {
        v11 = 0;
        v9 = 0u;
        v10 = 0u;
        kdu_error::kdu_error(&v9, "Error in Kakadu File Format Support:\n");
        (*(v9 + 16))(&v9, "Malformed bits per component (bpcc) box found in JP2-family data source.  The box contains an illegal bit-depth specifier.  Bit depths may not exceed 38 bits per sample.");
        goto LABEL_7;
      }

      v6 = ~v5;
      if ((v12 & 0x80u) == 0)
      {
        v7 = v12 + 1;
      }

      else
      {
        v7 = v6;
      }

      *(*(this + 4) + 4 * v4++) = v7;
      if (v4 >= *(this + 5))
      {
        goto LABEL_12;
      }
    }

    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    kdu_error::kdu_error(&v9, "Error in Kakadu File Format Support:\n");
    (*(v9 + 16))(&v9, "Malformed bits per component (bpcc) box found in JP2-family data source.  The box contains insufficient bit-depth specifiers.");
LABEL_7:
    kdu_error::~kdu_error(&v9);
  }

LABEL_12:
  result = (*(*a2 + 16))(a2);
  if ((result & 1) == 0)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    kdu_error::kdu_error(&v9, "Error in Kakadu File Format Support:\n");
    (*(v9 + 16))(&v9, "Malformed bits per component (bpcc) box found in JP2-family data source.  The box appears to be too long.");
    kdu_error::~kdu_error(&v9);
  }

  return result;
}

uint64_t j2_dimensions::finalize(uint64_t this)
{
  v1 = *(this + 20);
  if (v1 < 1)
  {
    goto LABEL_7;
  }

  v2 = *(this + 32);
  v3 = *(this + 20);
  do
  {
    v5 = *v2++;
    v4 = v5;
    if (!v5 || (v4 - 39) < 0xFFFFFFB3)
    {
      goto LABEL_7;
    }

    --v3;
  }

  while (v3);
  if ((v1 - 16385) <= 0xFFFFBFFF)
  {
LABEL_7:
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    kdu_error::kdu_error(&v6, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v6);
  }

  if (*(this + 8) >= 0xAu)
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    kdu_error::kdu_error(&v6, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v6);
  }

  return this;
}

uint64_t j2_dimensions::save_boxes(j2_dimensions *this, jp2_output_box *a2)
{
  j2_dimensions::finalize(this);
  v4 = *(this + 5);
  if (v4 < 2)
  {
    goto LABEL_7;
  }

  v5 = 0;
  v6 = *(this + 4);
  v9 = *v6;
  v7 = v6 + 1;
  v8 = v9;
  v10 = v4 - 1;
  do
  {
    v11 = *v7++;
    if (v11 != v8)
    {
      v5 = -1;
    }

    --v10;
  }

  while (v10);
  if (!v5)
  {
LABEL_7:
    v12 = **(this + 4);
    if (v12 <= 0)
    {
      v5 = ~v12 | 0x80;
    }

    else
    {
      v5 = v12 - 1;
    }
  }

  v24 = 0uLL;
  v28 = 0;
  v23 = &unk_1EF4D29C0;
  v25 = 0uLL;
  v26 = 0uLL;
  v27 = 0xFFFFFFFFFFFFFFFFLL;
  jp2_output_box::open(&v23, a2, 1768449138, 0);
  LODWORD(v17) = bswap32(*this);
  v23[5](&v23, &v17, 4);
  LODWORD(v17) = bswap32(*(this + 1));
  v23[5](&v23, &v17, 4);
  LOWORD(v17) = bswap32(*(this + 10)) >> 16;
  v23[5](&v23, &v17, 2);
  LOBYTE(v17) = v5;
  v23[5](&v23, &v17, 1);
  LOBYTE(v17) = *(this + 2);
  v23[5](&v23, &v17, 1);
  LOBYTE(v17) = *(this + 24);
  v23[5](&v23, &v17, 1);
  LOBYTE(v17) = *(this + 25);
  v23[5](&v23, &v17, 1);
  jp2_output_box::close(&v23);
  if (v5 == -1)
  {
    v18 = 0uLL;
    v22 = 0;
    v17 = &unk_1EF4D29C0;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0xFFFFFFFFFFFFFFFFLL;
    jp2_output_box::open(&v17, a2, 1651532643, 0);
    if (*(this + 5) >= 1)
    {
      v13 = 0;
      do
      {
        v14 = *(*(this + 4) + 4 * v13);
        if (v14 <= 0)
        {
          v15 = ~v14 | 0x80;
        }

        else
        {
          v15 = v14 - 1;
        }

        v29 = v15;
        v17[5](&v17, &v29, 1);
        ++v13;
      }

      while (v13 < *(this + 5));
    }

    jp2_output_box::close(&v17);
    v17 = &unk_1EF4D29C0;
    if (*(&v21 + 1))
    {
      MEMORY[0x186602830](*(&v21 + 1), 0x1000C8077774924);
    }
  }

  v23 = &unk_1EF4D29C0;
  result = *(&v27 + 1);
  if (*(&v27 + 1))
  {
    return MEMORY[0x186602830](*(&v27 + 1), 0x1000C8077774924);
  }

  return result;
}

void sub_185F4FB00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  jp2_output_box::~jp2_output_box(va);
  jp2_output_box::~jp2_output_box(va1);
  _Unwind_Resume(a1);
}

void jp2_dimensions::init(jp2_dimensions *this, siz_params *a2, unsigned __int8 a3)
{
  *v9 = 0;
  *v10 = 0;
  v8 = 0;
  if (kdu_params::get(a2, "Ssize", 0, 0, v10, 1, 1, 1) && kdu_params::get(a2, "Ssize", 0, 1, &v10[1], 1, 1, 1) && kdu_params::get(a2, "Sorigin", 0, 0, v9, 1, 1, 1) && kdu_params::get(a2, "Sorigin", 0, 1, &v9[1], 1, 1, 1) && (kdu_params::get(a2, "Scomponents", 0, 0, &v8, 1, 1, 1) & 1) != 0)
  {
    *v10 = vsub_s32(*v10, *v9);
    jp2_dimensions::init(this, *v10, v8, a3, 7);
  }

  v7 = 0;
  memset(v6, 0, sizeof(v6));
  kdu_error::kdu_error(v6, "Error in Kakadu File Format Support:\n");
  kdu_error::~kdu_error(v6);
}

uint64_t *jp2_dimensions::set_precision(uint64_t *this, unsigned int a2, int a3, int a4)
{
  if ((a2 & 0x80000000) != 0 || (v4 = *this) == 0 || *(v4 + 20) <= a2)
  {
    jp2_dimensions::set_precision();
  }

  if (a4)
  {
    v5 = -a3;
  }

  else
  {
    v5 = a3;
  }

  *(*(v4 + 32) + 4 * a2) = v5;
  return this;
}

uint64_t jp2_dimensions::finalize_compatibility(uint64_t this, kdu_params *a2)
{
  if (a2)
  {
    v2 = this;
    if (*(*this + 8) == 7)
    {
      this = kdu_params::access_cluster(a2, "SIZ");
      if (this)
      {
        v4 = this;
        this = kdu_params::get(this, "Sprofile", 0, 0, (*v2 + 12), 1, 1, 1);
        if (*(*v2 + 12) == 3)
        {
          v16 = 0;
          this = kdu_params::get(v4, "Sextensions", 0, 0, &v16, 1, 1, 1);
          v5 = v16;
          if ((v16 & 0xFFFFFCFF) != 0)
          {
            *(*v2 + 16) = 0;
          }

          if ((v5 & 0x100) != 0 && *(*v2 + 16) == 1)
          {
            v14 = 1;
            v15 = 1;
            kdu_params::get(v4, "Stiles", 0, 0, &v14, 1, 1, 1);
            kdu_params::get(v4, "Stiles", 0, 1, &v15, 1, 1, 1);
            v6 = v15 * v14;
            v7 = kdu_params::access_cluster(a2, "MCO");
            this = kdu_params::access_cluster(a2, "MCC");
            if ((v6 & 0x80000000) == 0)
            {
              v8 = this;
              v9 = -1;
              while (1)
              {
                v13 = 0;
                if (v7)
                {
                  this = kdu_params::access_relation(v7, v9, -1, 0, 0);
                  if (this)
                  {
                    this = kdu_params::get(this, "Mnum_stages", 0, 0, &v13, 1, 1, 1);
                    if (this)
                    {
                      if (v13 != 1)
                      {
                        break;
                      }
                    }
                  }
                }

                if (v8)
                {
                  this = kdu_params::access_relation(v8, v9, -1, 0, 0);
                  if (this)
                  {
                    v10 = this;
                    do
                    {
                      v12 = 0;
                      this = kdu_params::get(v10, "Mstage_xforms", 0, 0, &v12, 1, 1, 1);
                      if (this)
                      {
                        if (v12 != 1)
                        {
                          goto LABEL_25;
                        }

                        this = kdu_params::get(v10, "Mstage_xforms", 1, 0, &v12, 1, 1, 1);
                        if (this)
                        {
                          goto LABEL_25;
                        }

                        v11 = 1;
                        this = kdu_params::get(v10, "Mstage_xforms", 0, 3, &v11, 1, 1, 1);
                        if (v11)
                        {
                          goto LABEL_25;
                        }
                      }

                      v10 = *(v10 + 11);
                    }

                    while (v10);
                  }
                }

                if (++v9 == v6)
                {
                  return this;
                }
              }

LABEL_25:
              *(*v2 + 16) = 0;
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t jp2_dimensions::get_size(jp2_dimensions *this)
{
  if (!*this)
  {
    jp2_dimensions::get_size();
  }

  return **this;
}

uint64_t jp2_dimensions::get_bit_depth(jp2_dimensions *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || (v2 = *this) == 0 || *(v2 + 20) <= a2)
  {
    jp2_dimensions::get_bit_depth();
  }

  v3 = *(*(v2 + 32) + 4 * a2);
  if (v3 >= 0)
  {
    return v3;
  }

  else
  {
    return -v3;
  }
}

uint64_t jp2_dimensions::get_signed(jp2_dimensions *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || (v2 = *this) == 0 || *(v2 + 20) <= a2)
  {
    jp2_dimensions::get_signed();
  }

  return *(*(v2 + 32) + 4 * a2) >> 31;
}

void j2_palette::copy(j2_palette *this, j2_palette *a2)
{
  if (!*(this + 2) && !*(this + 3))
  {
    *this = *a2;
    *(this + 4) = *(a2 + 4);
    operator new[]();
  }

  v3 = 0;
  memset(v2, 0, sizeof(v2));
  kdu_error::kdu_error(v2, "Error in Kakadu File Format Support:\n");
  kdu_error::~kdu_error(v2);
}

void j2_palette::init(j2_palette *this, jp2_input_box *a2)
{
  if (*(this + 1))
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    kdu_error::kdu_error(&v7, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v7);
  }

  *this = 1;
  if (*(a2 + 12) == 1885564018)
  {
    v6 = 0;
    v5 = 0;
    if (jp2_input_box::read(a2, &v6) && (*(*a2 + 32))(a2, &v5, 1) == 1)
    {
      v4 = v6;
      if (v6 - 1 <= 0x3FF)
      {
        if (v5)
        {
          *(this + 1) = v5;
          *(this + 2) = v4;
          operator new[]();
        }
      }
    }

    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    kdu_error::kdu_error(&v7, "Error in Kakadu File Format Support:\n");
    (*(v7 + 16))(&v7, "Malformed palette (pclr) box found in JP2-family data source.  Insufficient or illegal fields encountered.");
    kdu_error::~kdu_error(&v7);
  }

  j2_palette::init();
}

uint64_t j2_palette::finalize(uint64_t this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (v1 < 1)
    {
      goto LABEL_9;
    }

    v2 = *(this + 16);
    v3 = *(this + 4);
    do
    {
      v5 = *v2++;
      v4 = v5;
      if (!v5 || (v4 - 33) < 0xFFFFFFBF)
      {
        goto LABEL_9;
      }

      --v3;
    }

    while (v3);
    if ((v1 - 256) < 0xFFFFFF01 || (*(this + 8) - 1025) <= 0xFFFFFBFF)
    {
LABEL_9:
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      kdu_error::kdu_error(v6, "Error in Kakadu File Format Support:\n");
      kdu_error::~kdu_error(v6);
    }
  }

  return this;
}

uint64_t j2_palette::save_box(uint64_t this, jp2_output_box *a2)
{
  if (*(this + 4))
  {
    v3 = this;
    j2_palette::finalize(this);
    v17 = 0uLL;
    v21 = 0;
    v16 = &unk_1EF4D29C0;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0xFFFFFFFFFFFFFFFFLL;
    jp2_output_box::open(&v16, a2, 1885564018, 0);
    *__ptr = bswap32(*(v3 + 8)) >> 16;
    v16[5](&v16, __ptr, 2);
    __ptr[0] = *(v3 + 4);
    v16[5](&v16, __ptr, 1);
    LODWORD(v4) = *(v3 + 4);
    if (v4 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = *(*(v3 + 16) + 4 * v5);
        if (v6 <= 0)
        {
          v7 = ~v6 | 0x80;
        }

        else
        {
          v7 = v6 - 1;
        }

        __ptr[0] = v7;
        v16[5](&v16, __ptr, 1);
        ++v5;
        v4 = *(v3 + 4);
      }

      while (v5 < v4);
    }

    v8 = *(v3 + 8);
    if (v8 >= 1)
    {
      for (i = 0; i < v8; ++i)
      {
        *__ptr = 0;
        if (v4 >= 1)
        {
          v10 = 0;
          do
          {
            v11 = *(*(v3 + 16) + 4 * v10);
            if (v11 >= 0)
            {
              v12 = *(*(v3 + 16) + 4 * v10);
            }

            else
            {
              v12 = -v11;
            }

            if (v12 - 33 <= 0xFFFFFFDF)
            {
              __assert_rtn("save_box", "jp2.cpp", 2583, "(entry_bytes > 0) && (entry_bytes <= 4)");
            }

            v13 = (v12 + 7) >> 3;
            v14 = (*(*(*(v3 + 24) + 8 * v10) + 4 * i) - (~v11 & 0x80000000)) >> -v12;
            __ptr[v13 - 1] = v14;
            if (v12 >= 9)
            {
              __ptr[(v13 - 2)] = BYTE1(v14);
              if (v12 >= 0x11)
              {
                __ptr[(v13 - 3)] = BYTE2(v14);
                if (v12 >= 0x19)
                {
                  __ptr[(v13 - 4)] = HIBYTE(v14);
                }
              }
            }

            jp2_output_box::write(&v16, __ptr, v13);
            ++v10;
            v4 = *(v3 + 4);
          }

          while (v10 < v4);
          v8 = *(v3 + 8);
        }
      }
    }

    jp2_output_box::close(&v16);
    v16 = &unk_1EF4D29C0;
    this = *(&v20 + 1);
    if (*(&v20 + 1))
    {
      return MEMORY[0x186602830](*(&v20 + 1), 0x1000C8077774924);
    }
  }

  return this;
}

void sub_185F50CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a19)
  {
    MEMORY[0x186602830](a19, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t jp2_palette::get_num_entries(jp2_palette *this)
{
  if (!*this)
  {
    jp2_palette::get_num_entries();
  }

  return *(*this + 8);
}

uint64_t jp2_palette::get_num_luts(jp2_palette *this)
{
  if (!*this)
  {
    jp2_palette::get_num_luts();
  }

  return *(*this + 4);
}

uint64_t jp2_palette::get_bit_depth(jp2_palette *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || (v2 = *this) == 0 || *(v2 + 4) <= a2)
  {
    jp2_palette::get_bit_depth();
  }

  v3 = *(*(v2 + 16) + 4 * a2);
  if (v3 >= 0)
  {
    return v3;
  }

  else
  {
    return -v3;
  }
}

uint64_t jp2_palette::get_signed(jp2_palette *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || (v2 = *this) == 0 || *(v2 + 4) <= a2)
  {
    jp2_palette::get_signed();
  }

  return *(*(v2 + 16) + 4 * a2) >> 31;
}

uint64_t *jp2_palette::get_lut(uint64_t *result, unsigned int a2, uint64_t a3)
{
  if ((a2 & 0x80000000) != 0 || (v3 = *result) == 0 || *(v3 + 4) <= a2)
  {
    jp2_palette::get_lut();
  }

  if (*(v3 + 8) >= 1)
  {
    v4 = 0;
    v5 = *(*(v3 + 24) + 8 * a2);
    do
    {
      *(a3 + 2 * v4) = (*(v5 + 4 * v4) + 0x40000) >> 19;
      ++v4;
    }

    while (v4 < *(*result + 8));
  }

  return result;
}

void j2_component_map::copy(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8) && !*(a1 + 16) && !*(a1 + 32))
  {
    *a1 = *a2;
    v2 = *(a2 + 28);
    *(a1 + 24) = v2;
    *(a1 + 28) = v2;
    operator new[]();
  }

  v4 = 0;
  memset(v3, 0, sizeof(v3));
  kdu_error::kdu_error(v3, "Error in Kakadu File Format Support:\n");
  kdu_error::~kdu_error(v3);
}

void j2_component_map::init(j2_component_map *this, jp2_input_box *a2)
{
  if (*(a2 + 12) == 1668112752)
  {
    *this = 1;
    if (*(this + 4) || *(this + 7))
    {
      v6 = 0;
      v4 = 0u;
      v5 = 0u;
      kdu_error::kdu_error(&v4, "Error in Kakadu File Format Support:\n");
      kdu_error::~kdu_error(&v4);
    }

    if ((*(a2 + 125) & 1) != 0 || ((v2 = *(a2 + 44) + *(a2 + 22) - *(a2 + 34)) != 0 ? (v3 = (v2 & 3) == 0) : (v3 = 0), !v3))
    {
      v6 = 0;
      v4 = 0u;
      v5 = 0u;
      kdu_error::kdu_error(&v4, "Error in Kakadu File Format Support:\n");
      (*(v4 + 16))(&v4, "Malformed component mapping (cmap) box encountered in JP2-family data source.  The body of any such box must contain exactly four bytes for each cmap-channel and there must be at least one cmap-channel.");
      kdu_error::~kdu_error(&v4);
    }

    *(this + 7) = v2 >> 2;
    if (v2 >> 2 <= 0)
    {
      v6 = 0;
      v4 = 0u;
      v5 = 0u;
      kdu_error::kdu_error(&v4, "Error in Kakadu File Format Support:\n");
      (*(v4 + 16))(&v4, "Malformed component mapping (cmap) box encountered in JP2-family data source.  The body of the box does not appear to contain any channel mappings.");
      kdu_error::~kdu_error(&v4);
    }

    *(this + 6) = v2 >> 2;
    operator new[]();
  }

  j2_component_map::init();
}

void j2_component_map::init_missing_cmap(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 32) && !*(a1 + 28))
  {
    v2 = *(a2 + 20);
    *(a1 + 24) = v2;
    *(a1 + 28) = v2;
    operator new[]();
  }

  j2_component_map::init_missing_cmap();
}

_BYTE *j2_component_map::save_box(_BYTE *this, jp2_output_box *a2, int a3)
{
  v3 = this;
  if ((*this & 1) != 0 || a3)
  {
    v7 = 0uLL;
    v11 = 0;
    v6 = &unk_1EF4D29C0;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0xFFFFFFFFFFFFFFFFLL;
    jp2_output_box::open(&v6, a2, 1668112752, 0);
    if (*(v3 + 7) >= 1)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v12 = bswap32(*(*(v3 + 4) + v4)) >> 16;
        v6[5](&v6, &v12, 2);
        if ((*(*(v3 + 4) + v4 + 4) & 0x80000000) != 0)
        {
          v12 = 0;
          v6[5](&v6, &v12, 2);
        }

        else
        {
          LOBYTE(v12) = 1;
          v6[5](&v6, &v12, 1);
          LOBYTE(v12) = *(*(v3 + 4) + v4 + 4);
          v6[5](&v6, &v12, 1);
        }

        ++v5;
        v4 += 16;
      }

      while (v5 < *(v3 + 7));
    }

    jp2_output_box::close(&v6);
    v6 = &unk_1EF4D29C0;
    this = *(&v10 + 1);
    if (*(&v10 + 1))
    {
      return MEMORY[0x186602830](*(&v10 + 1), 0x1000C8077774924);
    }
  }

  return this;
}

void sub_185F515A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  jp2_output_box::~jp2_output_box(va);
  _Unwind_Resume(a1);
}

uint64_t j2_component_map::finalize(uint64_t this, j2_dimensions *a2, j2_palette *a3)
{
  *(this + 8) = a2;
  v3 = (this + 8);
  *(this + 16) = a3;
  v4 = (this + 16);
  if (!a2)
  {
    j2_component_map::finalize();
  }

  if (!a3)
  {
    jp2_palette::get_num_luts();
  }

  v5 = this;
  v6 = *(a2 + 5);
  v7 = *(a3 + 1);
  if (v7 < 1)
  {
    if (*this == 1)
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      kdu_error::kdu_error(&v15, "Error in Kakadu File Format Support:\n");
      (*(v15 + 16))(&v15, "JP2-family data source appears to contain a Component Mapping (cmap) box without any matching Palette (pclr) box.  Palette and Component Mapping boxes must be in one-to-one correspondence.");
      kdu_error::~kdu_error(&v15);
    }

    if (!*(this + 28))
    {
      *(this + 24) = v6;
      *(this + 28) = v6;
      v14 = *(this + 32);
      if (v14)
      {
        MEMORY[0x186602830](v14, 0x1000C808B6DE1C6);
      }

      operator new[]();
    }

    j2_component_map::finalize();
  }

  *this = 1;
  if (*(this + 28) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(v5 + 32);
      v11 = *(v10 + v8);
      if (v11 < 0 || v11 >= v6 || (v12 = *(v10 + v8 + 4), v12 >= v7))
      {
        v17 = 0;
        v15 = 0u;
        v16 = 0u;
        kdu_error::kdu_error(&v15, "Error in Kakadu File Format Support:\n");
        (*(v15 + 16))(&v15, "JP2-family data source appears to contain an illegal Component Mapping (cmap) box, one of whose channels refers to a non-existent image component or palette lookup table.");
        kdu_error::~kdu_error(&v15);
      }

      v13 = v10 + v8;
      if (v12 < 0)
      {
        *(v13 + 8) = jp2_dimensions::get_bit_depth(v3, *(v10 + v8));
        this = jp2_dimensions::get_signed(v3, *(v10 + v8));
      }

      else
      {
        *(v13 + 8) = jp2_palette::get_bit_depth(v4, v12);
        this = jp2_palette::get_signed(v4, *(v13 + 4));
      }

      *(v10 + v8 + 12) = this;
      ++v9;
      v8 += 16;
    }

    while (v9 < *(v5 + 28));
  }

  return this;
}

uint64_t j2_component_map::add_cmap_channel(j2_component_map *this, signed int a2, signed int a3)
{
  v4 = (this + 8);
  v3 = *(this + 1);
  if (!v3 || (v7 = (this + 16), (v6 = *(this + 2)) == 0))
  {
    j2_component_map::add_cmap_channel();
  }

  if (a3 < 0)
  {
    v8 = -1;
  }

  else
  {
    v8 = a3;
  }

  v9 = *(this + 7);
  if (v9 < 1)
  {
LABEL_11:
    if (a2 < 0 || *(v3 + 20) <= a2 || v8 >= *(v6 + 4))
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      kdu_error::kdu_error(v17, "Error in Kakadu File Format Support:\n");
      (*(*&v17[0] + 16))(v17, "Attempting to create a Component Mapping (cmap) box, one of whose channels refers to a non-existent image component or palette lookup table.");
      kdu_error::~kdu_error(v17);
    }

    if ((*this & 1) == 0)
    {
      j2_component_map::add_cmap_channel();
    }

    v13 = *(this + 6);
    v12 = *(this + 7);
    if (v12 >= v13)
    {
      *(this + 6) = v12 + v13 + 3;
      operator new[]();
    }

    v14 = *(this + 4);
    *(this + 7) = v12 + 1;
    v15 = v14 + 16 * v12;
    *v15 = a2;
    *(v15 + 4) = v8;
    if (a3 < 0)
    {
      *(v15 + 8) = jp2_dimensions::get_bit_depth(v4, a2);
      v16 = jp2_dimensions::get_signed(v4, *v15);
    }

    else
    {
      *(v15 + 8) = jp2_palette::get_bit_depth(v7, a3);
      v16 = jp2_palette::get_signed(v7, *(v15 + 4));
    }

    *(v15 + 12) = v16;
    return (*(this + 7) - 1);
  }

  else
  {
    result = 0;
    v11 = (*(this + 4) + 4);
    while (*(v11 - 1) != a2 || *v11 != v8)
    {
      ++result;
      v11 += 4;
      if (v9 == result)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

void j2_channels::copy(j2_channels *this, j2_channels *a2)
{
  if (!*(this + 1) && !*(this + 4))
  {
    v2 = *(a2 + 1);
    *this = v2;
    *(this + 1) = v2;
    operator new[]();
  }

  v4 = 0;
  memset(v3, 0, sizeof(v3));
  kdu_error::kdu_error(v3, "Error in Kakadu File Format Support:\n");
  kdu_error::~kdu_error(v3);
}

uint64_t j2_channels::init(j2_channels *this, jp2_input_box *a2)
{
  if (*(this + 1) || *(this + 4) || (*(this + 17) & 1) != 0 || (*(this + 18) & 1) != 0 || *(this + 16) == 1)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    kdu_error::kdu_error(&v18, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v18);
  }

  v4 = *(a2 + 12);
  if (v4 == 1869636468)
  {
    LOBYTE(v17) = 0;
    if ((*(*a2 + 32))(a2, &v17, 1) != 1 || v17 >= 3u)
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      kdu_error::kdu_error(&v18, "Error in Kakadu File Format Support:\n");
      (*(v18 + 16))(&v18, "Malformed opacity (opct) box found in JPX data source.  Failed to read valid Otyp field.");
      kdu_error::~kdu_error(&v18);
    }

    if (v17 == 1)
    {
      *(this + 18) = 1;
    }

    else
    {
      if (v17)
      {
        LOBYTE(v16) = 0;
        if ((*(*a2 + 32))(a2, &v16, 1) != 1)
        {
          v20 = 0;
          v18 = 0u;
          v19 = 0u;
          kdu_error::kdu_error(&v18, "Error in Kakadu File Format Support:\n");
          (*(v18 + 16))(&v18, "Malformed opacity (opct) box found in JPX data source.  Failed to read valid Nch field.");
          kdu_error::~kdu_error(&v18);
        }

        *(this + 16) = 1;
        v14 = v16;
        *this = v16;
        *(this + 1) = v14;
        operator new[]();
      }

      *(this + 17) = 1;
    }

    result = (*(*a2 + 16))(a2);
    if ((result & 1) == 0)
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      kdu_error::kdu_error(&v18, "Error in Kakadu File Format Support:\n");
      (*(v18 + 16))(&v18, "Malformed opacity (opct) box found in JPX data source.  The box appears to be too long.");
LABEL_49:
      kdu_error::~kdu_error(&v18);
    }
  }

  else
  {
    if (v4 != 1667523942)
    {
      j2_channels::init();
    }

    v17 = 0;
    v5 = jp2_input_box::read(a2, &v17);
    v6 = v17;
    if (!v5 || !v17)
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      kdu_error::kdu_error(&v18, "Error in Kakadu File Format Support:\n");
      (*(v18 + 16))(&v18, "Malformed channel definition (cdef) box found in JP2-family data source.  Missing or invalid fields.");
      kdu_error::~kdu_error(&v18);
    }

    v7 = 0;
    do
    {
      v16 = 0;
      *v15 = 0;
      if (!jp2_input_box::read(a2, &v16) || !jp2_input_box::read(a2, &v15[1]) || !jp2_input_box::read(a2, v15) || (v8 = v15[1], (v15[1] + 1) >= 4u))
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
        kdu_error::kdu_error(&v18, "Error in Kakadu File Format Support:\n");
        (*(v18 + 16))(&v18, "Malformed channel definition (cdef) box found in JP2-family data source.  Missing or invalid channel association information.");
        kdu_error::~kdu_error(&v18);
      }

      v9 = v15[0];
      if (v15[0] != 0xFFFF && v15[1] <= 2u)
      {
        if (v15[0])
        {
          v10 = v15[0] - 1;
        }

        else
        {
          v10 = 0;
        }

        if (v10 >= *this)
        {
          *this += v10 + 3;
          operator new[]();
        }

        if (v10 >= *(this + 1))
        {
          *(this + 1) = v10 + 1;
        }

        v11 = *(this + 1) + (v10 << 6);
        if ((*(v11 + 4 * v8) & 0x80000000) == 0)
        {
          v20 = 0;
          v18 = 0u;
          v19 = 0u;
          kdu_error::kdu_error(&v18, "Error in Kakadu File Format Support:\n");
          (*(v18 + 16))(&v18, "Malformed channel definition (cdef) box found in JP2-family data source.  The box appears to provide multiple channels with the same Assoc/Typ values.");
          kdu_error::~kdu_error(&v18);
        }

        *(v11 + 4 * v8) = v16;
        if (!v9)
        {
          *(v11 + v8 + 48) = 1;
        }
      }

      ++v7;
    }

    while (v7 < v6);
    result = (*(*a2 + 16))(a2);
    if ((result & 1) == 0)
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      kdu_error::kdu_error(&v18, "Error in Kakadu File Format Support:\n");
      (*(v18 + 16))(&v18, "Malformed channel definition (cdef) box found in JP2-family data source.  The box appears to be too long.");
      goto LABEL_49;
    }
  }

  return result;
}

unsigned int *j2_channels::finalize(unsigned int *this, unsigned int a2, int a3)
{
  v3 = this[1];
  if (a2)
  {
    v4 = a2;
    if (v3 > a2)
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      kdu_error::kdu_error(&v26, "Error in Kakadu File Format Support:\n");
      kdu_error::~kdu_error(&v26);
    }
  }

  else
  {
    v4 = this[1];
  }

  if (*(this + 4))
  {
    if (v3 != v4)
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      kdu_error::kdu_error(&v26, "Error in Kakadu File Format Support:\n");
      (*(v26 + 16))(&v26, "Malformed opacity (opct) box encountered in a JPX file indicates a different number of colour channels to that associated with the specified colour space.");
      kdu_error::~kdu_error(&v26);
    }

    v5 = 0;
    if (a3)
    {
      goto LABEL_49;
    }
  }

  else if (v3 >= v4)
  {
    v5 = 0;
    v4 = this[1];
    if (a3)
    {
LABEL_49:
      if (v4)
      {
        v20 = 0;
        v21 = 4;
        do
        {
          if (*(this + 16) == 1 && ((*(*(this + 1) + v21) & 0x80000000) == 0 || (v5[2] & 0x80000000) == 0))
          {
            v28 = 0;
            v26 = 0u;
            v27 = 0u;
            kdu_error::kdu_error(&v26, "Error in Kakadu File Format Support:\n");
            kdu_error::~kdu_error(&v26);
          }

          ++v20;
          v21 += 64;
        }

        while (v20 < v4);
      }

      return this;
    }
  }

  else
  {
    if (v4 > *this)
    {
      *this = v4;
      operator new[]();
    }

    if (this[1] || (*(this + 17) & 1) != 0 || (*(this + 18) & 1) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      if (v4 >= 1 && (this[4] & 1) == 0)
      {
        v22 = 0;
        v23 = *(this + 1);
        v24 = v23;
        do
        {
          v25 = v24;
          if (a3)
          {
            v24[3] = 0;
            v25 = &v23[16 * v22 + 6];
          }

          *v25 = v22++;
          v24 += 16;
        }

        while (v4 != v22);
        v5 = v24 - 16;
      }
    }

    this[1] = v4;
    if (a3)
    {
      goto LABEL_49;
    }
  }

  if (v4 >= 2)
  {
    v6 = *(this + 1);
    v7 = 1;
    v8 = 64;
    do
    {
      v9 = 0;
      v10 = v6 + v8;
      do
      {
        if (*(v6 + v9 + 48) == 1)
        {
          if ((*(v10 + 4 * v9) & 0x80000000) == 0)
          {
            v28 = 0;
            v26 = 0u;
            v27 = 0u;
            kdu_error::kdu_error(&v26, "Error in Kakadu File Format Support:\n");
            (*(v26 + 16))(&v26, "Malformed channel definition (cdef) box found in JP2-family data source.  The box appears to provide multiple channels with the same Assoc/Typ values.");
            kdu_error::~kdu_error(&v26);
          }

          v11 = *(v6 + 4 * v9);
          if (v11 < 0)
          {
            j2_channels::finalize();
          }

          *(v10 + 4 * v9) = v11;
        }

        ++v9;
      }

      while (v9 != 3);
      ++v7;
      v4 = this[1];
      v8 += 64;
    }

    while (v7 < v4);
  }

  if (*(this + 17) == 1)
  {
    if (!v4)
    {
      return this;
    }

    v12 = 0;
    v13 = (*(this + 1) + 4);
    do
    {
      *(v13 - 1) = v12;
      v4 = this[1];
      *v13 = v4;
      v13 += 16;
      ++v12;
    }

    while (v12 < v4);
  }

  else if (*(this + 18) == 1)
  {
    if (!v4)
    {
      return this;
    }

    v14 = 0;
    v15 = (*(this + 1) + 8);
    do
    {
      *(v15 - 2) = v14;
      v4 = this[1];
      *v15 = v4;
      v15 += 16;
      ++v14;
    }

    while (v14 < v4);
  }

  else if (*(this + 4))
  {
    if (!v4)
    {
      return this;
    }

    v16 = 0;
    v17 = *(this + 1);
    do
    {
      *v17 = v16;
      v17 += 16;
      ++v16;
      v4 = this[1];
    }

    while (v16 < v4);
  }

  if (v4)
  {
    v18 = 0;
    for (i = 0; i < v4; ++i)
    {
      if ((*(*(this + 1) + v18) & 0x80000000) != 0)
      {
        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        kdu_error::kdu_error(&v26, "Error in Kakadu File Format Support:\n");
        kdu_error::~kdu_error(&v26);
      }

      v18 += 64;
    }
  }

  return this;
}

BOOL j2_channels::all_cmap_channels_found(j2_channels *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = *(this + 1);
LABEL_3:
    v5 = 3;
    v6 = v4;
    while ((*v6 & 0x80000000) != 0 || (v6[3] & 0x80000000) == 0)
    {
      ++v6;
      if (!--v5)
      {
        ++v2;
        v4 += 16;
        v3 = v2 >= v1;
        if (v2 != v1)
        {
          goto LABEL_3;
        }

        return 1;
      }
    }
  }

  else
  {
    return 1;
  }

  return v3;
}

unsigned int *j2_channels::find_cmap_channels(unsigned int *this, j2_component_map *a2, int a3)
{
  v4 = this;
  if (this[1])
  {
    v5 = this + 5;
    v6 = this[5];
    this[5] = *(a2 + 7) + v6;
  }

  else
  {
    this = j2_channels::finalize(this, *(a2 + 7), 0);
    v5 = v4 + 5;
    v6 = v4[5];
    v7 = v4[1];
    v4[5] = *(a2 + 7) + v6;
    if (!v7)
    {
      return this;
    }
  }

  v8 = 0;
  v9 = 1;
  v10 = 24;
  v30 = v4;
  do
  {
    v11 = 0;
    v12 = *(v4 + 1);
    v13 = v12 + (v8 << 6);
    v14 = (v12 + v10);
    do
    {
      v15 = *(v14 - 6);
      if (v15 < 0)
      {
        if (!v11)
        {
          j2_channels::find_cmap_channels();
        }
      }

      else
      {
        v16 = v15 - v6;
        if (v15 < v6 || v15 >= *v5)
        {
          v9 &= *(v14 - 3) >= 0;
        }

        else
        {
          *(v14 - 3) = a3;
          j2_component_map::verify_channel_query_idx(a2, v16);
          *v14 = *(*(a2 + 4) + 16 * v16);
          this = j2_component_map::verify_channel_query_idx(a2, v16);
          v14[3] = *(*(a2 + 4) + 16 * v16 + 4);
          if (!v11)
          {
            j2_component_map::verify_channel_query_idx(a2, v16);
            *(v13 + 56) = *(*(a2 + 4) + 16 * v16 + 8);
            this = j2_component_map::verify_channel_query_idx(a2, v16);
            *(v13 + 60) = *(*(a2 + 4) + 16 * v16 + 12);
          }
        }
      }

      --v11;
      ++v14;
    }

    while (v11 != -3);
    ++v8;
    v4 = v30;
    v17 = v30[1];
    v10 += 64;
  }

  while (v8 < v17);
  if (v9)
  {
    v18 = *(v30 + 4);
    if (v18)
    {
      if (v17)
      {
        v19 = 0;
        v20 = v30[6];
        do
        {
          v21 = *(v4 + 1) + (v19 << 6);
          v22 = *(v21 + 56);
          if (v22 <= 0)
          {
            j2_channels::find_cmap_channels();
          }

          v23 = (v22 - 1) >> 3;
          v24 = v23 + 1;
          if (v23 >= v20 || v19 == v17 - 1 && v20 != v24)
          {
            v33 = 0;
            memset(v32, 0, sizeof(v32));
            kdu_error::kdu_error(v32, "Error in Kakadu File Format Support:\n");
            (*(*&v32[0] + 16))(v32, "Malformed opacity (opct) box in JPX data source.  The length of a chroma key specification is incompatible with the bit-depths of the colour channels.");
            kdu_error::~kdu_error(v32);
          }

          v25 = 0;
          *(v21 + 52) = 0;
          v26 = *(v21 + 60);
          v27 = v23 + 2;
          v4 = v30;
          do
          {
            *(v21 + 52) = v25 << 8;
            v28 = *v18++;
            v25 = v28 | (v25 << 8);
            *(v21 + 52) = v25;
            if (v26)
            {
              v29 = *(v21 + 56);
              if (v29 <= 31)
              {
                v25 = v25 << -v29 >> -v29;
                *(v21 + 52) = v25;
              }
            }

            --v27;
          }

          while (v27 > 1);
          v20 -= v24;
          ++v19;
          v17 = v30[1];
        }

        while (v19 < v17);
      }
    }
  }

  return this;
}

unsigned int *j2_channels::add_cmap_channels(unsigned int *this, j2_component_map *a2, int a3)
{
  v5 = this;
  if (this[1])
  {
    v6 = this[5];
    this[5] = *(a2 + 7) + v6;
  }

  else
  {
    this = j2_channels::finalize(this, *(a2 + 7), 1);
    v7 = v5[1];
    v6 = v5[5];
    v5[5] = *(a2 + 7) + v6;
    if (!v7)
    {
      return this;
    }
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = 0;
    v11 = *(v5 + 1);
    v12 = v11 + (v9 << 6);
    v13 = (v11 + v8);
    do
    {
      if (v13[3] == a3)
      {
        if ((*v13 & 0x80000000) == 0)
        {
          j2_channels::add_cmap_channels();
        }

        this = j2_component_map::add_cmap_channel(a2, v13[6], v13[9]);
        *v13 = this + v6;
        if (v10)
        {
          if (*(v5 + 16) == 1)
          {
            j2_channels::add_cmap_channels();
          }
        }

        else
        {
          v14 = this;
          j2_component_map::verify_channel_query_idx(a2, this);
          *(v12 + 56) = *(*(a2 + 4) + 16 * v14 + 8);
          this = j2_component_map::verify_channel_query_idx(a2, v14);
          *(v12 + 60) = *(*(a2 + 4) + 16 * v14 + 12);
          if (*(v5 + 16) == 1 && v9 != v14)
          {
            v16 = 0;
            memset(v15, 0, sizeof(v15));
            kdu_error::kdu_error(v15, "Error in Kakadu File Format Support:\n");
            (*(*&v15[0] + 16))(v15, "Attempting to create a JPX file which uses chroma-keys in an incompatible manner across compositing layers which share a common codestream.  The JPX file format has insufficient flexibility in its channel mapping rules to allow arbitrary binding between image components and colour channels at the same time as chroma keying.");
            kdu_error::~kdu_error(v15);
          }
        }
      }

      --v10;
      ++v13;
    }

    while (v10 != -3);
    ++v9;
    v8 += 64;
  }

  while (v9 < v5[1]);
  return this;
}

uint64_t j2_channels::save_box(uint64_t this, jp2_output_box *a2, int a3)
{
  v3 = *(this + 4);
  if (!v3)
  {
    return this;
  }

  v4 = this;
  if (*(this + 32))
  {
    j2_channels::save_box();
  }

  v5 = 0;
  v6 = *(this + 8);
  v7 = (v6 + 64);
  v8 = vdupq_n_s64(0x10uLL);
  v9 = v6;
  do
  {
    if (v3 == 1)
    {
      v10 = 1;
      LODWORD(v11) = 1;
    }

    else
    {
      v12 = v7;
      v11 = 1;
      while (1)
      {
        v13 = *v12;
        v12 += 16;
        if (v13 != *(v6 + 4 * v5))
        {
          break;
        }

        if (v3 == ++v11)
        {
          v10 = v3;
          LODWORD(v11) = v3;
          goto LABEL_11;
        }
      }

      v10 = v3;
    }

LABEL_11:
    v14 = v11 == v3;
    v15 = (v10 + 15) & 0x1FFFFFFF0;
    v16 = vdupq_n_s64(v10 - 1);
    v17 = v9;
    v18 = xmmword_186205EC0;
    v19 = xmmword_186205EB0;
    v20 = xmmword_186205EA0;
    v21 = xmmword_186205E90;
    v22 = xmmword_186205E80;
    v23 = xmmword_186205E70;
    v24 = xmmword_186205E60;
    v25 = xmmword_186205E50;
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v16, v18));
      if (vuzp1_s8(vuzp1_s16(v26, 14), 14).u8[0])
      {
        v17[48] = v14;
      }

      if (vuzp1_s8(vuzp1_s16(v26, 14), 14).i8[1])
      {
        v17[112] = v14;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v16, *&v19))), 14).i8[2])
      {
        v17[176] = v14;
        v17[240] = v14;
      }

      v27 = vmovn_s64(vcgeq_u64(v16, v20));
      if (vuzp1_s8(14, vuzp1_s16(v27, 14)).i32[1])
      {
        v17[304] = v14;
      }

      if (vuzp1_s8(14, vuzp1_s16(v27, 14)).i8[5])
      {
        v17[368] = v14;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v16, *&v21)))).i8[6])
      {
        v17[432] = v14;
        v17[496] = v14;
      }

      v28 = vmovn_s64(vcgeq_u64(v16, v22));
      if (vuzp1_s8(vuzp1_s16(v28, 14), 14).u8[0])
      {
        v17[560] = v14;
      }

      if (vuzp1_s8(vuzp1_s16(v28, 14), 14).i8[1])
      {
        v17[624] = v14;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v16, *&v23))), 14).i8[2])
      {
        v17[688] = v14;
        v17[752] = v14;
      }

      v29 = vmovn_s64(vcgeq_u64(v16, v24));
      if (vuzp1_s8(14, vuzp1_s16(v29, 14)).i32[1])
      {
        v17[816] = v14;
      }

      if (vuzp1_s8(14, vuzp1_s16(v29, 14)).i8[5])
      {
        v17[880] = v14;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v16, *&v25)))).i8[6])
      {
        v17[944] = v14;
        v17[1008] = v14;
      }

      v20 = vaddq_s64(v20, v8);
      v19 = vaddq_s64(v19, v8);
      v18 = vaddq_s64(v18, v8);
      v21 = vaddq_s64(v21, v8);
      v22 = vaddq_s64(v22, v8);
      v23 = vaddq_s64(v23, v8);
      v24 = vaddq_s64(v24, v8);
      v17 += 1024;
      v25 = vaddq_s64(v25, v8);
      v15 -= 16;
    }

    while (v15);
    ++v5;
    ++v7;
    ++v9;
  }

  while (v5 != 3);
  v30 = 0;
  v31 = *(this + 16);
  v32 = v6;
  do
  {
    v33 = *v32;
    v32 += 16;
    if (v30 != v33)
    {
      if (*(this + 16))
      {
        j2_channels::save_box();
      }

LABEL_48:
      v36 = 0;
      v35 = 1;
      goto LABEL_49;
    }

    ++v30;
  }

  while (v10 != v30);
  if (*(v6 + 49) != 1)
  {
    if (*(this + 16))
    {
      goto LABEL_109;
    }

    goto LABEL_48;
  }

  v34 = *(v6 + 50);
  v35 = v34 ^ 1 | v31;
  v36 = v34 & (a3 ^ 1 | v31);
  if (v34 & 1) == 0 && (v31)
  {
LABEL_109:
    j2_channels::save_box();
  }

LABEL_49:
  v38 = *(v6 + 4);
  v37 = *(v6 + 8);
  if (v38 < 0)
  {
    if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    if ((v31 & v36) == 1)
    {
      goto LABEL_59;
    }

    if (v35)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

LABEL_53:
    if (v38 == v3)
    {
      if ((v36 & 1) == 0)
      {
        goto LABEL_67;
      }

LABEL_59:
      v62 = 0uLL;
      v66 = 0;
      v61 = &unk_1EF4D29C0;
      v63 = 0uLL;
      v64 = 0uLL;
      v65 = 0xFFFFFFFFFFFFFFFFLL;
      jp2_output_box::open(&v61, a2, 1869636468, 0);
      v39 = *(v4 + 8);
      v41 = *(v39 + 4);
      v40 = *(v39 + 8);
      if ((v41 & 0x80000000) == 0)
      {
        if (v40 < 0 && (*(v4 + 16) & 1) == 0)
        {
          LOBYTE(v59[0]) = 0;
          v61[5](&v61, v59, 1);
          goto LABEL_104;
        }

        v54 = "(channels->cmap_channel[2] < 0) && !have_chroma_key";
        v58 = 3512;
LABEL_111:
        __assert_rtn("save_box", "jp2.cpp", v58, v54);
      }

      if ((v40 & 0x80000000) == 0)
      {
        if ((*(v4 + 16) & 1) == 0)
        {
          LOBYTE(v59[0]) = 1;
          v61[5](&v61, v59, 1);
          goto LABEL_104;
        }

        v54 = "!have_chroma_key";
        v58 = 3517;
        goto LABEL_111;
      }

      if (!*(v4 + 16))
      {
        v54 = "have_chroma_key";
        v58 = 3522;
        goto LABEL_111;
      }

      LOBYTE(v59[0]) = 2;
      v61[5](&v61, v59, 1);
      if (*(v4 + 4) >= 0x100u)
      {
        v60 = 0;
        memset(v59, 0, sizeof(v59));
        kdu_error::kdu_error(v59, "Error in Kakadu File Format Support:\n");
        (*(*&v59[0] + 16))(v59, "Attempting to write a JPX opacity box with chroma key values for more than 255 channels.  This is not possible within the syntactic constraints of the opct box.");
        kdu_error::~kdu_error(v59);
      }

      LOBYTE(v59[0]) = *(v4 + 4);
      v61[5](&v61, v59, 1);
      if (*(v4 + 4))
      {
        v53 = 0;
        v54 = "channels[n].bit_depth > 0";
        while (1)
        {
          v55 = *(*(v4 + 8) + (v53 << 6) + 56);
          if (v55 <= 0)
          {
            break;
          }

          v56 = (v55 - 1) & 0xFFFFFFF8;
          do
          {
            LOBYTE(v59[0]) = *(*(v4 + 8) + (v53 << 6) + 52) >> v56;
            v61[5](&v61, v59, 1);
            v57 = v56 <= 7;
            v56 -= 8;
          }

          while (!v57);
          if (++v53 >= *(v4 + 4))
          {
            goto LABEL_104;
          }
        }

        v58 = 3533;
        goto LABEL_111;
      }
    }

    else
    {
      if (((v37 == v3) & v36) != 0)
      {
        goto LABEL_59;
      }

LABEL_67:
      v62 = 0uLL;
      v66 = 0;
      v61 = &unk_1EF4D29C0;
      v63 = 0uLL;
      v64 = 0uLL;
      v65 = 0xFFFFFFFFFFFFFFFFLL;
      jp2_output_box::open(&v61, a2, 1667523942, 0);
      v42 = *(v4 + 4);
      if (v42)
      {
        v43 = 0;
        v44 = 0;
        v45 = *(v4 + 8);
        do
        {
          for (i = 0; i != 3; ++i)
          {
            if ((*(v45 + 4 * i + 24) & 0x80000000) == 0 && (!v43 || (*(v45 + i + 48) & 1) == 0))
            {
              ++v44;
            }
          }

          ++v43;
          v45 += 64;
        }

        while (v43 != v42);
      }

      else
      {
        v44 = 0;
      }

      LOWORD(v59[0]) = bswap32(v44) >> 16;
      v61[5](&v61, v59, 2);
      if (*(v4 + 4))
      {
        v47 = 0;
        v48 = 0;
        do
        {
          for (j = 0; j != 3; ++j)
          {
            v50 = *(v4 + 8);
            if ((*(v50 + v47 + 4 * j + 24) & 0x80000000) == 0)
            {
              if (*(v50 + v47 + j + 48))
              {
                v51 = 0;
              }

              else
              {
                v51 = v48 + 1;
              }

              if (*(v50 + v47 + j + 48))
              {
                v52 = 0;
              }

              else
              {
                v52 = (v48 + 1) >> 8;
              }

              if (!v48 || (*(v50 + v47 + j + 48) & 1) == 0)
              {
                LOWORD(v59[0]) = bswap32(*(v50 + v47 + 4 * j)) >> 16;
                v61[5](&v61, v59, 2);
                BYTE1(v59[0]) = j;
                LOBYTE(v59[0]) = 0;
                v61[5](&v61, v59, 2);
                BYTE1(v59[0]) = v51;
                LOBYTE(v59[0]) = v52;
                v61[5](&v61, v59, 2);
              }
            }
          }

          ++v48;
          v47 += 64;
        }

        while (v48 < *(v4 + 4));
      }
    }

LABEL_104:
    jp2_output_box::close(&v61);
    v61 = &unk_1EF4D29C0;
    this = *(&v65 + 1);
    if (*(&v65 + 1))
    {
      return MEMORY[0x186602830](*(&v65 + 1), 0x1000C8077774924);
    }
  }

  return this;
}

void sub_185F53834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  jp2_output_box::~jp2_output_box(va);
  _Unwind_Resume(v6);
}

void jp2_channels::init(jp2_channels *this, int a2)
{
  v2 = *this;
  if (*this)
  {
    if (!*(v2 + 8) && !*(v2 + 32))
    {
      *v2 = a2;
      *(v2 + 4) = a2;
      operator new[]();
    }

    v4 = 0;
    memset(v3, 0, sizeof(v3));
    kdu_error::kdu_error(v3, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(v3);
  }

  jp2_channels::init();
}

uint64_t *jp2_channels::set_colour_mapping(uint64_t *this, unsigned int a2, int a3, int a4, int a5)
{
  if ((a2 & 0x80000000) != 0 || (v5 = *this) == 0 || *(v5 + 4) <= a2)
  {
    jp2_channels::set_colour_mapping();
  }

  v6 = (*(v5 + 8) + (a2 << 6));
  v6[3] = a5;
  if (a4 < 0)
  {
    v7 = -1;
  }

  else
  {
    v7 = a4;
  }

  v6[6] = a3;
  v6[9] = v7;
  return this;
}

uint64_t *jp2_channels::set_opacity_mapping(uint64_t *this, unsigned int a2, int a3, int a4, int a5)
{
  if ((a2 & 0x80000000) != 0 || (v5 = *this) == 0 || *(v5 + 4) <= a2)
  {
    jp2_channels::set_opacity_mapping();
  }

  v6 = (*(v5 + 8) + (a2 << 6));
  v6[4] = a5;
  if (a4 < 0)
  {
    v7 = -1;
  }

  else
  {
    v7 = a4;
  }

  v6[7] = a3;
  v6[10] = v7;
  return this;
}

uint64_t *jp2_channels::set_premult_mapping(uint64_t *this, unsigned int a2, int a3, int a4, int a5)
{
  if ((a2 & 0x80000000) != 0 || (v5 = *this) == 0 || *(v5 + 4) <= a2)
  {
    jp2_channels::set_premult_mapping();
  }

  v6 = (*(v5 + 8) + (a2 << 6));
  v6[5] = a5;
  v6[8] = a3;
  v6[11] = a4;
  return this;
}

uint64_t jp2_channels::get_num_colours(jp2_channels *this)
{
  if (!*this)
  {
    jp2_channels::get_num_colours();
  }

  return *(*this + 4);
}

BOOL jp2_channels::get_colour_mapping(jp2_channels *this, unsigned int a2, int *a3, int *a4, int *a5)
{
  if ((a2 & 0x80000000) != 0 || (v5 = *this) == 0 || *(v5 + 4) <= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v6 = (*(v5 + 8) + (a2 << 6));
  v7 = v6[3];
  if ((v7 & 0x80000000) == 0)
  {
    *a5 = v7;
    *a3 = v6[6];
    *a4 = v6[9];
  }

  return v7 >= 0;
}

BOOL jp2_channels::get_opacity_mapping(jp2_channels *this, unsigned int a2, int *a3, int *a4, int *a5)
{
  if ((a2 & 0x80000000) != 0 || (v5 = *this) == 0 || *(v5 + 4) <= a2)
  {
    jp2_channels::get_opacity_mapping();
  }

  v6 = (*(v5 + 8) + (a2 << 6));
  v7 = v6[4];
  if ((v7 & 0x80000000) == 0)
  {
    *a5 = v7;
    *a3 = v6[7];
    *a4 = v6[10];
  }

  return v7 >= 0;
}

BOOL jp2_channels::get_premult_mapping(jp2_channels *this, unsigned int a2, int *a3, int *a4, int *a5)
{
  if ((a2 & 0x80000000) != 0 || (v5 = *this) == 0 || *(v5 + 4) <= a2)
  {
    jp2_channels::get_premult_mapping();
  }

  v6 = (*(v5 + 8) + (a2 << 6));
  v7 = v6[5];
  if ((v7 & 0x80000000) == 0)
  {
    *a5 = v7;
    *a3 = v6[8];
    *a4 = v6[11];
  }

  return v7 >= 0;
}

BOOL jp2_channels::has_opacity(jp2_channels *this)
{
  v1 = *(*this + 4);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*this + 8);
  if ((*(v2 + 16) & 0x80000000) == 0)
  {
    return 1;
  }

  v4 = (v2 + 80);
  v5 = 1;
  do
  {
    v6 = v5;
    if (v1 == v5)
    {
      break;
    }

    v7 = *v4;
    v4 += 16;
    ++v5;
  }

  while (v7 < 0);
  return v6 < v1;
}

BOOL jp2_channels::has_premultiplied_opacity(jp2_channels *this)
{
  v1 = *(*this + 4);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*this + 8);
  if ((*(v2 + 20) & 0x80000000) == 0)
  {
    return 1;
  }

  v4 = (v2 + 84);
  v5 = 1;
  do
  {
    v6 = v5;
    if (v1 == v5)
    {
      break;
    }

    v7 = *v4;
    v4 += 16;
    ++v5;
  }

  while (v7 < 0);
  return v6 < v1;
}

uint64_t j2_resolution::init(uint64_t this, float a2)
{
  if (*this > 0.0)
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
    kdu_error::kdu_error(v2, "Error in Kakadu File Format Support:\n");
    (*(*&v2[0] + 16))(v2, "JP2 resolution information may be initialized only once!");
    kdu_error::~kdu_error(v2);
  }

  *this = a2;
  *(this + 4) = a2;
  *(this + 8) = 0;
  return this;
}

uint64_t j2_resolution::init(j2_resolution *this, jp2_input_box *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*this > 0.0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    kdu_error::kdu_error(v9, "Error in Kakadu File Format Support:\n");
    (*(*&v9[0] + 16))(v9, "JP2-family data source contains multiple instances of the resolution (res) box within the same JP2 header box or compositing layer header box!");
    kdu_error::~kdu_error(v9);
  }

  if ((jp2_input_box::is_complete(a2) & 1) == 0)
  {
    j2_resolution::init();
  }

  *(&v9[1] + 1) = 0;
  v18 = 0u;
  v22 = 0u;
  v21 = 0u;
  v19 = 0;
  *&v9[0] = &unk_1EF4D2940;
  *(v9 + 8) = xmmword_1862067D0;
  v10 = 0;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0;
  v15 = -1;
  v16 = -1;
  v17 = -1;
  LODWORD(v18) = -1;
  DWORD2(v18) = 0;
  *(&v18 + 5) = 0;
  v20 = -1;
  while (1)
  {
    v4 = jp2_input_box::open(v9, a2);
    if (!v4)
    {
      break;
    }

    if ((jp2_input_box::is_complete(v9) & 1) == 0)
    {
      jp2_input_box::close(v9);
      (*(*a2 + 40))(a2, 0);
      goto LABEL_16;
    }

    if ((DWORD2(v11) - 1919251299) >= 2)
    {
      jp2_input_box::close(v9);
    }

    else
    {
      j2_resolution::parse_sub_box(this, v9);
    }
  }

  if (*(this + 3) <= 0.0 && *(this + 2) <= 0.0)
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    kdu_error::kdu_error(&v6, "Error in Kakadu File Format Support:\n");
    (*(v6 + 16))(&v6, "The JP2 resolution box must contain at least one of the capture or display resolution sub-boxes.");
    kdu_error::~kdu_error(&v6);
  }

  if (((*(*a2 + 16))(a2) & 1) == 0)
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    kdu_error::kdu_error(&v6, "Error in Kakadu File Format Support:\n");
    (*(v6 + 16))(&v6, "Malformed resolution box found in JP2-family data source.  Box appears to be too long.");
    kdu_error::~kdu_error(&v6);
  }

LABEL_16:
  jp2_input_box::~jp2_input_box(v9);
  return v4 ^ 1u;
}

void sub_185F54040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  jp2_input_box::~jp2_input_box(va);
  _Unwind_Resume(v6);
}

uint64_t j2_resolution::parse_sub_box(j2_resolution *this, jp2_input_box *a2)
{
  *v24 = 0;
  *v25 = 0;
  v23 = 0;
  if (!jp2_input_box::read(a2, &v25[1]) || !jp2_input_box::read(a2, v25) || !jp2_input_box::read(a2, &v24[1]) || !jp2_input_box::read(a2, v24) || (*(*a2 + 32))(a2, &v23 + 1, 1) != 1 || ((*(*a2 + 32))(a2, &v23, 1) == 1 ? (v5 = v25[0] == 0) : (v5 = 1), !v5 ? (v6 = v24[0] == 0) : (v6 = 1), !v6 ? (v7 = v25[1] == 0) : (v7 = 1), !v7 ? (v8 = v24[1] == 0) : (v8 = 1), v8))
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    kdu_error::kdu_error(&v20, "Error in Kakadu File Format Support:\n");
    (*(v20 + 16))(&v20, "Malformed capture or display resolution sub-box found in JP2-family data source.  Insufficient or illegal data fields.");
    kdu_error::~kdu_error(&v20);
  }

  v9 = v25[0];
  v10 = v25[1] / v9;
  v11 = SHIBYTE(v23);
  if (SHIBYTE(v23) < 0)
  {
    v9 = 0.100000001;
    do
    {
      v10 = v10 * 0.100000001;
      LOWORD(v11) = v11 + 1;
    }

    while ((v11 & 0x100) == 0);
  }

  else
  {
    if (!HIBYTE(v23))
    {
      goto LABEL_29;
    }

    v9 = 10.0;
    do
    {
      v10 = v10 * 10.0;
      --v11;
    }

    while (v11);
  }

  HIBYTE(v23) = 0;
LABEL_29:
  LOWORD(v9) = v24[1];
  LOWORD(v4) = v24[0];
  v12 = v23;
  v13 = *&v9 / v4;
  if (v23 < 0)
  {
    do
    {
      v13 = v13 * 0.100000001;
      LOWORD(v12) = v12 + 1;
    }

    while ((v12 & 0x100) == 0);
  }

  else
  {
    if (!v23)
    {
      goto LABEL_35;
    }

    do
    {
      v13 = v13 * 10.0;
      --v12;
    }

    while (v12);
  }

  LOBYTE(v23) = 0;
LABEL_35:
  v14 = *(a2 + 12);
  if (v14 == 1919251300)
  {
    v17 = v13 / v10;
    *this = v17;
    if (*(this + 3) <= 0.0)
    {
      *(this + 1) = v17;
    }

    v16 = 8;
  }

  else
  {
    if (v14 != 1919251299)
    {
      j2_resolution::parse_sub_box();
    }

    v15 = v13 / v10;
    *(this + 1) = v15;
    if (*(this + 2) <= 0.0)
    {
      *this = v15;
    }

    v16 = 12;
  }

  v18 = v10;
  *(this + v16) = v18;
  result = (*(*a2 + 16))(a2);
  if ((result & 1) == 0)
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    kdu_error::kdu_error(&v20, "Error in Kakadu File Format Support:\n");
    (*(v20 + 16))(&v20, "Malformed capture or display resolution sub-box found in JP2-family data source.  Box appears to be too long.");
    kdu_error::~kdu_error(&v20);
  }

  return result;
}

float *j2_resolution::finalize(float *this)
{
  if (*this <= 0.0)
  {
    *this = 1.0;
  }

  if (this[1] <= 0.0)
  {
    this[1] = 1.0;
  }

  return this;
}

float *j2_resolution::save_box(float *this, jp2_output_box *a2)
{
  v2 = this;
  v3 = fabs(*this + -1.0) > 0.00999999978;
  v4 = fabs(this[1] + -1.0);
  v5 = v4 > 0.00999999978;
  v6 = this[3];
  v7 = this[2] > 0.0 || v3;
  if ((v7 & 1) != 0 || v4 > 0.00999999978 || v6 > 0.0)
  {
    v13 = 0uLL;
    v17 = 0;
    v12 = &unk_1EF4D29C0;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0xFFFFFFFFFFFFFFFFLL;
    v8 = jp2_output_box::open(&v12, a2, 1919251232, 0);
    if (v7)
    {
      v9 = 1.0;
      if (v2[2] > 0.0)
      {
        v9 = v2[2];
      }

      v8 = j2_resolution::save_sub_box(v8, &v12, 1919251300, v9, (*v2 * v9));
      v10 = fabs((v2[1] / *v2) + -1.0) >= 0.00999999978;
      v5 = v4 > 0.00999999978 && v10;
    }

    if (v5 || v6 > 0.0)
    {
      v11 = 1.0;
      if (v2[3] > 0.0)
      {
        v11 = v2[3];
      }

      j2_resolution::save_sub_box(v8, &v12, 1919251299, v11, (v2[1] * v11));
    }

    jp2_output_box::close(&v12);
    v12 = &unk_1EF4D29C0;
    this = *(&v16 + 1);
    if (*(&v16 + 1))
    {
      return MEMORY[0x186602830](*(&v16 + 1), 0x1000C8077774924);
    }
  }

  return this;
}

uint64_t j2_resolution::save_sub_box(j2_resolution *this, jp2_output_box *a2, int a3, double a4, double a5)
{
  if (a4 >= 1.0)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = v5 - 1;
      a4 = a4 * 10.0;
      if (a4 >= 1.0)
      {
        break;
      }

      v7 = v5-- <= -127;
    }

    while (!v7);
  }

  if (a4 <= 1.0 || v6 > 126)
  {
    v8 = v6;
  }

  else
  {
    do
    {
      v8 = v6 + 1;
      a4 = a4 * 0.1;
      if (a4 <= 1.0)
      {
        break;
      }

      v7 = v6++ < 126;
    }

    while (v7);
  }

  if (a5 >= 1.0)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = v9 - 1;
      a5 = a5 * 10.0;
      if (a5 >= 1.0)
      {
        break;
      }

      v7 = v9-- <= -127;
    }

    while (!v7);
  }

  v11 = a4 * 32768.0 + 0.5;
  if (a5 <= 1.0 || v10 > 126)
  {
    v12 = v10;
  }

  else
  {
    do
    {
      v12 = v10 + 1;
      a5 = a5 * 0.1;
      if (a5 <= 1.0)
      {
        break;
      }

      v7 = v10++ < 126;
    }

    while (v7);
  }

  v13 = v11;
  v14 = (a5 * 32768.0 + 0.5);
  if (v14 - 0x10000 < 0xFFFF0001 || v13 - 0x10000 <= 0xFFFF0000)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    kdu_error::kdu_error(&v16, "Error in Kakadu File Format Support:\n");
    (*(v16 + 16))(&v16, "Unable to save resolution information having illegal or ridiculously small or large values!");
    kdu_error::~kdu_error(&v16);
  }

  *(&v16 + 1) = 0;
  v18 = 0;
  v21 = 0;
  *&v16 = &unk_1EF4D29C0;
  v17 = 0uLL;
  v19 = 0uLL;
  v20 = 0xFFFFFFFFFFFFFFFFLL;
  jp2_output_box::open(&v16, a2, a3, 0);
  v22 = bswap32(v13) >> 16;
  (*(v16 + 40))(&v16, &v22, 2);
  v22 = 128;
  (*(v16 + 40))(&v16, &v22, 2);
  v22 = bswap32(v14) >> 16;
  (*(v16 + 40))(&v16, &v22, 2);
  v22 = 128;
  (*(v16 + 40))(&v16, &v22, 2);
  LOBYTE(v22) = v8;
  (*(v16 + 40))(&v16, &v22, 1);
  LOBYTE(v22) = v12;
  (*(v16 + 40))(&v16, &v22, 1);
  jp2_output_box::close(&v16);
  *&v16 = &unk_1EF4D29C0;
  result = *(&v20 + 1);
  if (*(&v20 + 1))
  {
    return MEMORY[0x186602830](*(&v20 + 1), 0x1000C8077774924);
  }

  return result;
}

uint64_t jp2_resolution::init(jp2_resolution *this, float a2)
{
  v3 = *this;
  if (!v3)
  {
    jp2_resolution::init();
  }

  return j2_resolution::init(v3, a2);
}

float **jp2_resolution::set_resolution(float **this, float a2, int a3)
{
  v3 = *this;
  if (!*this || *v3 <= 0.0)
  {
    jp2_resolution::set_resolution();
  }

  v4 = 3;
  if (a3)
  {
    v4 = 2;
  }

  v3[v4] = a2;
  return this;
}

uint64_t j2_icc_profile::init(uint64_t this, unsigned __int8 *a2, int a3, int a4)
{
  v4 = this;
  if (a4)
  {
    *this = a2;
  }

  if (a3 <= 3)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    kdu_error::kdu_error(&v22, "Error in Kakadu File Format Support:\n");
    (*(v22 + 16))(&v22, "Embedded ICC profile in JP2 colour description box has invalid data size.");
    kdu_error::~kdu_error(&v22);
  }

  *this = a2;
  *(this + 8) = 4;
  v5 = bswap32(*a2);
  *(this + 8) = 0;
  if ((a4 & 1) == 0)
  {
    *this = 0;
  }

  if (v5 > 100000000)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    kdu_error::kdu_error(&v22, "Error in Kakadu File Format Support:\n");
    (*(v22 + 16))(&v22, "Embedded ICC profile in JP2 colour description box has corrupt size field.");
    goto LABEL_11;
  }

  if (v5 <= 131)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    kdu_error::kdu_error(&v22, "Error in Kakadu File Format Support:\n");
    (*(v22 + 16))(&v22, "Embedded ICC profile in JP2 colour description box does not have a complete header.");
LABEL_11:
    kdu_error::~kdu_error(&v22);
  }

  if (v5 > a3)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    kdu_error::kdu_error(&v22, "Error in Kakadu File Format Support:\n");
    (*(v22 + 16))(&v22, "Embedded ICC profile length does not match length specified in ICC header.\n");
    kdu_error::~kdu_error(&v22);
  }

  *(this + 8) = v5;
  if ((a4 & 1) == 0)
  {
    operator new[]();
  }

  v6 = bswap32(*(*this + 12));
  switch(v6)
  {
    case 0x6D6E7472u:
      *(this + 22) = 1;
      break;
    case 0x70727472u:
      *(this + 23) = 1;
      break;
    case 0x73636E72u:
      *(this + 21) = 1;
      break;
  }

  v7 = bswap32(*(*this + 16));
  if (v7 <= 1129142602)
  {
    if (v7 > 943934545)
    {
      if (v7 > 1111706705)
      {
        if (v7 == 1111706706)
        {
          v9 = 11;
        }

        else
        {
          if (v7 != 1128483922)
          {
            v8 = 1129142560;
            goto LABEL_59;
          }

          v9 = 12;
        }
      }

      else
      {
        switch(v7)
        {
          case 943934546:
            v9 = 8;
            break;
          case 960711762:
            v9 = 9;
            break;
          case 1094929490:
            v9 = 10;
            break;
          default:
            goto LABEL_120;
        }
      }
    }

    else
    {
      if (v7 <= 893602897)
      {
        if (v7 == 843271250)
        {
          v9 = 2;
          goto LABEL_61;
        }

        if (v7 == 860048466)
        {
          goto LABEL_60;
        }

        if (v7 != 876825682)
        {
          goto LABEL_120;
        }

        goto LABEL_109;
      }

      switch(v7)
      {
        case 893602898:
          v9 = 5;
          break;
        case 910380114:
          v9 = 6;
          break;
        case 927157330:
          v9 = 7;
          break;
        default:
          goto LABEL_120;
      }
    }
  }

  else
  {
    if (v7 > 1213421087)
    {
      if (v7 <= 1380401695)
      {
        if (v7 == 1213421088 || v7 == 1281450528)
        {
          goto LABEL_60;
        }

        v8 = 1282766368;
      }

      else
      {
        if (v7 <= 1497588337)
        {
          if (v7 != 1380401696)
          {
            v8 = 1482250784;
            goto LABEL_59;
          }

LABEL_60:
          v9 = 3;
          goto LABEL_61;
        }

        if (v7 == 1497588338)
        {
          goto LABEL_60;
        }

        v8 = 1501067552;
      }

LABEL_59:
      if (v7 == v8)
      {
        goto LABEL_60;
      }

LABEL_120:
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      kdu_error::kdu_error(&v22, "Error in Kakadu File Format Support:\n");
      (*(v22 + 16))(&v22, "Unknown colour space signature found in embedded ICC profile within a JP2-family data source's colour description (colr) box.");
      kdu_error::~kdu_error(&v22);
    }

    if (v7 <= 1178815569)
    {
      if (v7 != 1129142603)
      {
        if (v7 != 1145261138)
        {
          if (v7 == 1162038354)
          {
            v9 = 14;
            goto LABEL_61;
          }

          goto LABEL_120;
        }

        v9 = 13;
        goto LABEL_61;
      }

LABEL_109:
      v9 = 4;
      goto LABEL_61;
    }

    if (v7 == 1178815570)
    {
      v9 = 15;
    }

    else
    {
      if (v7 != 1196573017)
      {
        v8 = 1212961568;
        goto LABEL_59;
      }

      v9 = 1;
    }
  }

LABEL_61:
  *(this + 12) = v9;
  v10 = bswap32(*(*this + 20));
  if (v10 == 1281450528)
  {
    *(this + 20) = 0;
  }

  else
  {
    if (v10 != 1482250784)
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      kdu_error::kdu_error(&v22, "Error in Kakadu File Format Support:\n");
      (*(v22 + 16))(&v22, "Unknown PCS signature found in embedded ICC profile within a JP2-family data source's colour description (colr) box.");
      kdu_error::~kdu_error(&v22);
    }

    *(this + 20) = 1;
  }

  v11 = bswap32(*(*this + 128));
  *(this + 28) = 0;
  *(this + 16) = v11;
  *(this + 36) = 0;
  *(this + 44) = 0;
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = 143;
    do
    {
      v14 = *(v4 + 8) - 3;
      if (v13 - 11 >= v14 || (v15 = *v4 + v13, v16 = bswap32(*(v15 - 11)), v14 <= v13 - 7) || (v17 = bswap32(*(v15 - 7)), v14 <= v13 - 3) || (v18 = bswap32(*(*v4 + v13 - 3)), v17 >= 0x5F5E101))
      {
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        kdu_error::kdu_error(&v22, "Error in Kakadu File Format Support:\n");
        (*(v22 + 16))(&v22, "Embedded ICC profile in JP2 colour description box is corrupt!");
        kdu_error::~kdu_error(&v22);
      }

      if (v16 <= 1733843289)
      {
        switch(v16)
        {
          case 1649693251:
            this = j2_icc_profile::get_curve_data_offset(v4, v17, v18);
            *(v4 + 36) = this;
            break;
          case 1649957210:
            this = j2_icc_profile::get_xyz_data_offset(v4, v17, v18);
            *(v4 + 48) = this;
            break;
          case 1733579331:
            this = j2_icc_profile::get_curve_data_offset(v4, v17, v18);
            *(v4 + 32) = this;
            break;
        }

        goto LABEL_89;
      }

      if (v16 > 1918128706)
      {
        if (v16 != 1918128707)
        {
          if (v16 == 1918392666)
          {
            this = j2_icc_profile::get_xyz_data_offset(v4, v17, v18);
            *(v4 + 40) = this;
          }

          goto LABEL_89;
        }
      }

      else
      {
        if (v16 == 1733843290)
        {
          this = j2_icc_profile::get_xyz_data_offset(v4, v17, v18);
          *(v4 + 44) = this;
          goto LABEL_89;
        }

        if (v16 != 1800688195)
        {
          goto LABEL_89;
        }
      }

      this = j2_icc_profile::get_curve_data_offset(v4, v17, v18);
      *(v4 + 28) = this;
LABEL_89:
      ++v12;
      v13 += 12;
    }

    while (v12 < *(v4 + 16));
  }

  *(v4 + 24) = 0;
  v19 = *(v4 + 12);
  if (v19 >= 4)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    kdu_error::kdu_error(&v22, "Error in Kakadu File Format Support:\n");
    (*(v22 + 16))(&v22, "Embedded ICC profile has wrong number of TRCs.");
    kdu_error::~kdu_error(&v22);
  }

  if (v19 >= 1)
  {
    for (i = 0; i < v19; ++i)
    {
      if (!*(v4 + 28 + 4 * i))
      {
        if (*(v4 + 21) == 1)
        {
          *(v4 + 24) = 1;
        }

        else if (*(v4 + 22) == 1)
        {
          v24 = 0;
          v22 = 0u;
          v23 = 0u;
          kdu_error::kdu_error(&v22, "Error in Kakadu File Format Support:\n");
          (*(v22 + 16))(&v22, "Embedded ICC profile in JP2 colour description box specifies a display profile, but does not contain a complete set of tone reproduction curves!  This condition is not compatible with any legal ICC profile.");
          kdu_error::~kdu_error(&v22);
        }
      }
    }

    if (v19 == 3)
    {
      for (j = 0; j != 12; j += 4)
      {
        if (!*(v4 + 40 + j))
        {
          if (*(v4 + 21) == 1)
          {
            *(v4 + 24) = 1;
          }

          else if (*(v4 + 22) == 1)
          {
            v24 = 0;
            v22 = 0u;
            v23 = 0u;
            kdu_error::kdu_error(&v22, "Error in Kakadu File Format Support:\n");
            (*(v22 + 16))(&v22, "Embedded ICC profile in JP2 colour description box specifies a 3 colour display profile, but does not contain a complete set of primary colorant specifications.");
            kdu_error::~kdu_error(&v22);
          }
        }
      }
    }
  }

  return this;
}

uint64_t j2_icc_profile::get_curve_data_offset(j2_icc_profile *this, int a2, int a3)
{
  v3 = *(this + 2);
  if (a3 + a2 > v3)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    kdu_error::kdu_error(&v9, "Error in Kakadu File Format Support:\n");
    (*(v9 + 16))(&v9, "Illegal tag offset or length value supplied in the JP2 embedded icc profile.");
    kdu_error::~kdu_error(&v9);
  }

  v4 = v3 - 3;
  if (v4 <= a2 || (v5 = bswap32(*(*this + a2)), a3 < 12) || v5 != 1668641398)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    kdu_error::kdu_error(&v9, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v9);
  }

  v6 = 1668641398;
  v7 = a2 + 4;
  if (v4 > v7)
  {
    v6 = bswap32(*(*this + v7));
  }

  if (v4 > a2 + 8)
  {
    v6 = bswap32(*(*this + a2 + 8));
  }

  if ((2 * v6 + 12) > a3)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    kdu_error::kdu_error(&v9, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v9);
  }

  return a2 + 8;
}

uint64_t j2_icc_profile::get_xyz_data_offset(j2_icc_profile *this, int a2, int a3)
{
  v3 = *(this + 2);
  if (a3 + a2 > v3)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    kdu_error::kdu_error(&v5, "Error in Kakadu File Format Support:\n");
    (*(v5 + 16))(&v5, "Illegal tag offset or length value supplied in JP2 embedded icc profile.");
    kdu_error::~kdu_error(&v5);
  }

  if (v3 - 3 <= a2 || a3 < 20 || bswap32(*(*this + a2)) != 1482250784)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    kdu_error::kdu_error(&v5, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v5);
  }

  return (a2 + 8);
}

void j2_colour::j2_colour(j2_colour *this)
{
  *(this + 13) = 0;
  *(this + 24) = 0;
  *(this + 100) = 0;
  *this = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 12) = 0;
  *(this + 46) = 0;
  *(this + 12) = -1;
  *(this + 5) = -1;
  *(this + 7) = 0;
  *(this + 8) = -1;
  *(this + 18) = -1;
  *(this + 84) = 0;
  *(this + 76) = 0;
}

void j2_colour::~j2_colour(j2_colour *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1000C8077774924);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    std::default_delete<j2_icc_profile>::operator()[abi:fe200100](this + 24, v3);
  }
}

uint64_t j2_colour::copy(j2_colour *this, j2_colour *a2)
{
  result = *(this + 7);
  if (result)
  {
    result = MEMORY[0x186602830](result, 0x1000C8077774924);
    *(this + 7) = 0;
    *(this + 12) = 0;
  }

  *(this + 24) = *(a2 + 24);
  *(this + 100) = *(a2 + 100);
  *this = *a2;
  *(this + 4) = *(a2 + 4);
  if (*(a2 + 3))
  {
    operator new();
  }

  if (*(a2 + 7))
  {
    for (i = 0; i != 16; ++i)
    {
      *(this + i + 32) = *(a2 + i + 32);
    }

    *(this + 12) = *(a2 + 12);
    operator new[]();
  }

  v6 = (a2 + 64);
  v7 = (this + 64);
  v8 = 3;
  do
  {
    *(v7 - 13) = *(v6 - 13);
    *v7 = *v6;
    v7[3] = v6[3];
    ++v6;
    ++v7;
    --v8;
  }

  while (v8);
  *(this + 22) = *(a2 + 22);
  *(this + 46) = *(a2 + 46);
  return result;
}

uint64_t j2_colour::init(j2_colour *this, jp2_input_box *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(a2 + 12) != 1668246642)
  {
    j2_colour::init();
  }

  if ((*this & 1) != 0 || *(this + 3))
  {
    j2_colour::init();
  }

  v26 = 0;
  v25 = 0;
  if ((*(*a2 + 32))(a2, &v26 + 1, 1) != 1 || (*(*a2 + 32))(a2, &v26, 1) != 1 || ((v4 = (*(*a2 + 32))(a2, &v25, 1), v5 = HIBYTE(v26), v4 == 1) ? (v6 = v25 > 4u) : (v6 = 1), !v6 ? (v7 = HIBYTE(v26) - 1 >= 4) : (v7 = 1), v7))
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    kdu_error::kdu_error(&v22, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v22);
  }

  v8 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v8 = v26 | 0xFFFFFF00;
  }

  *(this + 8) = -1;
  v9 = (this + 64);
  *(this + 24) = v8;
  *(this + 12) = -1;
  *(this + 5) = -1;
  *(this + 9) = -1;
  *(this + 10) = -1;
  *(this + 22) = 0;
  *(this + 46) = 0;
  if (v5 != 1)
  {
    if ((v5 & 0xFE) == 2)
    {
      if ((*(a2 + 125) & 1) != 0 || *(a2 + 22) - *(a2 + 34) + *(a2 + 44) < 0)
      {
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        kdu_error::kdu_error(&v22, "Error in Kakadu File Format Support:\n");
        (*(v22 + 16))(&v22, "Malformed JP2 colour description (colr) box found in JP2-family data source.");
        kdu_error::~kdu_error(&v22);
      }

      operator new[]();
    }

    if (v5 == 4)
    {
      *(this + 4) = 200;
      if ((*(*a2 + 32))(a2, this + 32, 16) != 16)
      {
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        kdu_error::kdu_error(&v22, "Error in Kakadu File Format Support:\n");
        (*(v22 + 16))(&v22, "JP2-family data source terminated unexpectedly inside the colour specification (colr) box.");
        kdu_error::~kdu_error(&v22);
      }

      if (*(a2 + 125) == 1)
      {
        *(this + 12) = -1;
      }

      else
      {
        v13 = *(a2 + 44) + *(a2 + 22) - *(a2 + 34);
        *(this + 12) = v13;
        if (v13 >= 0)
        {
          v14 = *(this + 7);
          if (v14)
          {
            MEMORY[0x186602830](v14, 0x1000C8077774924);
          }

          operator new[]();
        }
      }

      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      kdu_error::kdu_error(&v22, "Error in Kakadu File Format Support:\n");
      (*(v22 + 16))(&v22, "Malformed JP2 colour description (colr) box found in JP2-family data source.");
      kdu_error::~kdu_error(&v22);
    }

    j2_colour::init();
  }

  v27[0] = 0;
  if (!jp2_input_box::read(a2, v27))
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    kdu_error::kdu_error(&v22, "Error in Kakadu File Format Support:\n");
    (*(v22 + 16))(&v22, "Malformed colour description (colr) box found in JP2-family data source.  Box appears to terminate prematurely.");
    kdu_error::~kdu_error(&v22);
  }

  v10 = v27[0];
  if (v27[0] >= 0x19 || ((0x1FFFA1Bu >> SLOBYTE(v27[0])) & 1) == 0)
  {
    return (*(*a2 + 16))(a2);
  }

  v11 = dword_186206B4C[v27[0]];
  *(this + 1) = v27[0];
  *(this + 2) = v11;
  if (v10 == 19 || v10 == 14)
  {
    v15 = 0;
    *v27 = 0;
    v28 = 0;
    v30 = 0;
    v29 = 0;
    if (v10 == 14)
    {
      v16 = 28;
    }

    else
    {
      v16 = 24;
    }

    do
    {
      if (!jp2_input_box::read(a2, &v27[v15 / 4]))
      {
        if (v15)
        {
          v24 = 0;
          v22 = 0u;
          v23 = 0u;
          kdu_error::kdu_error(&v22, "Error in Kakadu File Format Support:\n");
          (*(v22 + 16))(&v22, "JP2-family data source terminated unexpectedly; unable to read all EP parameter fields for CIELab or CIEJab enumerated colour space.");
          kdu_error::~kdu_error(&v22);
        }

        goto LABEL_62;
      }

      v15 += 4;
    }

    while (v16 != v15);
    v17 = &v27[1];
    v18 = 3;
    do
    {
      v19 = *v17;
      *v9 = *(v17 - 1);
      v9[3] = v19;
      v17 += 2;
      ++v9;
      --v18;
    }

    while (v18);
    if (*(this + 1) == 14)
    {
      v20 = v30;
      *(this + 22) = v30;
      if ((~v20 & 0x43540000) == 0)
      {
        *(this + 46) = v20;
        *(this + 22) = 1129578496;
        goto LABEL_62;
      }

      switch(v20)
      {
        case 4470581:
          v21 = 7500;
          goto LABEL_60;
        case 4470325:
          v21 = 6500;
          goto LABEL_60;
        case 4470064:
          v21 = 5000;
LABEL_60:
          *(this + 46) = v21;
          goto LABEL_62;
      }

      *(this + 46) = 0;
    }
  }

LABEL_62:
  *this = 1;
  result = (*(*a2 + 16))(a2);
  if ((result & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    kdu_error::kdu_error(&v22, "Error in Kakadu File Format Support:\n");
    (*(v22 + 16))(&v22, "Malformed JP2 colour description (colr) box found in JP2-family data source.  The box appears to be too large.");
    kdu_error::~kdu_error(&v22);
  }

  return result;
}

int32x2_t j2_colour::finalize(j2_colour *this, j2_channels *a2)
{
  if (*this)
  {
    v5 = (this + 8);
    v4 = *(this + 2);
    if (!v4)
    {
      if (!a2)
      {
        jp2_channels::get_num_colours();
      }

      v4 = *(a2 + 1);
      *v5 = v4;
    }
  }

  else
  {
    *this = 1;
    v5 = (this + 8);
    result = 0x40000000CLL;
    *(this + 4) = 0x40000000CLL;
    v4 = 4;
  }

  v7 = *(this + 1);
  if ((v7 == 19 || v7 == 14) && v4 >= 1)
  {
    v10 = 0;
    v11 = this + 12;
    do
    {
      bit_depth = j2_channels::get_bit_depth(a2, v10);
      v13 = *&v11[4 * v10];
      if (v13 < 0)
      {
        *&v11[4 * v10] = bit_depth;
      }

      else if (v13 != bit_depth)
      {
        v14 = *(this + 1);
        if (v14 != 14 && v14 != 19)
        {
          j2_colour::finalize();
        }

        v18 = 0;
        memset(v17, 0, sizeof(v17));
        kdu_error::kdu_error(v17, "Error in Kakadu File Format Support:\n");
        kdu_error::~kdu_error(v17);
      }

      ++v10;
    }

    while (v10 < *v5);
    v7 = *(this + 1);
  }

  if (v7 == 19)
  {
    if (*(this + 16) <= 0)
    {
      *(this + 4) = xmmword_1862067F0;
      result = vshr_n_s32(vshl_u32(0x100000001, *(this + 16)), 1uLL);
      *(this + 10) = result;
    }
  }

  else if (v7 == 14)
  {
    if (*(this + 16) <= 0)
    {
      result = 0xAA00000064;
      *(this + 4) = xmmword_186206800;
      v16 = (1 << *(this + 5) >> 2) + (1 << *(this + 5) >> 3);
      *(this + 20) = 1 << *(this + 4) >> 1;
      *(this + 21) = v16;
    }

    if (!*(this + 22) && !*(this + 46))
    {
      *(this + 22) = 4470064;
    }
  }

  return result;
}

uint64_t j2_channels::get_bit_depth(j2_channels *this, unsigned int a2)
{
  if (*(this + 1) <= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  return *(*(this + 1) + (a2 << 6) + 56);
}

uint64_t j2_colour::save_box(j2_colour *this, jp2_output_box *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((*this & 1) == 0)
  {
    j2_colour::save_box();
  }

  v15 = 0uLL;
  v19 = 0;
  v14 = &unk_1EF4D29C0;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0xFFFFFFFFFFFFFFFFLL;
  jp2_output_box::open(&v14, a2, 1668246642, 0);
  v3 = *(this + 1);
  if ((v3 - 100) < 2)
  {
    LOBYTE(v21[0]) = 2;
    v14[5](&v14, v21, 1);
    LOBYTE(v21[0]) = *(this + 24);
    v14[5](&v14, v21, 1);
    LOBYTE(v21[0]) = *(this + 100);
    v14[5](&v14, v21, 1);
    jp2_output_box::write(&v14, **(this + 3), *(*(this + 3) + 8));
  }

  else if (v3 == 102)
  {
    LOBYTE(v21[0]) = 3;
    v14[5](&v14, v21, 1);
    LOBYTE(v21[0]) = *(this + 24);
    v14[5](&v14, v21, 1);
    LOBYTE(v21[0]) = *(this + 100);
    v14[5](&v14, v21, 1);
    jp2_output_box::write(&v14, **(this + 3), *(*(this + 3) + 8));
  }

  else if (v3 == 200)
  {
    LOBYTE(v21[0]) = 4;
    v14[5](&v14, v21, 1);
    LOBYTE(v21[0]) = *(this + 24);
    v14[5](&v14, v21, 1);
    LOBYTE(v21[0]) = *(this + 100);
    v14[5](&v14, v21, 1);
    jp2_output_box::write(&v14, this + 32, 0x10uLL);
    jp2_output_box::write(&v14, *(this + 7), *(this + 12));
  }

  else
  {
    LOBYTE(v21[0]) = 1;
    v14[5](&v14, v21, 1);
    LOBYTE(v21[0]) = *(this + 24);
    v14[5](&v14, v21, 1);
    LOBYTE(v21[0]) = *(this + 100);
    v14[5](&v14, v21, 1);
    LODWORD(v21[0]) = bswap32(*(this + 1));
    v14[5](&v14, v21, 4);
    v4 = *(this + 1);
    if (v4 == 19 || v4 == 14)
    {
      v5 = 0;
      memset(v21, 0, sizeof(v21));
      v22 = 0;
      v6 = (this + 76);
      do
      {
        if (*(v6 - 16) < 0 || (v7 = *v6, *v6 < 0) || (v8 = *(v6 - 3), v8 < 0))
        {
          __assert_rtn("save_box", "jp2.cpp", 4882, "(precision[c]>=0) && (offset[c]>=0) && (range[c]>=0)");
        }

        v9 = &v21[v5];
        *v9 = v8;
        v9[1] = v7;
        ++v6;
        ++v5;
      }

      while (v5 != 3);
      if (v4 == 14)
      {
        v22 = *(this + 22);
        if (v22 == 1129578496)
        {
          v22 = *(this + 46) | 0x43540000;
        }

        v10 = 7;
      }

      else
      {
        v10 = 6;
      }

      v11 = 0;
      v12 = 4 * v10;
      do
      {
        v20 = bswap32(*(v21 + v11));
        (v14)[5](&v14, &v20, 4);
        v11 += 4;
      }

      while (v12 != v11);
    }
  }

  jp2_output_box::close(&v14);
  v14 = &unk_1EF4D29C0;
  result = *(&v18 + 1);
  if (*(&v18 + 1))
  {
    return MEMORY[0x186602830](*(&v18 + 1), 0x1000C8077774924);
  }

  return result;
}

uint64_t *jp2_colour::init(uint64_t *result, int a2)
{
  v2 = *result;
  if (!*result)
  {
    jp2_colour::init();
  }

  if (*v2 == 1)
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    kdu_error::kdu_error(&v4, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v4);
  }

  *(v2 + 72) = -1;
  *(v2 + 80) = -1;
  *(v2 + 64) = -1;
  *(v2 + 88) = 0;
  *(v2 + 92) = 0;
  *(v2 + 4) = a2;
  switch(a2)
  {
    case 0:
    case 15:
    case 17:
      v3 = 1;
      break;
    case 1:
    case 3:
    case 4:
    case 9:
    case 11:
    case 14:
    case 16:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
      v3 = 3;
      break;
    case 12:
    case 13:
      v3 = 4;
      break;
    default:
      v6 = 0;
      v4 = 0u;
      v5 = 0u;
      kdu_error::kdu_error(&v4, "Error in Kakadu File Format Support:\n");
      kdu_error::~kdu_error(&v4);
  }

  *(v2 + 8) = v3;
  *v2 = 1;
  return result;
}

void jp2_colour::init(jp2_colour *this, unsigned __int8 *a2, int a3)
{
  if (*this)
  {
    if (**this == 1)
    {
      *&v5 = 0;
      *v3 = 0u;
      v4 = 0u;
      kdu_error::kdu_error(v3, "Error in Kakadu File Format Support:\n");
      kdu_error::~kdu_error(v3);
    }

    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    *v3 = 0u;
    j2_icc_profile::init(v3, a2, a3, 0);
    operator new();
  }

  jp2_colour::init();
}

double *find_monitor_matrix(double *result, double *a2, double *a3, const double *a4, double *a5)
{
  v5 = 0;
  v32[3] = *MEMORY[0x1E69E9840];
  v28 = 0.0;
  v29 = 0.0;
  v26 = 0.0;
  v27 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  v6 = &v29;
  v7 = &v27;
  v8 = &v25;
  v9 = 1;
  do
  {
    v10 = a3[v5];
    *v6 = result[v5] - v10;
    v11 = v9;
    *v7 = a2[v5] - v10;
    v6 = &v28;
    *v8 = a4[v5] - v10;
    v7 = &v26;
    v8 = &v24;
    v5 = 1;
    v9 = 0;
  }

  while ((v11 & 1) != 0);
  v12 = 0;
  v13 = v29 * v26 - v27 * v28;
  v14 = (v26 * v25 - v27 * v24) / v13;
  v15 = (v29 * v24 - v28 * v25) / v13;
  v16 = result[1];
  v32[0] = *result;
  v32[1] = v16;
  v32[2] = 1.0 - v32[0] - v16;
  v17 = a2[1];
  v31[0] = *a2;
  v31[1] = v17;
  v31[2] = 1.0 - v31[0] - v17;
  v18 = a3[1];
  v30[0] = *a3;
  v30[1] = v18;
  v30[2] = 1.0 - v30[0] - v18;
  v19 = a5 + 2;
  do
  {
    v20 = v15 * v31[v12];
    v21 = v30[v12];
    *(v19 - 2) = v14 * v32[v12];
    *(v19 - 1) = v20;
    *v19 = (1.0 - v14 - v15) * v21;
    v19 += 3;
    ++v12;
  }

  while (v12 != 3);
  v22 = 0;
  v23 = 1.0 / a4[1];
  do
  {
    a5[v22] = v23 * a5[v22];
    ++v22;
  }

  while (v22 != 9);
  return result;
}

unint64_t find_matrix_inverse(double *a1, const double *a2, double *a3, double *a4)
{
  for (i = 0; i != 9; ++i)
  {
    a3[i] = a2[i];
  }

  v5 = 0;
  LODWORD(v6) = 0;
  do
  {
    v6 = v6;
    v7 = 3;
    do
    {
      if (v5 + v7 == 3)
      {
        v8 = 1.0;
      }

      else
      {
        v8 = 0.0;
      }

      a1[v6++] = v8;
      --v7;
    }

    while (v7);
    ++v5;
  }

  while (v5 != 3);
  v9 = 0;
  v10 = a3 + 3;
  v11 = a1 + 3;
  v12 = 1;
  v13 = a1;
  v14 = a3;
  v15 = a3;
  do
  {
    v16 = a3[4 * v9];
    if (v16 < 0.0)
    {
      v16 = -v16;
    }

    v17 = &a3[v9];
    v18 = v15;
    v19 = v9;
    v20 = v9;
    do
    {
      v21 = *v18;
      if (*v18 <= v16)
      {
        if (v21 >= -v16)
        {
          goto LABEL_19;
        }

        v16 = -v21;
      }

      else
      {
        v16 = *v18;
      }

      v20 = v19;
LABEL_19:
      ++v19;
      v18 += 3;
    }

    while (v19 != 3);
    v22 = 0;
    v23 = 3 * v20;
    v24 = &a3[v23];
    v25 = 1.0 / v17[v23];
    do
    {
      v26 = v14[v22];
      v14[v22] = v25 * v24[v22];
      v24[v22++] = v25 * v26;
    }

    while (v22 != 3);
    v27 = 0;
    v28 = &a1[v23];
    do
    {
      v29 = v13[v27];
      v13[v27] = v25 * v28[v27];
      v28[v27++] = v25 * v29;
    }

    while (v27 != 3);
    if (v9 <= 1)
    {
      v30 = v11;
      v31 = v10;
      v32 = v12;
      do
      {
        v33 = 0;
        v34 = -v17[3 * v32];
        do
        {
          v31[v33] = v31[v33] + v34 * v14[v33];
          ++v33;
        }

        while (v33 != 3);
        for (j = 0; j != 3; ++j)
        {
          v30[j] = v30[j] + v34 * v13[j];
        }

        ++v32;
        v31 += 3;
        v30 += 3;
      }

      while (v32 != 3);
    }

    ++v9;
    ++v12;
    v15 += 4;
    v14 += 3;
    v13 += 3;
    v10 += 3;
    v11 += 3;
  }

  while (v9 != 3);
  v36 = a3 + 3;
  v37 = a3 + 6;
  v38 = a1 + 3;
  v39 = a1 + 6;
  v40 = 2;
  do
  {
    v41 = v38;
    v42 = v36;
    v43 = v40;
    do
    {
      v44 = 0;
      result = v43--;
      v46 = -a3[3 * v43 + v40];
      do
      {
        v42[v44] = v42[v44] + v46 * v37[v44];
        ++v44;
      }

      while (v44 != 3);
      for (k = 0; k != 3; ++k)
      {
        v41[k] = v41[k] + v46 * v39[k];
      }

      v42 -= 3;
      v41 -= 3;
    }

    while (result >= 2);
    v36 -= 3;
    v37 -= 3;
    v38 -= 3;
    v39 -= 3;
  }

  while (v40-- > 1);
  return result;
}

uint64_t jp2_colour::get_num_colours(jp2_colour *this)
{
  if (!*this)
  {
    jp2_colour::get_num_colours();
  }

  return *(*this + 8);
}

uint64_t jp2_colour::get_space(jp2_colour *this)
{
  if (!*this)
  {
    jp2_colour::get_space();
  }

  return *(*this + 4);
}

uint64_t jp2_colour::is_opponent_space(jp2_colour *this)
{
  if (!*this)
  {
    jp2_colour::is_opponent_space();
  }

  return (*(*this + 4) < 0x19u) & (0x1CC621Au >> *(*this + 4));
}

uint64_t jp2_colour::get_precedence(jp2_colour *this)
{
  if (!*this)
  {
    jp2_colour::get_precedence();
  }

  return *(*this + 96);
}

uint64_t jp2_colour::get_icc_profile(jp2_colour *this, int *a2)
{
  if (!*this)
  {
    return 0;
  }

  v2 = *(*this + 24);
  if (!v2)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = v2[2];
  }

  return *v2;
}

void j2_colour_converter::j2_colour_converter(j2_colour_converter *this, j2_colour *a2, int a3, int a4)
{
  *this = a3;
  v4 = *(a2 + 2);
  if (a3)
  {
    v5 = 14;
  }

  else
  {
    v5 = 13;
  }

  if (v4 < 3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  *(this + 1) = v5;
  *(this + 2) = v6;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  *(this + 12) = 0;
  *(this + 15) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  if (v4 <= 0)
  {
    j2_colour_converter::j2_colour_converter();
  }

  *(this + 13) = 1;
  *(this + 112) = 1;
  *(this + 144) = 1;
  bzero(this + 16, (4 * v6));
  v12 = 0;
  for (i = 0; i != v6; ++i)
  {
    v14 = 0;
    v15 = (this + 4 * v12 + 148);
    v12 += v6;
    do
    {
      if (i == v14)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }

      *v15 = v16;
      *(v15 - 27) = v16;
      ++v14;
      ++v15;
    }

    while (v6 != v14);
  }

  v17 = *(a2 + 1);
  switch(v17)
  {
    case 0:
      *this = 0;
      *(this + 1) = 13;
      operator new[]();
    case 1:
      *(this + 2) = 0x800000003C200000;
      *(this + 6) = 0x80000000;
      *(this + 40) = xmmword_186206870;
      *(this + 56) = xmmword_186206880;
      *(this + 18) = -1085214827;
      *(this + 13) = 0;
      if (a4)
      {
        goto LABEL_32;
      }

      goto LABEL_33;
    case 2:
    case 5:
    case 6:
    case 7:
    case 8:
    case 10:
    case 19:
      goto LABEL_41;
    case 3:
      *(this + 2) = -0.0;
      *(this + 6) = 0x80000000;
      *(this + 40) = xmmword_186206810;
      *(this + 56) = xmmword_186206820;
      *(this + 18) = -1086926429;
      *(this + 13) = 256;
      if (a4)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    case 4:
      *(this + 2) = 0x800000003C200000;
      *(this + 6) = 0x80000000;
      *(this + 40) = xmmword_186206870;
      *(this + 56) = xmmword_186206880;
      *(this + 18) = -1085214827;
      *(this + 13) = 0;
      if (!a4)
      {
LABEL_30:
        v18 = &xy_601_red;
        v19 = &xy_601_green;
        v20 = &xy_601_blue;
LABEL_34:
        j2_colour_converter::configure_d65_primary_transform(this, v18, v19, v20, 2.22222222, 0.099);
      }

LABEL_32:
      *(this + 12) = 1;
      *(this + 14) = 1;
      break;
    case 9:
      *(this + 2) = 0xBDE00D1B3E12CA58;
      *(this + 6) = -1123013152;
      *(this + 40) = xmmword_186206850;
      *(this + 56) = xmmword_186206860;
      *(this + 18) = -1082777844;
      *(this + 13) = 0;
LABEL_33:
      v18 = xy_709_red;
      v19 = xy_709_green;
      v20 = xy_709_blue;
      goto LABEL_34;
    case 11:
      *(this + 10) = -1082130432;
      *(this + 14) = -1082130432;
      *(this + 18) = -1082130432;
      goto LABEL_37;
    case 12:
      *(this + 15) = 1;
      break;
    case 13:
      *(this + 2) = -0.0;
      *(this + 6) = 0x80000000;
      *(this + 40) = xmmword_186206810;
      *(this + 56) = xmmword_186206820;
      *(this + 18) = -1086926429;
      *(this + 14) = 1;
LABEL_37:
      *(this + 6) = 1;
      break;
    case 14:
      if ((j2_colour_converter::configure_lab_transform(this, a2, v10, v11) & 1) == 0)
      {
        goto LABEL_41;
      }

      break;
    case 15:
      *this = 0;
      *(this + 1) = 13;
      operator new[]();
    case 16:
    case 17:
      break;
    case 18:
      *(this + 2) = -0.0;
      *(this + 6) = 0x80000000;
      *(this + 40) = xmmword_186206810;
      *(this + 56) = xmmword_186206820;
      *(this + 18) = -1086926429;
      *(this + 13) = 256;
      break;
    case 20:
      memset_pattern16(this + 16, &unk_1862068F0, 0xCuLL);
      *(this + 10) = 0x40000000;
      *(this + 14) = 0x40000000;
      *(this + 18) = 0x40000000;
      *(this + 13) = 0;
      break;
    case 21:
      j2_colour_converter::configure_d65_primary_transform(this, dbl_1862068C0, dbl_1862068D0, dbl_1862068E0, 1.8, 0.0);
    case 22:
    case 23:
      *(this + 2) = 0x800000003C200000;
      *(this + 6) = 0x80000000;
      *(this + 40) = xmmword_186206830;
      *(this + 56) = xmmword_186206840;
      *(this + 18) = -1089766529;
      *(this + 13) = 0;
      if (!a4)
      {
        v18 = &xy_240m_red;
        v19 = &xy_240m_green;
        v20 = &xy_240m_blue;
        goto LABEL_34;
      }

LABEL_28:
      *(this + 12) = 1;
      break;
    case 24:
      v21 = 0;
      *(this + 2) = -0.0;
      *(this + 6) = 0x80000000;
      *(this + 40) = xmmword_186206810;
      *(this + 56) = xmmword_186206820;
      *(this + 18) = -1086926429;
      *(this + 13) = 0;
      do
      {
        *(this + v21 + 44) = vadd_f32(*(this + v21 + 44), *(this + v21 + 44));
        v21 += 12;
      }

      while (v21 != 36);
      break;
    default:
      if ((v17 - 100) < 3)
      {
        break;
      }

LABEL_41:
      *(this + 2) = 0;
      return;
  }

  if (*(this + 2) == 3)
  {
    v22 = (this + 28);
    v23 = 3;
    do
    {
      *v22 = vcvtmd_s64_f64((*(v22 - 3) * 8192.0) + 0.5);
      ++v22;
      --v23;
    }

    while (v23);
    v24 = (this + 76);
    v25 = 9;
    do
    {
      *v24 = vcvtmd_s64_f64((*(v24 - 9) * 4096.0) + 0.5);
      ++v24;
      --v25;
    }

    while (v25);
    v26 = (this + 184);
    v27 = 9;
    do
    {
      *v26 = vcvtmd_s64_f64((*(v26 - 9) * 4096.0) + 0.5);
      ++v26;
      --v27;
    }

    while (v27);
  }
}

void j2_colour_converter::configure_d65_primary_transform(j2_colour_converter *this, double *a2, double *a3, double *a4, double a5, double a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  find_monitor_matrix(xy_709_red, xy_709_green, xy_709_blue, xy_D65_white, v34);
  find_monitor_matrix(a2, a3, a4, xy_D65_white, v32);
  v10 = v30;
  find_matrix_inverse(v30, v34, v28, v11);
  for (i = 0; i != 3; ++i)
  {
    v13 = 0;
    v14 = v32;
    do
    {
      v15 = 0;
      v16 = 0.0;
      v17 = v14;
      do
      {
        v18 = *v17;
        v17 += 3;
        v16 = v16 + *(v10 + v15) * v18;
        v15 += 8;
      }

      while (v15 != 24);
      *(v28 + 3 * i + v13++) = v16;
      v14 = (v14 + 8);
    }

    while (v13 != 3);
    v10 = (v10 + 24);
  }

  v19 = 0;
  v20 = 0;
  *(this + 144) = 1;
  while (1)
  {
    v21 = 0;
    v22 = v20;
    v23 = v28 + 8 * v20;
    v24 = this + 4 * v20 + 148;
    do
    {
      v25 = *&v23[8 * v21];
      v26 = v25;
      *&v24[4 * v21] = v26;
      if (v19 == v21)
      {
        v27 = 1.0;
      }

      else
      {
        v27 = 0.0;
      }

      if (vabdd_f64(v27, v25) > 0.01)
      {
        *(this + 144) = 0;
      }

      ++v21;
    }

    while (v21 != 3);
    ++v19;
    v20 = v22 + 3;
    if (v19 == 3)
    {
      if (!*(this + 28) && !*(this + 15) && !*(this + 16) && !*(this + 17))
      {
        operator new[]();
      }

      j2_colour_converter::configure_d65_primary_transform();
    }
  }
}

uint64_t j2_colour_converter::configure_lab_transform(j2_colour_converter *this, j2_colour *a2, uint64_t a3, double *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a2 + 1) == 14)
  {
    v5 = *(a2 + 22);
    if (v5 != 4470064)
    {
      if (v5 == 1129578496)
      {
        v6 = *(a2 + 46);
        if (v6 != 6500 && v6 != 5000)
        {
          return 0;
        }
      }

      else if (v5 != 4470325)
      {
        return 0;
      }
    }

    v7 = *(a2 + 16);
    if (v7 >= 1)
    {
      v8 = *(a2 + 17);
      if (v8 >= 1)
      {
        v9 = *(a2 + 18);
        if (v9 >= 1 && *(a2 + 3) >= 1 && *(a2 + 4) >= 1 && *(a2 + 5) >= 1)
        {
          *(this + 144) = 0;
          *(this + 112) = 0;
          *(this + 13) = 0;
          v10 = (a2 + 76);
          v11 = (this + 16);
          v12 = 3;
          v13 = (this + 16);
          do
          {
            *v13++ = 0.5 - (*v10 / ~(-1 << *(v10 - 16)));
            ++v10;
            --v12;
          }

          while (v12);
          v14 = 0;
          v23[0] = 0.0;
          v23[1] = 100.0 / v7;
          v24 = vdivq_f64(xmmword_186206890, vdupq_lane_s64(COERCE__INT64(v8), 0));
          v25 = 0;
          v26 = 0;
          v23[2] = 0.0;
          v27 = vdivq_f64(xmmword_1862068A0, vdupq_lane_s64(COERCE__INT64(v9), 0));
          do
          {
            v15 = v23[v14] + v23[v14 + 1] + v23[v14 + 2];
            *v11 = *v11 + (v15 * -0.5);
            ++v11;
            v14 += 3;
          }

          while (v14 != 9);
          v22 = 0;
          memset(v21, 0, sizeof(v21));
          v20 = 0;
          memset(v19, 0, sizeof(v19));
          find_matrix_inverse(v19, v23, v21, a4);
          for (i = 0; i != 9; ++i)
          {
            v17 = *(v19 + i);
            *(this + i + 10) = v17;
          }

          if (!*(this + 15))
          {
            operator new[]();
          }

          j2_colour_converter::configure_lab_transform();
        }
      }
    }
  }

  return 0;
}

void j2_colour_converter::~j2_colour_converter(j2_colour_converter *this)
{
  for (i = 120; i != 144; i += 8)
  {
    v3 = *(this + i);
    if (v3)
    {
      MEMORY[0x186602830](v3, 0x1000C80BDFB0063);
      *(this + i) = 0;
    }
  }

  v4 = *(this + 28);
  if (v4)
  {
    MEMORY[0x186602830](v4, 0x1000C80BDFB0063);
    *(this + 28) = 0;
  }

  v5 = *(this + 29);
  if (v5)
  {
    MEMORY[0x186602830](v5, 0x1000C80BDFB0063);
    *(this + 29) = 0;
  }
}

j2_colour_converter *jp2_colour_converter::clear(j2_colour_converter **this)
{
  result = *this;
  if (result)
  {
    j2_colour_converter::~j2_colour_converter(result);
    result = MEMORY[0x186602850]();
  }

  *this = 0;
  return result;
}

void jp2_colour_converter::init(j2_colour_converter **a1)
{
  if (*a1)
  {
    jp2_colour_converter::clear(a1);
  }

  operator new();
}

BOOL jp2_colour_converter::is_non_trivial(jp2_colour_converter *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  if (*(v1 + 13) == 1 && *(v1 + 112) == 1)
  {
    return *(v1 + 232) != 0;
  }

  return 1;
}

uint64_t jp2_colour_converter::convert_lum(uint64_t *a1, uint64_t a2, int a3)
{
  v3 = *a1;
  if (!*a1 || *(v3 + 8) != 1)
  {
    return 0;
  }

  v4 = *(v3 + 232);
  if (v4)
  {
    if (a3 >= 0)
    {
      v5 = a3;
    }

    else
    {
      v5 = *a2;
    }

    if (v5 > *a2)
    {
      jp2_colour_converter::convert_lum();
    }

    if ((*(a2 + 6) & 2) == 0 || (*(a2 + 6) & 1) != 0 || (v6 = *(a2 + 8)) == 0)
    {
      jp2_colour_converter::convert_lum();
    }

    if (v5 >= 1)
    {
      v7 = -65536 << *(v3 + 4) >> 16;
      v8 = v5 + 1;
      do
      {
        v9 = *v6;
        if (v9 > -4097)
        {
          v12 = v9 + 4096;
          if ((v12 & v7) != 0)
          {
            v12 = ~v7;
          }

          v11 = *(v4 + 2 * v12);
        }

        else
        {
          v10 = -4096 - v9;
          if ((v10 & v7) != 0)
          {
            v10 = ~v7;
          }

          v11 = -8192 - *(v4 + 2 * v10);
        }

        *v6++ = v11;
        --v8;
      }

      while (v8 > 1);
    }
  }

  return 1;
}

uint64_t jp2_colour_converter::convert_rgb(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *a1;
  if (!*a1 || *(v5 + 8) != 3)
  {
    return 0;
  }

  if (a5 >= 0)
  {
    v9 = a5;
  }

  else
  {
    v9 = *a2;
  }

  if (v9 > *a2 || v9 > *a3 || v9 > *a4)
  {
    jp2_colour_converter::convert_rgb();
  }

  if (*(v5 + 14) == 1)
  {
    kdu_convert_ycc_to_rgb(a2, a3, a4, v9);
  }

  else if ((*(v5 + 13) & 1) == 0 && v9 >= 1)
  {
    v14 = *(v5 + 28);
    v15 = *(v5 + 32);
    v16 = *(v5 + 36);
    if ((*(a4 + 6) & 2) != 0)
    {
      v17 = *(a4 + 8);
    }

    else
    {
      v17 = 0;
    }

    if ((*(a3 + 6) & 2) != 0)
    {
      v18 = *(a3 + 8);
    }

    else
    {
      v18 = 0;
    }

    if ((*(a2 + 6) & 2) != 0)
    {
      v19 = *(a2 + 8);
    }

    else
    {
      v19 = 0;
    }

    v20 = v9 + 1;
    do
    {
      v21 = v14 + *v19;
      v22 = v15 + *v18;
      v23 = v16 + *v17;
      *v19++ = (*(v5 + 80) * v22 + *(v5 + 76) * v21 + *(v5 + 84) * v23 + 2048) >> 12;
      *v18++ = (*(v5 + 92) * v22 + *(v5 + 88) * v21 + *(v5 + 96) * v23 + 2048) >> 12;
      *v17++ = (*(v5 + 104) * v22 + *(v5 + 100) * v21 + *(v5 + 108) * v23 + 2048) >> 12;
      --v20;
    }

    while (v20 > 1);
  }

  v24 = *a1;
  if ((*(*a1 + 112) & 1) == 0)
  {
    v25 = *(v24 + 120);
    if (!v25)
    {
      jp2_colour_converter::convert_rgb();
    }

    v26 = -1 << *(v24 + 4);
    v27 = *(v24 + 128);
    v28 = *(v24 + 136);
    if (!v27)
    {
      v27 = *(v24 + 120);
    }

    if (!v28)
    {
      v28 = *(v24 + 120);
    }

    if ((*(a2 + 6) & 2) != 0)
    {
      v29 = *(a2 + 8);
    }

    else
    {
      v29 = 0;
    }

    if ((*(a3 + 6) & 2) != 0)
    {
      v30 = *(a3 + 8);
    }

    else
    {
      v30 = 0;
    }

    if ((*(a4 + 6) & 2) != 0)
    {
      v31 = *(a4 + 8);
    }

    else
    {
      v31 = 0;
    }

    if (*(v24 + 144) == 1)
    {
      if (v9 >= 1)
      {
        v32 = v9 + 1;
        do
        {
          v33 = *v29;
          if (v33 > -4097)
          {
            v36 = v33 + 4096;
            if ((v36 & v26) != 0)
            {
              v36 = ~v26;
            }

            v35 = *(v25 + 2 * v36);
          }

          else
          {
            v34 = -4096 - v33;
            if ((v34 & v26) != 0)
            {
              v34 = ~v26;
            }

            v35 = -8192 - *(v25 + 2 * v34);
          }

          *v29 = v35;
          v37 = *v30;
          if (v37 > -4097)
          {
            v40 = v37 + 4096;
            if ((v40 & v26) != 0)
            {
              v40 = ~v26;
            }

            v39 = *(v27 + 2 * v40);
          }

          else
          {
            v38 = -4096 - v37;
            if ((v38 & v26) != 0)
            {
              v38 = ~v26;
            }

            v39 = -8192 - *(v27 + 2 * v38);
          }

          *v30 = v39;
          v41 = *v31;
          if (v41 > -4097)
          {
            v44 = v41 + 4096;
            if ((v44 & v26) != 0)
            {
              v44 = ~v26;
            }

            v43 = *(v28 + 2 * v44);
          }

          else
          {
            v42 = -4096 - v41;
            if ((v42 & v26) != 0)
            {
              v42 = ~v26;
            }

            v43 = -8192 - *(v28 + 2 * v42);
          }

          *v31++ = v43;
          ++v29;
          ++v30;
          --v32;
        }

        while (v32 > 1);
      }
    }

    else if (v9 >= 1)
    {
      v45 = *(v24 + 224);
      v46 = v9 + 1;
      do
      {
        v47 = *v29;
        if (v47 > -4097)
        {
          v50 = v47 + 4096;
          if ((v50 & v26) != 0)
          {
            v50 = ~v26;
          }

          v49 = *(v25 + 2 * v50);
        }

        else
        {
          v48 = -4096 - v47;
          if ((v48 & v26) != 0)
          {
            v48 = ~v26;
          }

          v49 = -*(v25 + 2 * v48);
        }

        v51 = *v30;
        if (v51 > -4097)
        {
          v54 = v51 + 4096;
          if ((v54 & v26) != 0)
          {
            v54 = ~v26;
          }

          v53 = *(v27 + 2 * v54);
        }

        else
        {
          v52 = -4096 - v51;
          if ((v52 & v26) != 0)
          {
            v52 = ~v26;
          }

          v53 = -*(v27 + 2 * v52);
        }

        v55 = *v31;
        if (v55 > -4097)
        {
          v58 = v55 + 4096;
          if ((v58 & v26) != 0)
          {
            v58 = ~v26;
          }

          v57 = *(v28 + 2 * v58);
        }

        else
        {
          v56 = -4096 - v55;
          if ((v56 & v26) != 0)
          {
            v56 = ~v26;
          }

          v57 = -*(v28 + 2 * v56);
        }

        v59 = (*(v24 + 188) * v53 + *(v24 + 184) * v49 + *(v24 + 192) * v57 + 2048) >> 12;
        if ((v59 & 0x80000000) != 0)
        {
          if ((v26 & -v59) != 0)
          {
            v61 = ~v26;
          }

          else
          {
            v61 = -v59;
          }

          v60 = -8192 - *(v45 + 2 * v61);
        }

        else
        {
          if ((v59 & v26) != 0)
          {
            v59 = ~v26;
          }

          v60 = *(v45 + 2 * v59);
        }

        *v29 = v60;
        v62 = (*(v24 + 200) * v53 + *(v24 + 196) * v49 + *(v24 + 204) * v57 + 2048) >> 12;
        if ((v62 & 0x80000000) != 0)
        {
          if ((v26 & -v62) != 0)
          {
            v64 = ~v26;
          }

          else
          {
            v64 = -v62;
          }

          v63 = -8192 - *(v45 + 2 * v64);
        }

        else
        {
          if ((v62 & v26) != 0)
          {
            v62 = ~v26;
          }

          v63 = *(v45 + 2 * v62);
        }

        *v30 = v63;
        v65 = (*(v24 + 212) * v53 + *(v24 + 208) * v49 + *(v24 + 216) * v57 + 2048) >> 12;
        if ((v65 & 0x80000000) != 0)
        {
          if ((v26 & -v65) != 0)
          {
            v67 = ~v26;
          }

          else
          {
            v67 = -v65;
          }

          v66 = -8192 - *(v45 + 2 * v67);
        }

        else
        {
          if ((v65 & v26) != 0)
          {
            v65 = ~v26;
          }

          v66 = *(v45 + 2 * v65);
        }

        *v31++ = v66;
        ++v29;
        ++v30;
        --v46;
      }

      while (v46 > 1);
    }
  }

  return 1;
}

uint64_t jp2_colour_converter::convert_rgb4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  result = jp2_colour_converter::convert_rgb(a1, a2, a3, a4, a6);
  if (result && *(*a1 + 15) == 1)
  {
    LODWORD(v13) = *a5;
    if (a6 >= 0)
    {
      v13 = a6;
    }

    else
    {
      v13 = v13;
    }

    if (v13 > *a2 || v13 > *a3 || v13 > *a4)
    {
      jp2_colour_converter::convert_rgb4();
    }

    if ((*(a2 + 6) & 2) != 0)
    {
      v16 = *(a2 + 8);
    }

    else
    {
      v16 = 0;
    }

    if ((*(a3 + 6) & 2) != 0)
    {
      v17 = *(a3 + 8);
    }

    else
    {
      v17 = 0;
    }

    if ((*(a4 + 6) & 2) != 0)
    {
      v18 = *(a4 + 8);
    }

    else
    {
      v18 = 0;
    }

    if ((*(a5 + 6) & 2) != 0)
    {
      v19 = *(a5 + 8);
    }

    else
    {
      v19 = 0;
    }

    if (v13 >= 1)
    {
      do
      {
        v20 = *v19++;
        v21 = -16777216 - (v20 << 12);
        *v16 = (v21 + (4095 - v20) * *v16) >> 13;
        ++v16;
        *v17 = (v21 + (4095 - v20) * *v17) >> 13;
        ++v17;
        *v18 = (v21 + (4095 - v20) * *v18) >> 13;
        ++v18;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

void jp2_header::~jp2_header(jp2_header *this)
{
  v1 = *this;
  if (*this)
  {
    j2_channels::~j2_channels((v1 + 52));
    v2 = v1[51];
    if (v2)
    {
      MEMORY[0x186602830](v2, 0x1000C808B6DE1C6);
    }

    j2_palette::~j2_palette((v1 + 43));
    j2_colour::~j2_colour((v1 + 29));
    v3 = v1[28];
    if (v3)
    {
      MEMORY[0x186602830](v3, 0x1000C8052888210);
    }

    jp2_input_box::~jp2_input_box(v1);
    MEMORY[0x186602850]();
  }
}

float *jp2_header::write(float **this, jp2_output_box *a2)
{
  j2_dimensions::finalize((*this + 48));
  j2_palette::finalize((*this + 86));
  v4 = *this;
  if ((*this)[114] <= 0.0)
  {
    v4[114] = 1.0;
  }

  if (v4[115] <= 0.0)
  {
    v4[115] = 1.0;
  }

  j2_component_map::finalize((v4 + 94), (v4 + 48), (v4 + 86));
  j2_channels::finalize(*this + 104, *(*this + 60), 1);
  j2_channels::add_cmap_channels(*this + 104, (*this + 94), 0);
  j2_colour::finalize((*this + 58), (*this + 104));
  v5 = *this;
  if (*(*this + 432) == 1)
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    kdu_error::kdu_error(&v8, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v8);
  }

  if (*(v5 + 232) != 1 || (v6 = *(v5 + 59), (v6 - 16) >= 3) && (v6 - 100) >= 2)
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    kdu_error::kdu_error(&v8, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v8);
  }

  j2_dimensions::save_boxes((v5 + 48), a2);
  j2_colour::save_box((*this + 58), a2);
  j2_palette::save_box((*this + 86), a2);
  j2_component_map::save_box(*this + 376, a2, 0);
  j2_channels::save_box((*this + 104), a2, 1);
  return j2_resolution::save_box(*this + 114, a2);
}

void jp2_target::jp2_target(jp2_target *this)
{
  *(this + 2) = 0;
  *(this + 72) = 0;
  *(this + 12) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0;
  *(this + 7) = -1;
  *(this + 8) = 0;
  *this = &unk_1EF4D2A30;
  *(this + 11) = 0;
  *(this + 10) = 0;
  std::unique_ptr<jp2_header>::reset[abi:fe200100](this + 10, 0);
  *(this + 96) = 0;
}

void jp2_target::~jp2_target(jp2_header **this)
{
  *this = &unk_1EF4D2A30;
  std::unique_ptr<jp2_header>::reset[abi:fe200100](this + 10, 0);
  *this = &unk_1EF4D29C0;
  v2 = this[8];
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1000C8077774924);
  }

  *this = &unk_1EF4D2B00;
}

{
  jp2_target::~jp2_target(this);

  JUMPOUT(0x186602850);
}

void jp2_target::open(jp2_target *this, jp2_family_tgt *a2)
{
  *(this + 11) = a2;
  if (*(a2 + 3))
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
    kdu_error::kdu_error(v2, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(v2);
  }

  operator new();
}

uint64_t jp2_target::write_header(jp2_target *this)
{
  v2 = *(this + 11);
  if (!v2)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    kdu_error::kdu_error(&v5, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v5);
  }

  if (*(v2 + 24))
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    kdu_error::kdu_error(&v5, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v5);
  }

  if (*(**(this + 10) + 200) != 7 || *(**(this + 10) + 204) >= 3u)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    kdu_error::kdu_error(&v5, "Error in Kakadu File Format Support:\n");
    (*(v5 + 16))(&v5, "Attempting to embed a codestream which does not conform to Part-1 of the JPEG2000 standard within a plain JP2 file.  For this, you must either write a raw codestream, or embed the codestream within the more advanced JPX file format.");
    kdu_error::~kdu_error(&v5);
  }

  if (*(this + 96) == 1)
  {
    jp2_target::write_header();
  }

  if (!*(this + 10))
  {
    jp2_target::write_header();
  }

  *(this + 96) = 1;
  jp2_output_box::open(this, *(this + 11), 1783636000, 0);
  LODWORD(v5) = 176622093;
  (*(*this + 40))(this, &v5, 4);
  (*(*this + 16))(this);
  (*(*this + 80))(this, 1718909296, 0);
  LODWORD(v5) = 540176490;
  (*(*this + 40))(this, &v5, 4);
  LODWORD(v5) = 0;
  (*(*this + 40))(this, &v5, 4);
  LODWORD(v5) = 540176490;
  (*(*this + 40))(this, &v5, 4);
  (*(*this + 16))(this);
  (*(*this + 80))(this, 1785737832, 0);
  jp2_header::write(*(this + 10), this);
  return (*(*this + 16))(this);
}

uint64_t jp2_target::open_codestream(jp2_target *this, uint64_t a2)
{
  if (!*(this + 11) || (*(this + 96) & 1) == 0)
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    kdu_error::kdu_error(v3, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(v3);
  }

  return (*(*this + 80))(this, 1785737827, a2);
}

uint64_t jp2_target::access_dimensions(jp2_target *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    jp2_target::access_dimensions();
  }

  return *v1 + 192;
}

uint64_t jp2_target::access_colour(jp2_target *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    jp2_target::access_colour();
  }

  return *v1 + 232;
}

uint64_t jp2_target::access_channels(jp2_target *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    jp2_target::access_channels();
  }

  return *v1 + 416;
}

uint64_t jp2_target::access_resolution(jp2_target *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    jp2_target::access_resolution();
  }

  return *v1 + 456;
}

void j2_data_references::init(j2_data_references *this, jp2_input_box *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a2 + 12) == 1685348972)
  {
    v13 = 0;
    if (!jp2_input_box::read(a2, &v13))
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      kdu_error::kdu_error(v14, "Error in Kakadu File Format Support:\n");
      (*(*&v14[0] + 16))(v14, "Malformed data reference box (dtbl) found in JPX data source.  Not all fields were present.");
      kdu_error::~kdu_error(v14);
    }

    v4 = v13;
    *this = v13;
    if (*(this + 1) < v4)
    {
      *(this + 1) = v4;
      operator new[]();
    }

    bzero(*(this + 1), 8 * v4);
    *(&v14[1] + 1) = 0;
    v23 = 0u;
    v27 = 0u;
    v26 = 0u;
    v24 = 0;
    *&v14[0] = &unk_1EF4D2940;
    *(v14 + 8) = xmmword_1862067D0;
    v15 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0;
    v20 = -1;
    v21 = -1;
    v22 = -1;
    LODWORD(v23) = -1;
    DWORD2(v23) = 0;
    *(&v23 + 5) = 0;
    v25 = -1;
    v12 = 0;
    if (*this >= 1)
    {
      v6 = jp2_input_box::open(v14, a2);
      if (DWORD2(v16) == 1970433056)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      if (v7 == 1 && jp2_input_box::read(v14, &v12) && (BYTE5(v23) & 1) == 0)
      {
        v8 = DWORD2(v27) + v19 - v24;
        if (v8 >= 0)
        {
          if (v8 == 0x7FFFFFFF)
          {
            v11 = 0;
            v9 = 0u;
            v10 = 0u;
            kdu_error::kdu_error(&v9, "Error in Kakadu File Format Support:\n");
            (*(v9 + 16))(&v9, "Malformed data reference box (dtbl).  Unable to read sufficient correctly formatted data entry URL boxes.");
            kdu_error::~kdu_error(&v9);
          }

          operator new[]();
        }
      }

      v11 = 0;
      v9 = 0u;
      v10 = 0u;
      kdu_error::kdu_error(&v9, "Error in Kakadu File Format Support:\n");
      (*(v9 + 16))(&v9, "Malformed data reference box (dtbl).  Unable to read sufficient correctly formatted data entry URL boxes.");
      kdu_error::~kdu_error(&v9);
    }

    if ((*(a2 + 125) & 1) == 0 && *(a2 + 11) - *(a2 + 17) + *(a2 + 44) >= 1)
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
      kdu_error::kdu_error(&v9, "Error in Kakadu File Format Support:\n");
      (*(v9 + 16))(&v9, "Malformed data reference box (dtbl).  Box appears to contain additional content beyond the declared number of data entry URL boxes.");
      kdu_error::~kdu_error(&v9);
    }

    (*(*a2 + 16))(a2);
    jp2_input_box::~jp2_input_box(v14);
  }

  else
  {
    v5 = *(*a2 + 16);

    v5(a2);
  }
}

void sub_185F59DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  jp2_input_box::~jp2_input_box(va);
  _Unwind_Resume(v6);
}

const char *jp2_data_references::get_url(jp2_data_references *this, unsigned int a2)
{
  result = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v4 = *this;
    if (v4)
    {
      if (*v4 >= a2)
      {
        if (a2)
        {
          return *(*(v4 + 8) + 8 * a2 - 8);
        }

        else
        {
          return "";
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t j2_component_map::verify_channel_query_idx(uint64_t this, int a2)
{
  if (a2 < 0 || *(this + 28) <= a2)
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
    kdu_error::kdu_error(v2, "Error in Kakadu File Format Support:\n");
    (*(*&v2[0] + 16))(v2, "Attempting to associate a reproduction function (e.g., colour intensity, opacity, etc.) with a non-existent image channel in a JP2-family file.  The problem may be a missing or invalid Component Mapping (cmap) box, or a corrupt or illegal Channel Definitions (cdef) box.");
    kdu_error::~kdu_error(v2);
  }

  if (!*(this + 8))
  {
    j2_component_map::verify_channel_query_idx();
  }

  return this;
}

void j2_channels::~j2_channels(j2_channels *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1000C80A987AF97);
  }

  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C8077774924);
  }
}

void j2_palette::~j2_palette(j2_palette *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1000C8052888210);
  }

  if (*(this + 3))
  {
    v3 = *(this + 1);
    if (v3 < 1)
    {
      goto LABEL_10;
    }

    for (i = 0; i < v3; ++i)
    {
      v5 = *(*(this + 3) + 8 * i);
      if (v5)
      {
        MEMORY[0x186602830](v5, 0x1000C8052888210);
        v3 = *(this + 1);
      }
    }

    if (*(this + 3))
    {
LABEL_10:
      MEMORY[0x186602830]();
    }
  }
}

void std::default_delete<j2_icc_profile>::operator()[abi:fe200100](uint64_t a1, void *a2)
{
  if (a2)
  {
    if (*a2)
    {
      MEMORY[0x186602830](*a2, 0x1000C8077774924);
    }

    JUMPOUT(0x186602850);
  }
}

jp2_header *std::unique_ptr<jp2_header>::reset[abi:fe200100](jp2_header **a1, jp2_header *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    jp2_header::~jp2_header(result);

    JUMPOUT(0x186602850);
  }

  return result;
}

void kd_attribute::kd_attribute(kd_attribute *this, const char *a2, const char *a3, int a4, const char *a5)
{
  v6 = 0;
  v7 = 0;
  *this = a2;
  *(this + 1) = a3;
  *(this + 4) = a4;
  *(this + 3) = a5;
  for (i = a5; ; ++i)
  {
    *(this + 8) = v7;
    v9 = *i;
    v10 = (v9 - 40);
    if (v10 > 0x33)
    {
      break;
    }

    if (((1 << (v9 - 40)) & 0x24C000000) != 0)
    {
      goto LABEL_16;
    }

    if (v9 == 40)
    {
      v11 = 41;
    }

    else
    {
      if (v10 != 51)
      {
        break;
      }

      v11 = 93;
    }

    do
    {
LABEL_10:
      v13 = *++i;
      v12 = v13;
      if (v13)
      {
        v14 = v11 == v12;
      }

      else
      {
        v14 = 1;
      }
    }

    while (!v14);
    if (!v12)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = a5;
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }

LABEL_16:
    ++v7;
    v6 += 24;
  }

  if (!*i)
  {
    *(this + 9) = 0;
    *(this + 16) = 1;
    operator new[]();
  }

  v11 = 0;
  goto LABEL_10;
}

uint64_t kd_attribute::augment_records(uint64_t this, int a2)
{
  if (*(this + 36) < a2)
  {
    v2 = this;
    v3 = *(this + 64);
    if (v3 < a2)
    {
      if ((*(this + 16) & 1) == 0)
      {
        v5 = 0;
        memset(v4, 0, sizeof(v4));
        kdu_error::kdu_error(v4, "Kakadu Core Error:\n");
        (*(*&v4[0] + 16))(v4, "Attempting to write multiple records to a code-stream attribute");
        (*(*&v4[0] + 16))(v4, ", ");
        (*(*&v4[0] + 16))(v4, *v2);
        (*(*&v4[0] + 16))(v4, ", which can accept only single attributes!");
        kdu_error::~kdu_error(v4);
      }

      is_mul_ok((v3 + a2) * *(this + 32), 0x18uLL);
      operator new[]();
    }

    *(this + 36) = a2;
  }

  return this;
}

uint64_t kd_attribute::describe(kd_attribute *this, kdu_message *a2, int a3, int a4, int a5, char a6)
{
  v8 = 0;
  v26 = *MEMORY[0x1E69E9840];
  v19 = 0;
  if (a3)
  {
    LOBYTE(v19) = 84;
    v8 = 1;
  }

  if (a4 && (*(this + 16) & 4) == 0)
  {
    v9 = v8++;
    *(&v19 | v9) = 67;
  }

  if (a5)
  {
    *(&v19 | v8) = 73;
LABEL_9:
    (*(*a2 + 16))(a2, *this);
    (*(*a2 + 16))(a2, "[:<");
    (*(*a2 + 16))(a2, &v19);
    (*(*a2 + 16))(a2, ">]={");
    goto LABEL_10;
  }

  *(&v19 | v8) = 0;
  if (v8)
  {
    goto LABEL_9;
  }

  (*(*a2 + 16))(a2, *this);
  (*(*a2 + 16))(a2, "={");
LABEL_10:
  if (*(this + 8) >= 1)
  {
    v10 = 0;
    while (1)
    {
      if (v10)
      {
        (*(*a2 + 16))(a2, ",");
      }

      v11 = *(*(this + 5) + 24 * v10 + 8);
      if (!v11)
      {
        kd_attribute::describe();
      }

      v12 = *v11;
      if (v12 <= 0x45)
      {
        break;
      }

      if (v12 != 70)
      {
        if (v12 != 91)
        {
          if (v12 == 73)
          {
            (*(*a2 + 16))(a2, "<int>");
          }

          goto LABEL_34;
        }

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        *v21 = 0u;
        v18 = 0;
        (*(*a2 + 16))(a2, "FLAGS<");
        do
        {
          v11 = parse_translator_entry(v11 + 1, 0x7Cu, v21, &v18, v14);
          (*(*a2 + 16))(a2, v21);
          if (*v11 != 124)
          {
            break;
          }

          v20 = 124;
          (*(*a2 + 16))(a2, &v20);
        }

        while (*v11 == 124);
LABEL_33:
        (*(*a2 + 16))(a2, ">");
        goto LABEL_34;
      }

      (*(*a2 + 16))(a2, "<float>");
LABEL_34:
      if (++v10 >= *(this + 8))
      {
        goto LABEL_35;
      }
    }

    if (v12 != 40)
    {
      if (v12 == 66)
      {
        (*(*a2 + 16))(a2, "<yes/no>");
      }

      else if (v12 == 67)
      {
        (*(*a2 + 16))(a2, "<custom int>");
      }

      goto LABEL_34;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    *v21 = 0u;
    v18 = 0;
    (*(*a2 + 16))(a2, "ENUM<");
    do
    {
      v11 = parse_translator_entry(v11 + 1, 0x2Cu, v21, &v18, v13);
      (*(*a2 + 16))(a2, v21);
      if (*v11 != 44)
      {
        break;
      }

      v20 = 44;
      (*(*a2 + 16))(a2, &v20);
    }

    while (*v11 == 44);
    goto LABEL_33;
  }

LABEL_35:
  (*(*a2 + 16))(a2, "}");
  if (*(this + 4))
  {
    v15 = ",...\n";
  }

  else
  {
    v15 = "\n";
  }

  result = (*(*a2 + 16))(a2, v15);
  if (a6)
  {
    (*(*a2 + 16))(a2, "\t");
    (*(*a2 + 16))(a2, *(this + 1));
    return (*(*a2 + 16))(a2, "\n");
  }

  return result;
}

char *parse_translator_entry(const char *a1, unsigned __int8 a2, char *a3, _DWORD *a4, int *a5)
{
  v8 = 0;
  v22 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v9 = a1[v8];
    if (v9 == a2)
    {
LABEL_3:
      *&v19 = 0;
      *v17 = 0u;
      v18 = 0u;
      kdu_error::kdu_error(v17, "Kakadu Core Error:\n");
      (*(*v17 + 16))(v17, "String translators in code-stream attribute specifications must contain an '=' sign! Problem encountered at");
      (*(*v17 + 16))(v17, ": ");
      (*(*v17 + 16))(v17, a1);
      (*(*v17 + 16))(v17, ".");
      kdu_error::~kdu_error(v17);
    }

    if (a1[v8] > 0x3Cu)
    {
      break;
    }

    if (!a1[v8] || v9 == 41)
    {
      goto LABEL_3;
    }

LABEL_4:
    a3[v8] = a1[v8];
    if (++v8 == 80)
    {
      v16 = 0;
      *__endptr = 0u;
      v15 = 0u;
      kdu_error::kdu_error(__endptr, "Kakadu Core Error:\n");
      (*(__endptr[0] + 2))(__endptr, "String translators in code-stream attribute specifications may not exceed ");
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      *v17 = 0u;
      if (LOBYTE(__endptr[1]))
      {
        sprintf(v17, "%x");
      }

      else
      {
        sprintf(v17, "%d");
      }

      (*(__endptr[0] + 2))(__endptr, v17);
      (*(__endptr[0] + 2))(__endptr, " characters in length! Problem encountered at");
      (*(__endptr[0] + 2))(__endptr, ": ");
      (*(__endptr[0] + 2))(__endptr, a1);
      (*(__endptr[0] + 2))(__endptr, ".");
      kdu_error::~kdu_error(__endptr);
    }
  }

  if (v9 == 93)
  {
    goto LABEL_3;
  }

  if (v9 != 61)
  {
    goto LABEL_4;
  }

  a3[v8] = 0;
  v10 = &a1[v8 + 1];
  __endptr[0] = 0;
  v11 = strtol(v10, __endptr, 10);
  *a4 = v11;
  if (__endptr[0] == v10 || (v12 = *__endptr[0], v12 != a2) && v12 != 41 && v12 != 93)
  {
    *&v19 = 0;
    *v17 = 0u;
    v18 = 0u;
    kdu_error::kdu_error(v17, "Kakadu Core Error:\n");
    (*(*v17 + 16))(v17, "String translators in code-stream attribute specifications must be identified with integers and correctly delimited! Problem encountered at");
    (*(*v17 + 16))(v17, ": ");
    (*(*v17 + 16))(v17, &a1[v8 + 1]);
    (*(*v17 + 16))(v17, ".");
    kdu_error::~kdu_error(v17);
  }

  return __endptr[0];
}

void kdu_params::~kdu_params(kdu_params *this)
{
  *this = &unk_1EF4D2B48;
  for (i = *(this + 12); i; i = *(this + 12))
  {
    *(this + 12) = *(i + 56);
    v3 = *(i + 40);
    if (v3)
    {
      MEMORY[0x186602830](v3, 0x1050C80E1FAFEFCLL);
    }

    MEMORY[0x186602850](i, 0x1070C40C5D0BD27);
  }

  v4 = *(this + 10);
  if (!v4)
  {
    return;
  }

  if (v4 != this)
  {
    do
    {
      v5 = v4;
      v4 = *(v4 + 11);
    }

    while (v4 != this);
    v6 = (v5 + 88);
    v7 = 88;
    goto LABEL_9;
  }

  v8 = *(this + 11);
  if (v8)
  {
    do
    {
      *(this + 11) = v8[11];
      v8[10] = 0;
      (*(*v8 + 16))(v8);
      v8 = *(this + 11);
    }

    while (v8);
    if (*(this + 10) != this)
    {
      v17 = "this == first_inst";
      v29 = 797;
LABEL_53:
      __assert_rtn("~kdu_params", "params.cpp", v29, v17);
    }
  }

  v9 = *(this + 8);
  if (!v9 || (v10 = *(this + 8), v11 = *(this + 4), v12 = *(this + 5), v13 = v10 + 1, v14 = v12 + v13 + v13 * v11 + 1, *(v9 + 8 * v14) != this))
  {
    v17 = "(refs != NULL) && (refs[ref_idx] == this)";
    v29 = 800;
    goto LABEL_53;
  }

  v15 = v14;
  *(v9 + 8 * v14) = 0;
  if (v12 < 0 && v10 >= 1)
  {
    v16 = (*(this + 8) + 8 * v14 + 8);
    v17 = "(*sref)->tile_idx == this->tile_idx";
    while (1)
    {
      v18 = *v16;
      if (*v16 == this)
      {
        *v16 = 0;
      }

      else if (v18)
      {
        if (*(v18 + 4) != *(this + 4))
        {
          v29 = 813;
          goto LABEL_53;
        }

        (*(*v18 + 16))(v18);
        if (*v16)
        {
          v29 = 816;
          v17 = "*sref == NULL";
          goto LABEL_53;
        }
      }

      --v13;
      ++v16;
      if (v13 <= 1)
      {
        v11 = *(this + 4);
        break;
      }
    }
  }

  if ((v11 & 0x80000000) == 0)
  {
    return;
  }

  v19 = *(this + 7);
  if (v19 < 1)
  {
LABEL_38:
    if ((*(this + 5) & 0x80000000) == 0)
    {
      return;
    }

    v25 = *(this + 8);
    if (v25 != (this + 72) && v25)
    {
      MEMORY[0x186602830](v25, 0x20C8093837F09);
    }

    v26 = *(this + 6);
    if (!v26)
    {
      return;
    }

    if (v26 == this)
    {
      while (1)
      {
        v28 = *(this + 7);
        if (!v28)
        {
          break;
        }

        *(this + 7) = v28[7];
        v28[6] = 0;
        (*(*v28 + 16))(v28);
      }

      return;
    }

    do
    {
      v27 = v26;
      v26 = *(v26 + 7);
    }

    while (v26 != this);
    v6 = (v27 + 56);
    v7 = 56;
LABEL_9:
    *v6 = *(this + v7);
    return;
  }

  v20 = (*(this + 8) + 8 * v15);
  v21 = v19 + 1;
  v17 = "(*sref)->comp_idx == this->comp_idx";
  do
  {
    v22 = &v20[*(this + 8)];
    v24 = v22[1];
    v20 = v22 + 1;
    v23 = v24;
    if (v24 == this)
    {
      *v20 = 0;
    }

    else
    {
      if (!v23)
      {
        goto LABEL_36;
      }

      if (*(v23 + 5) != *(this + 5))
      {
        v29 = 831;
        goto LABEL_53;
      }

      (*(*v23 + 16))(v23);
      if (*v20)
      {
        v29 = 834;
        v17 = "*sref == NULL";
        goto LABEL_53;
      }
    }

LABEL_36:
    --v21;
  }

  while (v21 > 1);
  if ((*(this + 4) & 0x80000000) != 0)
  {
    goto LABEL_38;
  }
}

kdu_params *kdu_params::link(kdu_params *this, kdu_params *a2, int a3, int a4, int a5, int a6)
{
  if (*(this + 4) != -1 || *(this + 5) != -1 || *(this + 6) || a3 >= a5 || (v9 = *(this + 8), v9 != (this + 72)) || a4 < -1 || a3 < -1 || a4 >= a6)
  {
    kdu_params::link();
  }

  *(this + 4) = a3;
  *(this + 5) = a4;
  *(this + 7) = a5;
  *(this + 8) = a6;
  *(this + 6) = 0;
  if (a5 >= 1 && (*(this + 38) & 1) == 0 || a6 >= 1 && (*(this + 39) & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    kdu_error::kdu_error(&v22, "Kakadu Core Error:\n");
    kdu_error::~kdu_error(&v22);
  }

  v12 = *(*(a2 + 10) + 48);
  if (!v12)
  {
    v15 = this;
    if ((a4 & a3) == 0xFFFFFFFF)
    {
LABEL_21:
      *(this + 6) = v15;
      *(this + 7) = 0;
      if (!is_mul_ok(a5 + 1, a6 + 1))
      {
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        kdu_error::kdu_error(&v22, "Kakadu Core Error:\n");
        kdu_error::~kdu_error(&v22);
      }

      operator new[]();
    }

LABEL_41:
    kdu_params::link();
  }

  v13 = *(this + 1);
  while (1)
  {
    v14 = v12;
    if (!strcmp(*(v12 + 8), v13))
    {
      break;
    }

    v12 = *(v14 + 56);
    if (!v12)
    {
      if ((a4 & a3) == 0xFFFFFFFF)
      {
        v15 = *(v14 + 48);
        *(v14 + 56) = this;
        goto LABEL_21;
      }

      goto LABEL_41;
    }
  }

  if (*(v14 + 32) != a6 || *(v14 + 28) != a5)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    kdu_error::kdu_error(&v22, "Kakadu Core Error:\n");
    kdu_error::~kdu_error(&v22);
  }

  v16 = *(v14 + 64);
  *(this + 8) = v16;
  if (v16 == v9)
  {
    kdu_params::link();
  }

  v17 = a4 + a3 + 1 + (a3 + 1) * a6 + 1;
  v18 = *(v16 + v17);
  if (v18)
  {
    v19 = v18 == this;
  }

  else
  {
    v19 = 1;
  }

  if (!v19 && *(v18 + 5) == a4 && *(v18 + 4) == a3)
  {
    if (*(this + 40) != 1)
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      kdu_error::kdu_error(&v22, "Kakadu Core Error:\n");
      kdu_error::~kdu_error(&v22);
    }

    do
    {
      v20 = v18;
      v18 = *(v18 + 11);
    }

    while (v18);
    *(this + 10) = *(v20 + 10);
    *(v20 + 11) = this;
    *(this + 6) = *(v20 + 6) + 1;
  }

  else
  {
    *(v16 + v17) = this;
  }

  return this;
}

uint64_t kdu_params::add_dependency(uint64_t this, const char *a2)
{
  v2 = (this + 112);
  v3 = 4;
  while (*v2 != a2)
  {
    if (!*v2)
    {
      *v2 = a2;
      v2[1] = 0;
      return this;
    }

    ++v2;
    if (!--v3)
    {
      kdu_params::add_dependency();
    }
  }

  return this;
}

uint64_t kdu_params::new_instance(kdu_params *this)
{
  if (*(this + 40) != 1)
  {
    return 0;
  }

  v1 = this;
  if ((*(this + 5) & 0x80000000) != 0 && *(this + 8) > 0 || (*(this + 4) & 0x80000000) != 0 && *(this + 7) >= 1 && *(this + 42) != 1)
  {
    return 0;
  }

  result = (**this)(this);
  *(result + 64) = *(v1 + 8);
  *(result + 16) = *(v1 + 2);
  *(result + 28) = *(v1 + 28);
  *(result + 48) = 0;
  do
  {
    v3 = v1;
    v1 = *(v1 + 11);
  }

  while (v1);
  *(v3 + 11) = result;
  *(result + 80) = *(v3 + 10);
  *(result + 24) = *(v3 + 6) + 1;
  for (i = 112; i != 152; i += 8)
  {
    *(result + i) = *(v3 + i);
  }

  return result;
}

uint64_t kdu_params::copy_from(uint64_t this, kdu_params *a2, int a3, int a4, int a5, unsigned int a6, unsigned int a7, _BOOL4 a8, BOOL a9, BOOL a10)
{
  v11 = a4;
  if (*(a2 + 1) != *(this + 8))
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    kdu_error::kdu_error(&v40, "Kakadu Core Error:\n");
    kdu_error::~kdu_error(&v40);
  }

  if ((*(a2 + 4) & 0x80000000) == 0 || (*(a2 + 5) & 0x80000000) == 0 || (*(this + 16) & 0x80000000) == 0 || (*(this + 20) & 0x80000000) == 0)
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    kdu_error::kdu_error(&v40, "Kakadu Core Error:\n");
    kdu_error::~kdu_error(&v40);
  }

  if (*(a2 + 7) <= a3)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(*(a2 + 8) + 8 * (a3 + 1 + (a3 + 1) * *(a2 + 8)));
  }

  v34 = this;
  if (*(this + 28) > a4)
  {
    v36 = a4 + 1;
    v14 = *(*(this + 64) + 8 * (v36 + v36 * *(this + 32)));
    if (v14)
    {
      if ((a4 & 0x80000000) == 0 && *(v14 + 16) == -1)
      {
        if (!v13 || (*(v13 + 16) & 0x80000000) != 0)
        {
          goto LABEL_59;
        }

        this = kdu_params::access_relation(v14, a4, -1, 0, 0);
        v14 = this;
        if (*(this + 16) != v11)
        {
          kdu_params::copy_from();
        }
      }

      if (v13)
      {
        v15 = 0;
        v33 = v11;
        v16 = a6;
LABEL_20:
        v17 = v14;
        v18 = v13;
        do
        {
          v19 = *(v18 + 24);
          if (a5 < 0 || v19 == a5)
          {
            if (*(v17 + 42) == 1)
            {
              this = kdu_params::access_relation(v14, *(v17 + 16), *(v17 + 20), v19, 0);
              v17 = this;
              if (!this)
              {
                kdu_params::copy_from();
              }
            }

            if (*(v17 + 37) == 1)
            {
              v42 = 0;
              v40 = 0u;
              v41 = 0u;
              kdu_error::kdu_error(&v40, "Kakadu Core Error:\n");
              kdu_error::~kdu_error(&v40);
            }

            if (*(v17 + 36) == 1)
            {
              this = (*(*v17 + 24))(v17, v18, a6, a7, a8, a9, a10);
            }

            v20 = a5 >= 0;
          }

          else
          {
            v20 = 0;
          }

          if (*(v17 + 40) != 1)
          {
            break;
          }

          v18 = *(v18 + 88);
          if (*(v17 + 42))
          {
            v21 = v17;
          }

          else
          {
            v21 = *(v17 + 88);
            if (!v21)
            {
              this = kdu_params::new_instance(v17);
              v21 = *(v17 + 88);
            }
          }

          v22 = !v18 || v21 == 0;
          v23 = v22 || v20;
          v17 = v21;
        }

        while (v23 != 1);
        v11 = v33;
        while (1)
        {
          v24 = v15;
          v25 = v16;
          v26 = *(v13 + 32);
          v13 = v16 >= v26 ? 0 : *(*(v13 + 64) + 8 * (v16 + a3 + 1 + (a3 + 1) * v26) + 8);
          v27 = *(v14 + 32);
          if (v15 >= v27)
          {
            break;
          }

          v14 = *(*(v14 + 64) + 8 * (v15 + v36 + v36 * v27) + 8);
          if (!v14)
          {
            break;
          }

          v28 = *(v14 + 20);
          if (v28 != -1 || v13 == 0)
          {
            if (v28 == -1)
            {
LABEL_56:
              this = kdu_params::access_relation(v14, v33, v24, 0, 0);
              v14 = this;
            }

            if (v13)
            {
              v16 = v25 + 1;
              v15 = v24 + 1;
              if (v14)
              {
                goto LABEL_20;
              }
            }

            break;
          }

          ++v16;
          ++v15;
          if (*(v13 + 20) != -1)
          {
            goto LABEL_56;
          }
        }
      }
    }
  }

LABEL_59:
  if (*(a2 + 6) == a2 && *(v34 + 48) == v34)
  {
    v30 = *(a2 + 7);
    if (v30)
    {
      v31 = *(v34 + 56);
      if (v31)
      {
        do
        {
          this = kdu_params::copy_from(v31, v30, a3, v11, a5, a6, a7, a8, a9, a10);
          v31 = *(v31 + 7);
          v30 = *(v30 + 7);
          if (v30)
          {
            v32 = v31 == 0;
          }

          else
          {
            v32 = 1;
          }
        }

        while (!v32);
      }
    }
  }

  return this;
}

uint64_t kdu_params::access_relation(kdu_params *this, int a2, int a3, int a4, int a5)
{
  if (*(this + 7) <= a2)
  {
    return 0;
  }

  v7 = *(this + 8);
  if (v7 <= a3)
  {
    return 0;
  }

  v9 = a2 + 1 + (a2 + 1) * v7;
  v10 = a3 + v9 + 1;
  v11 = *(*(this + 8) + 8 * v10);
  if (!v11)
  {
    return v11;
  }

  if ((a5 & 1) == 0 && (*(v11 + 16) != a2 || *(v11 + 20) != a3))
  {
    if (!a4 || *(this + 42) == 1)
    {
      v11 = (**this)(this);
      v14 = *(this + 8);
      *(v11 + 64) = v14;
      *(v11 + 16) = a2;
      *(v11 + 20) = a3;
      v15 = *(this + 7);
      v16 = *(this + 8);
      *(v11 + 28) = v15;
      *(v11 + 32) = v16;
      *(v11 + 48) = 0;
      *(v14 + 8 * v10) = v11;
      if (a3 < 0)
      {
        if (a2 < 0)
        {
          kdu_params::access_relation();
        }

        if (v16 >= 1)
        {
          v17 = 0;
          v18 = 8 * v10 + 8;
          do
          {
            v19 = *(this + 8);
            v20 = *(v19 + v18);
            if (v20 == *v19)
            {
              *(v19 + v18) = v11;
            }

            else if ((*(v20 + 16) & 0x80000000) != 0)
            {
              kdu_params::access_relation(this, a2, v17, 0, 0);
              v16 = *(this + 8);
            }

            ++v17;
            v18 += 8;
          }

          while (v17 < v16);
        }
      }

      else if (a2 < 0)
      {
        if (v15 >= 1)
        {
          for (i = 0; i < v15; ++i)
          {
            v10 += *(this + 8) + 1;
            v22 = *(this + 8);
            v23 = v22[v10];
            if (v23 == *v22)
            {
              v22[v10] = v11;
            }

            else if ((*(v23 + 20) & 0x80000000) != 0)
            {
              kdu_params::access_relation(this, i, a3, 0, 0);
              v15 = *(this + 7);
            }
          }
        }
      }

      else if (*(*(this + 8) + 8 * v9) == **(this + 8))
      {
        kdu_params::access_relation(this, a2, -1, 0, 0);
      }

      for (j = *(**(this + 8) + 48); j; j = *(j + 56))
      {
        for (k = 112; k != 144; k += 8)
        {
          v26 = *(j + k);
          if (!v26)
          {
            break;
          }

          if (!strcmp(v26, *(this + 1)))
          {
            kdu_params::access_relation(j, a2, a3, 0, 0);
            if ((a2 & 0x80000000) == 0 && *(j + 39) == 1 && (*(this + 39) & 1) == 0 && *(j + 32) >= 1)
            {
              v27 = 0;
              do
              {
                kdu_params::access_relation(j, a2, v27++, 0, 0);
              }

              while (v27 < *(j + 32));
            }

            break;
          }
        }
      }

      if (v11)
      {
        goto LABEL_43;
      }

      return v11;
    }

    return 0;
  }

  do
  {
LABEL_43:
    if (*(v11 + 24) == a4)
    {
      break;
    }

    v29 = (v11 + 88);
    v28 = *(v11 + 88);
    if (!v28 || *(v28 + 24) > a4)
    {
      if (*(v11 + 42) != 1)
      {
        return 0;
      }

      if (a5)
      {
        if ((*(v11 + 16) & 0x80000000) != 0)
        {
          return 0;
        }

        if (*(v11 + 32))
        {
          kdu_params::access_relation();
        }

        v29 = *(this + 8);
      }

      else
      {
        v30 = (**this)(this);
        *(v30 + 64) = *(this + 8);
        *(v30 + 16) = a2;
        *(v30 + 20) = a3;
        *(v30 + 28) = *(this + 28);
        *(v30 + 48) = 0;
        *(v30 + 80) = *(v11 + 80);
        *(v11 + 88) = v30;
        *(v30 + 24) = a4;
      }
    }

    v11 = *v29;
  }

  while (*v29);
  return v11;
}

uint64_t kdu_params::access_cluster(kdu_params *this, const char *__s2)
{
  v2 = *(**(this + 8) + 48);
  if (__s2 && v2)
  {
    do
    {
      if (!strcmp(*(v2 + 8), __s2))
      {
        break;
      }

      v2 = *(v2 + 56);
    }

    while (v2);
  }

  return v2;
}

uint64_t kdu_params::access_cluster(kdu_params *this, int a2)
{
  result = *(**(this + 8) + 48);
  if (result)
  {
    v3 = a2 < 1;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    do
    {
      result = *(result + 56);
      if (result)
      {
        v4 = a2 > 1;
      }

      else
      {
        v4 = 0;
      }

      --a2;
    }

    while (v4);
  }

  return result;
}

uint64_t kdu_params::access_unique(kdu_params *this, int a2, int a3, int a4)
{
  if (*(this + 7) <= a2)
  {
    return 0;
  }

  v4 = *(this + 8);
  if (v4 <= a3)
  {
    return 0;
  }

  v5 = *(*(this + 8) + 8 * (a3 + a2 + 1 + (a2 + 1) * v4 + 1));
  if (!v5 || *(v5 + 16) != a2 || *(v5 + 20) != a3)
  {
    return 0;
  }

  while (*(v5 + 24) != a4)
  {
    result = 0;
    v5 = *(v5 + 88);
    if (!v5)
    {
      return result;
    }
  }

  return v5;
}

uint64_t kdu_params::clear_marks(uint64_t this)
{
  for (i = *(**(this + 64) + 48); i; i = *(i + 56))
  {
    v2 = *(i + 28);
    if ((v2 & 0x80000000) == 0)
    {
      v3 = *(i + 64);
      v4 = *(i + 32);
      v5 = -1;
      do
      {
        if ((v4 & 0x80000000) == 0)
        {
          v6 = -1;
          do
          {
            v7 = *v3;
            if (*v3 && *(v7 + 16) == v5 && *(v7 + 20) == v6)
            {
              do
              {
                *(v7 + 37) = 0;
                *(v7 + 104) = 0;
                v7 = *(v7 + 88);
              }

              while (v7);
            }

            ++v6;
            ++v3;
          }

          while (v6 != v4);
        }

        ++v5;
      }

      while (v5 != v2);
    }
  }

  return this;
}

uint64_t kdu_params::check_typical_tile(kdu_params *this, unsigned int a2)
{
  v2 = *(**(this + 8) + 48);
  if (!v2)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(v2 + 28);
    if (v3 >= 1)
    {
      if (v3 <= a2)
      {
        v9 = 0;
        memset(v8, 0, sizeof(v8));
        kdu_error::kdu_error(v8, "Kakadu Core Error:\n");
        kdu_error::~kdu_error(v8);
      }

      v4 = *(v2 + 32);
      if ((v4 & 0x80000000) == 0)
      {
        break;
      }
    }

LABEL_10:
    v2 = *(v2 + 56);
    if (!v2)
    {
      return 1;
    }
  }

  v5 = v4 + 1;
  v6 = *(v2 + 64) + 8 * (v5 * (a2 + 1));
  while (!*v6 || (*(*v6 + 16) & 0x80000000) != 0)
  {
    v6 += 8;
    if (!--v5)
    {
      goto LABEL_10;
    }
  }

  return 0;
}

uint64_t kdu_params::get(kdu_params *this, const char *a2, int a3, int a4, int *a5, int a6, _BOOL4 a7, BOOL a8)
{
  v34 = *MEMORY[0x1E69E9840];
  if ((a4 | a3) < 0)
  {
    kdu_params::get();
  }

  v10 = *(this + 12);
  if (!v10)
  {
LABEL_46:
    *&v31 = 0;
    *v29 = 0u;
    v30 = 0u;
    kdu_error::kdu_error(v29, "Kakadu Core Error:\n");
    (*(*v29 + 16))(v29, "Attempt to access a code-stream attribute using the invalid name");
    (*(*v29 + 16))(v29, ", ");
    (*(*v29 + 16))(v29, a2);
    (*(*v29 + 16))(v29, "!");
    kdu_error::~kdu_error(v29);
  }

  v15 = a3;
  v16 = *(this + 12);
  while (*v16 != a2)
  {
    v16 = *(v16 + 56);
    if (!v16)
    {
      while (strcmp(*v10, a2))
      {
        v10 = *(v10 + 56);
        if (!v10)
        {
          goto LABEL_46;
        }
      }

      v16 = v10;
      break;
    }
  }

  if (*(v16 + 32) <= a4)
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    kdu_error::kdu_error(v27, "Kakadu Core Error:\n");
    (*(*&v27[0] + 16))(v27, "Attempt to access a code-stream attribute, with an invalid field index!\nThe attribute name is");
    (*(*&v27[0] + 16))(v27, " ");
    (*(*&v27[0] + 16))(v27, a2);
    (*(*&v27[0] + 16))(v27, ".\n");
    (*(*&v27[0] + 16))(v27, "The field index is ");
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *v29 = 0u;
    if (BYTE8(v27[0]))
    {
      sprintf(v29, "%x");
    }

    else
    {
      sprintf(v29, "%d");
    }

    (*(*&v27[0] + 16))(v27, v29);
    (*(*&v27[0] + 16))(v27, ".");
    kdu_error::~kdu_error(v27);
  }

  v17 = *(v16 + 40);
  v18 = v17 + 24 * a4;
  if (v17)
  {
    v19 = *(v18 + 8);
    if (v19)
    {
      if (*v19 == 70)
      {
        *&v31 = 0;
        *v29 = 0u;
        v30 = 0u;
        kdu_error::kdu_error(v29, "Kakadu Core Error:\n");
        (*(*v29 + 16))(v29, "Attempting to access a floating point code-stream attribute field with the integer access method!\nThe attribute name is");
        (*(*v29 + 16))(v29, " ");
        (*(*v29 + 16))(v29, a2);
        (*(*v29 + 16))(v29, ".");
        kdu_error::~kdu_error(v29);
      }
    }
  }

  if (*(v16 + 48))
  {
    v20 = a8 && *(v16 + 36) > 0;
  }

  else
  {
    v20 = *(v16 + 36) > 0;
  }

  if ((v20 & 1) == 0 && a6 && (!*(this + 6) || *(this + 42) == 1))
  {
    if ((*(this + 5) & 0x80000000) == 0)
    {
      v21 = kdu_params::access_relation(this, *(this + 4), -1, 0, 1);
      if (v21)
      {
        if (*(v21 + 4) == *(this + 4) && (kdu_params::get(v21, a2, v15, a4, a5, 0, a7, a8) & 1) != 0)
        {
          return 1;
        }
      }
    }

    if ((*(this + 4) & 0x80000000) == 0)
    {
      v22 = kdu_params::access_relation(this, -1, *(this + 5), *(this + 6), 1);
      if (v22)
      {
        return kdu_params::get(v22, a2, v15, a4, a5, 1, a7, a8);
      }
    }
  }

  if (!v20)
  {
    return 0;
  }

  v24 = *(v16 + 36);
  if (v24 <= v15 && a7 && (*(v16 + 16) & 2) != 0)
  {
    v15 = v24 - 1;
  }

  result = 0;
  if ((v15 & 0x80000000) == 0 && v15 < v24)
  {
    v25 = v18 + 24 * *(v16 + 32) * v15;
    if (*(v25 + 16) == 1)
    {
      *a5 = *v25;
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t kdu_params::get(kdu_params *this, const char *a2, int a3, int a4, BOOL *a5, int a6, _BOOL4 a7, BOOL a8)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((a4 | a3) < 0)
  {
    kdu_params::get();
  }

  v10 = *(this + 12);
  if (!v10)
  {
LABEL_44:
    *&v29 = 0;
    *v27 = 0u;
    v28 = 0u;
    kdu_error::kdu_error(v27, "Kakadu Core Error:\n");
    (*(*v27 + 16))(v27, "Attempt to access a code-stream attribute using the invalid name");
    (*(*v27 + 16))(v27, ", ");
    (*(*v27 + 16))(v27, a2);
    (*(*v27 + 16))(v27, "!");
    kdu_error::~kdu_error(v27);
  }

  v15 = a3;
  v16 = *(this + 12);
  while (*v16 != a2)
  {
    v16 = *(v16 + 56);
    if (!v16)
    {
      while (strcmp(*v10, a2))
      {
        v10 = *(v10 + 56);
        if (!v10)
        {
          goto LABEL_44;
        }
      }

      v16 = v10;
      break;
    }
  }

  if (*(v16 + 32) <= a4)
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    kdu_error::kdu_error(v25, "Kakadu Core Error:\n");
    (*(*&v25[0] + 16))(v25, "Attempt to access a code-stream attribute, with an invalid field index!\nThe attribute name is");
    (*(*&v25[0] + 16))(v25, " ");
    (*(*&v25[0] + 16))(v25, a2);
    (*(*&v25[0] + 16))(v25, ".\n");
    (*(*&v25[0] + 16))(v25, "The field index is ");
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    *v27 = 0u;
    if (BYTE8(v25[0]))
    {
      sprintf(v27, "%x");
    }

    else
    {
      sprintf(v27, "%d");
    }

    (*(*&v25[0] + 16))(v25, v27);
    (*(*&v25[0] + 16))(v25, ".");
    kdu_error::~kdu_error(v25);
  }

  v17 = *(v16 + 40) + 24 * a4;
  if (**(v17 + 8) != 66)
  {
    *&v29 = 0;
    *v27 = 0u;
    v28 = 0u;
    kdu_error::kdu_error(v27, "Kakadu Core Error:\n");
    (*(*v27 + 16))(v27, "Attempting to access a non-BOOLean code-stream attribute field with the BOOLean access method!\nThe attribute name is");
    (*(*v27 + 16))(v27, " ");
    (*(*v27 + 16))(v27, a2);
    (*(*v27 + 16))(v27, ".");
    kdu_error::~kdu_error(v27);
  }

  if (*(v16 + 48))
  {
    v18 = a8 && *(v16 + 36) > 0;
  }

  else
  {
    v18 = *(v16 + 36) > 0;
  }

  if ((v18 & 1) == 0 && a6 && (!*(this + 6) || *(this + 42) == 1))
  {
    if ((*(this + 5) & 0x80000000) == 0)
    {
      v19 = kdu_params::access_relation(this, *(this + 4), -1, 0, 1);
      if (v19)
      {
        if (*(v19 + 4) == *(this + 4) && (kdu_params::get(v19, a2, v15, a4, a5, 0, a7, a8) & 1) != 0)
        {
          return 1;
        }
      }
    }

    if ((*(this + 4) & 0x80000000) == 0)
    {
      v20 = kdu_params::access_relation(this, -1, *(this + 5), *(this + 6), 1);
      if (v20)
      {
        return kdu_params::get(v20, a2, v15, a4, a5, 1, a7, a8);
      }
    }
  }

  if (!v18)
  {
    return 0;
  }

  v22 = *(v16 + 36);
  if (v22 <= v15 && a7 && (*(v16 + 16) & 2) != 0)
  {
    v15 = v22 - 1;
  }

  result = 0;
  if ((v15 & 0x80000000) == 0 && v15 < v22)
  {
    v23 = v17 + 24 * *(v16 + 32) * v15;
    if (*(v23 + 16) == 1)
    {
      *a5 = *v23 != 0;
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t kdu_params::get(kdu_params *this, const char *a2, int a3, int a4, float *a5, int a6, _BOOL4 a7, BOOL a8)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((a4 | a3) < 0)
  {
    kdu_params::get();
  }

  v10 = *(this + 12);
  if (!v10)
  {
LABEL_44:
    *&v29 = 0;
    *v27 = 0u;
    v28 = 0u;
    kdu_error::kdu_error(v27, "Kakadu Core Error:\n");
    (*(*v27 + 16))(v27, "Attempt to access a code-stream attribute using the invalid name");
    (*(*v27 + 16))(v27, ", ");
    (*(*v27 + 16))(v27, a2);
    (*(*v27 + 16))(v27, "!");
    kdu_error::~kdu_error(v27);
  }

  v15 = a3;
  v16 = *(this + 12);
  while (*v16 != a2)
  {
    v16 = *(v16 + 56);
    if (!v16)
    {
      while (strcmp(*v10, a2))
      {
        v10 = *(v10 + 56);
        if (!v10)
        {
          goto LABEL_44;
        }
      }

      v16 = v10;
      break;
    }
  }

  if (*(v16 + 32) <= a4)
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    kdu_error::kdu_error(v25, "Kakadu Core Error:\n");
    (*(*&v25[0] + 16))(v25, "Attempt to access a code-stream attribute, with an invalid field index!\nThe attribute name is");
    (*(*&v25[0] + 16))(v25, " ");
    (*(*&v25[0] + 16))(v25, a2);
    (*(*&v25[0] + 16))(v25, ".\n");
    (*(*&v25[0] + 16))(v25, "The field index is ");
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    *v27 = 0u;
    if (BYTE8(v25[0]))
    {
      sprintf(v27, "%x");
    }

    else
    {
      sprintf(v27, "%d");
    }

    (*(*&v25[0] + 16))(v25, v27);
    (*(*&v25[0] + 16))(v25, ".");
    kdu_error::~kdu_error(v25);
  }

  v17 = *(v16 + 40) + 24 * a4;
  if (**(v17 + 8) != 70)
  {
    *&v29 = 0;
    *v27 = 0u;
    v28 = 0u;
    kdu_error::kdu_error(v27, "Kakadu Core Error:\n");
    (*(*v27 + 16))(v27, "Attempting to access an integer code-stream parameter attribute field with the floating point access method!\nThe attribute name is");
    (*(*v27 + 16))(v27, " ");
    (*(*v27 + 16))(v27, a2);
    (*(*v27 + 16))(v27, ".");
    kdu_error::~kdu_error(v27);
  }

  if (*(v16 + 48))
  {
    v18 = a8 && *(v16 + 36) > 0;
  }

  else
  {
    v18 = *(v16 + 36) > 0;
  }

  if ((v18 & 1) == 0 && a6 && (!*(this + 6) || *(this + 42) == 1))
  {
    if ((*(this + 5) & 0x80000000) == 0)
    {
      v19 = kdu_params::access_relation(this, *(this + 4), -1, 0, 1);
      if (v19)
      {
        if (*(v19 + 4) == *(this + 4) && (kdu_params::get(v19, a2, v15, a4, a5, 0, a7, a8) & 1) != 0)
        {
          return 1;
        }
      }
    }

    if ((*(this + 4) & 0x80000000) == 0)
    {
      v20 = kdu_params::access_relation(this, -1, *(this + 5), *(this + 6), 1);
      if (v20)
      {
        return kdu_params::get(v20, a2, v15, a4, a5, 1, a7, a8);
      }
    }
  }

  if (!v18)
  {
    return 0;
  }

  v22 = *(v16 + 36);
  if (v22 <= v15 && a7 && (*(v16 + 16) & 2) != 0)
  {
    v15 = v22 - 1;
  }

  result = 0;
  if ((v15 & 0x80000000) == 0 && v15 < v22)
  {
    v23 = v17 + 24 * *(v16 + 32) * v15;
    if (*(v23 + 16) == 1)
    {
      *a5 = *v23;
      return 1;
    }

    return 0;
  }

  return result;
}

const char *kdu_params::set(kdu_params *this, const char *__s2, int a3, int a4, int *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  if ((a4 | a3) < 0)
  {
    kdu_params::set();
  }

  v5 = a5;
  v10 = *(this + 12);
  if (!v10)
  {
LABEL_10:
    *&v27 = 0;
    *v25 = 0u;
    v26 = 0u;
    kdu_error::kdu_error(v25, "Kakadu Core Error:\n");
    (*(*v25 + 16))(v25, "Attempt to set a code-stream attribute using the invalid name");
    (*(*v25 + 16))(v25, ", ");
    (*(*v25 + 16))(v25, __s2);
    (*(*v25 + 16))(v25, "!");
    kdu_error::~kdu_error(v25);
  }

  v11 = *(this + 12);
  while (*v11 != __s2)
  {
    v11 = *(v11 + 56);
    if (!v11)
    {
      while (strcmp(*v10, __s2))
      {
        v10 = *(v10 + 56);
        if (!v10)
        {
          goto LABEL_10;
        }
      }

      v11 = v10;
      break;
    }
  }

  if ((*(v11 + 16) & 4) != 0 && *(this + 5) != -1)
  {
    *&v27 = 0;
    *v25 = 0u;
    v26 = 0u;
    kdu_error::kdu_error(v25, "Kakadu Core Error:\n");
    (*(*v25 + 16))(v25, "Attempt to set a non-tile-specific code-stream attribute in a specific component!\nThe attribute name is");
    (*(*v25 + 16))(v25, " ");
    (*(*v25 + 16))(v25, __s2);
    (*(*v25 + 16))(v25, ".");
    kdu_error::~kdu_error(v25);
  }

  if (*(v11 + 32) <= a4)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    kdu_error::kdu_error(&v22, "Kakadu Core Error:\n");
    (*(v22 + 16))(&v22, "Attempt to set a code-stream attribute, with an invalid field index!\nThe attribute name is");
    (*(v22 + 16))(&v22, " ");
    (*(v22 + 16))(&v22, __s2);
    (*(v22 + 16))(&v22, ".\n");
    (*(v22 + 16))(&v22, "The field index is ");
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    *v25 = 0u;
    if (BYTE8(v22))
    {
      sprintf(v25, "%x");
    }

    else
    {
      sprintf(v25, "%d");
    }

    (*(v22 + 16))(&v22, v25);
    (*(v22 + 16))(&v22, ".");
    kdu_error::~kdu_error(&v22);
  }

  result = *(*(v11 + 40) + 24 * a4 + 8);
  v13 = *result;
  if (v13 > 0x45)
  {
    switch(v13)
    {
      case '[':
        v15 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        *v25 = 0u;
        v21 = 0;
        do
        {
          result = parse_translator_entry(result + 1, 0x7Cu, v25, &v21, a5);
          v16 = v21;
          if ((v21 & ~v5) != 0)
          {
            v16 = 0;
          }

          v15 |= v16;
        }

        while (*result == 124);
        if (v15 != v5)
        {
          v24 = 0;
          v22 = 0u;
          v23 = 0u;
          kdu_error::kdu_error(&v22, "Kakadu Core Error:\n");
          (*(v22 + 16))(&v22, "Attempting to set a code-stream attribute field using an integer value which is incompatible with the flags defined for the field!\nThe attribute name is");
          (*(v22 + 16))(&v22, " ");
          (*(v22 + 16))(&v22, __s2);
          (*(v22 + 16))(&v22, ".");
          kdu_error::~kdu_error(&v22);
        }

        break;
      case 'I':
        break;
      case 'F':
        *&v27 = 0;
        *v25 = 0u;
        v26 = 0u;
        kdu_error::kdu_error(v25, "Kakadu Core Error:\n");
        (*(*v25 + 16))(v25, "Attempting to set a floating point code-stream parameter attribute field with the integer access method!\nThe attribute name is");
        (*(*v25 + 16))(v25, " ");
        (*(*v25 + 16))(v25, __s2);
        (*(*v25 + 16))(v25, ".");
        kdu_error::~kdu_error(v25);
      default:
LABEL_56:
        kdu_params::set();
    }
  }

  else
  {
    switch(v13)
    {
      case '(':
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        *v25 = 0u;
        v21 = 0;
        do
        {
          result = parse_translator_entry(result + 1, 0x2Cu, v25, &v21, a5);
        }

        while (*result == 44 && v21 != v5);
        if (v21 != v5)
        {
          v24 = 0;
          v22 = 0u;
          v23 = 0u;
          kdu_error::kdu_error(&v22, "Kakadu Core Error:\n");
          (*(v22 + 16))(&v22, "Attempting to set a code-stream attribute field using an integer value which does not match any of the defined translation values for the field!\nThe attribute name is");
          (*(v22 + 16))(&v22, " ");
          (*(v22 + 16))(&v22, __s2);
          (*(v22 + 16))(&v22, ".");
          kdu_error::~kdu_error(&v22);
        }

        break;
      case 'B':
        if (v5 >= 2)
        {
          *&v27 = 0;
          *v25 = 0u;
          v26 = 0u;
          kdu_error::kdu_error(v25, "Kakadu Core Error:\n");
          (*(*v25 + 16))(v25, "Attempting to set a BOOLean code-stream parameter attribute field with an integer not equal to 0 or 1!\nThe attribute name is");
          (*(*v25 + 16))(v25, " ");
          (*(*v25 + 16))(v25, __s2);
          (*(*v25 + 16))(v25, ".");
          kdu_error::~kdu_error(v25);
        }

        break;
      case 'C':
        break;
      default:
        goto LABEL_56;
    }
  }

  v17 = *(v11 + 36);
  if (v17 <= a3)
  {
    result = kd_attribute::augment_records(v11, a3 + 1);
  }

  if (a3 < 0 || *(v11 + 36) <= a3)
  {
    kdu_params::set();
  }

  v18 = *(v11 + 40) + 24 * a4 + 24 * *(v11 + 32) * a3;
  if ((*(v18 + 16) != 1 || v17 <= a3 || *v18 != v5) && (*(this + 104) & 1) == 0)
  {
    *(this + 104) = 1;
    v19 = *(this + 10);
    *(v19 + 104) = 1;
    v20 = **(v19 + 64);
    *(v20 + 104) = 1;
    *(*(v20 + 48) + 104) = 1;
  }

  *(v18 + 16) = 1;
  *v18 = v5;
  *(this + 36) = 0;
  return result;
}

uint64_t kdu_params::set(uint64_t this, const char *__s2, int a3, int a4, int a5)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((a4 | a3) < 0)
  {
    kdu_params::set();
  }

  v9 = this;
  v10 = *(this + 96);
  if (!v10)
  {
LABEL_10:
    *&v20 = 0;
    *v18 = 0u;
    v19 = 0u;
    kdu_error::kdu_error(v18, "Kakadu Core Error:\n");
    (*(*v18 + 16))(v18, "Attempt to set a code-stream attribute using the invalid name");
    (*(*v18 + 16))(v18, ", ");
    (*(*v18 + 16))(v18, __s2);
    (*(*v18 + 16))(v18, "!");
    kdu_error::~kdu_error(v18);
  }

  v11 = *(this + 96);
  while (*v11 != __s2)
  {
    v11 = *(v11 + 56);
    if (!v11)
    {
      while (1)
      {
        this = strcmp(*v10, __s2);
        if (!this)
        {
          break;
        }

        v10 = *(v10 + 56);
        if (!v10)
        {
          goto LABEL_10;
        }
      }

      v11 = v10;
      break;
    }
  }

  if ((*(v11 + 16) & 4) != 0 && *(v9 + 20) != -1)
  {
    *&v20 = 0;
    *v18 = 0u;
    v19 = 0u;
    kdu_error::kdu_error(v18, "Kakadu Core Error:\n");
    (*(*v18 + 16))(v18, "Attempt to set a non-tile-specific code-stream attribute in a specific component!\nThe attribute name is");
    (*(*v18 + 16))(v18, " ");
    (*(*v18 + 16))(v18, __s2);
    (*(*v18 + 16))(v18, ".");
    kdu_error::~kdu_error(v18);
  }

  if (*(v11 + 32) <= a4)
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    kdu_error::kdu_error(v16, "Kakadu Core Error:\n");
    (*(*&v16[0] + 16))(v16, "Attempt to set a code-stream attribute, with an invalid field index!\nThe attribute name is");
    (*(*&v16[0] + 16))(v16, " ");
    (*(*&v16[0] + 16))(v16, __s2);
    (*(*&v16[0] + 16))(v16, ".\n");
    (*(*&v16[0] + 16))(v16, "The field index is ");
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    *v18 = 0u;
    if (BYTE8(v16[0]))
    {
      sprintf(v18, "%x");
    }

    else
    {
      sprintf(v18, "%d");
    }

    (*(*&v16[0] + 16))(v16, v18);
    (*(*&v16[0] + 16))(v16, ".");
    kdu_error::~kdu_error(v16);
  }

  if (**(*(v11 + 40) + 24 * a4 + 8) != 66)
  {
    *&v20 = 0;
    *v18 = 0u;
    v19 = 0u;
    kdu_error::kdu_error(v18, "Kakadu Core Error:\n");
    (*(*v18 + 16))(v18, "Attempting to set a non-BOOLean code-stream parameter attribute field with the BOOLean access method!\nThe attribute name is");
    (*(*v18 + 16))(v18, " ");
    (*(*v18 + 16))(v18, __s2);
    (*(*v18 + 16))(v18, ".");
    kdu_error::~kdu_error(v18);
  }

  v12 = *(v11 + 36);
  if (v12 <= a3)
  {
    this = kd_attribute::augment_records(v11, a3 + 1);
  }

  if (a3 < 0 || *(v11 + 36) <= a3)
  {
    kdu_params::set();
  }

  v13 = *(v11 + 40) + 24 * a4 + 24 * *(v11 + 32) * a3;
  if ((*(v13 + 16) != 1 || v12 <= a3 || *v13 != a5) && (*(v9 + 104) & 1) == 0)
  {
    *(v9 + 104) = 1;
    v14 = *(v9 + 80);
    *(v14 + 104) = 1;
    v15 = **(v14 + 64);
    *(v15 + 104) = 1;
    *(*(v15 + 48) + 104) = 1;
  }

  *(v13 + 16) = 1;
  *v13 = a5;
  *(v9 + 36) = 0;
  return this;
}

uint64_t kdu_params::set(uint64_t this, const char *__s2, int a3, int a4, double a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((a4 | a3) < 0)
  {
    kdu_params::set();
  }

  v9 = this;
  v10 = *(this + 96);
  if (!v10)
  {
LABEL_10:
    *&v21 = 0;
    *v19 = 0u;
    v20 = 0u;
    kdu_error::kdu_error(v19, "Kakadu Core Error:\n");
    (*(*v19 + 16))(v19, "Attempt to set a code-stream attribute using the invalid name");
    (*(*v19 + 16))(v19, ", ");
    (*(*v19 + 16))(v19, __s2);
    (*(*v19 + 16))(v19, "!");
    kdu_error::~kdu_error(v19);
  }

  v11 = *(this + 96);
  while (*v11 != __s2)
  {
    v11 = *(v11 + 56);
    if (!v11)
    {
      while (1)
      {
        this = strcmp(*v10, __s2);
        if (!this)
        {
          break;
        }

        v10 = *(v10 + 56);
        if (!v10)
        {
          goto LABEL_10;
        }
      }

      v11 = v10;
      break;
    }
  }

  if ((*(v11 + 16) & 4) != 0 && *(v9 + 20) != -1)
  {
    *&v21 = 0;
    *v19 = 0u;
    v20 = 0u;
    kdu_error::kdu_error(v19, "Kakadu Core Error:\n");
    (*(*v19 + 16))(v19, "Attempt to set a non-tile-specific code-stream attribute in a specific component!\nThe attribute name is");
    (*(*v19 + 16))(v19, " ");
    (*(*v19 + 16))(v19, __s2);
    (*(*v19 + 16))(v19, ".");
    kdu_error::~kdu_error(v19);
  }

  if (*(v11 + 32) <= a4)
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    kdu_error::kdu_error(v17, "Kakadu Core Error:\n");
    (*(*&v17[0] + 16))(v17, "Attempt to set a code-stream attribute, with an invalid field index!\nThe attribute name is");
    (*(*&v17[0] + 16))(v17, " ");
    (*(*&v17[0] + 16))(v17, __s2);
    (*(*&v17[0] + 16))(v17, ".\n");
    (*(*&v17[0] + 16))(v17, "The field index is ");
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *v19 = 0u;
    if (BYTE8(v17[0]))
    {
      sprintf(v19, "%x");
    }

    else
    {
      sprintf(v19, "%d");
    }

    (*(*&v17[0] + 16))(v17, v19);
    (*(*&v17[0] + 16))(v17, ".");
    kdu_error::~kdu_error(v17);
  }

  if (**(*(v11 + 40) + 24 * a4 + 8) != 70)
  {
    *&v21 = 0;
    *v19 = 0u;
    v20 = 0u;
    kdu_error::kdu_error(v19, "Kakadu Core Error:\n");
    (*(*v19 + 16))(v19, "Attempting to set an integer code-stream parameter attribute field with the floating point access method!\nThe attribute name is");
    (*(*v19 + 16))(v19, " ");
    (*(*v19 + 16))(v19, __s2);
    (*(*v19 + 16))(v19, ".");
    kdu_error::~kdu_error(v19);
  }

  v12 = *(v11 + 36);
  if (v12 <= a3)
  {
    this = kd_attribute::augment_records(v11, a3 + 1);
  }

  if (a3 < 0 || *(v11 + 36) <= a3)
  {
    kdu_params::set();
  }

  v13 = *(v11 + 40) + 24 * a4 + 24 * *(v11 + 32) * a3;
  v14 = a5;
  if ((*(v13 + 16) != 1 || v12 <= a3 || *v13 != v14) && (*(v9 + 104) & 1) == 0)
  {
    *(v9 + 104) = 1;
    v15 = *(v9 + 80);
    *(v15 + 104) = 1;
    v16 = **(v15 + 64);
    *(v16 + 104) = 1;
    *(*(v16 + 48) + 104) = 1;
  }

  *(v13 + 16) = 1;
  *v13 = v14;
  *(v9 + 36) = 0;
  return this;
}

uint64_t kdu_params::set_derived(uint64_t this, const char *__s2)
{
  v3 = *(this + 96);
  if (!v3)
  {
LABEL_10:
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    kdu_error::kdu_error(v5, "Kakadu Core Error:\n");
    (*(*&v5[0] + 16))(v5, "Invalid attribute name");
    (*(*&v5[0] + 16))(v5, ", ");
    (*(*&v5[0] + 16))(v5, __s2);
    (*(*&v5[0] + 16))(v5, ", ");
    kdu_error::~kdu_error(v5);
  }

  v4 = *(this + 96);
  while (*v4 != __s2)
  {
    v4 = *(v4 + 56);
    if (!v4)
    {
      while (1)
      {
        this = strcmp(*v3, __s2);
        if (!this)
        {
          break;
        }

        v3 = *(v3 + 56);
        if (!v3)
        {
          goto LABEL_10;
        }
      }

      v4 = v3;
      break;
    }
  }

  *(v4 + 48) = 1;
  return this;
}

uint64_t kdu_params::parse_string(kdu_params *this, char *a2)
{
  v2 = a2;
  v68 = *MEMORY[0x1E69E9840];
  while (1)
  {
    __endptr = v2;
    v3 = *v2;
    if (v3 <= 0x3D)
    {
      if (((1 << v3) & 0x100000600) != 0)
      {
        *&v65 = 0;
        *v63 = 0u;
        v64 = 0u;
        kdu_error::kdu_error(v63, "Kakadu Core Error:\n");
        (*(*v63 + 16))(v63, "Malformed attribute string");
        (*(*v63 + 16))(v63, ", ");
        (*(*v63 + 16))(v63, a2);
        (*(*v63 + 16))(v63, "!\n");
        (*(*v63 + 16))(v63, "White space characters are illegal!");
        kdu_error::~kdu_error(v63);
      }

      if (((1 << v3) & 0x2400000000000001) != 0)
      {
        break;
      }
    }

    ++v2;
  }

  v4 = this;
  v5 = *(this + 12);
  if (!v5)
  {
LABEL_12:
    if (*(this + 6) != this)
    {
      return 0;
    }

    do
    {
      v4 = *(v4 + 7);
      v8 = v4 != 0;
    }

    while (v4 && (kdu_params::parse_string(v4, a2) & 1) == 0);
    return v8;
  }

  v6 = v2 - a2;
  while (1)
  {
    v7 = *v5;
    if (!strncmp(*v5, a2, v6) && strlen(v7) == v6)
    {
      break;
    }

    v5 = v5[7];
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  if (!v3)
  {
    *&v65 = 0;
    *v63 = 0u;
    v64 = 0u;
    kdu_error::kdu_error(v63, "Kakadu Core Error:\n");
    (*(*v63 + 16))(v63, "Attribute");
    (*(*v63 + 16))(v63, " ");
    (*(*v63 + 16))(v63, *v5);
    (*(*v63 + 16))(v63, " ");
    (*(*v63 + 16))(v63, "is missing parameters:\n\n\t");
    kd_attribute::describe(v5, v63, *(this + 38), *(this + 39), *(this + 42), 1);
    (*(*v63 + 16))(v63, "\nParameter values must be separated from the attribute name and optional location specifiers by an '=' sign!\n");
    kdu_error::~kdu_error(v63);
  }

  if (v3 == 58)
  {
    v9 = v2 + 1;
    v10 = -1;
    __endptr = v2 + 1;
    v11 = -2;
    v12 = -2;
    while (1)
    {
      v13 = *v9;
      if (!*v9 || v13 == 61)
      {
        break;
      }

      if (v13 == 84 && v11 <= -2)
      {
        v11 = strtol(v9 + 1, &__endptr, 10);
      }

      else if (v13 == 67 && v12 <= -2)
      {
        v12 = strtol(v9 + 1, &__endptr, 10);
      }

      else
      {
        if (v13 != 73 || (v10 & 0x80000000) == 0)
        {
          *&v65 = 0;
          *v63 = 0u;
          v64 = 0u;
          kdu_error::kdu_error(v63, "Kakadu Core Error:\n");
          (*(*v63 + 16))(v63, "Malformed location specifier encountered in attribute string");
          (*(*v63 + 16))(v63, ", ");
          (*(*v63 + 16))(v63, a2);
          (*(*v63 + 16))(v63, "!\n");
          (*(*v63 + 16))(v63, "Tile specifiers following the the colon must have the form T<num>, while component specifiers must have the form C<num> and index specifiers must have the form I<num>. There may be at most one of each!");
          kdu_error::~kdu_error(v63);
        }

        v10 = strtol(v9 + 1, &__endptr, 10);
      }

      v9 = __endptr;
    }

    v4 = this;
    if (v11 > -2)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v12 = -2;
    v10 = -1;
  }

  v11 = *(v4 + 4);
LABEL_41:
  if (v12 <= -2)
  {
    v12 = *(v4 + 5);
  }

  if (v10 < 0)
  {
    if (v11 == *(v4 + 4) && v12 == *(v4 + 5))
    {
      v10 = *(v4 + 6);
    }

    else
    {
      if (*(v4 + 42) == 1)
      {
        *&v65 = 0;
        *v63 = 0u;
        v64 = 0u;
        kdu_error::kdu_error(v63, "Kakadu Core Error:\n");
        (*(*v63 + 16))(v63, "Malformed location specifier encountered in attribute string");
        (*(*v63 + 16))(v63, ", ");
        (*(*v63 + 16))(v63, a2);
        (*(*v63 + 16))(v63, "!\n");
        (*(*v63 + 16))(v63, "You must supply an index specifier of the form I<num> for this type of parameter.");
        kdu_error::~kdu_error(v63);
      }

      v10 = 0;
    }
  }

  else if ((*(v4 + 42) & 1) == 0)
  {
    *&v65 = 0;
    *v63 = 0u;
    v64 = 0u;
    kdu_error::kdu_error(v63, "Kakadu Core Error:\n");
    (*(*v63 + 16))(v63, "Malformed location specifier encountered in attribute string");
    (*(*v63 + 16))(v63, ", ");
    (*(*v63 + 16))(v63, a2);
    (*(*v63 + 16))(v63, "!\n");
    (*(*v63 + 16))(v63, "This type of parameter cannot be used with an index specifier (i.e., a specifier of the form I<num>).");
    kdu_error::~kdu_error(v63);
  }

  if (*(v4 + 4) != v11 || *(v4 + 5) != v12 || *(v4 + 6) != v10)
  {
    v16 = kdu_params::access_relation(v4, v11, v12, v10, 0);
    if (!v16)
    {
      *&v65 = 0;
      *v63 = 0u;
      v64 = 0u;
      kdu_error::kdu_error(v63, "Kakadu Core Error:\n");
      (*(*v63 + 16))(v63, "Attribute string");
      (*(*v63 + 16))(v63, ", ");
      (*(*v63 + 16))(v63, a2);
      (*(*v63 + 16))(v63, ", ");
      (*(*v63 + 16))(v63, "refers to a non-existent tile-component!");
      kdu_error::~kdu_error(v63);
    }

    return kdu_params::parse_string(v16, a2);
  }

  if (*(v4 + 37) == 1)
  {
    *&v65 = 0;
    *v63 = 0u;
    v64 = 0u;
    kdu_error::kdu_error(v63, "Kakadu Core Error:\n");
    kdu_error::~kdu_error(v63);
  }

  if ((v5[2] & 4) != 0 && *(v4 + 5) != -1)
  {
    *&v65 = 0;
    *v63 = 0u;
    v64 = 0u;
    kdu_error::kdu_error(v63, "Kakadu Core Error:\n");
    (*(*v63 + 16))(v63, "Attempt to set a non-tile-specific code-stream attribute in a specific component!\nProblem occurred while parsing the attribute string");
    (*(*v63 + 16))(v63, ", ");
    (*(*v63 + 16))(v63, a2);
    (*(*v63 + 16))(v63, ".");
    kdu_error::~kdu_error(v63);
  }

  if (*__endptr != 61)
  {
    *&v65 = 0;
    *v63 = 0u;
    v64 = 0u;
    kdu_error::kdu_error(v63, "Kakadu Core Error:\n");
    (*(*v63 + 16))(v63, "Malformed attribute string");
    (*(*v63 + 16))(v63, ", ");
    (*(*v63 + 16))(v63, a2);
    (*(*v63 + 16))(v63, "!\n");
    (*(*v63 + 16))(v63, "Parameter values must be separated from the attribute name and optional location specifiers by an '=' sign!");
    kdu_error::~kdu_error(v63);
  }

  if (*(v5 + 9) >= 1 && *(v5 + 49) == 1)
  {
    if (*(v4 + 40) != 1 || (*(v4 + 42) & 1) != 0 || !*(v4 + 11) && (v52 = kdu_params::new_instance(v4), v4 = this, !v52))
    {
      *&v65 = 0;
      *v63 = 0u;
      v64 = 0u;
      kdu_error::kdu_error(v63, "Kakadu Core Error:\n");
      (*(*v63 + 16))(v63, "The supplied attribute string");
      (*(*v63 + 16))(v63, ", ");
      (*(*v63 + 16))(v63, a2);
      (*(*v63 + 16))(v63, ", ");
      (*(*v63 + 16))(v63, "refers to code-stream parameters which have already been parsed out of some string.  Moreover, multiple instances of this attribute are not permitted here!");
      kdu_error::~kdu_error(v63);
    }

    v16 = *(v4 + 11);
    if (!v16)
    {
      kdu_params::parse_string();
    }

    return kdu_params::parse_string(v16, a2);
  }

  kdu_params::delete_unparsed_attribute(v4, *v5);
  *(v5 + 49) = 1;
  v18 = __endptr;
  v53 = setlocale(4, 0);
  setlocale(4, "C");
  v20 = (v18 + 1);
  v21 = v18[1];
  if (!v18[1])
  {
    goto LABEL_174;
  }

  v22 = 0;
  v56 = 0;
  do
  {
    if (v22)
    {
      if (v21 != 44)
      {
        *&v65 = 0;
        *v63 = 0u;
        v64 = 0u;
        kdu_error::kdu_error(v63, "Kakadu Core Error:\n");
        (*(*v63 + 16))(v63, "Malformed attribute string");
        (*(*v63 + 16))(v63, ", ");
        (*(*v63 + 16))(v63, a2);
        (*(*v63 + 16))(v63, "!\n");
        (*(*v63 + 16))(v63, "Problem encountered at");
        (*(*v63 + 16))(v63, " ");
        (*(*v63 + 16))(v63, v20);
        (*(*v63 + 16))(v63, ".\n");
        (*(*v63 + 16))(v63, "Records must be separated by commas.");
        kdu_error::~kdu_error(v63);
      }

      if ((v5[2] & 1) == 0)
      {
        *&v65 = 0;
        *v63 = 0u;
        v64 = 0u;
        kdu_error::kdu_error(v63, "Kakadu Core Error:\n");
        (*(*v63 + 16))(v63, "Malformed attribute string");
        (*(*v63 + 16))(v63, ", ");
        (*(*v63 + 16))(v63, a2);
        (*(*v63 + 16))(v63, "!\n");
        (*(*v63 + 16))(v63, "Attribute does not support multiple parameter records!");
        kdu_error::~kdu_error(v63);
      }

      v23 = *++v20;
      v21 = v23;
    }

    v24 = v21;
    if (v21 == 123)
    {
      ++v20;
    }

    else if (*(v5 + 8) >= 2)
    {
      *&v65 = 0;
      *v63 = 0u;
      v64 = 0u;
      kdu_error::kdu_error(v63, "Kakadu Core Error:\n");
      (*(*v63 + 16))(v63, "Malformed attribute string");
      (*(*v63 + 16))(v63, ", ");
      (*(*v63 + 16))(v63, a2);
      (*(*v63 + 16))(v63, "!\n");
      (*(*v63 + 16))(v63, "Problem encountered at");
      (*(*v63 + 16))(v63, " ");
      (*(*v63 + 16))(v63, v20);
      (*(*v63 + 16))(v63, ".\n");
      (*(*v63 + 16))(v63, "Records must be enclosed by curly braces, i.e., '{' and '}'.");
      kdu_error::~kdu_error(v63);
    }

    if (*(v5 + 9) <= v22)
    {
      kd_attribute::augment_records(v5, v22 + 1);
      v56 = 1;
    }

    LODWORD(v25) = *(v5 + 8);
    if (v25 >= 1)
    {
      v26 = 0;
      while (1)
      {
        if (v26)
        {
          if (*v20 != 44)
          {
            *&v65 = 0;
            *v63 = 0u;
            v64 = 0u;
            kdu_error::kdu_error(v63, "Kakadu Core Error:\n");
            (*(*v63 + 16))(v63, "Malformed attribute string");
            (*(*v63 + 16))(v63, ", ");
            (*(*v63 + 16))(v63, a2);
            (*(*v63 + 16))(v63, "!\n");
            (*(*v63 + 16))(v63, "Problem encountered at");
            (*(*v63 + 16))(v63, " ");
            (*(*v63 + 16))(v63, v20);
            (*(*v63 + 16))(v63, ".\n");
            (*(*v63 + 16))(v63, "Fields must be separated by commas.");
            kdu_error::~kdu_error(v63);
          }

          ++v20;
        }

        v27 = &v5[5][24 * v25 * v22 + 24 * v26];
        v28 = *(v27 + 8);
        v29 = *v28;
        if (v29 <= 0x45)
        {
          break;
        }

        switch(v29)
        {
          case '[':
            v54 = *v27;
            *v27 = 0;
            while (1)
            {
              v66 = 0u;
              v67 = 0u;
              v64 = 0u;
              v65 = 0u;
              *v63 = 0u;
              v61 = 0;
              v40 = *(v27 + 8);
              if (*v20 == 124)
              {
                v41 = v20 + 1;
              }

              else
              {
                v41 = v20;
              }

              do
              {
                v40 = parse_translator_entry(v40 + 1, 0x7Cu, v63, &v61, v19);
                v42 = v63[0];
                v20 = v41;
                if (v63[0])
                {
                  v43 = &v63[1];
                  v20 = v41;
                  while (v42 == *v20)
                  {
                    ++v20;
                    v44 = *v43++;
                    v42 = v44;
                    if (!v44)
                    {
                      goto LABEL_143;
                    }
                  }
                }

                else
                {
LABEL_143:
                  v45 = *v20;
                  v46 = (v45 - 124) < 2 || v45 == 0;
                  if (v46 || v45 == 44)
                  {
                    goto LABEL_155;
                  }
                }
              }

              while (*v40 == 124);
              if (*v41 != 48 || (v47 = v41[1], (v47 - 124) >= 2) && v47 != 44 && v41[1])
              {
                v60 = 0;
                v58 = 0u;
                v59 = 0u;
                kdu_error::kdu_error(&v58, "Kakadu Core Error:\n");
                (*(v58 + 16))(&v58, "Malformed attribute string");
                (*(v58 + 16))(&v58, ", ");
                (*(v58 + 16))(&v58, a2);
                (*(v58 + 16))(&v58, "!\n");
                (*(v58 + 16))(&v58, "Problem encountered at");
                (*(v58 + 16))(&v58, " ");
                (*(v58 + 16))(&v58, v41);
                (*(v58 + 16))(&v58, ".\n");
                display_options(*(v27 + 8), &v58);
                kdu_error::~kdu_error(&v58);
              }

              v61 = 0;
              v20 = v41 + 1;
LABEL_155:
              v48 = *v27 | v61;
              *v27 = v48;
              if (*v20 != 124)
              {
                v56 |= *(v27 + 16) ^ 1 | (LODWORD(v54) != v48);
                v31 = v20;
                goto LABEL_163;
              }
            }

          case 'I':
            v35 = strtol(v20, &__endptr, 10);
            if (*(v27 + 16) != 1 || *v27 != v35)
            {
              v56 = 1;
            }

            *v27 = v35;
            v31 = __endptr;
            if (__endptr == v20)
            {
              *&v65 = 0;
              *v63 = 0u;
              v64 = 0u;
              kdu_error::kdu_error(v63, "Kakadu Core Error:\n");
              (*(*v63 + 16))(v63, "Malformed attribute string");
              (*(*v63 + 16))(v63, ", ");
              (*(*v63 + 16))(v63, a2);
              (*(*v63 + 16))(v63, "!\n");
              (*(*v63 + 16))(v63, "Problem encountered at");
              (*(*v63 + 16))(v63, " ");
              (*(*v63 + 16))(v63, v20);
              (*(*v63 + 16))(v63, ".\n");
              (*(*v63 + 16))(v63, "Expected an integer field.");
              kdu_error::~kdu_error(v63);
            }

            break;
          case 'F':
            v32 = strtod(v20, &__endptr);
            if (*(v27 + 16) != 1 || *v27 != v32)
            {
              v56 = 1;
            }

            *v27 = v32;
            v31 = __endptr;
            if (__endptr == v20)
            {
              *&v65 = 0;
              *v63 = 0u;
              v64 = 0u;
              kdu_error::kdu_error(v63, "Kakadu Core Error:\n");
              (*(*v63 + 16))(v63, "Malformed attribute string");
              (*(*v63 + 16))(v63, ", ");
              (*(*v63 + 16))(v63, a2);
              (*(*v63 + 16))(v63, "!\n");
              (*(*v63 + 16))(v63, "Problem encountered at");
              (*(*v63 + 16))(v63, " ");
              (*(*v63 + 16))(v63, v20);
              (*(*v63 + 16))(v63, ".\n");
              (*(*v63 + 16))(v63, "Expected a floating point field.");
              kdu_error::~kdu_error(v63);
            }

            break;
          default:
            goto LABEL_179;
        }

LABEL_163:
        *(v27 + 16) = 1;
        ++v26;
        v25 = *(v5 + 8);
        v20 = v31;
        if (v26 >= v25)
        {
          goto LABEL_166;
        }
      }

      if (v29 == 40)
      {
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        *v63 = 0u;
        v61 = 0;
        while (1)
        {
          v28 = parse_translator_entry(v28 + 1, 0x2Cu, v63, &v61, v19);
          v36 = v63[0];
          v31 = v20;
          if (v63[0])
          {
            v37 = &v63[1];
            v31 = v20;
            while (v36 == *v31)
            {
              ++v31;
              v38 = *v37++;
              v36 = v38;
              if (!v38)
              {
                goto LABEL_126;
              }
            }
          }

          else
          {
LABEL_126:
            v39 = *v31;
            if (!*v31 || v39 == 44 || v39 == 125)
            {
              if (*(v27 + 16) != 1 || *v27 != v61)
              {
                v56 = 1;
              }

              *v27 = v61;
              goto LABEL_163;
            }
          }

          if (*v28 != 44)
          {
            v60 = 0;
            v58 = 0u;
            v59 = 0u;
            kdu_error::kdu_error(&v58, "Kakadu Core Error:\n");
            (*(v58 + 16))(&v58, "Malformed attribute string");
            (*(v58 + 16))(&v58, ", ");
            (*(v58 + 16))(&v58, a2);
            (*(v58 + 16))(&v58, "!\n");
            (*(v58 + 16))(&v58, "Problem encountered at");
            (*(v58 + 16))(&v58, " ");
            (*(v58 + 16))(&v58, v20);
            (*(v58 + 16))(&v58, ".\n");
            display_options(*(v27 + 8), &v58);
            kdu_error::~kdu_error(&v58);
          }
        }
      }

      if (v29 != 66)
      {
        if (v29 == 67)
        {
          LODWORD(v58) = 0;
          v30 = (*(*this + 56))(this, v20, *v5, v26, &v58);
          if (*(v27 + 16) != 1 || *v27 != v58)
          {
            v56 = 1;
          }

          *v27 = v58;
          if (v30 <= 0)
          {
            *&v65 = 0;
            *v63 = 0u;
            v64 = 0u;
            kdu_error::kdu_error(v63, "Kakadu Core Error:\n");
            (*(*v63 + 16))(v63, "Malformed attribute string");
            (*(*v63 + 16))(v63, ", ");
            (*(*v63 + 16))(v63, a2);
            (*(*v63 + 16))(v63, "!\n");
            (*(*v63 + 16))(v63, "Problem encountered at");
            (*(*v63 + 16))(v63, " ");
            (*(*v63 + 16))(v63, v20);
            (*(*v63 + 16))(v63, ".\n");
            (*(*v63 + 16))(v63, "Attempt to parse custom string representation failed.  Read usage information carefully.");
            kdu_error::~kdu_error(v63);
          }

          v31 = &v20[v30];
          goto LABEL_163;
        }

LABEL_179:
        kdu_params::parse_string();
      }

      v33 = *v20;
      if (v33 == 110)
      {
        if (v20[1] == 111)
        {
          v34 = *v27;
          *v27 = 0;
          v31 = (v20 + 2);
          goto LABEL_160;
        }
      }

      else if (v33 == 121 && v20[1] == 101 && v20[2] == 115)
      {
        v34 = *v27;
        *v27 = 1;
        v31 = (v20 + 3);
LABEL_160:
        if (*(v27 + 16) != 1 || LODWORD(v34) != *v27)
        {
          v56 = 1;
        }

        goto LABEL_163;
      }

      *&v65 = 0;
      *v63 = 0u;
      v64 = 0u;
      kdu_error::kdu_error(v63, "Kakadu Core Error:\n");
      (*(*v63 + 16))(v63, "Malformed attribute string");
      (*(*v63 + 16))(v63, ", ");
      (*(*v63 + 16))(v63, a2);
      (*(*v63 + 16))(v63, "!\n");
      (*(*v63 + 16))(v63, "Problem encountered at");
      (*(*v63 + 16))(v63, " ");
      (*(*v63 + 16))(v63, v20);
      (*(*v63 + 16))(v63, ".\n");
      (*(*v63 + 16))(v63, "Expected a BOOLean field identifier, i.e., one of yes or no.");
      kdu_error::~kdu_error(v63);
    }

    v31 = v20;
LABEL_166:
    v49 = *v31;
    if (v49 == 125)
    {
      v49 = *++v31;
    }

    else if (v24 == 123)
    {
      *&v65 = 0;
      *v63 = 0u;
      v64 = 0u;
      kdu_error::kdu_error(v63, "Kakadu Core Error:\n");
      (*(*v63 + 16))(v63, "Malformed attribute string");
      (*(*v63 + 16))(v63, ", ");
      (*(*v63 + 16))(v63, a2);
      (*(*v63 + 16))(v63, "!\n");
      (*(*v63 + 16))(v63, "Problem encountered at");
      (*(*v63 + 16))(v63, " ");
      (*(*v63 + 16))(v63, v31);
      (*(*v63 + 16))(v63, ".\n");
      (*(*v63 + 16))(v63, "Opening brace for record is not matched by a closing brace.");
      kdu_error::~kdu_error(v63);
    }

    ++v22;
    v21 = v49;
    v20 = v31;
  }

  while (v49);
  if ((v56 & 1) != 0 && (*(this + 104) & 1) == 0)
  {
    *(this + 104) = 1;
    v50 = *(this + 10);
    *(v50 + 104) = 1;
    v51 = **(v50 + 64);
    *(v51 + 104) = 1;
    *(*(v51 + 48) + 104) = 1;
  }

LABEL_174:
  *(this + 36) = 0;
  setlocale(4, v53);
  return 1;
}