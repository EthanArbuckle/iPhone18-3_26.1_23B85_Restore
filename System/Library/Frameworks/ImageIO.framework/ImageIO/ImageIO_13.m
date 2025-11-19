uint64_t kd_block::start_buffering(kd_block *this, kd_buf_server *a2)
{
  if (*this)
  {
    kd_block::start_buffering();
  }

  result = kd_buf_server::get(a2);
  *this = result;
  *(this + 1) = result;
  *(this + 16) = 0;
  return result;
}

uint64_t kd_block::put_byte(kd_block *this, char a2, kd_buf_server *a3)
{
  result = *(this + 1);
  if (!result)
  {
    kd_block::put_byte();
  }

  v6 = *(this + 16);
  if (v6 == 55)
  {
    *(this + 16) = 0;
    result = kd_buf_server::get(a3);
    **(this + 1) = result;
    *(this + 1) = result;
    v6 = *(this + 16);
  }

  *(this + 16) = v6 + 1;
  *(result + v6 + 9) = a2;
  return result;
}

uint64_t kd_header_in::get_bits(kd_header_in *this, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v2 = a2;
  LODWORD(v4) = 0;
  v6 = this + 8;
  v5 = *(this + 8);
  v7 = *(this + 3);
  do
  {
    if (!v7)
    {
      if (v5 == 255)
      {
        v8 = 7;
      }

      else
      {
        v8 = 8;
      }

      *(this + 3) = v8;
      if (!kd_input::get(*this, v6))
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = this;
      }

      v7 = *(this + 3);
      v5 = *(this + 8);
    }

    if (v2 >= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v2;
    }

    v7 -= v9;
    *(this + 3) = v7;
    v4 = (v5 >> v7) & ~(255 << v9) | (v4 << v9);
    v10 = __OFSUB__(v2, v9);
    v2 -= v9;
  }

  while (!((v2 < 0) ^ v10 | (v2 == 0)));
  return v4;
}

uint64_t kd_block::read_body_bytes(uint64_t this, kd_input *a2, kd_buf_server *a3)
{
  v3 = *(this + 26);
  *(this + 26) = 0;
  if (v3)
  {
    v6 = this;
    if (*(this + 18) == 255)
    {
      if (*this)
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = -1;
        __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
      }

      v12 = kd_buf_server::get(a3);
      do
      {
        if (*(a2 + 544))
        {
          break;
        }

        v13 = v3 >= 0x37 ? 55 : v3;
        kd_input::read(a2, (v12 + 9), v13);
        v11 = __OFSUB__(v3, v13);
        v3 -= v13;
      }

      while (!((v3 < 0) ^ v11 | (v3 == 0)));

      return kd_buf_server::release(a3, v12);
    }

    else
    {
      LOBYTE(v7) = *(this + 16);
      do
      {
        if (v7 == 55)
        {
          v8 = kd_buf_server::get(a3);
          v7 = 0;
          **(v6 + 8) = v8;
          *(v6 + 8) = v8;
          *(v6 + 16) = 0;
          v9 = 55;
        }

        else
        {
          v9 = 55 - v7;
          v8 = *(v6 + 8);
          v7 = v7;
        }

        if (v3 >= v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = v3;
        }

        this = kd_input::read(a2, (v8 + v7 + 9), v10);
        if (!this)
        {
          break;
        }

        LOBYTE(v7) = *(v6 + 16) + this;
        *(v6 + 16) = v7;
        *(v6 + 22) += this;
        v11 = __OFSUB__(v3, this);
        v3 -= this;
      }

      while (!((v3 < 0) ^ v11 | (v3 == 0)));
    }
  }

  return this;
}

uint64_t kd_block::retrieve_data(kd_block *this, kdu_block *a2, int a3)
{
  v3 = *(this + 18);
  if (v3 == 255)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  *(a2 + 11) = *(this + 17);
  *(a2 + 12) = 0;
  if (!*(this + 24))
  {
    return 0;
  }

  v7 = *(this + 11);
  if (v7 + 2 > *(a2 + 23))
  {
    kdu_block::set_max_bytes(a2, v7 + 4096, 0);
    v3 = *(this + 18);
  }

  if (*(a2 + 22) < v3)
  {
    kdu_block::set_max_passes(a2, v3 + 32, 0);
    v3 = *(this + 18);
  }

  v8 = *(this + 11);
  v9 = *(a2 + 9);
  v28[0] = *this;
  v28[1] = 0;
  if (!v3)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  while (2)
  {
    byte = kd_block_reader::get_byte(v28);
    v13 = kd_block_reader::get_byte(v28) | (byte << 8);
    if (v13 >= a3)
    {
      return 0;
    }

    v14 = v11;
    if (*(a2 + 12) != v10)
    {
      kd_block::retrieve_data();
    }

    do
    {
      v15 = kd_block_reader::get_byte(v28);
      v16 = kd_block_reader::get_byte(v28);
      v17 = kd_block_reader::get_byte(v28);
      if (v17)
      {
        v18 = v16 & 0xFFFF00FF | (v15 << 8);
        if (v15 >= 0)
        {
          v19 = v18;
        }

        else
        {
          v19 = v18 & 0x7FFF;
        }

        v14 = v14;
        if (v14 <= *(this + 18))
        {
          v20 = *(this + 18);
        }

        else
        {
          v20 = v14;
        }

        v21 = v17 + 1;
        while (v20 != v14)
        {
          v22 = *(a2 + 8);
          *(*(a2 + 7) + 4 * v14) = v19;
          *(v22 + 2 * v14++) = 0;
          --v21;
          v19 = 0;
          if (v21 <= 1)
          {
            goto LABEL_21;
          }
        }

        return 0xFFFFFFFFLL;
      }

LABEL_21:
      ;
    }

    while (v15 < 0);
    if (!v14)
    {
      kd_block::retrieve_data();
    }

    *(*(a2 + 8) + 2 * v14 - 2) = ~v13;
    if (v11 < v14)
    {
      while (1)
      {
        v23 = *(*(a2 + 7) + 4 * v11);
        v24 = __OFSUB__(v8, v23);
        v8 -= v23;
        if (v8 < 0 != v24)
        {
          return 0;
        }

        *(a2 + 12) = v11 + 1;
        if (v23 >= 1)
        {
          do
          {
            bytes = kd_block_reader::get_bytes(v28, v9, v23);
            v9 += bytes;
            v24 = __OFSUB__(v23, bytes);
            v23 -= bytes;
          }

          while (!((v23 < 0) ^ v24 | (v23 == 0)));
        }

        LOBYTE(v11) = v11 + 1;
        if (v11 >= v14)
        {
          v11 = v14;
          break;
        }
      }
    }

    result = 0;
    v10 = v11;
    if (v11 < *(this + 18))
    {
      continue;
    }

    return result;
  }
}

uint64_t kd_block_reader::get_byte(kd_block_reader *this)
{
  v1 = *(this + 2);
  v2 = *this;
  if (v1 == 55)
  {
    *(this + 2) = 0;
    v2 = *v2;
    *this = v2;
    if (!v2)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = -1;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }

    v1 = 0;
  }

  *(this + 2) = v1 + 1;
  return *(v2 + v1 + 9);
}

uint64_t kd_block_reader::get_bytes(uint64_t **this, unsigned __int8 *a2, int a3)
{
  v3 = *(this + 2);
  if (v3 == 55)
  {
    v3 = 0;
    *(this + 2) = 0;
    v4 = **this;
    *this = v4;
    if (!v4)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = -1;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }
  }

  v5 = v3 + a3;
  if (v3 + a3 >= 55)
  {
    v5 = 55;
  }

  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v6 = v3 + 9;
    do
    {
      *a2++ = *(*this + v6++);
    }

    while (v6 - v5 != 9);
    v3 = *(this + 2);
    v7 = v5;
  }

  *(this + 2) = v7;
  return (v5 - v3);
}

uint64_t kd_block::store_data(kd_block *this, kdu_block *a2, kd_buf_server *a3)
{
  if (*(a2 + 7) != *(this + 25))
  {
    kd_block::store_data();
  }

  v4 = *(a2 + 11);
  if (v4 >= 255)
  {
    kd_block::store_data();
  }

  if (*(a2 + 12) > 255)
  {
    kd_block::store_data();
  }

  if (*this)
  {
    kd_block::store_data();
  }

  *(this + 17) = v4;
  result = kd_block::start_buffering(this, a3);
  v8 = *(a2 + 12);
  *(this + 18) = v8;
  if (v8 < 1)
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_29:
    kd_block::store_data();
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = *(*(a2 + 8) + 2 * v9);
    kd_block::put_byte(this, SHIBYTE(v11), a3);
    kd_block::put_byte(this, v11, a3);
    v12 = *(*(a2 + 7) + 4 * v9);
    if (v12 >= 0x10000)
    {
      kd_block::store_data();
    }

    v10 += v12;
    kd_block::put_byte(this, SBYTE1(v12), a3);
    result = kd_block::put_byte(this, v12, a3);
    ++v9;
  }

  while (v9 < *(a2 + 12));
  if (v10 > *(a2 + 23))
  {
    goto LABEL_29;
  }

  if (v10 >= 1)
  {
    v13 = *(a2 + 9);
    do
    {
      v14 = *(this + 16);
      if (v14 == 55)
      {
        result = kd_buf_server::get(a3);
        **(this + 1) = result;
        *(this + 1) = result;
        *(this + 16) = 0;
        v15 = 55;
      }

      else
      {
        v15 = 55 - v14;
      }

      if (v15 >= v10)
      {
        v15 = v10;
      }

      if (v15)
      {
        v16 = v15;
        do
        {
          v17 = *v13++;
          v18 = *(this + 16);
          v19 = *(this + 1) + v18;
          *(this + 16) = v18 + 1;
          *(v19 + 9) = v17;
          --v16;
        }

        while (v16);
      }

      v10 -= v15;
    }

    while (v10 >= 1);
  }

LABEL_23:
  *(this + 1) = *this;
  *(this + 16) = 0;
  return result;
}

uint64_t *kd_block::store_data(kd_block *this, kdu_block *a2, kd_thread_buf_server *a3)
{
  v3 = *(a2 + 11);
  if (v3 >= 255)
  {
    kd_block::store_data();
  }

  if (*(a2 + 12) > 255)
  {
    kd_block::store_data();
  }

  if (*this)
  {
    kd_block::store_data();
  }

  *(this + 17) = v3;
  result = kd_block::start_buffering(this, a3);
  v8 = *(a2 + 12);
  *(this + 18) = v8;
  if (v8 < 1)
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_27:
    kd_block::store_data();
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = *(*(a2 + 8) + 2 * v9);
    kd_block::put_byte(this, SHIBYTE(v11), a3);
    kd_block::put_byte(this, v11, a3);
    v12 = *(*(a2 + 7) + 4 * v9);
    if (v12 >= 0x10000)
    {
      kd_block::store_data();
    }

    v10 += v12;
    kd_block::put_byte(this, SBYTE1(v12), a3);
    result = kd_block::put_byte(this, v12, a3);
    ++v9;
  }

  while (v9 < *(a2 + 12));
  if (v10 > *(a2 + 23))
  {
    goto LABEL_27;
  }

  if (v10 >= 1)
  {
    v13 = *(a2 + 9);
    do
    {
      v14 = *(this + 16);
      if (v14 == 55)
      {
        result = kd_thread_buf_server::get(a3);
        **(this + 1) = result;
        *(this + 1) = result;
        *(this + 16) = 0;
        v15 = 55;
      }

      else
      {
        v15 = 55 - v14;
      }

      if (v15 >= v10)
      {
        v15 = v10;
      }

      if (v15)
      {
        v16 = v15;
        do
        {
          v17 = *v13++;
          v18 = *(this + 16);
          v19 = *(this + 1) + v18;
          *(this + 16) = v18 + 1;
          *(v19 + 9) = v17;
          --v16;
        }

        while (v16);
      }

      v10 -= v15;
    }

    while (v10 >= 1);
  }

LABEL_22:
  *(this + 1) = *this;
  *(this + 16) = 0;
  return result;
}

uint64_t *kd_block::start_buffering(kd_block *this, kd_thread_buf_server *a2)
{
  if (*this)
  {
    kd_block::start_buffering();
  }

  result = kd_thread_buf_server::get(a2);
  *this = result;
  *(this + 1) = result;
  *(this + 16) = 0;
  return result;
}

uint64_t *kd_block::put_byte(kd_block *this, char a2, kd_thread_buf_server *a3)
{
  result = *(this + 1);
  if (!result)
  {
    kd_block::put_byte();
  }

  v6 = *(this + 16);
  if (v6 == 55)
  {
    *(this + 16) = 0;
    result = kd_thread_buf_server::get(a3);
    **(this + 1) = result;
    *(this + 1) = result;
    v6 = *(this + 16);
  }

  *(this + 16) = v6 + 1;
  *(result + v6 + 9) = a2;
  return result;
}

uint64_t *kd_thread_buf_server::get(kd_thread_buf_server *this)
{
  result = *(this + 3);
  if (!result)
  {
    kd_thread_buf_server::augment_local_store(this, 0);
    result = *(this + 3);
  }

  v3 = *result;
  *(this + 3) = *result;
  if (!v3)
  {
    *(this + 4) = 0;
  }

  *result = 0;
  --*(this + 3);
  return result;
}

uint64_t kd_block::trim_data(kd_block *this, unsigned int a2, kd_buf_server *a3)
{
  if (!*(this + 18))
  {
    return 0;
  }

  v5 = this;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v24 = *(this + 16);
  v10 = *(this + 1);
  *(this + 1) = *this;
  *(this + 16) = 0;
  while (1)
  {
    byte = kd_block::get_byte(v5);
    v12 = kd_block::get_byte(v5) | (byte << 8);
    if (v12 - 1 < a2)
    {
      break;
    }

    v13 = kd_block::get_byte(v5);
    v7 += kd_block::get_byte(v5) + (v13 << 8);
    v14 = v6 + 1;
    if (v12)
    {
      v9 = v7;
      v8 = v6 + 1;
    }

    v15 = *(v5 + 18);
    ++v6;
    if (v14 >= v15)
    {
      v6 = v14;
      goto LABEL_10;
    }
  }

  v15 = *(v5 + 18);
LABEL_10:
  *(v5 + 1) = v10;
  *(v5 + 16) = v24;
  if (v6 == v15)
  {
    return 0;
  }

  v17 = 4 * v8 + 55;
  v18 = v5;
  do
  {
    v18 = *v18;
    v17 -= 55;
  }

  while (v17 > 55);
  if (4 * (v15 - v8))
  {
    v19 = 4 * v8 - 4 * v15;
    do
    {
      if (v17 == 55)
      {
        v17 = 0;
        v18 = *v18;
      }

      v20 = v18 + v17++;
      v20[9] = 0;
    }

    while (!__CFADD__(v19++, 1));
    v15 = *(v5 + 18);
  }

  v22 = v9 + 4 * v15 + 55;
  do
  {
    v5 = *v5;
    v22 -= 55;
  }

  while (v22 > 55);
  while (1)
  {
    v23 = *v5;
    if (!*v5)
    {
      break;
    }

    *v5 = *v23;
    kd_buf_server::release(a3, v23);
  }

  return 1;
}

uint64_t kd_block::get_byte(kd_block *this)
{
  v1 = *(this + 16);
  if (v1 == 55)
  {
    *(this + 16) = 0;
    v2 = *(this + 1);
    v3 = *v2;
    *(this + 1) = *v2;
    if (!v3)
    {
      kd_block::get_byte();
    }

    v1 = 0;
  }

  else
  {
    v3 = *(this + 1);
  }

  *(this + 16) = v1 + 1;
  return *(v3 + v1 + 9);
}

uint64_t kd_block::start_packet(kd_block *this, int a2, unsigned int a3)
{
  v4 = a2;
  if (a2)
  {
    LODWORD(v6) = *(this + 19);
    v7 = *(this + 18);
  }

  else
  {
    *(this + 19) = 0;
    *(this + 1) = *this;
    *(this + 16) = 0;
    *(this + 10) = -1;
    v7 = *(this + 18);
    if (!*(this + 18))
    {
      *(this + 17) = -1;
    }

    v6 = *(this + 4);
    if (v6)
    {
      while (1)
      {
        v17 = *(this + 17);
        if (*(v6 + 17) <= v17)
        {
          break;
        }

        *(v6 + 17) = v17;
        v6 = *(v6 + 32);
        if (!v6)
        {
          goto LABEL_3;
        }
      }

      LODWORD(v6) = 0;
    }
  }

LABEL_3:
  *(this + 22) = 0;
  *(this + 13) = 0;
  v8 = v7 - v6;
  if (v7 == v6)
  {
    result = 0;
    *(this + 10) = -1;
  }

  else
  {
    v10 = *(this + 1);
    v11 = *(this + 16);
    if (v8 >= 1)
    {
      v12 = 0;
      v13 = 1;
      do
      {
        byte = kd_block::get_byte(this);
        v15 = kd_block::get_byte(this) | (byte << 8);
        if (v15 - 1 < a3)
        {
          break;
        }

        v16 = kd_block::get_byte(this);
        v12 += kd_block::get_byte(this) + (v16 << 8);
        if (v15)
        {
          *(this + 22) = v13;
          if (v12 >= 0x10000)
          {
            kd_block::start_packet();
          }

          *(this + 13) = v12;
        }

        ++v13;
        --v8;
      }

      while (v8);
      LODWORD(v6) = *(this + 19);
    }

    *(this + 1) = v10;
    *(this + 16) = v11;
    if (!v6)
    {
      if (*(this + 22))
      {
        *(this + 10) = v4;
        for (i = *(this + 4); i; i = *(i + 32))
        {
          v19 = *(this + 10);
          if (*(i + 20) <= v19)
          {
            break;
          }

          *(i + 20) = v19;
        }
      }

      else
      {
        *(this + 10) = -1;
      }
    }

    return *(this + 13);
  }

  return result;
}

unsigned __int8 *kd_block::write_packet_header(unsigned __int8 *this, kd_header_out *a2, __int16 a3, int a4)
{
  v5 = this;
  v6 = this[22];
  if (this[19])
  {
    this = kd_header_out::put_bit(a2, v6 != 0);
    if (!v6)
    {
      return this;
    }

    goto LABEL_21;
  }

  if ((v6 != 0) == (*(this + 10) == -1))
  {
    kd_block::write_packet_header();
  }

  *(this + 11) = a3;
  v7 = *(this + 4);
  if (v7)
  {
    v8 = 0;
    v9 = this;
    do
    {
      v10 = v9;
      v9 = v7;
      *(v10 + 4) = v8;
      v7 = *(v7 + 32);
      v8 = v10;
    }

    while (v7);
  }

  else
  {
    v10 = 0;
    v9 = this;
  }

  v11 = 0;
  LOWORD(v12) = 0;
  *(v9 + 4) = v10;
  v13 = *(this + 11) + 1;
  do
  {
    v14 = v11;
    v11 = v9;
    v15 = *(v9 + 11);
    if (v15 < v12)
    {
      *(v11 + 11) = v12;
      LOWORD(v15) = v12;
    }

    v12 = *(v11 + 10);
    if (v12 >= v15 && v15 < v13)
    {
      do
      {
        *(v11 + 11) = v15 + 1;
        this = kd_header_out::put_bit(a2, v12 <= v15);
        v12 = *(v11 + 10);
        v15 = *(v11 + 11);
      }

      while (v12 >= v15 && v15 < v13);
    }

    if (v12 >= v15)
    {
      LOWORD(v12) = v15;
    }

    v9 = *(v11 + 4);
    *(v11 + 4) = v14;
  }

  while (v9);
  *(v5 + 22) = v6;
  if (v6)
  {
LABEL_21:
    if (!*(v5 + 19))
    {
      *(v5 + 24) = 0;
      do
      {
        v16 = *(v5 + 32);
        if (v16)
        {
          v17 = 0;
          v18 = v5;
          do
          {
            v19 = v18;
            v18 = v16;
            *(v19 + 32) = v17;
            v16 = *(v16 + 32);
            v17 = v19;
          }

          while (v16);
        }

        else
        {
          v19 = 0;
          v18 = v5;
        }

        LOBYTE(v20) = 0;
        v21 = 0;
        *(v18 + 32) = v19;
        v22 = *(v5 + 24) + 1;
        do
        {
          v23 = *(v18 + 24);
          if (v23 < v20)
          {
            *(v18 + 24) = v20;
            LOBYTE(v23) = v20;
          }

          v20 = *(v18 + 17);
          if (v20 >= v23 && v23 < v22)
          {
            do
            {
              *(v18 + 24) = v23 + 1;
              kd_header_out::put_bit(a2, v20 <= v23);
              v20 = *(v18 + 17);
              v23 = *(v18 + 24);
            }

            while (v20 >= v23 && v23 < v22);
          }

          if (v20 >= v23)
          {
            LOBYTE(v20) = v23;
          }

          v24 = *(v18 + 32);
          *(v18 + 32) = v21;
          v21 = v18;
          v18 = v24;
        }

        while (v24);
      }

      while (*(v5 + 24) <= *(v5 + 17));
      *(v5 + 24) = 3;
    }

    v25 = *(v5 + 22) - 1;
    if (v25 >= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = *(v5 + 22) - 1;
    }

    v27 = v25 - v26;
    kd_header_out::put_bit(a2, v26);
    if (v25)
    {
      if (v27 >= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27;
      }

      v29 = v27 - v28;
      kd_header_out::put_bit(a2, v28);
      if (v27)
      {
        v30 = 3;
        if (v29 >= 3)
        {
          v31 = 3;
        }

        else
        {
          v31 = v29;
        }

        do
        {
          kd_header_out::put_bit(a2, (v31 >> (v30-- - 2)) & 1);
        }

        while (v30 > 1);
        v27 = v29 - v31;
        if (v29 >= 3)
        {
          v32 = v27 >= 31 ? 31 : v27;
          for (i = 6; i > 1; --i)
          {
            kd_header_out::put_bit(a2, (v32 >> (i - 2)) & 1);
          }

          v34 = v27 - v32;
          v35 = v27 < 31;
          v27 = v34;
          if (!v35)
          {
            if (v34 >= 127)
            {
              v36 = 127;
            }

            else
            {
              v36 = v34;
            }

            for (j = 8; j > 1; --j)
            {
              kd_header_out::put_bit(a2, (v36 >> (j - 2)) & 1);
            }

            v27 = v34 - v36;
          }
        }
      }

      else
      {
        v27 = v29;
      }
    }

    if (v27)
    {
      kd_block::write_packet_header();
    }

    v38 = *(v5 + 25);
    v70 = *(v5 + 8);
    v69 = *(v5 + 16);
    v39 = *(v5 + 22);
    v81 = *(v5 + 25);
    v40 = 0;
    if (*(v5 + 22))
    {
      v41 = *(v5 + 19);
      v73 = ((v38 & 4) == 0) & v38;
      do
      {
        if ((v38 & 4) != 0)
        {
          v42 = 1;
        }

        else
        {
          v42 = v39;
        }

        v79 = v40;
        if (v73)
        {
          if ((-1431655765 * (v41 - 10)) >= 0x55555556)
          {
            v43 = 1;
          }

          else
          {
            v43 = 2;
          }

          if (v41 <= 9)
          {
            v43 = 10 - v41;
          }

          if (v43 >= v39)
          {
            v42 = v39;
          }

          else
          {
            v42 = v43;
          }
        }

        v44 = 0;
        v45 = -2;
        do
        {
          v46 = v44;
          v47 = 1 << (v45 + 2);
          ++v45;
          ++v44;
        }

        while (v47 <= v42);
        v75 = *(v5 + 24);
        v77 = v41;
        if (v42 < 1)
        {
          v48 = 0;
        }

        else
        {
          v48 = 0;
          v49 = v42 + 1;
          do
          {
            kd_block::get_byte(v5);
            kd_block::get_byte(v5);
            byte = kd_block::get_byte(v5);
            v48 += kd_block::get_byte(v5) + (byte << 8);
            --v49;
          }

          while (v49 > 1);
        }

        if (v48 >= 1 << (v75 + v45))
        {
          v51 = v75 + v46;
          do
          {
            kd_header_out::put_bit(a2, 1u);
            ++*(v5 + 24);
            v52 = 1 << v51++;
          }

          while (v48 >= v52);
        }

        v40 = v48 + v79;
        v41 = v42 + v77;
        v53 = __OFSUB__(v39, v42);
        v39 -= v42;
        LOBYTE(v38) = v81;
      }

      while (!((v39 < 0) ^ v53 | (v39 == 0)));
    }

    if (v40 != *(v5 + 26))
    {
      kd_block::write_packet_header();
    }

    this = kd_header_out::put_bit(a2, 0);
    *(v5 + 8) = v70;
    *(v5 + 16) = v69;
    v54 = *(v5 + 22);
    if (*(v5 + 22))
    {
      v55 = 0;
      v56 = *(v5 + 19);
      v72 = ((v38 & 4) == 0) & v38;
      do
      {
        if ((v38 & 4) != 0)
        {
          v57 = 1;
        }

        else
        {
          v57 = v54;
        }

        v78 = v55;
        if (v72)
        {
          if ((-1431655765 * (v56 - 10)) >= 0x55555556)
          {
            v58 = 1;
          }

          else
          {
            v58 = 2;
          }

          if (v56 <= 9)
          {
            v58 = 10 - v56;
          }

          if (v58 >= v54)
          {
            v57 = v54;
          }

          else
          {
            v57 = v58;
          }
        }

        v59 = 0;
        v60 = -2;
        do
        {
          v61 = v60;
          v62 = v59;
          v63 = 1 << (v60++ + 2);
          ++v59;
        }

        while (v63 <= v57);
        v80 = *(v5 + 24);
        v74 = v56;
        v76 = v54;
        v38 = 0;
        if (v57 >= 1)
        {
          v64 = v57 + 1;
          do
          {
            kd_block::get_byte(v5);
            kd_block::get_byte(v5);
            v65 = kd_block::get_byte(v5);
            this = kd_block::get_byte(v5);
            v38 += this + (v65 << 8);
            --v64;
          }

          while (v64 > 1);
        }

        if (v38 >= 1 << (v80 + v60))
        {
          kd_block::write_packet_header();
        }

        if (v80 + v60 >= 1)
        {
          v66 = v80 + v62;
          v67 = v80 + v61;
          do
          {
            this = kd_header_out::put_bit(a2, (v38 >> v67) & 1);
            --v66;
            --v67;
          }

          while (v66 > 1);
        }

        v55 = v38 + v78;
        v56 = v57 + v74;
        v54 = v76 - v57;
        LOBYTE(v38) = v81;
      }

      while (v76 > v57);
    }

    else
    {
      v55 = 0;
    }

    if (v55 != *(v5 + 26))
    {
      kd_block::write_packet_header();
    }

    if (a4)
    {
      *(v5 + 8) = v70;
      *(v5 + 16) = v69;
    }

    else
    {
      v68 = *(v5 + 19);
      if (!v68)
      {
        *(v5 + 20) = 4 * *(v5 + 18);
      }

      *(v5 + 19) = *(v5 + 22) + v68;
      *(v5 + 22) = 0;
    }
  }

  return this;
}

_DWORD *kd_block::write_body_bytes(_DWORD *this, kdu_output *a2)
{
  v2 = *(this + 13);
  if (*(this + 13))
  {
    v4 = this;
    v5 = *(this + 10);
    v6 = *this;
    v7 = (v5 - 55 * ((((v5 - ((10725 * v5) >> 16)) >> 1) + ((10725 * v5) >> 16)) >> 5));
    v8 = v5 + 55;
    while (1)
    {
      v8 -= 55;
      if (v8 < 55)
      {
        break;
      }

      v6 = *v6;
      if (!v6)
      {
        kd_block::write_body_bytes();
      }
    }

    *(this + 10) = v5 + v2;
    *(this + 13) = 0;
    do
    {
      if (!v6)
      {
        kd_block::write_body_bytes();
      }

      if (55 - v7 >= v2)
      {
        v9 = v2;
      }

      else
      {
        v9 = 55 - v7;
      }

      v2 -= v9;
      this = kdu_output::write(a2, &v6[v7 + 9], v9);
      v7 = 0;
      v6 = *v6;
    }

    while (v2 > 0);
    *(v4 + 22) = 0;
  }

  return this;
}

_DWORD *kdu_output::write(_DWORD *this, char *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v5 = this;
    do
    {
      v6 = v5[132] - v5[130];
      if (!v6)
      {
        this = (*(*v5 + 16))(v5);
        v6 = v5[132] - v5[130];
      }

      if (v3 < v6)
      {
        v6 = v3;
      }

      if (v6)
      {
        v7 = v6;
        do
        {
          v8 = *a2++;
          v9 = *(v5 + 65);
          *(v5 + 65) = v9 + 1;
          *v9 = v8;
          --v7;
        }

        while (v7);
      }

      v3 -= v6;
    }

    while (v3 >= 1);
  }

  return this;
}

char *kd_block::build_tree(unint64_t a1, void **a2, uint64_t a3)
{
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = HIDWORD(a1) * a1;
  if (HIDWORD(a1) * a1 < 0)
  {
    kd_block::build_tree();
  }

  v6 = 1;
  if (v5 >= 2)
  {
    v7 = a1;
    v8 = HIDWORD(a1);
    do
    {
      LODWORD(v8) = (v8 + 1) >> 1;
      v7 = (v7 + 1) >> 1;
      v5 += v7 * v8;
      ++v6;
    }

    while (v7 * v8 > 1);
  }

  if (!v5)
  {
    return 0;
  }

  v9 = *a2;
  *a2 = *a2 + 40 * v5;
  if (40 * v5 > a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -1;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  bzero(v9, 40 * v5);
  v10 = 0;
  v11 = v9;
  do
  {
    if (v3 >= 1)
    {
      v12 = 0;
      v13 = &v11[40 * v3 * v4];
      do
      {
        if (v4 >= 1)
        {
          v14 = 0;
          do
          {
            *(v11 + 4) = &v13[40 * (v12 >> 1) * ((v4 + 1) >> 1) + 40 * (v14 >> 1)];
            if (v10 == v6 - 1)
            {
              if (v14 | v12)
              {
                kd_block::build_tree();
              }

              *(v11 + 4) = 0;
            }

            ++v14;
            v11 += 40;
          }

          while (v4 != v14);
        }

        ++v12;
      }

      while (v12 != v3);
    }

    v3 = (v3 + 1) >> 1;
    ++v10;
    LODWORD(v4) = (v4 + 1) >> 1;
  }

  while (v10 != v6);
  if (v11 != &v9[40 * v5])
  {
    kd_block::build_tree();
  }

  return v9;
}

uint64_t kd_block::reset_output_tree(uint64_t result, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if (HIDWORD(a2) && a2)
  {
    v3 = 0;
    v4 = 1;
    while ((v4 & 1) == 0)
    {
      if (a2 >= 1)
      {
        v5 = 0;
        do
        {
          if (v2 >= 1)
          {
            v6 = v2;
            do
            {
              *(result + 24) = 0;
              *(result + 17) = -1;
              *(result + 20) = 0xFFFF;
              result += 40;
              --v6;
            }

            while (v6);
          }

          ++v5;
        }

        while (v5 != a2);
        v3 = v2 & ~(v2 >> 31);
        goto LABEL_13;
      }

      v7 = 0;
LABEL_14:
      v4 = 0;
      LODWORD(a2) = (a2 + 1) >> 1;
      LODWORD(v2) = (v2 + 1) >> 1;
      if (v3 <= 1 && v7 <= 1)
      {
        return result;
      }
    }

    result += 40 * a2 * v2;
    v3 = v2;
LABEL_13:
    v7 = a2;
    goto LABEL_14;
  }

  return result;
}

uint64_t kd_block::save_output_tree(uint64_t result, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if (HIDWORD(a2) && a2)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      if (a2 < 1)
      {
        v12 = 0;
      }

      else
      {
        v5 = 0;
        v3 = v2 & ~(v2 >> 31);
        do
        {
          if (v2 >= 1)
          {
            v6 = 0;
            do
            {
              if (v4)
              {
                v7 = *(result + 22);
                v8 = *(result + 16) + 4 * v7;
                if (v8 < 0x38)
                {
                  v10 = *(result + 16) + 4 * v7;
                }

                else
                {
                  v9 = *(result + 8);
                  do
                  {
                    v9 = *v9;
                    *(result + 8) = v9;
                    if (!v9)
                    {
                      kd_block::save_output_tree();
                    }

                    v10 = v8 - 55;
                    v11 = v8 <= 110;
                    v8 -= 55;
                  }

                  while (!v11);
                }

                *(result + 16) = v10;
                *(result + 19) += v7;
                *(result + 22) = 0;
                *(result + 20) = *(result + 24);
              }

              else
              {
                *result = *(result + 20);
                *(result + 8) = *(result + 22);
                *(result + 16) = *(result + 24);
              }

              ++v6;
              result += 40;
            }

            while (v6 != v2);
          }

          ++v5;
        }

        while (v5 != a2);
        v12 = a2 != 1;
      }

      v4 = 0;
      LODWORD(a2) = (a2 + 1) >> 1;
      LODWORD(v2) = (v2 + 1) >> 1;
    }

    while (v3 > 1 || v12);
  }

  return result;
}

uint64_t kd_block::restore_output_tree(uint64_t result, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if (HIDWORD(a2) && a2)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      if (v4)
      {
        if (a2 >= 1)
        {
          v5 = 0;
          do
          {
            if (v2 >= 1)
            {
              v6 = v2;
              do
              {
                *(result + 24) = *(result + 20);
                result += 40;
                --v6;
              }

              while (v6);
            }

            ++v5;
          }

          while (v5 != a2);
LABEL_18:
          v3 = v2 & ~(v2 >> 31);
          v9 = a2;
          goto LABEL_20;
        }
      }

      else if (a2 >= 1)
      {
        v7 = 0;
        do
        {
          if (v2 >= 1)
          {
            v8 = v2;
            do
            {
              *(result + 20) = *result;
              *(result + 22) = *(result + 8);
              *(result + 24) = *(result + 16);
              result += 40;
              --v8;
            }

            while (v8);
          }

          ++v7;
        }

        while (v7 != a2);
        goto LABEL_18;
      }

      v9 = 0;
LABEL_20:
      v4 = 0;
      LODWORD(a2) = (a2 + 1) >> 1;
      LODWORD(v2) = (v2 + 1) >> 1;
    }

    while (v3 > 1 || v9 > 1);
  }

  return result;
}

void *_cg_jinit_color_converter(uint64_t *a1)
{
  result = (*a1[1])();
  v3 = result;
  a1[67] = result;
  *result = null_method;
  v4 = *(a1 + 15);
  if (v4 > 7)
  {
    goto LABEL_55;
  }

  if (((1 << v4) & 0xCC) == 0)
  {
    if (((1 << v4) & 0x30) != 0)
    {
      if (*(a1 + 14) == 4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (v4 == 1)
    {
      if (*(a1 + 14) == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

LABEL_55:
    if (*(a1 + 14) > 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (*(a1 + 14) != 3)
  {
LABEL_4:
    v5 = *a1;
    *(v5 + 40) = 10;
    result = (*v5)(a1);
  }

LABEL_5:
  if (*(a1 + 85) && (*(a1 + 24) | 4) != 6)
  {
    v6 = *a1;
    *(v6 + 40) = 28;
    result = (*v6)(a1);
  }

  v7 = *(a1 + 24);
  if (v7 <= 3)
  {
    if (v7 == 1)
    {
      if (*(a1 + 23) != 1)
      {
        v19 = *a1;
        *(v19 + 40) = 11;
        result = (*v19)(a1);
      }

      v20 = *(a1 + 15);
      if (v20 > 2)
      {
        if (v20 != 7 && v20 != 3)
        {
          goto LABEL_67;
        }
      }

      else if (v20 != 1)
      {
        if (v20 == 2)
        {
          *v3 = rgb_ycc_start;
          v10 = rgb_gray_convert;
          goto LABEL_62;
        }

        goto LABEL_67;
      }

      v10 = grayscale_convert;
      goto LABEL_62;
    }

    if (v7 != 2)
    {
      if (v7 == 3)
      {
        if (*(a1 + 23) != 3)
        {
          v11 = *a1;
          *(v11 + 40) = 11;
          result = (*v11)(a1);
        }

        v12 = *(a1 + 15);
        if (v12 == 3)
        {
          goto LABEL_61;
        }

        if (v12 != 2)
        {
          goto LABEL_67;
        }

        goto LABEL_35;
      }

LABEL_52:
      if (v7 == *(a1 + 15) && *(a1 + 23) == *(a1 + 14))
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

LABEL_36:
    if (*(a1 + 23) != 3)
    {
      v16 = *a1;
      *(v16 + 40) = 11;
      result = (*v16)(a1);
      v7 = *(a1 + 24);
    }

    if (*(a1 + 15) != v7)
    {
      v17 = *a1;
      *(v17 + 40) = 28;
      result = (*v17)(a1);
    }

    v18 = *(a1 + 85);
    if (v18 == 1)
    {
      v10 = rgb_rgb1_convert;
      goto LABEL_62;
    }

    if (!v18)
    {
      v10 = rgb_convert;
      goto LABEL_62;
    }

    goto LABEL_67;
  }

  if (v7 > 5)
  {
    if (v7 != 6)
    {
      if (v7 == 7)
      {
        if (*(a1 + 23) != 3)
        {
          v13 = *a1;
          *(v13 + 40) = 11;
          result = (*v13)(a1);
        }

        v14 = *(a1 + 15);
        if (v14 == 7)
        {
          goto LABEL_61;
        }

        if (v14 == 3)
        {
          v25 = a1[13];
          *(v25 + 148) = 1;
          *(v25 + 244) = 1;
          goto LABEL_61;
        }

        if (v14 != 2)
        {
          goto LABEL_67;
        }

        v15 = a1[13];
        *(v15 + 148) = 1;
        *(v15 + 244) = 1;
LABEL_35:
        *v3 = rgb_ycc_start;
        v10 = rgb_ycc_convert;
        goto LABEL_62;
      }

      goto LABEL_52;
    }

    goto LABEL_36;
  }

  if (v7 == 4)
  {
    if (*(a1 + 23) != 4)
    {
      v21 = *a1;
      *(v21 + 40) = 11;
      result = (*v21)(a1);
    }

    if (*(a1 + 15) == 4)
    {
      goto LABEL_61;
    }

LABEL_60:
    v22 = *a1;
    *(v22 + 40) = 28;
    result = (*v22)(a1);
LABEL_61:
    v10 = null_convert;
    goto LABEL_62;
  }

  if (*(a1 + 23) != 4)
  {
    v8 = *a1;
    *(v8 + 40) = 11;
    result = (*v8)(a1);
  }

  v9 = *(a1 + 15);
  if (v9 == 5)
  {
    goto LABEL_61;
  }

  if (v9 == 4)
  {
    *v3 = rgb_ycc_start;
    v10 = cmyk_ycck_convert;
LABEL_62:
    v3[1] = v10;
    return result;
  }

LABEL_67:
  v23 = *a1;
  *(v23 + 40) = 28;
  v24 = *v23;

  return v24(a1);
}

uint64_t grayscale_convert(uint64_t result, _BYTE **a2, void *a3, unsigned int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = *(result + 48);
    v6 = *(result + 56);
    do
    {
      if (v5)
      {
        v7 = *(*a3 + 8 * a4);
        v8 = *a2;
        v9 = v5;
        do
        {
          *v7++ = *v8;
          v8 += v6;
          --v9;
        }

        while (v9);
      }

      ++a2;
      ++a4;
    }

    while (a5-- >= 2);
  }

  return result;
}

void *rgb_ycc_start(uint64_t a1)
{
  v1 = *(a1 + 536);
  result = (**(a1 + 8))();
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *(v1 + 16) = result;
  v9 = 256;
  v10 = 0x8000;
  v11 = 8421375;
  do
  {
    result[512] = v10;
    result[1024] = v6;
    result[1792] = v8;
    v8 -= 5329;
    result[1536] = v7;
    v7 -= 27439;
    v6 -= 21710;
    result[768] = v5;
    v5 -= 11058;
    v10 += 7471;
    result[256] = v4;
    v4 += 38470;
    *result = v3;
    result[1280] = v11;
    ++result;
    v3 += 19595;
    v11 += 0x8000;
    --v9;
  }

  while (v9);
  return result;
}

uint64_t rgb_gray_convert(uint64_t result, unsigned __int8 **a2, void *a3, unsigned int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = *(*(result + 536) + 16);
    v6 = *(result + 48);
    do
    {
      if (v6)
      {
        v7 = *(*a3 + 8 * a4);
        v8 = *a2;
        v9 = v6;
        do
        {
          *v7++ = (*(v5 + 8 * v8[1] + 2048) + *(v5 + 8 * *v8) + *(v5 + 8 * v8[2] + 4096)) >> 16;
          v8 += 3;
          --v9;
        }

        while (v9);
      }

      ++a2;
      ++a4;
    }

    while (a5-- >= 2);
  }

  return result;
}

uint64_t rgb_convert(uint64_t result, _BYTE **a2, void *a3, unsigned int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = *(result + 48);
    do
    {
      if (v5)
      {
        v6 = *(*a3 + 8 * a4);
        v7 = *(a3[1] + 8 * a4);
        v8 = *(a3[2] + 8 * a4);
        v9 = *a2;
        v10 = v5;
        do
        {
          *v6++ = *v9;
          *v7++ = v9[1];
          *v8++ = v9[2];
          v9 += 3;
          --v10;
        }

        while (v10);
      }

      ++a2;
      ++a4;
    }

    while (a5-- >= 2);
  }

  return result;
}

uint64_t rgb_rgb1_convert(uint64_t result, _BYTE **a2, void *a3, unsigned int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = *(result + 48);
    do
    {
      if (v5)
      {
        v6 = *(*a3 + 8 * a4);
        v7 = *(a3[1] + 8 * a4);
        v8 = *(a3[2] + 8 * a4);
        v9 = *a2;
        v10 = v5;
        do
        {
          v11 = v9[1];
          v12 = v9[2];
          *v6++ = (*v9 - v11) ^ 0x80;
          *v7++ = v11;
          *v8++ = (v12 - v11) ^ 0x80;
          v9 += 3;
          --v10;
        }

        while (v10);
      }

      ++a2;
      ++a4;
    }

    while (a5-- >= 2);
  }

  return result;
}

uint64_t rgb_ycc_convert(uint64_t result, unsigned __int8 **a2, void *a3, unsigned int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = *(*(result + 536) + 16);
    v6 = *(result + 48);
    do
    {
      if (v6)
      {
        v7 = *(*a3 + 8 * a4);
        v8 = *(a3[1] + 8 * a4);
        v9 = *(a3[2] + 8 * a4);
        v10 = *a2;
        v11 = v6;
        do
        {
          v12 = v5 + 8 * *v10;
          v13 = (v5 + 8 * v10[1]);
          v14 = (v5 + 8 * v10[2]);
          *v7++ = (v13[512] + *v12 + v14[1024]) >> 16;
          v15 = v14[2560];
          result = (v13[2048] + *(v12 + 6144) + v15) >> 16;
          *v8++ = (v13[2048] + *(v12 + 6144) + v15) >> 16;
          *v9++ = (v13[3072] + *(v12 + 10240) + v14[3584]) >> 16;
          v10 += 3;
          --v11;
        }

        while (v11);
      }

      ++a2;
      ++a4;
    }

    while (a5-- >= 2);
  }

  return result;
}

uint64_t null_convert(uint64_t result, uint64_t *a2, uint64_t a3, unsigned int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = *(result + 48);
    v6 = *(result + 92);
    v7 = *(result + 92);
    do
    {
      if (v7 >= 1)
      {
        v8 = 0;
        do
        {
          if (v5)
          {
            v9 = *(*(a3 + 8 * v8) + 8 * a4);
            v10 = *a2;
            v11 = v5;
            do
            {
              *v9++ = *(v10 + v8);
              v10 += v6;
              --v11;
            }

            while (v11);
          }

          ++v8;
        }

        while (v8 != v6);
      }

      ++a2;
      ++a4;
    }

    while (a5-- > 1);
  }

  return result;
}

uint64_t cmyk_ycck_convert(uint64_t result, _BYTE **a2, void *a3, unsigned int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = *(*(result + 536) + 16);
    v6 = *(result + 48);
    do
    {
      if (v6)
      {
        v7 = *(*a3 + 8 * a4);
        v8 = *(a3[1] + 8 * a4);
        v9 = *(a3[2] + 8 * a4);
        v10 = *(a3[3] + 8 * a4);
        v11 = v6;
        v12 = *a2;
        do
        {
          v13 = ~*v12;
          v14 = v12[1] ^ 0xFF;
          v15 = v12[2] ^ 0xFF;
          *v10++ = v12[3];
          *v7++ = (*(v5 + 8 * (v14 | 0x100u)) + *(v5 + 8 * v13) + *(v5 + 8 * (v15 | 0x200u))) >> 16;
          *v8++ = (*(v5 + 8 * (v14 | 0x400u)) + *(v5 + 8 * (v13 | 0x300u)) + *(v5 + 8 * (v15 | 0x500u))) >> 16;
          v16 = v13 | 0x500;
          v17 = v14 | 0x600;
          result = *(v5 + 8 * v16);
          *v9++ = (*(v5 + 8 * v17) + result + *(v5 + 8 * (v15 | 0x700u))) >> 16;
          v12 += 4;
          --v11;
        }

        while (v11);
      }

      ++a2;
      ++a4;
    }

    while (a5-- >= 2);
  }

  return result;
}

void *_cg_jinit_c_prep_controller(uint64_t *a1, int a2)
{
  if (a2)
  {
    v3 = *a1;
    *(v3 + 40) = 3;
    (*v3)(a1);
  }

  result = (*a1[1])(a1, 1, 112);
  v5 = result;
  a1[64] = result;
  *result = start_pass_prep;
  if (*(a1[68] + 16))
  {
    result[1] = pre_process_context;
    v6 = *(a1 + 89);
    result = (*a1[1])(a1, 1, 8 * *(a1 + 23) * 5 * v6);
    if (*(a1 + 23) >= 1)
    {
      v7 = result;
      v8 = 0;
      v16 = (3 * v6);
      v9 = a1[13];
      do
      {
        v10 = (*(a1[1] + 16))(a1, 1, (*(a1 + 90) * *(v9 + 28) * *(a1 + 88)) / *(v9 + 8), v16);
        result = memcpy(&v7[v6], v10, 8 * v16);
        if (v6 >= 1)
        {
          v11 = v7;
          v12 = v6;
          do
          {
            *v11 = v10[(2 * v6)];
            v13 = *v10++;
            v11[(4 * v6)] = v13;
            ++v11;
            --v12;
          }

          while (v12);
        }

        v5[v8 + 2] = &v7[v6];
        v7 += 5 * v6;
        ++v8;
        v9 += 96;
      }

      while (v8 < *(a1 + 23));
    }
  }

  else
  {
    result[1] = pre_process_data;
    if (*(a1 + 23) >= 1)
    {
      v14 = 0;
      v15 = (a1[13] + 28);
      do
      {
        result = (*(a1[1] + 16))(a1, 1, (*(a1 + 90) * *v15 * *(a1 + 88)) / *(v15 - 5), *(a1 + 89));
        v5[v14++ + 2] = result;
        v15 += 24;
      }

      while (v14 < *(a1 + 23));
    }
  }

  return result;
}

void *start_pass_prep(void *result, int a2)
{
  v2 = result;
  v3 = result[64];
  if (a2)
  {
    v4 = *result;
    *(v4 + 40) = 3;
    result = (*v4)(result);
  }

  v5 = *(v2 + 13);
  v3[25] = 0;
  v3[26] = 0;
  v3[24] = v5;
  v3[27] = 2 * *(v2 + 89);
  return result;
}

char *pre_process_context(char *result, uint64_t a2, _DWORD *a3, unsigned int a4, uint64_t a5, unsigned int *a6, unsigned int a7)
{
  if (*a6 < a7)
  {
    v7 = a7;
    v9 = a4;
    v10 = result;
    v11 = *(result + 64);
    v35 = 3 * *(result + 89);
    v12 = v11 + 4;
    do
    {
      v13 = *a3;
      if (v9 <= v13)
      {
        if (v11[24])
        {
          return result;
        }

        v20 = v11[25];
        v21 = v11[27];
        if (v20 < v21)
        {
          v22 = *(v10 + 23);
          if (v22 >= 1)
          {
            for (i = 0; i < v22; ++i)
            {
              v24 = v11[25];
              v25 = v11[27];
              if (v24 < v25)
              {
                v26 = *&v12[2 * i];
                v27 = *(v10 + 12);
                v28 = v24 - 1;
                do
                {
                  _cg_jcopy_sample_rows(v26, v28, v26, v24++, 1, v27);
                }

                while (v25 != v24);
                v22 = *(v10 + 23);
              }
            }

            v21 = v11[27];
            v7 = a7;
            v9 = a4;
          }

          v11[25] = v21;
          v29 = *a6;
LABEL_28:
          result = (*(*(v10 + 68) + 8))(v10, v11 + 4, v11[26], a5, v29);
          ++*a6;
          v30 = *(v10 + 89);
          v31 = v11[25];
          v32 = v11[26] + v30;
          if (v32 >= v35)
          {
            v32 = 0;
          }

          v11[26] = v32;
          if (v31 >= v35)
          {
            v31 = 0;
            v11[25] = 0;
          }

          v11[27] = v31 + v30;
          LODWORD(v29) = *a6;
          continue;
        }
      }

      else
      {
        if (v11[27] - v11[25] >= v9 - v13)
        {
          v14 = v9 - v13;
        }

        else
        {
          v14 = v11[27] - v11[25];
        }

        result = (*(*(v10 + 67) + 8))(v10, a2 + 8 * v13, v11 + 4);
        if (v11[24] == *(v10 + 13))
        {
          v15 = *(v10 + 23);
          if (v15 >= 1)
          {
            v16 = 0;
            v17 = *(v10 + 89);
            do
            {
              if (v17 >= 1)
              {
                v18 = 0;
                v19 = -1;
                do
                {
                  result = _cg_jcopy_sample_rows(*&v12[2 * v16], 0, *&v12[2 * v16], v19, 1, *(v10 + 12));
                  v17 = *(v10 + 89);
                  ++v18;
                  --v19;
                }

                while (v18 < v17);
                v15 = *(v10 + 23);
              }

              ++v16;
            }

            while (v16 < v15);
          }
        }

        *a3 += v14;
        v20 = v11[25] + v14;
        v11[24] -= v14;
        v11[25] = v20;
        v21 = v11[27];
        v9 = a4;
      }

      v29 = *a6;
      if (v20 == v21)
      {
        goto LABEL_28;
      }
    }

    while (v29 < v7);
  }

  return result;
}

char *pre_process_data(char *result, uint64_t a2, unsigned int *a3, unsigned int a4, uint64_t a5, unsigned int *a6, unsigned int a7)
{
  v7 = *a3;
  if (*a3 < a4)
  {
    v8 = a7;
    v9 = a6;
    v10 = a5;
    v12 = result;
    v13 = *(result + 64);
    v38 = a4;
    do
    {
      if (*v9 >= v8)
      {
        return result;
      }

      if (*(v12 + 89) - *(v13 + 100) >= a4 - v7)
      {
        v14 = a4 - v7;
      }

      else
      {
        v14 = *(v12 + 89) - *(v13 + 100);
      }

      result = (*(*(v12 + 67) + 8))(v12, a2 + 8 * v7, v13 + 16);
      *a3 += v14;
      v15 = *(v13 + 100) + v14;
      v16 = *(v13 + 96) == v14;
      *(v13 + 96) -= v14;
      *(v13 + 100) = v15;
      v17 = *(v12 + 89);
      if (v16 && v15 < v17)
      {
        v19 = *(v12 + 23);
        if (v19 >= 1)
        {
          for (i = 0; i < v19; ++i)
          {
            v21 = *(v13 + 100);
            v22 = *(v12 + 89);
            if (v21 < v22)
            {
              v23 = *(v13 + 16 + 8 * i);
              v24 = *(v12 + 12);
              v25 = v21 - 1;
              do
              {
                _cg_jcopy_sample_rows(v23, v25, v23, v21++, 1, v24);
              }

              while (v22 != v21);
              v19 = *(v12 + 23);
            }
          }

          v17 = *(v12 + 89);
          v8 = a7;
          v10 = a5;
          v9 = a6;
        }

        *(v13 + 100) = v17;
      }

      else if (v15 != v17)
      {
        goto LABEL_23;
      }

      result = (*(*(v12 + 68) + 8))(v12, v13 + 16, 0, v10, *v9);
      *(v13 + 100) = 0;
      ++*v9;
LABEL_23:
      if (!*(v13 + 96) && *v9 < v8)
      {
        v26 = *(v12 + 23);
        if (v26 >= 1)
        {
          v27 = 0;
          v28 = *(v12 + 13);
          do
          {
            v29 = v28[10] * v28[3] / *(v12 + 91);
            v30 = *v9 * v29;
            if (v30 < (v29 * v8))
            {
              v31 = *(a5 + 8 * v27);
              v32 = (v28[9] * v28[7]);
              v33 = v30 - 1;
              v34 = v29 * (v8 - *v9);
              do
              {
                result = _cg_jcopy_sample_rows(v31, v33, v31, v30++, 1, v32);
                --v34;
              }

              while (v34);
              v26 = *(v12 + 23);
              v9 = a6;
            }

            ++v27;
            v28 += 24;
          }

          while (v27 < v26);
        }

        *v9 = v8;
        return result;
      }

      v7 = *a3;
      a4 = v38;
    }

    while (*a3 < v38);
  }

  return result;
}

uint64_t _cg_jpeg_idct_islow(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5)
{
  v76 = *MEMORY[0x1E69E9840];
  v73 = *(a1 + 440);
  v5 = (a3 + 64);
  v6 = v75;
  v7 = 9;
  memset(v75, 0, sizeof(v75));
  v8 = *(a2 + 88);
  do
  {
    v9 = *(v5 - 16);
    if (*(v5 - 24) | v9)
    {
      goto LABEL_9;
    }

    if (*(v5 - 8) || *v5 || v5[8] || v5[16] || v5[24])
    {
      v9 = 0;
LABEL_9:
      v10 = v8[32] * *v5;
      v11 = ((*v8 * *(v5 - 32)) << 13) | 0x400;
      v12 = v11 + (v10 << 13);
      v13 = v11 - (v10 << 13);
      v14 = v8[16] * v9;
      v15 = v8[48] * v5[16];
      v16 = 4433 * (v14 + v15);
      v17 = v16 + 6270 * v14;
      v18 = v16 - 15137 * v15;
      v19 = v17 + v12;
      v20 = v12 - v17;
      v21 = v18 + v13;
      v22 = v13 - v18;
      v23 = v8[56] * v5[24];
      v24 = v8[40] * v5[8];
      v25 = v8[24];
      v26 = v8[8] * *(v5 - 24);
      v27 = v23 + v25 * *(v5 - 8);
      v28 = 9633 * (v24 + v26 + v27);
      v29 = v28 - 16069 * v27;
      v30 = v28 - 3196 * (v24 + v26);
      v31 = -7373 * (v23 + v26);
      v32 = v31 + 2446 * v23 + v29;
      v33 = v31 + 12299 * v26 + v30;
      v34 = -20995 * (v24 + v25 * *(v5 - 8));
      v35 = v34 + 16819 * v24 + v30;
      v36 = v34 + 25172 * v25 * *(v5 - 8) + v29;
      *v6 = (v33 + v19) >> 11;
      v6[56] = (v19 - v33) >> 11;
      v6[8] = (v36 + v21) >> 11;
      v6[48] = (v21 - v36) >> 11;
      v6[16] = (v35 + v22) >> 11;
      v6[40] = (v22 - v35) >> 11;
      v6[24] = (v32 + v20) >> 11;
      v37 = (v20 - v32) >> 11;
      v38 = 32;
      goto LABEL_10;
    }

    LODWORD(v37) = 4 * *(v5 - 32) * *v8;
    *v6 = v37;
    v6[8] = v37;
    v6[16] = v37;
    v6[24] = v37;
    v6[32] = v37;
    v6[40] = v37;
    v6[48] = v37;
    v38 = 56;
LABEL_10:
    v6[v38] = v37;
    ++v6;
    ++v8;
    --v7;
    ++v5;
  }

  while (v7 > 1);
  v39 = 0;
  v40 = v73 - 384;
  result = 4294959923;
  do
  {
    v42 = &v75[v39];
    v43 = (*a4 + a5);
    v44 = DWORD1(v75[v39]);
    v45 = SLODWORD(v75[v39]) + 16400;
    v46 = DWORD2(v75[v39]);
    if (v44)
    {
      v47 = 0;
    }

    else
    {
      v47 = v46 == 0;
    }

    if (!v47)
    {
      goto LABEL_24;
    }

    if (v42[3] || LODWORD(v75[v39 + 1]) || DWORD1(v75[v39 + 1]) || DWORD2(v75[v39 + 1]) || HIDWORD(v75[v39 + 1]))
    {
      LODWORD(v46) = 0;
LABEL_24:
      v49 = v42[3];
      v48 = v42[4];
      v50 = v45 + v48;
      v51 = (v45 + v48) << 13;
      v52 = v45 - v48;
      v54 = v42[5];
      v53 = v42[6];
      v55 = 4433 * (v53 + v46);
      v56 = v55 + 6270 * v46;
      v57 = v55 - 15137 * v53;
      v58 = v56 + (v50 << 13);
      v59 = v51 - v56;
      v60 = v57 + (v52 << 13);
      v61 = (v52 << 13) - v57;
      v62 = v42[7];
      v63 = 9633 * (v49 + v62 + v54 + v44);
      v64 = v63 - 16069 * (v49 + v62);
      v65 = v63 - 3196 * (v54 + v44);
      v66 = -7373 * (v62 + v44);
      v67 = v66 + 12299 * v44 + v65;
      *v43 = *(v40 + (((v67 + v58) >> 18) & 0x3FF));
      v68 = (v58 - v67);
      v69 = -20995 * (v49 + v54);
      v70 = v69 + 25172 * v49 + v64;
      v43[7] = *(v40 + ((v68 >> 18) & 0x3FF));
      v43[1] = *(v40 + (((v70 + v60) >> 18) & 0x3FF));
      v71 = v69 + 16819 * v54 + v65;
      v43[6] = *(v40 + (((v60 - v70) >> 18) & 0x3FF));
      v43[2] = *(v40 + (((v71 + v61) >> 18) & 0x3FF));
      LODWORD(v68) = v66 + 2446 * v62 + v64;
      v43[5] = *(v40 + (((v61 - v71) >> 18) & 0x3FF));
      v43[3] = *(v40 + (((v68 + v59) >> 18) & 0x3FF));
      LOBYTE(v71) = *(v40 + (((v59 - v68) >> 18) & 0x3FF));
      v72 = 4;
      goto LABEL_25;
    }

    v71 = *(v40 + ((v45 >> 5) & 0x3FF));
    *v43 = vdup_n_s8(v71).u32[0];
    v43[4] = v71;
    v43[5] = v71;
    v43[6] = v71;
    v72 = 7;
LABEL_25:
    v43[v72] = v71;
    ++a4;
    v39 += 2;
  }

  while (v39 != 16);
  return result;
}

uint64_t jpeg_idct_7x7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5)
{
  v5 = 0;
  v65 = *MEMORY[0x1E69E9840];
  v61 = *(a1 + 440);
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  v6 = *(a2 + 88);
  do
  {
    v7 = v63 + v5;
    v8 = (v6 + 4 * v5);
    v9 = (a3 + 2 * v5);
    v10 = ((*v8 * *v9) << 13) | 0x400;
    v11 = v8[16] * v9[16];
    v12 = v8[32] * v9[32];
    v13 = v8[48] * v9[48];
    v14 = 7223 * (v12 - v13);
    v15 = 2578 * (v11 - v12);
    v16 = v10 - 15083 * v12 + v15 + v14;
    v17 = v10 + 10438 * (v11 + v13);
    v18 = v14 - 637 * v13 + v17;
    v19 = v15 - 20239 * v11 + v17;
    v20 = v10 + 11585 * (v12 - (v11 + v13));
    v21 = v8[8] * v9[8];
    v22 = v8[24] * v9[24];
    v23 = v8[40] * v9[40];
    v24 = 7663 * (v21 + v22);
    v25 = 1395 * (v21 - v22);
    v26 = v24 - v25;
    v27 = v24 + v25 - 11295 * (v22 + v23);
    v28 = 5027 * (v21 + v23);
    v29 = v28 + v26;
    v30 = v28 + 15326 * v23 - 11295 * (v22 + v23);
    *v7 = (v29 + v18) >> 11;
    v7[42] = (v18 - v29) >> 11;
    v7[7] = (v27 + v16) >> 11;
    v7[35] = (v16 - v27) >> 11;
    v7[14] = (v30 + v19) >> 11;
    v7[28] = (v19 - v30) >> 11;
    v7[21] = v20 >> 11;
    ++v5;
  }

  while (v5 != 7);
  v31 = 0;
  v32 = v61 - 384;
  result = 11585;
  do
  {
    v34 = *a4++;
    v35 = *(v63 + v31 + 4);
    v36 = (*(v63 + v31) << 13) + 134348800;
    v38 = *(&v63[1] + v31 + 4);
    v37 = *(&v63[1] + v31 + 8);
    v39 = *(&v63[1] + v31);
    v40 = 7223 * (v39 - v37);
    v42 = *(v63 + v31 + 8);
    v41 = *(v63 + v31 + 12);
    v43 = 2578 * (v42 - v39);
    v44 = v43 + v40;
    v45 = v37 + v42;
    v46 = v40 - 637 * v37;
    v47 = 7663 * (v41 + v35);
    v48 = v43 - 20239 * v42;
    v49 = 1395 * (v35 - v41);
    v50 = v47 - v49;
    v51 = v47 + v49;
    v52 = v36 + 10438 * v45;
    v53 = v46 + v52;
    v54 = 5027 * (v38 + v35);
    v55 = v50 + v54;
    v56 = v36 - 15083 * v39 + v44;
    v57 = (v34 + a5);
    *v57 = *(v32 + (((v55 + v53) >> 18) & 0x3FF));
    v58 = -11295 * (v38 + v41);
    v59 = v51 + v58;
    v57[6] = *(v32 + (((v53 - v55) >> 18) & 0x3FF));
    v60 = v54 + 15326 * v38 + v58;
    v57[1] = *(v32 + (((v59 + v56) >> 18) & 0x3FF));
    v57[5] = *(v32 + (((v56 - v59) >> 18) & 0x3FF));
    v57[2] = *(v32 + (((v60 + v48 + v52) >> 18) & 0x3FF));
    v57[4] = *(v32 + (((v48 + v52 - v60) >> 18) & 0x3FF));
    v57[3] = *(v32 + (((v36 + 11585 * (v39 - v45)) >> 18) & 0x3FF));
    v31 += 28;
  }

  while (v31 != 196);
  return result;
}

uint64_t jpeg_idct_6x6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5)
{
  v5 = 0;
  v44 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 440);
  memset(v43, 0, sizeof(v43));
  v7 = *(a2 + 88);
  do
  {
    v8 = v43 + v5;
    v9 = (v7 + 4 * v5);
    v10 = (a3 + 2 * v5);
    v11 = ((*v9 * *v10) << 13) | 0x400;
    v12 = v9[32] * v10[32];
    v13 = v11 + 5793 * v12;
    v14 = (v11 - 11586 * v12) >> 11;
    v15 = 10033 * v9[16] * v10[16];
    v16 = v15 + v13;
    v17 = v13 - v15;
    v18 = v9[8] * v10[8];
    v19 = v9[24] * v10[24];
    v20 = v9[40] * v10[40];
    v21 = 2998 * (v18 + v20);
    v22 = v21 + ((v18 + v19) << 13);
    v23 = v21 + ((v20 - v19) << 13);
    LODWORD(v18) = v18 - (v19 + v20);
    *v8 = (v22 + v16) >> 11;
    v8[30] = (v16 - v22) >> 11;
    v8[6] = v14 + 4 * v18;
    v8[24] = v14 - 4 * v18;
    v8[12] = (v23 + v17) >> 11;
    v8[18] = (v17 - v23) >> 11;
    ++v5;
  }

  while (v5 != 6);
  v24 = 0;
  v25 = v6 - 384;
  v26 = a5;
  do
  {
    v27 = *a4++;
    v28 = (v27 + v26);
    v29 = *(v43 + v24 + 4);
    v30 = *(&v43[1] + v24);
    v31 = *(&v43[1] + v24 + 4);
    v32 = (*(v43 + v24) << 13) + 134348800;
    v33 = v32 + 5793 * v30;
    v34 = *(v43 + v24 + 12);
    v35 = 10033 * *(v43 + v24 + 8);
    v36 = 2998 * (v31 + v29);
    v37 = v36 + ((v34 + v29) << 13);
    v38 = v31 - v34;
    v39 = v29 - (v34 + v31);
    v40 = v32 - 11586 * v30;
    *v28 = *(v25 + (((v37 + v33 + v35) >> 18) & 0x3FF));
    v41 = v36 + (v38 << 13);
    v28[5] = *(v25 + (((v33 + v35 - v37) >> 18) & 0x3FF));
    v28[1] = *(v25 + (((v40 + (v39 << 13)) >> 18) & 0x3FF));
    v28[4] = *(v25 + (((v40 - (v39 << 13)) >> 18) & 0x3FF));
    v28[2] = *(v25 + (((v41 + v33 - v35) >> 18) & 0x3FF));
    result = *(v25 + (((v33 - v35 - v41) >> 18) & 0x3FF));
    v28[3] = result;
    v24 += 24;
  }

  while (v24 != 144);
  return result;
}

uint64_t jpeg_idct_5x5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5)
{
  v5 = 0;
  v45 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 440);
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v7 = *(a2 + 88);
  do
  {
    v8 = v43 + v5;
    v9 = (v7 + 4 * v5);
    v10 = (a3 + 2 * v5);
    v11 = ((*v9 * *v10) << 13) | 0x400;
    v12 = v9[16] * v10[16];
    v13 = v9[32];
    v14 = 6476 * (v12 + v13 * v10[32]);
    v15 = v12 - v13 * v10[32];
    v16 = v11 + 2896 * v15;
    v17 = v16 + v14;
    v18 = v16 - v14;
    v19 = v11 + 0x7FFFFFFD2C0 * v15;
    v20 = v9[8] * v10[8];
    v21 = v9[24] * v10[24];
    v22 = 6810 * (v20 + v21);
    v23 = v22 + 4209 * v20;
    v24 = v22 - 17828 * v21;
    *v8 = (v23 + v17) >> 11;
    v8[20] = (v17 - v23) >> 11;
    v8[5] = (v24 + v18) >> 11;
    v8[15] = (v18 - v24) >> 11;
    v8[10] = v19 >> 11;
    ++v5;
  }

  while (v5 != 5);
  v25 = 0;
  v26 = v6 - 384;
  result = a5;
  do
  {
    v28 = *a4++;
    v29 = *(v43 + v25 + 4);
    v30 = (v28 + result);
    v31 = (*(v43 + v25) << 13) + 134348800;
    v32 = *(v43 + v25 + 8);
    v33 = *(v43 + v25 + 12);
    v34 = *(&v43[1] + v25);
    v35 = 6476 * (v34 + v32);
    v36 = v32 - v34;
    v37 = v31 + 2896 * v36;
    v38 = 6810 * (v33 + v29);
    v39 = v37 + v35;
    v40 = v38 + 4209 * v29;
    v41 = v38 - 17828 * v33;
    *v30 = *(v26 + (((v40 + v37 + v35) >> 18) & 0x3FF));
    v42 = v37 - v35;
    v30[4] = *(v26 + (((v39 - v40) >> 18) & 0x3FF));
    v30[1] = *(v26 + (((v41 + v42) >> 18) & 0x3FF));
    v30[3] = *(v26 + (((v42 - v41) >> 18) & 0x3FF));
    v30[2] = *(v26 + (((v31 + 268423872 * v36) >> 18) & 0x3FF));
    v25 += 20;
  }

  while (v25 != 100);
  return result;
}

uint64_t _cg_jpeg_idct_4x4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5)
{
  v5 = 0;
  v39 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 440);
  memset(v38, 0, sizeof(v38));
  v7 = *(a2 + 88);
  do
  {
    v8 = v38 + v5;
    v9 = (v7 + 4 * v5);
    v10 = (a3 + 2 * v5);
    v11 = *v9 * *v10;
    v12 = v9[16] * v10[16];
    v13 = v12 + v11;
    v14 = 4 * (v12 + v11);
    v15 = v11 - v12;
    v16 = v9[8] * v10[8];
    v17 = v9[24] * v10[24];
    v18 = 4433 * (v16 + v17) + 1024;
    v19 = (v18 + 6270 * v16) >> 11;
    v20 = (v18 - 15137 * v17) >> 11;
    *v8 = v19 + 4 * v13;
    v8[12] = v14 - v19;
    v8[4] = v20 + 4 * v15;
    v8[8] = 4 * v15 - v20;
    ++v5;
  }

  while (v5 != 4);
  v21 = 0;
  v22 = v6 - 384;
  v23 = a5;
  do
  {
    v24 = *a4++;
    v25 = (v24 + v23);
    v26 = DWORD1(v38[v21]);
    v27 = DWORD2(v38[v21]);
    v28 = HIDWORD(v38[v21]);
    v29 = LODWORD(v38[v21]) + 16400;
    v30 = v29 + v27;
    v31 = (v29 + v27) << 13;
    v32 = v29 - v27;
    v33 = 4433 * (v28 + v26);
    v34 = v32 << 13;
    v35 = v33 + 6270 * v26;
    v36 = v33 - 15137 * v28;
    *v25 = *(v22 + (((v35 + (v30 << 13)) >> 18) & 0x3FF));
    v25[3] = *(v22 + (((v31 - v35) >> 18) & 0x3FF));
    result = *(v22 + (((v36 + (v32 << 13)) >> 18) & 0x3FF));
    v25[1] = result;
    v25[2] = *(v22 + (((v34 - v36) >> 18) & 0x3FF));
    ++v21;
  }

  while (v21 != 4);
  return result;
}

uint64_t jpeg_idct_3x3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5)
{
  v5 = 0;
  v27 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 440);
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v7 = *(a2 + 88);
  do
  {
    v8 = v25 + v5;
    v9 = (v7 + 4 * v5);
    v10 = (a3 + 2 * v5);
    v11 = ((*v9 * *v10) << 13) | 0x400;
    v12 = v9[16] * v10[16];
    v13 = v11 + 5793 * v12;
    v14 = 10033 * v9[8] * v10[8];
    *v8 = (v14 + v13) >> 11;
    v8[6] = (v13 - v14) >> 11;
    v8[3] = (v11 + 0x7FFFFFFD2BELL * v12) >> 11;
    ++v5;
  }

  while (v5 != 3);
  v15 = 0;
  v16 = v6 - 384;
  do
  {
    v17 = *a4++;
    v18 = (v17 + a5);
    v19 = (*(v25 + v15) << 13) + 134348800;
    v20 = *(v25 + v15 + 8);
    v21 = v19 + 5793 * v20;
    v22 = (v19 + 268423870 * v20);
    v23 = 10033 * *(v25 + v15 + 4);
    *v18 = *(v16 + (((v21 + v23) >> 18) & 0x3FF));
    result = *(v16 + (((v21 - v23) >> 18) & 0x3FF));
    v18[2] = result;
    v18[1] = *(v16 + ((v22 >> 18) & 0x3FF));
    v15 += 12;
  }

  while (v15 != 36);
  return result;
}

uint64_t _cg_jpeg_idct_2x2(uint64_t result, uint64_t a2, unsigned __int16 *a3, void *a4, unsigned int a5)
{
  v5 = *(result + 440) - 384;
  v6 = *(a2 + 88);
  v7 = *v6 * *a3 + 4100;
  v8 = v6[8] * a3[8];
  v9 = v8 + v7;
  v10 = v7 - v8;
  v11 = v6[1] * a3[1];
  LODWORD(v6) = v6[9] * a3[9];
  v12 = v6 + v11;
  LODWORD(v6) = v11 - v6;
  v13 = (*a4 + a5);
  *v13 = *(v5 + (((v12 + v9) >> 3) & 0x3FF));
  v13[1] = *(v5 + (((v9 - v12) >> 3) & 0x3FF));
  v14 = (a4[1] + a5);
  *v14 = *(v5 + (((v6 + v10) >> 3) & 0x3FF));
  v14[1] = *(v5 + (((v10 - v6) >> 3) & 0x3FF));
  return result;
}

uint64_t jpeg_idct_9x9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = 0;
  v74 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 440);
  memset(v73, 0, sizeof(v73));
  v7 = *(a2 + 88);
  do
  {
    v8 = (v7 + 4 * v5);
    v9 = (a3 + 2 * v5);
    v10 = v8[16] * v9[16];
    v11 = ((*v8 * *v9) << 13) | 0x400;
    v12 = v8[32];
    v13 = v8[48] * v9[48];
    v14 = v11 + 5793 * v13;
    v15 = v11 - 11586 * v13;
    v16 = v8[8] * v9[8];
    v17 = v8[40] * v9[40];
    v18 = v16 + v17;
    v19 = v16 - v17;
    v20 = v8[56];
    v21 = v16 + v20 * v9[56];
    v22 = v17 - v20 * v9[56];
    v23 = v19 - v20 * v9[56];
    v24 = v10 - v12 * v9[32];
    v25 = v15 + 5793 * v24;
    v26 = v15 + 0x7FFFFFFD2BELL * v24;
    v27 = v12 * v9[32];
    v28 = 10887 * (v10 + v27);
    v10 *= 8875;
    v29 = 2012 * v27;
    v30 = v28 - 2012 * v27 + v14;
    v31 = v14 - v28 + v10;
    v32 = v14 - v10 + v29;
    v33 = -10033 * v8[24] * v9[24];
    v22 *= 11409;
    v18 *= 7447;
    v34 = v33 - v22 + v18;
    v35 = v18 - v33;
    v36 = v22 + v33;
    v37 = v73 + v5;
    v38 = v35 + 3962 * v21;
    v39 = v36 + 3962 * v21;
    *v37 = (v38 + v30) >> 11;
    v23 *= 10033;
    v37[64] = (v30 - v38) >> 11;
    v37[8] = (v23 + v25) >> 11;
    v37[56] = (v25 - v23) >> 11;
    v37[16] = (v34 + v31) >> 11;
    v37[48] = (v31 - v34) >> 11;
    v37[24] = (v39 + v32) >> 11;
    v37[40] = (v32 - v39) >> 11;
    v37[32] = v26 >> 11;
    ++v5;
  }

  while (v5 != 8);
  v40 = 0;
  v41 = v6 - 384;
  result = 4294957263;
  do
  {
    v43 = &v73[v40];
    v44 = v43[1];
    v45 = v43[6];
    v46 = v43[7];
    v47 = (*v43 << 13) + 134348800;
    v48 = v47 + 5793 * v45;
    v49 = v43[2];
    v50 = v43[3];
    v51 = v43[4];
    v52 = v43[5];
    LODWORD(v43) = v47 - 11586 * v45;
    v53 = v49 - v51;
    v54 = v43 + 5793 * (v49 - v51);
    v55 = 10887 * (v51 + v49);
    v49 *= 8875;
    v56 = (v43 + 268423870 * v53);
    v57 = 2012 * v51;
    v58 = v55 - 2012 * v51 + v48;
    v59 = v48 - v55;
    v60 = v48 - v49;
    v61 = v59 + v49;
    v50 *= -10033;
    v62 = 7447 * (v52 + v44);
    v63 = 3962 * (v46 + v44);
    v64 = v60 + v57;
    v65 = v62 - v50 + v63;
    v66 = v52 - v46;
    v67 = v44 - (v52 + v46);
    v68 = (*(a4 + v40 * 4) + a5);
    *v68 = *(v41 + (((v65 + v58) >> 18) & 0x3FF));
    v67 *= 10033;
    v68[8] = *(v41 + (((v58 - v65) >> 18) & 0x3FF));
    v68[1] = *(v41 + (((v67 + v54) >> 18) & 0x3FF));
    v66 *= 11409;
    LOBYTE(v67) = *(v41 + (((v54 - v67) >> 18) & 0x3FF));
    v69 = v50 - v66 + v62;
    v68[7] = v67;
    v68[2] = *(v41 + (((v69 + v61) >> 18) & 0x3FF));
    v70 = v66 + v50 + v63;
    v68[6] = *(v41 + (((v61 - v69) >> 18) & 0x3FF));
    v68[3] = *(v41 + (((v70 + v64) >> 18) & 0x3FF));
    v68[5] = *(v41 + (((v64 - v70) >> 18) & 0x3FF));
    v68[4] = *(v41 + ((v56 >> 18) & 0x3FF));
    v40 += 2;
  }

  while (v40 != 18);
  return result;
}

uint64_t jpeg_idct_10x10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = 0;
  v72 = *MEMORY[0x1E69E9840];
  v68 = *(a1 + 440);
  memset(v71, 0, sizeof(v71));
  v6 = *(a2 + 88);
  do
  {
    v7 = (v6 + 4 * v5);
    v8 = (a3 + 2 * v5);
    v9 = ((*v7 * *v8) << 13) | 0x400;
    v10 = v7[32] * v8[32];
    v11 = v9 + 9373 * v10;
    v12 = v9 - 3580 * v10;
    v13 = v9 - 11586 * v10;
    v14 = v7[16] * v8[16];
    v15 = v7[48] * v8[48];
    v16 = 6810 * (v14 + v15);
    v17 = v16 + 4209 * v14;
    v18 = v16 - 17828 * v15;
    v19 = v17 + v11;
    v20 = v11 - v17;
    v21 = v18 + v12;
    v22 = v12 - v18;
    v23 = v7[8] * v8[8];
    v24 = v7[24] * v8[24];
    v25 = v7[40] * v8[40];
    LODWORD(v8) = v8[56];
    LODWORD(v7) = v7[56];
    v26 = v24 + v7 * v8;
    v27 = v24 - v7 * v8;
    v28 = 2531 * v27 + (v25 << 13);
    v29 = 7791 * v26 + 11443 * v23 + v28;
    v30 = 1812 * v23 - 7791 * v26 + v28;
    v31 = 4815 * v26;
    v32 = -6627 * v27 + (v25 << 13);
    LODWORD(v27) = v23 - v25 - v27;
    v33 = 10323 * v23 - (v31 + v32);
    v34 = 5260 * v23 - v31;
    v35 = v71 + v5;
    v36 = v34 + v32;
    *v35 = (v29 + v19) >> 11;
    v35[72] = (v19 - v29) >> 11;
    v35[8] = (v33 + v21) >> 11;
    v35[64] = (v21 - v33) >> 11;
    v35[16] = (v13 >> 11) + 4 * v27;
    v35[56] = (v13 >> 11) - 4 * v27;
    v35[24] = (v36 + v22) >> 11;
    v35[48] = (v22 - v36) >> 11;
    v35[32] = (v30 + v20) >> 11;
    v35[40] = (v20 - v30) >> 11;
    ++v5;
  }

  while (v5 != 8);
  v37 = 0;
  v38 = v68 - 384;
  result = 2531;
  do
  {
    v40 = &v71[v37];
    v41 = v40[1];
    v42 = v40[4];
    v43 = v40[5];
    v44 = (*v40 << 13) + 134348800;
    v45 = v44 + 9373 * v42;
    v46 = v44 - 3580 * v42;
    v47 = v40[2];
    v48 = v40[3];
    v49 = v44 - 11586 * v42;
    v50 = v40[6];
    LODWORD(v40) = v40[7];
    v51 = 6810 * (v50 + v47);
    v52 = v51 + 4209 * v47;
    v53 = v51 - 17828 * v50;
    v54 = v52 + v45;
    v55 = v45 - v52;
    v56 = v53 + v46;
    v57 = v40 + v48;
    LODWORD(v40) = v48 - v40;
    v58 = v46 - v53;
    v59 = 2531 * v40 + (v43 << 13);
    v60 = 7791 * v57 + 11443 * v41 + v59;
    v61 = (*(a4 + v37 * 4) + a5);
    v62 = 1812 * v41 - 7791 * v57 + v59;
    v63 = 4815 * v57;
    v64 = (v60 + v54);
    v65 = (v54 - v60);
    v66 = -6627 * v40 + (v43 << 13);
    *v61 = *(v38 + ((v64 >> 18) & 0x3FF));
    LODWORD(v64) = 10323 * v41 - (v63 + v66);
    v61[9] = *(v38 + ((v65 >> 18) & 0x3FF));
    LODWORD(v40) = v41 - v43 - v40;
    v61[1] = *(v38 + (((v64 + v56) >> 18) & 0x3FF));
    v61[8] = *(v38 + (((v56 - v64) >> 18) & 0x3FF));
    v61[2] = *(v38 + (((v49 + (v40 << 13)) >> 18) & 0x3FF));
    v67 = 5260 * v41 - v63 + v66;
    v61[7] = *(v38 + (((v49 - (v40 << 13)) >> 18) & 0x3FF));
    v61[3] = *(v38 + (((v67 + v58) >> 18) & 0x3FF));
    v61[6] = *(v38 + (((v58 - v67) >> 18) & 0x3FF));
    v61[4] = *(v38 + (((v62 + v55) >> 18) & 0x3FF));
    v61[5] = *(v38 + (((v55 - v62) >> 18) & 0x3FF));
    v37 += 2;
  }

  while (v37 != 20);
  return result;
}

uint64_t jpeg_idct_11x11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = 0;
  v82 = *MEMORY[0x1E69E9840];
  v78 = *(a1 + 440);
  memset(v81, 0, sizeof(v81));
  v6 = *(a2 + 88);
  do
  {
    v7 = (v6 + 4 * v5);
    v8 = (a3 + 2 * v5);
    v9 = *v7 * *v8;
    v10 = v7[16] * v8[16];
    v11 = v7[32] * v8[32];
    v12 = v7[48] * v8[48];
    v13 = v7[8] * v8[8];
    v14 = v7[24] * v8[24];
    v15 = v7[40] * v8[40];
    v16 = v7[56] * v8[56];
    v17 = v10 + v12 - v11;
    v18 = v13 + v16;
    v19 = 3264 * (v13 + v14 + v15 + v16);
    v20 = 7274 * (v13 + v14);
    v21 = 5492 * (v13 + v15);
    v22 = v20 - 7562 * v13 + v21;
    v23 = v19 - 9527 * (v14 + v15);
    v24 = v21 - 9766 * v15 + v23;
    v25 = v20 + 16984 * v14 - 14731 * (v14 + v16) + v23;
    v26 = v19 + 3000 * v18;
    v27 = v22 + v26;
    v28 = -14731 * (v14 + v16) + 17223 * v16 + v26;
    v29 = v81 + v5;
    v30 = (v9 << 13) | 0x400;
    v31 = -12019 * v14 + 8203 * v15;
    v32 = v30 + 11116 * v17;
    v33 = 20862 * (v11 - v12);
    v34 = v32 + 3529 * (v11 - v10);
    v35 = v32 + v33;
    v36 = v31 - 13802 * v16 + v19;
    v37 = v34 - 14924 * v11 + v33;
    v38 = v35 + 17333 * v12;
    *v29 = (v27 + v38) >> 11;
    v29[80] = (v38 - v27) >> 11;
    v39 = v32 - 9467 * (v10 + v12);
    v29[8] = (v25 + v37) >> 11;
    v40 = -11395 * v10 + 15929 * v11 + v39;
    v41 = v39 - 6461 * v12;
    v29[16] = (v24 + v41) >> 11;
    v29[64] = (v41 - v24) >> 11;
    v29[72] = (v37 - v25) >> 11;
    v42 = v34 - 12399 * v10;
    v29[24] = (v28 + v42) >> 11;
    v29[56] = (v42 - v28) >> 11;
    v29[32] = (v36 + v40) >> 11;
    v29[48] = (v40 - v36) >> 11;
    v29[40] = (v30 + 0x7FFFFFFD2BFLL * v17) >> 11;
    ++v5;
  }

  while (v5 != 8);
  v43 = 0;
  v44 = v78 - 384;
  do
  {
    v45 = &v81[v43];
    v46 = v45[1];
    v47 = (*(a4 + v43 * 4) + a5);
    v48 = (*v45 << 13) + 134348800;
    v50 = v45[4];
    v49 = v45[5];
    v51 = v45[6];
    v52 = v45[7];
    v53 = 20862 * (v50 - v51);
    v54 = v45[2];
    v55 = v45[3];
    v56 = v51 + v54 - v50;
    v57 = v48 + 11116 * v56;
    LODWORD(v45) = v57 + 3529 * (v50 - v54);
    v58 = v45 - 14924 * v50;
    v59 = v57 + v53 + 17333 * v51;
    v60 = v45 - 12399 * v54;
    v61 = v57 - 9467 * (v51 + v54);
    v62 = -11395 * v54 + 15929 * v50;
    v63 = (v48 + 268423871 * v56);
    v64 = v61 - 6461 * v51;
    v65 = 3264 * (v55 + v46 + v49 + v52);
    v66 = 7274 * (v55 + v46);
    v67 = v62 + v61;
    v68 = 5492 * (v49 + v46);
    v69 = v65 + 3000 * (v52 + v46);
    v70 = v58 + v53;
    v71 = v66 - 7562 * v46 + v68 + v69;
    *v47 = *(v44 + (((v71 + v59) >> 18) & 0x3FF));
    v72 = v65 - 9527 * (v49 + v55);
    v73 = v68 - 9766 * v49 + v72;
    v74 = v66 + 16984 * v55 - 14731 * (v52 + v55) + v72;
    v47[10] = *(v44 + (((v59 - v71) >> 18) & 0x3FF));
    v47[1] = *(v44 + (((v74 + v70) >> 18) & 0x3FF));
    LOBYTE(v71) = *(v44 + (((v70 - v74) >> 18) & 0x3FF));
    v75 = -14731 * (v52 + v55) + 17223 * v52 + v69;
    v47[9] = v71;
    v47[2] = *(v44 + (((v73 + v64) >> 18) & 0x3FF));
    result = *(v44 + (((v64 - v73) >> 18) & 0x3FF));
    v47[8] = result;
    v47[3] = *(v44 + (((v75 + v60) >> 18) & 0x3FF));
    v77 = -12019 * v55 + 8203 * v49 - 13802 * v52 + v65;
    v47[7] = *(v44 + (((v60 - v75) >> 18) & 0x3FF));
    v47[4] = *(v44 + (((v77 + v67) >> 18) & 0x3FF));
    v47[6] = *(v44 + (((v67 - v77) >> 18) & 0x3FF));
    v47[5] = *(v44 + ((v63 >> 18) & 0x3FF));
    v43 += 2;
  }

  while (v43 != 22);
  return result;
}

uint64_t jpeg_idct_12x12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = 0;
  v81 = *MEMORY[0x1E69E9840];
  v77 = *(a1 + 440);
  memset(v80, 0, sizeof(v80));
  v6 = *(a2 + 88);
  do
  {
    v7 = (v6 + 4 * v5);
    v8 = (a3 + 2 * v5);
    v9 = ((*v7 * *v8) << 13) | 0x400;
    v10 = 10033 * v7[32] * v8[32];
    v11 = v10 + v9;
    v12 = v9 - v10;
    v13 = v7[16] * v8[16];
    v14 = v7[48] * v8[48];
    v15 = v9 + ((v13 - v14) << 13);
    v16 = v9 - ((v13 - v14) << 13);
    v17 = 11190 * v13 + (v14 << 13);
    v18 = v17 + v11;
    v19 = v11 - v17;
    v20 = 2998 * v13 - (v14 << 13);
    v21 = v20 + v12;
    v22 = v12 - v20;
    v23 = v7[8] * v8[8];
    v24 = v7[24] * v8[24];
    v25 = v7[40] * v8[40];
    LODWORD(v8) = v8[56];
    LODWORD(v7) = v7[56];
    v26 = 10703 * v24;
    v27 = -4433 * v24;
    v28 = 7053 * (v23 + v25 + v7 * v8);
    v29 = v28 + 2139 * (v23 + v25);
    v30 = v24 - v25;
    v31 = v26 + 2295 * v23 + v29;
    v32 = -8565 * (v25 + v7 * v8);
    v33 = v27 - 12112 * v25 - 8565 * (v25 + v7 * v8) + v29;
    v34 = v7 * v8;
    v35 = 12998 * v34 - v26 + v32;
    v36 = v23 - v34;
    v37 = v27 - 5540 * v23 - 16244 * v34;
    v38 = v80 + v5;
    v39 = v35 + v28;
    v40 = v37 + v28;
    v41 = 4433 * (v36 + v30);
    v42 = v41 + 6270 * v36;
    v43 = v41 - 15137 * v30;
    *v38 = (v31 + v18) >> 11;
    v38[88] = (v18 - v31) >> 11;
    v38[8] = (v42 + v15) >> 11;
    v38[80] = (v15 - v42) >> 11;
    v38[16] = (v33 + v21) >> 11;
    v38[72] = (v21 - v33) >> 11;
    v38[24] = (v39 + v22) >> 11;
    v38[64] = (v22 - v39) >> 11;
    v38[32] = (v43 + v16) >> 11;
    v38[56] = (v16 - v43) >> 11;
    v38[40] = (v40 + v19) >> 11;
    v38[48] = (v19 - v40) >> 11;
    ++v5;
  }

  while (v5 != 8);
  v44 = 0;
  v45 = v77 - 384;
  do
  {
    v46 = &v80[v44];
    v47 = v46[1];
    v48 = (*v46 << 13) + 134348800;
    v49 = v46[5];
    v50 = 10033 * v46[4];
    v52 = v46[2];
    v51 = v46[3];
    v53 = v46[6];
    v54 = v46[7];
    v55 = v48 - v50;
    v56 = v48 + ((v52 - v53) << 13);
    v57 = v48 - ((v52 - v53) << 13);
    LODWORD(v46) = 11190 * v52 + (v53 << 13);
    v58 = v46 + v48 + v50;
    v59 = v48 + v50 - v46;
    v60 = 2998 * v52 - (v53 << 13);
    v61 = 10703 * v51;
    v62 = -4433 * v51;
    LODWORD(v46) = v60 + v55;
    v63 = 7053 * (v49 + v47 + v54);
    v64 = v63 + 2139 * (v49 + v47);
    v65 = v55 - v60;
    v66 = 10703 * v51 + 2295 * v47 + v64;
    result = (-8565 * (v54 + v49));
    v68 = -4433 * v51 - 12112 * v49 - 8565 * (v54 + v49) + v64;
    v69 = v51 - v49;
    v70 = (*(a4 + v44 * 4) + a5);
    *v70 = *(v45 + (((v66 + v58) >> 18) & 0x3FF));
    v71 = (v58 - v66);
    v72 = 4433 * (v47 - v54 + v69);
    v73 = v72 + 6270 * (v47 - v54);
    v70[11] = *(v45 + ((v71 >> 18) & 0x3FF));
    v70[1] = *(v45 + (((v73 + v56) >> 18) & 0x3FF));
    v74 = 12998 * v54 - v61 + v63 + result;
    v70[10] = *(v45 + (((v56 - v73) >> 18) & 0x3FF));
    v70[2] = *(v45 + (((v68 + v46) >> 18) & 0x3FF));
    v70[9] = *(v45 + (((v46 - v68) >> 18) & 0x3FF));
    v75 = v62 - 5540 * v47 - 16244 * v54 + v63;
    v70[3] = *(v45 + (((v74 + v65) >> 18) & 0x3FF));
    v76 = v72 - 15137 * v69;
    v70[8] = *(v45 + (((v65 - v74) >> 18) & 0x3FF));
    v70[4] = *(v45 + (((v76 + v57) >> 18) & 0x3FF));
    v70[7] = *(v45 + (((v57 - v76) >> 18) & 0x3FF));
    v70[5] = *(v45 + (((v75 + v59) >> 18) & 0x3FF));
    v70[6] = *(v45 + (((v59 - v75) >> 18) & 0x3FF));
    v44 += 2;
  }

  while (v44 != 24);
  return result;
}

uint64_t jpeg_idct_13x13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = 0;
  v87 = *MEMORY[0x1E69E9840];
  v83 = *(a1 + 440);
  memset(v86, 0, sizeof(v86));
  v6 = *(a2 + 88);
  do
  {
    v7 = (v6 + 4 * v5);
    v8 = (a3 + 2 * v5);
    v9 = v7[16] * v8[16];
    v10 = v7[32] * v8[32];
    v11 = v7[48];
    v12 = v10 + v11 * v8[48];
    v13 = ((*v7 * *v8) << 13) | 0x400;
    v14 = v10 - v11 * v8[48];
    v15 = v13 + 793 * v14;
    v16 = v7[8] * v8[8];
    v17 = v7[24] * v8[24];
    v18 = v7[40] * v8[40];
    LODWORD(v8) = v8[56];
    v19 = v7[56];
    v20 = 10832 * (v16 + v17);
    v21 = 9534 * (v16 + v18);
    v22 = v16 + v19 * v8;
    v23 = 9465 * v12 + 11249 * v9 + v15;
    v24 = -2773 * (v17 + v18);
    v25 = v20 - 16549 * v16 + v21 + 7682 * v22;
    v26 = -9534 * (v17 + v19 * v8);
    v27 = v20 + 6859 * v17 + v24 - 9534 * (v17 + v19 * v8);
    v28 = -9465 * v12 + 4108 * v9 + v15;
    v29 = v19 * v8;
    v30 = v13 + 3989 * v14;
    v31 = v24 - 12879 * v18 + v21 - 5384 * (v18 + v29);
    v32 = -2592 * v12 + 8672 * v9;
    v33 = 2592 * v12 - 10258 * v9 + v30;
    v34 = v26 + 18068 * v29 + 7682 * v22 - 5384 * (v18 + v29);
    v35 = -3570 * v12 - 1396 * v9;
    v36 = 3570 * v12 - 6581 * v9;
    v37 = v14 - v9;
    v38 = v86 + v5;
    v39 = v13 - 7678 * v14;
    v40 = v36 + v39;
    v41 = v35 + v39;
    *v38 = (v25 + v23) >> 11;
    v38[96] = (v23 - v25) >> 11;
    v38[8] = (v27 + v32 + v30) >> 11;
    v38[88] = (v32 + v30 - v27) >> 11;
    v38[16] = (v31 + v28) >> 11;
    v42 = 7682 * (v18 - v17) + 2773 * v22;
    v38[80] = (v28 - v31) >> 11;
    v38[24] = (v34 + v41) >> 11;
    v38[72] = (v41 - v34) >> 11;
    v43 = v42 + 2611 * v16 - 3818 * v17;
    v38[32] = (v43 + v40) >> 11;
    v38[64] = (v40 - v43) >> 11;
    v44 = v42 + 3150 * v18 - 14273 * v29;
    v38[40] = (v44 + v33) >> 11;
    v38[56] = (v33 - v44) >> 11;
    v38[48] = (v13 + 11585 * v37) >> 11;
    ++v5;
  }

  while (v5 != 8);
  v45 = 0;
  v46 = v83 - 384;
  do
  {
    v47 = &v86[v45];
    v48 = v47[1];
    v49 = v47[4];
    v50 = v47[5];
    v51 = (*v47 << 13) + 134348800;
    v52 = v47[6];
    v53 = v47[7];
    v54 = v52 + v49;
    v55 = v49 - v52;
    v56 = v51 + 793 * v55;
    v58 = v47[2];
    v57 = v47[3];
    v59 = -9465 * v54 + 4108 * v58;
    v60 = 9465 * v54 + 11249 * v58 + v56;
    v61 = v51 + 3989 * v55;
    v62 = -2592 * v54 + 8672 * v58;
    LODWORD(v47) = 2592 * v54 - 10258 * v58;
    v54 *= 3570;
    LODWORD(v47) = v47 + v61;
    v63 = v51 - 7678 * v55;
    v64 = -v54 - 1396 * v58;
    v65 = v54 - 6581 * v58 + v63;
    v66 = v59 + v56;
    v67 = (v51 + 11585 * (v55 - v58));
    v68 = 10832 * (v57 + v48);
    v69 = v62 + v61;
    v70 = 9534 * (v50 + v48);
    v71 = 7682 * (v53 + v48);
    v72 = v64 + v63;
    v73 = v68 - 16549 * v48 + v70 + v71;
    v74 = -2773 * (v50 + v57);
    v75 = v68 + 6859 * v57 + v74 - 9534 * (v53 + v57);
    v76 = v74 - 12879 * v50 + v70 - 5384 * (v53 + v50);
    v77 = (*(a4 + v45 * 4) + a5);
    *v77 = *(v46 + (((v73 + v60) >> 18) & 0x3FF));
    v77[12] = *(v46 + (((v60 - v73) >> 18) & 0x3FF));
    v78 = -9534 * (v53 + v57) + 18068 * v53 + v71 - 5384 * (v53 + v50);
    v77[1] = *(v46 + (((v75 + v69) >> 18) & 0x3FF));
    v77[11] = *(v46 + (((v69 - v75) >> 18) & 0x3FF));
    v77[2] = *(v46 + (((v76 + v66) >> 18) & 0x3FF));
    v79 = 7682 * (v50 - v57) + 2773 * (v53 + v48);
    v77[10] = *(v46 + (((v66 - v76) >> 18) & 0x3FF));
    v77[3] = *(v46 + (((v78 + v72) >> 18) & 0x3FF));
    v80 = v79 + 2611 * v48 - 3818 * v57;
    v77[9] = *(v46 + (((v72 - v78) >> 18) & 0x3FF));
    v77[4] = *(v46 + (((v80 + v65) >> 18) & 0x3FF));
    result = *(v46 + (((v65 - v80) >> 18) & 0x3FF));
    v82 = v79 + 3150 * v50 - 14273 * v53;
    v77[8] = result;
    v77[5] = *(v46 + (((v82 + v47) >> 18) & 0x3FF));
    v77[7] = *(v46 + (((v47 - v82) >> 18) & 0x3FF));
    v77[6] = *(v46 + ((v67 >> 18) & 0x3FF));
    v45 += 2;
  }

  while (v45 != 26);
  return result;
}

uint64_t jpeg_idct_14x14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = 0;
  v92 = *MEMORY[0x1E69E9840];
  v88 = *(a1 + 440);
  memset(v91, 0, sizeof(v91));
  v6 = *(a2 + 88);
  do
  {
    v7 = (v6 + 4 * v5);
    v8 = (a3 + 2 * v5);
    v9 = v7[32] * v8[32];
    v10 = ((*v7 * *v8) << 13) | 0x400;
    v11 = v10 + 10438 * v9;
    v12 = v10 + 2578 * v9;
    v13 = v10 - 7223 * v9;
    v14 = v7[16] * v8[16];
    v15 = v7[48] * v8[48];
    v16 = 9058 * (v14 + v15);
    v17 = v16 + 2237 * v14;
    v18 = v16 - 14084 * v15;
    v19 = 5027 * v14 - 11295 * v15;
    v20 = v17 + v11;
    v21 = v11 - v17;
    v22 = v18 + v12;
    v23 = v12 - v18;
    v24 = v19 + v13;
    v25 = v13 - v19;
    v26 = v7[8] * v8[8];
    v27 = v7[24] * v8[24];
    v28 = v7[40] * v8[40];
    v29 = v7[56] * v8[56];
    v30 = 10935 * (v26 + v27);
    v31 = 9810 * (v26 + v28);
    v32 = v30 - 9232 * v26 + v31;
    v33 = -1297 * (v27 + v28) - (v29 << 13);
    v34 = v30 - 3474 * v27 + v33;
    v35 = v31 - 19447 * v28 + v33;
    v36 = 6164 * (v26 + v28);
    v37 = v26 - v27;
    v38 = 11512 * (v28 - v27);
    v39 = v38 - 13850 * v28 + v36;
    v40 = v36 - 8693 * v26;
    v41 = v38 + 5529 * v27;
    v42 = 3826 * v37 - (v29 << 13);
    v43 = v40 + v42;
    v44 = v41 + v42;
    LODWORD(v42) = v37 - v28;
    v45 = v91 + v5;
    v46 = v32 + (v29 << 13);
    v47 = v39 + (v29 << 13);
    LODWORD(v42) = v42 + v29;
    *v45 = (v46 + v20) >> 11;
    v45[104] = (v20 - v46) >> 11;
    v45[8] = (v34 + v22) >> 11;
    v45[96] = (v22 - v34) >> 11;
    v45[16] = (v35 + v24) >> 11;
    v48 = (v10 - 11586 * v9) >> 11;
    v45[88] = (v24 - v35) >> 11;
    v45[24] = v48 + 4 * v42;
    v45[80] = v48 - 4 * v42;
    v45[32] = (v47 + v25) >> 11;
    v45[72] = (v25 - v47) >> 11;
    v45[40] = (v44 + v23) >> 11;
    v45[64] = (v23 - v44) >> 11;
    v45[48] = (v43 + v21) >> 11;
    v45[56] = (v21 - v43) >> 11;
    ++v5;
  }

  while (v5 != 8);
  v49 = 0;
  v50 = v88 - 384;
  do
  {
    v51 = &v91[v49];
    v52 = v51[1];
    v53 = (*v51 << 13) + 134348800;
    v55 = v51[4];
    v54 = v51[5];
    v56 = v53 + 10438 * v55;
    v57 = v53 + 2578 * v55;
    v58 = v53 - 7223 * v55;
    v60 = v51[2];
    v59 = v51[3];
    v61 = v51[6];
    v62 = v51[7];
    v63 = v53 - 11586 * v55;
    LODWORD(v51) = 9058 * (v61 + v60);
    v64 = v51 + 2237 * v60;
    v65 = v51 - 14084 * v61;
    LODWORD(v51) = 5027 * v60 - 11295 * v61;
    v66 = v64 + v56;
    v67 = v56 - v64;
    v68 = v51 + v58;
    LODWORD(v51) = v58 - v51;
    v69 = v65 + v57;
    v70 = 10935 * (v59 + v52);
    v71 = 9810 * (v54 + v52);
    v72 = v70 - 9232 * v52 + v71 + (v62 << 13);
    v73 = v57 - v65;
    v74 = -1297 * (v54 + v59) - (v62 << 13);
    v75 = v70 - 3474 * v59 + v74;
    v76 = v71 - 19447 * v54 + v74;
    v77 = -13850 * v54 + (v62 << 13);
    v78 = 3826 * (v52 - v59) - (v62 << 13);
    v79 = v52 - v59 - v54 + v62;
    v80 = (*(a4 + v49 * 4) + a5);
    *v80 = *(v50 + (((v72 + v66) >> 18) & 0x3FF));
    v80[13] = *(v50 + (((v66 - v72) >> 18) & 0x3FF));
    v80[1] = *(v50 + (((v75 + v69) >> 18) & 0x3FF));
    v80[12] = *(v50 + (((v69 - v75) >> 18) & 0x3FF));
    v80[2] = *(v50 + (((v76 + v68) >> 18) & 0x3FF));
    v81 = 6164 * (v54 + v52);
    v82 = 11512 * (v54 - v59);
    result = 4294958603;
    v84 = v81 - 8693 * v52;
    v80[11] = *(v50 + (((v68 - v76) >> 18) & 0x3FF));
    v85 = v77 + v82 + v81;
    v80[3] = *(v50 + (((v63 + (v79 << 13)) >> 18) & 0x3FF));
    v80[10] = *(v50 + (((v63 - (v79 << 13)) >> 18) & 0x3FF));
    v80[4] = *(v50 + (((v85 + v51) >> 18) & 0x3FF));
    v86 = v84 + v78;
    v87 = v82 + 5529 * v59 + v78;
    v80[9] = *(v50 + (((v51 - v85) >> 18) & 0x3FF));
    v80[5] = *(v50 + (((v87 + v73) >> 18) & 0x3FF));
    v80[8] = *(v50 + (((v73 - v87) >> 18) & 0x3FF));
    v80[6] = *(v50 + (((v86 + v67) >> 18) & 0x3FF));
    v80[7] = *(v50 + (((v67 - v86) >> 18) & 0x3FF));
    v49 += 2;
  }

  while (v49 != 28);
  return result;
}

uint64_t jpeg_idct_15x15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = 0;
  v92 = *MEMORY[0x1E69E9840];
  v88 = *(a1 + 440);
  memset(v91, 0, sizeof(v91));
  v6 = *(a2 + 88);
  do
  {
    v7 = (v6 + 4 * v5);
    v8 = (a3 + 2 * v5);
    v9 = v7[16] * v8[16];
    v10 = v7[48] * v8[48];
    v11 = ((*v7 * *v8) << 13) | 0x400;
    v12 = v7[32];
    v13 = v11 - 3580 * v10;
    v14 = v11 + 9373 * v10;
    v15 = v9 - v12 * v8[32];
    v16 = v9 + v12 * v8[32];
    v9 *= 11795;
    v17 = 374 * v15 + 10958 * v16 + v14;
    v18 = v9 - 10958 * v16 + 374 * v15 + v13;
    v19 = -3271 * v15 - 4482 * v16 + v14;
    v20 = 4482 * v16 - v9 + -3271 * v15 + v13;
    v21 = 6476 * v16;
    v22 = 2896 * v15 + 6476 * v16 + v13;
    v23 = v14 - v21 + 2896 * v15;
    v24 = v7[8] * v8[8];
    v25 = v7[24] * v8[24];
    LODWORD(v14) = v8[40];
    v26 = v7[40];
    v27 = 10033 * v26 * v8[40];
    v28 = v7[56] * v8[56];
    v29 = -11018 * v25;
    v30 = v27 + 11522 * (v24 - v28);
    v31 = 11018 * v25 + 20131 * v28 + v30;
    v32 = -6810 * v25 - 9113 * v24 + v30;
    v33 = v25 - v28;
    v34 = -6810 * v25 + 3897 * v24 - v27;
    v35 = v91 + v5;
    v36 = 4712 * (v24 + v28);
    v37 = v34 + v36;
    v38 = v27 + v29 - 7121 * v28 + v36;
    *v35 = (v31 + v17) >> 11;
    v35[112] = (v17 - v31) >> 11;
    v39 = 6810 * (v33 + v24);
    v40 = v39 + 4209 * v24;
    v35[8] = (v40 + v22) >> 11;
    v35[104] = (v22 - v40) >> 11;
    v41 = v11 - 11586 * v10;
    v42 = v24 - v28 - v26 * v14;
    v43 = v41 + 5792 * v15;
    v42 *= 10033;
    v35[16] = (v42 + v43) >> 11;
    v35[96] = (v43 - v42) >> 11;
    v35[24] = (v37 + v18) >> 11;
    v35[88] = (v18 - v37) >> 11;
    v44 = v39 - 17828 * v33;
    v35[32] = (v44 + v23) >> 11;
    v35[80] = (v23 - v44) >> 11;
    v35[40] = (v38 + v19) >> 11;
    v35[72] = (v19 - v38) >> 11;
    v35[48] = (v32 + v20) >> 11;
    v35[64] = (v20 - v32) >> 11;
    v35[56] = (v41 + 0x7FFFFFFD2C0 * v15) >> 11;
    ++v5;
  }

  while (v5 != 8);
  v45 = 0;
  v46 = v88 - 384;
  do
  {
    v47 = &v91[v45];
    v48 = (*(a4 + v45 * 4) + a5);
    v49 = v47[1];
    v50 = (*v47 << 13) + 134348800;
    v52 = v47[6];
    v51 = v47[7];
    v53 = v50 - 3580 * v52;
    v54 = v50 + 9373 * v52;
    v56 = v47[2];
    v55 = v47[3];
    v57 = v47[4];
    v58 = v47[5];
    LODWORD(v47) = v50 - 11586 * v52;
    v59 = v56 - v57;
    v60 = v57 + v56;
    v56 *= 11795;
    v61 = 374 * v59 + 10958 * v60 + v54;
    v62 = v56 - 10958 * v60 + 374 * v59;
    v63 = -3271 * v59 - 4482 * v60 + v54;
    v64 = 4482 * v60 - v56 - 3271 * v59;
    v60 *= 6476;
    v65 = 2896 * v59;
    v66 = v62 + v53;
    v67 = 2896 * v59 + v60 + v53;
    v68 = v54 - v60;
    v69 = v47 + 5792 * v59;
    v70 = (v47 + 268423872 * v59);
    v71 = v64 + v53;
    v72 = 10033 * v58;
    v73 = v55 - v51;
    v74 = -11018 * v55;
    v75 = 10033 * v58 + 11522 * (v49 - v51);
    v76 = v68 + v65;
    v77 = 11018 * v55 + 20131 * v51 + v75;
    v78 = (v77 + v61);
    v79 = (v61 - v77);
    v80 = 6810 * (v55 - v51 + v49);
    *v48 = *(v46 + ((v78 >> 18) & 0x3FF));
    LODWORD(v78) = v80 + 4209 * v49;
    v48[14] = *(v46 + ((v79 >> 18) & 0x3FF));
    v48[1] = *(v46 + (((v78 + v67) >> 18) & 0x3FF));
    v81 = 10033 * (v49 - v51 - v58);
    v48[13] = *(v46 + (((v67 - v78) >> 18) & 0x3FF));
    result = (-6810 * v55);
    v48[2] = *(v46 + (((v81 + v69) >> 18) & 0x3FF));
    LODWORD(v79) = 4712 * (v51 + v49);
    v83 = (v69 - v81);
    v84 = result + 3897 * v49 - v72 + v79;
    v48[12] = *(v46 + ((v83 >> 18) & 0x3FF));
    v85 = v80 - 17828 * v73;
    v48[3] = *(v46 + (((v84 + v66) >> 18) & 0x3FF));
    v48[11] = *(v46 + (((v66 - v84) >> 18) & 0x3FF));
    v48[4] = *(v46 + (((v85 + v76) >> 18) & 0x3FF));
    v86 = v72 + v74 - 7121 * v51 + v79;
    v48[10] = *(v46 + (((v76 - v85) >> 18) & 0x3FF));
    v48[5] = *(v46 + (((v86 + v63) >> 18) & 0x3FF));
    v87 = result - 9113 * v49 + v75;
    v48[9] = *(v46 + (((v63 - v86) >> 18) & 0x3FF));
    v48[6] = *(v46 + (((v87 + v71) >> 18) & 0x3FF));
    v48[8] = *(v46 + (((v71 - v87) >> 18) & 0x3FF));
    v48[7] = *(v46 + ((v70 >> 18) & 0x3FF));
    v45 += 2;
  }

  while (v45 != 30);
  return result;
}

uint64_t jpeg_idct_16x16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = 0;
  v118 = *MEMORY[0x1E69E9840];
  v111 = *(a1 + 440);
  memset(v117, 0, sizeof(v117));
  v114 = *(a2 + 88);
  do
  {
    v6 = (v114 + 4 * v5);
    v7 = (a3 + 2 * v5);
    v8 = v6[32] * v7[32];
    v9 = 10703 * v8;
    v10 = ((*v6 * *v7) << 13) | 0x400;
    v8 *= 4433;
    v11 = v9 + v10;
    v12 = v10 - v9;
    v13 = v8 + v10;
    v14 = v10 - v8;
    v15 = v6[16] * v7[16];
    v16 = v6[48] * v7[48];
    v17 = 2260 * (v15 - v16);
    v18 = 11363 * (v15 - v16);
    v19 = v18 + 20995 * v16;
    v20 = v17 + 7373 * v15;
    v21 = v18 - 4926 * v15;
    v22 = v17 - 4176 * v16;
    v23 = v19 + v11;
    v116 = v11 - v19;
    v24 = v20 + v13;
    v25 = v13 - v20;
    v26 = v21 + v14;
    v27 = v14 - v21;
    v28 = v22 + v12;
    v29 = v12 - v22;
    v30 = v6[8] * v7[8];
    v31 = v6[24] * v7[24];
    LODWORD(v21) = v7[40];
    v32 = v6[40];
    v33 = v7[56];
    v34 = v6[56];
    v35 = v30 + v32 * v7[40];
    v36 = 11086 * (v30 + v31);
    v37 = 10217 * v35;
    v38 = 8956 * (v30 + v34 * v33);
    v39 = 7350 * (v30 - v34 * v33);
    v40 = 5461 * v35;
    v41 = 3363 * (v30 - v31);
    v42 = v36 - 18730 * v30 + 10217 * v35 + v38;
    v43 = v41 - 15038 * v30 + 5461 * v35 + v39;
    v44 = 1136 * (v31 + v32 * v21);
    v45 = v31 + v34 * v33;
    v46 = -5461 * v45;
    v47 = v36 + 589 * v31 + v44 - 5461 * v45;
    v48 = v32 * v21;
    v49 = 11529 * (v48 - v31);
    v45 *= -10217;
    v50 = v41 + 16154 * v31 + v49 + v45;
    v51 = v44 - 9222 * v48 + v37 - 11086 * (v48 + v34 * v33);
    v52 = v34 * v33;
    v53 = v46 + 8728 * v52 + v38 - 11086 * (v48 + v52);
    v54 = v45 + 25733 * v52;
    v55 = 3363 * (v52 - v48);
    v56 = v54 + v39 + v55;
    v57 = v49 - 6278 * v48;
    v58 = v117 + v5;
    v59 = v57 + v40 + v55;
    *v58 = (v42 + v23) >> 11;
    v58[120] = (v23 - v42) >> 11;
    v58[8] = (v47 + v24) >> 11;
    v58[112] = (v24 - v47) >> 11;
    v58[16] = (v51 + v26) >> 11;
    v58[104] = (v26 - v51) >> 11;
    v58[24] = (v53 + v28) >> 11;
    v58[96] = (v28 - v53) >> 11;
    v58[32] = (v56 + v29) >> 11;
    v58[88] = (v29 - v56) >> 11;
    v58[40] = (v59 + v27) >> 11;
    v58[80] = (v27 - v59) >> 11;
    v58[48] = (v50 + v25) >> 11;
    v58[72] = (v25 - v50) >> 11;
    v58[56] = (v43 + v116) >> 11;
    v58[64] = (v116 - v43) >> 11;
    ++v5;
  }

  while (v5 != 8);
  v60 = 0;
  v61 = v111 - 384;
  do
  {
    v62 = &v117[v60];
    v63 = v62[1];
    v65 = v62[4];
    v64 = v62[5];
    v66 = (*v62 << 13) + 134348800;
    v67 = 4433 * v65;
    v68 = v66 + 10703 * v65;
    v69 = v66 - 10703 * v65;
    v70 = v62[2];
    v71 = v62[3];
    v72 = v66 + v67;
    v73 = v62[6];
    v74 = v62[7];
    v75 = 2260 * (v70 - v73);
    v76 = v66 - v67;
    LODWORD(v62) = 11363 * (v70 - v73);
    v77 = v62 + 20995 * v73;
    v78 = v75 + 7373 * v70;
    v79 = v62 - 4926 * v70;
    v80 = v75 - 4176 * v73;
    v81 = v77 + v68;
    LODWORD(v62) = v68 - v77;
    v82 = v78 + v72;
    v83 = v72 - v78;
    v84 = v79 + v76;
    v85 = v76 - v79;
    v86 = 11086 * (v71 + v63);
    v87 = 10217 * (v64 + v63);
    v88 = 8956 * (v74 + v63);
    v89 = v80 + v69;
    v90 = 7350 * (v63 - v74);
    v91 = 5461 * (v64 + v63);
    v92 = 3363 * (v63 - v71);
    v93 = v69 - v80;
    v94 = v86 - 18730 * v63 + v87 + v88;
    result = (v92 - 15038 * v63 + v91 + v90);
    v96 = 1136 * (v64 + v71);
    v97 = v96 - 9222 * v64;
    v98 = v86 + 589 * v71 + v96 - 5461 * (v74 + v71);
    v99 = v97 + v87 - 11086 * (v74 + v64);
    v100 = -5461 * (v74 + v71) + 8728 * v74 + v88 - 11086 * (v74 + v64);
    v101 = (v94 + v81);
    v102 = (v81 - v94);
    v103 = (*(a4 + v60 * 4) + a5);
    *v103 = *(v61 + ((v101 >> 18) & 0x3FF));
    v103[15] = *(v61 + ((v102 >> 18) & 0x3FF));
    v103[1] = *(v61 + (((v98 + v82) >> 18) & 0x3FF));
    v104 = -10217 * (v74 + v71);
    LODWORD(v102) = v104 + 25733 * v74;
    v105 = 3363 * (v74 - v64);
    v106 = v102 + v90 + v105;
    v103[14] = *(v61 + (((v82 - v98) >> 18) & 0x3FF));
    v103[2] = *(v61 + (((v99 + v84) >> 18) & 0x3FF));
    v103[13] = *(v61 + (((v84 - v99) >> 18) & 0x3FF));
    v103[3] = *(v61 + (((v100 + v89) >> 18) & 0x3FF));
    v103[12] = *(v61 + (((v89 - v100) >> 18) & 0x3FF));
    v103[4] = *(v61 + (((v106 + v93) >> 18) & 0x3FF));
    v107 = v92 + 16154 * v71;
    v108 = 11529 * (v64 - v71);
    v109 = v108 - 6278 * v64 + v91 + v105;
    v103[11] = *(v61 + (((v93 - v106) >> 18) & 0x3FF));
    v103[5] = *(v61 + (((v109 + v85) >> 18) & 0x3FF));
    v110 = v107 + v108 + v104;
    v103[10] = *(v61 + (((v85 - v109) >> 18) & 0x3FF));
    v103[6] = *(v61 + (((v110 + v83) >> 18) & 0x3FF));
    v103[9] = *(v61 + (((v83 - v110) >> 18) & 0x3FF));
    v103[7] = *(v61 + (((result + v62) >> 18) & 0x3FF));
    v103[8] = *(v61 + (((v62 - result) >> 18) & 0x3FF));
    v60 += 2;
  }

  while (v60 != 32);
  return result;
}

uint64_t jpeg_idct_16x8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v92 = *MEMORY[0x1E69E9840];
  v89 = *(a1 + 440);
  v5 = (a3 + 64);
  v6 = v91;
  v7 = 9;
  memset(v91, 0, sizeof(v91));
  v8 = *(a2 + 88);
  do
  {
    v9 = *(v5 - 16);
    if (*(v5 - 24) | v9)
    {
      goto LABEL_9;
    }

    if (*(v5 - 8) || *v5 || v5[8] || v5[16] || v5[24])
    {
      v9 = 0;
LABEL_9:
      v10 = v8[32] * *v5;
      v11 = ((*v8 * *(v5 - 32)) << 13) | 0x400;
      v12 = v11 + (v10 << 13);
      v13 = v11 - (v10 << 13);
      v14 = v8[16] * v9;
      v15 = v8[48] * v5[16];
      v16 = 4433 * (v14 + v15);
      v17 = v16 + 6270 * v14;
      v18 = v16 - 15137 * v15;
      v19 = v17 + v12;
      v20 = v12 - v17;
      v21 = v18 + v13;
      v22 = v13 - v18;
      v23 = v8[56] * v5[24];
      v24 = v8[40] * v5[8];
      v25 = v8[24] * *(v5 - 8);
      v26 = v8[8] * *(v5 - 24);
      v27 = 9633 * (v24 + v26 + v23 + v25);
      v28 = v27 - 16069 * (v23 + v25);
      v29 = v27 - 3196 * (v24 + v26);
      v30 = -7373 * (v23 + v26);
      v31 = v30 + 2446 * v23 + v28;
      v32 = v30 + 12299 * v26 + v29;
      v33 = -20995 * (v24 + v25);
      v34 = v33 + 16819 * v24 + v29;
      v35 = v33 + 25172 * v25 + v28;
      *v6 = (v32 + v19) >> 11;
      v6[56] = (v19 - v32) >> 11;
      v6[8] = (v35 + v21) >> 11;
      v6[48] = (v21 - v35) >> 11;
      v6[16] = (v34 + v22) >> 11;
      v6[40] = (v22 - v34) >> 11;
      v6[24] = (v31 + v20) >> 11;
      v36 = (v20 - v31) >> 11;
      v37 = 32;
      goto LABEL_10;
    }

    LODWORD(v36) = 4 * *(v5 - 32) * *v8;
    *v6 = v36;
    v6[8] = v36;
    v6[16] = v36;
    v6[24] = v36;
    v6[32] = v36;
    v6[40] = v36;
    v6[48] = v36;
    v37 = 56;
LABEL_10:
    v6[v37] = v36;
    ++v6;
    ++v8;
    --v7;
    ++v5;
  }

  while (v7 > 1);
  v38 = 0;
  v39 = v89 - 384;
  do
  {
    v40 = &v91[v38];
    v41 = v40[1];
    v43 = v40[4];
    v42 = v40[5];
    v44 = (*v40 << 13) + 134348800;
    v45 = 4433 * v43;
    v46 = v44 + 10703 * v43;
    v47 = v44 - 10703 * v43;
    v48 = v40[2];
    v49 = v40[3];
    v50 = v44 + v45;
    v51 = v40[6];
    v52 = v40[7];
    v53 = 2260 * (v48 - v51);
    v54 = v44 - v45;
    LODWORD(v40) = 11363 * (v48 - v51);
    v55 = v40 + 20995 * v51;
    v56 = v53 + 7373 * v48;
    v57 = v40 - 4926 * v48;
    v58 = v53 - 4176 * v51;
    v59 = v55 + v46;
    LODWORD(v40) = v46 - v55;
    v60 = v56 + v50;
    v61 = v50 - v56;
    v62 = v57 + v54;
    v63 = v54 - v57;
    v64 = 11086 * (v49 + v41);
    v65 = 10217 * (v42 + v41);
    v66 = 8956 * (v52 + v41);
    v67 = v58 + v47;
    v68 = 7350 * (v41 - v52);
    v69 = 5461 * (v42 + v41);
    v70 = 3363 * (v41 - v49);
    v71 = v47 - v58;
    v72 = v64 - 18730 * v41 + v65 + v66;
    result = (v70 - 15038 * v41 + v69 + v68);
    v74 = 1136 * (v42 + v49);
    v75 = v74 - 9222 * v42;
    v76 = v64 + 589 * v49 + v74 - 5461 * (v52 + v49);
    v77 = v75 + v65 - 11086 * (v52 + v42);
    v78 = -5461 * (v52 + v49) + 8728 * v52 + v66 - 11086 * (v52 + v42);
    v79 = (v72 + v59);
    v80 = (v59 - v72);
    v81 = (*(a4 + v38 * 4) + a5);
    *v81 = *(v39 + ((v79 >> 18) & 0x3FF));
    v81[15] = *(v39 + ((v80 >> 18) & 0x3FF));
    v81[1] = *(v39 + (((v76 + v60) >> 18) & 0x3FF));
    v82 = -10217 * (v52 + v49);
    LODWORD(v80) = v82 + 25733 * v52;
    v83 = 3363 * (v52 - v42);
    v84 = v80 + v68 + v83;
    v81[14] = *(v39 + (((v60 - v76) >> 18) & 0x3FF));
    v81[2] = *(v39 + (((v77 + v62) >> 18) & 0x3FF));
    v81[13] = *(v39 + (((v62 - v77) >> 18) & 0x3FF));
    v81[3] = *(v39 + (((v78 + v67) >> 18) & 0x3FF));
    v81[12] = *(v39 + (((v67 - v78) >> 18) & 0x3FF));
    v81[4] = *(v39 + (((v84 + v71) >> 18) & 0x3FF));
    v85 = v70 + 16154 * v49;
    v86 = 11529 * (v42 - v49);
    v87 = v86 - 6278 * v42 + v69 + v83;
    v81[11] = *(v39 + (((v71 - v84) >> 18) & 0x3FF));
    v81[5] = *(v39 + (((v87 + v63) >> 18) & 0x3FF));
    v88 = v85 + v86 + v82;
    v81[10] = *(v39 + (((v63 - v87) >> 18) & 0x3FF));
    v81[6] = *(v39 + (((v88 + v61) >> 18) & 0x3FF));
    v81[9] = *(v39 + (((v61 - v88) >> 18) & 0x3FF));
    v81[7] = *(v39 + (((result + v40) >> 18) & 0x3FF));
    v81[8] = *(v39 + (((v40 - result) >> 18) & 0x3FF));
    v38 += 2;
  }

  while (v38 != 16);
  return result;
}

uint64_t jpeg_idct_14x7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = 0;
  v73 = *MEMORY[0x1E69E9840];
  v69 = *(a1 + 440);
  memset(v72, 0, sizeof(v72));
  v6 = *(a2 + 88);
  do
  {
    v7 = v72 + v5;
    v8 = (v6 + 4 * v5);
    v9 = (a3 + 2 * v5);
    v10 = ((*v8 * *v9) << 13) | 0x400;
    v11 = v8[16] * v9[16];
    v12 = v8[32] * v9[32];
    v13 = v8[48] * v9[48];
    v14 = 7223 * (v12 - v13);
    v15 = 2578 * (v11 - v12);
    v16 = v10 - 15083 * v12 + v15 + v14;
    v17 = v10 + 10438 * (v11 + v13);
    v18 = v14 - 637 * v13 + v17;
    v19 = v15 - 20239 * v11 + v17;
    v20 = v10 + 11585 * (v12 - (v11 + v13));
    v21 = v8[8] * v9[8];
    v22 = v8[24] * v9[24];
    v23 = v8[40] * v9[40];
    v24 = 7663 * (v21 + v22);
    v25 = 1395 * (v21 - v22);
    v26 = v24 - v25;
    v27 = v24 + v25 - 11295 * (v22 + v23);
    v28 = 5027 * (v21 + v23);
    v29 = v28 + v26;
    v30 = v28 + 15326 * v23 - 11295 * (v22 + v23);
    *v7 = (v29 + v18) >> 11;
    v7[48] = (v18 - v29) >> 11;
    v7[8] = (v27 + v16) >> 11;
    v7[40] = (v16 - v27) >> 11;
    v7[16] = (v30 + v19) >> 11;
    v7[32] = (v19 - v30) >> 11;
    v7[24] = v20 >> 11;
    ++v5;
  }

  while (v5 != 8);
  v31 = 0;
  v32 = v69 - 384;
  do
  {
    v33 = &v72[v31];
    v34 = v33[1];
    v35 = (*v33 << 13) + 134348800;
    v36 = v33[4];
    v37 = v33[5];
    v38 = v35 + 10438 * v36;
    v39 = v35 + 2578 * v36;
    v40 = v35 - 7223 * v36;
    v41 = v33[2];
    v42 = v33[3];
    v44 = v33[6];
    v43 = v33[7];
    v45 = v35 - 11586 * v36;
    LODWORD(v33) = 9058 * (v44 + v41);
    v46 = v33 + 2237 * v41;
    LODWORD(v33) = v33 - 14084 * v44;
    v47 = 5027 * v41 - 11295 * v44;
    v48 = v46 + v38;
    v49 = v38 - v46;
    v50 = v47 + v40;
    v51 = v40 - v47;
    v52 = v33 + v39;
    v53 = 10935 * (v42 + v34);
    v54 = 9810 * (v37 + v34);
    v55 = v53 - 9232 * v34 + v54 + (v43 << 13);
    LODWORD(v33) = v39 - v33;
    v56 = -1297 * (v37 + v42) - (v43 << 13);
    v57 = v53 - 3474 * v42 + v56;
    v58 = v54 - 19447 * v37 + v56;
    v59 = -13850 * v37 + (v43 << 13);
    v60 = 3826 * (v34 - v42) - (v43 << 13);
    v61 = v34 - v42 - v37 + v43;
    v62 = (*(a4 + v31 * 4) + a5);
    *v62 = *(v32 + (((v55 + v48) >> 18) & 0x3FF));
    v62[13] = *(v32 + (((v48 - v55) >> 18) & 0x3FF));
    v62[1] = *(v32 + (((v57 + v52) >> 18) & 0x3FF));
    v62[12] = *(v32 + (((v52 - v57) >> 18) & 0x3FF));
    v62[2] = *(v32 + (((v58 + v50) >> 18) & 0x3FF));
    v63 = 6164 * (v37 + v34);
    v64 = 11512 * (v37 - v42);
    v65 = v63 - 8693 * v34;
    v62[11] = *(v32 + (((v50 - v58) >> 18) & 0x3FF));
    result = (v59 + v64 + v63);
    v62[3] = *(v32 + (((v45 + (v61 << 13)) >> 18) & 0x3FF));
    v62[10] = *(v32 + (((v45 - (v61 << 13)) >> 18) & 0x3FF));
    v62[4] = *(v32 + (((result + v51) >> 18) & 0x3FF));
    v67 = v65 + v60;
    v68 = v64 + 5529 * v42 + v60;
    v62[9] = *(v32 + (((v51 - result) >> 18) & 0x3FF));
    v62[5] = *(v32 + (((v68 + v33) >> 18) & 0x3FF));
    v62[8] = *(v32 + (((v33 - v68) >> 18) & 0x3FF));
    v62[6] = *(v32 + (((v67 + v49) >> 18) & 0x3FF));
    v62[7] = *(v32 + (((v49 - v67) >> 18) & 0x3FF));
    v31 += 2;
  }

  while (v31 != 14);
  return result;
}

uint64_t jpeg_idct_12x6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = 0;
  v58 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 440);
  memset(v57, 0, sizeof(v57));
  v7 = *(a2 + 88);
  do
  {
    v8 = v57 + v5;
    v9 = (v7 + 4 * v5);
    v10 = (a3 + 2 * v5);
    v11 = ((*v9 * *v10) << 13) | 0x400;
    v12 = v9[32] * v10[32];
    v13 = v11 + 5793 * v12;
    v14 = (v11 - 11586 * v12) >> 11;
    v15 = 10033 * v9[16] * v10[16];
    v16 = v15 + v13;
    v17 = v13 - v15;
    v18 = v9[8] * v10[8];
    v19 = v9[24] * v10[24];
    v20 = v9[40] * v10[40];
    v21 = 2998 * (v18 + v20);
    v22 = v21 + ((v18 + v19) << 13);
    v23 = v21 + ((v20 - v19) << 13);
    LODWORD(v18) = v18 - (v19 + v20);
    *v8 = (v22 + v16) >> 11;
    v8[40] = (v16 - v22) >> 11;
    v8[8] = v14 + 4 * v18;
    v8[32] = v14 - 4 * v18;
    v8[16] = (v23 + v17) >> 11;
    v8[24] = (v17 - v23) >> 11;
    ++v5;
  }

  while (v5 != 8);
  v24 = 0;
  v25 = v6 - 384;
  do
  {
    v26 = &v57[v24];
    v27 = v26[1];
    v28 = (*v26 << 13) + 134348800;
    v29 = v26[5];
    v30 = 10033 * v26[4];
    v31 = v28 + v30;
    v33 = v26[2];
    v32 = v26[3];
    v34 = v26[6];
    v35 = v26[7];
    v36 = v28 - v30;
    v37 = v28 + ((v33 - v34) << 13);
    v38 = v28 - ((v33 - v34) << 13);
    LODWORD(v26) = 11190 * v33 + (v34 << 13);
    v39 = v26 + v31;
    v40 = v31 - v26;
    v41 = 2998 * v33 - (v34 << 13);
    v42 = 10703 * v32;
    v43 = -4433 * v32;
    LODWORD(v26) = v41 + v36;
    v44 = 7053 * (v29 + v27 + v35);
    v45 = v44 + 2139 * (v29 + v27);
    v46 = v36 - v41;
    v47 = 10703 * v32 + 2295 * v27 + v45;
    v48 = -8565 * (v35 + v29);
    result = (-4433 * v32 - 12112 * v29 - 8565 * (v35 + v29) + v45);
    v50 = v32 - v29;
    v51 = (*(a4 + v24 * 4) + a5);
    *v51 = *(v25 + (((v47 + v39) >> 18) & 0x3FF));
    v52 = (v39 - v47);
    v53 = 4433 * (v27 - v35 + v50);
    v54 = v53 + 6270 * (v27 - v35);
    v51[11] = *(v25 + ((v52 >> 18) & 0x3FF));
    v51[1] = *(v25 + (((v54 + v37) >> 18) & 0x3FF));
    LODWORD(v52) = 12998 * v35 - v42 + v44 + v48;
    v51[10] = *(v25 + (((v37 - v54) >> 18) & 0x3FF));
    v51[2] = *(v25 + (((result + v26) >> 18) & 0x3FF));
    v51[9] = *(v25 + (((v26 - result) >> 18) & 0x3FF));
    v55 = v43 - 5540 * v27 - 16244 * v35 + v44;
    v51[3] = *(v25 + (((v52 + v46) >> 18) & 0x3FF));
    v56 = v53 - 15137 * v50;
    v51[8] = *(v25 + (((v46 - v52) >> 18) & 0x3FF));
    v51[4] = *(v25 + (((v56 + v38) >> 18) & 0x3FF));
    v51[7] = *(v25 + (((v38 - v56) >> 18) & 0x3FF));
    v51[5] = *(v25 + (((v55 + v40) >> 18) & 0x3FF));
    v51[6] = *(v25 + (((v40 - v55) >> 18) & 0x3FF));
    v24 += 2;
  }

  while (v24 != 12);
  return result;
}

uint64_t jpeg_idct_10x5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = 0;
  v58 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 440);
  memset(v57, 0, sizeof(v57));
  v7 = *(a2 + 88);
  do
  {
    v8 = v57 + v5;
    v9 = (v7 + 4 * v5);
    v10 = (a3 + 2 * v5);
    v11 = ((*v9 * *v10) << 13) | 0x400;
    v12 = v9[16] * v10[16];
    v13 = v9[32];
    v14 = 6476 * (v12 + v13 * v10[32]);
    v15 = v12 - v13 * v10[32];
    v16 = v11 + 2896 * v15;
    v17 = v16 + v14;
    v18 = v16 - v14;
    v19 = v11 + 0x7FFFFFFD2C0 * v15;
    v20 = v9[8] * v10[8];
    v21 = v9[24] * v10[24];
    v22 = 6810 * (v20 + v21);
    v23 = v22 + 4209 * v20;
    v24 = v22 - 17828 * v21;
    *v8 = (v23 + v17) >> 11;
    v8[32] = (v17 - v23) >> 11;
    v8[8] = (v24 + v18) >> 11;
    v8[24] = (v18 - v24) >> 11;
    v8[16] = v19 >> 11;
    ++v5;
  }

  while (v5 != 8);
  v25 = 0;
  v26 = v6 - 384;
  result = 2531;
  do
  {
    v28 = &v57[v25];
    v29 = v28[1];
    v30 = v28[4];
    v31 = v28[5];
    v32 = (*v28 << 13) + 134348800;
    v33 = v32 + 9373 * v30;
    v34 = v32 - 3580 * v30;
    v36 = v28[2];
    v35 = v28[3];
    v37 = v32 - 11586 * v30;
    v39 = v28[6];
    v38 = v28[7];
    LODWORD(v28) = 6810 * (v39 + v36);
    v40 = v28 + 4209 * v36;
    v41 = v28 - 17828 * v39;
    v42 = v40 + v33;
    LODWORD(v28) = v33 - v40;
    v43 = v41 + v34;
    v44 = v38 + v35;
    v45 = v35 - v38;
    v46 = v34 - v41;
    v47 = 2531 * v45 + (v31 << 13);
    v48 = 7791 * v44 + 11443 * v29 + v47;
    v49 = (*(a4 + v25 * 4) + a5);
    v50 = 1812 * v29 - 7791 * v44 + v47;
    v51 = 4815 * v44;
    v52 = (v48 + v42);
    v53 = (v42 - v48);
    v54 = -6627 * v45 + (v31 << 13);
    *v49 = *(v26 + ((v52 >> 18) & 0x3FF));
    LODWORD(v52) = 10323 * v29 - (v51 + v54);
    v49[9] = *(v26 + ((v53 >> 18) & 0x3FF));
    v55 = v29 - v31 - v45;
    v49[1] = *(v26 + (((v52 + v43) >> 18) & 0x3FF));
    v49[8] = *(v26 + (((v43 - v52) >> 18) & 0x3FF));
    v49[2] = *(v26 + (((v37 + (v55 << 13)) >> 18) & 0x3FF));
    v56 = 5260 * v29 - v51 + v54;
    v49[7] = *(v26 + (((v37 - (v55 << 13)) >> 18) & 0x3FF));
    v49[3] = *(v26 + (((v56 + v46) >> 18) & 0x3FF));
    v49[6] = *(v26 + (((v46 - v56) >> 18) & 0x3FF));
    v49[4] = *(v26 + (((v50 + v28) >> 18) & 0x3FF));
    v49[5] = *(v26 + (((v28 - v50) >> 18) & 0x3FF));
    v25 += 2;
  }

  while (v25 != 10);
  return result;
}

uint64_t jpeg_idct_8x4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = 0;
  v57 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 440);
  memset(v56, 0, sizeof(v56));
  v7 = *(a2 + 88);
  do
  {
    v8 = v56 + v5;
    v9 = (v7 + 4 * v5);
    v10 = (a3 + 2 * v5);
    v11 = *v9 * *v10;
    v12 = v9[16] * v10[16];
    v13 = v12 + v11;
    v14 = 4 * (v12 + v11);
    v15 = v11 - v12;
    v16 = v9[8] * v10[8];
    v17 = v9[24] * v10[24];
    v18 = 4433 * (v16 + v17) + 1024;
    v19 = (v18 + 6270 * v16) >> 11;
    v20 = (v18 - 15137 * v17) >> 11;
    *v8 = v19 + 4 * v13;
    v8[24] = v14 - v19;
    v8[8] = v20 + 4 * v15;
    v8[16] = 4 * v15 - v20;
    ++v5;
  }

  while (v5 != 8);
  v21 = 0;
  v22 = v6 - 384;
  result = 4294959923;
  do
  {
    v24 = &v56[v21];
    v25 = (*(a4 + v21 * 4) + a5);
    v26 = v24[1];
    v27 = *v24 + 16400;
    v28 = v24[4];
    v29 = v24[5];
    v30 = v27 + v28;
    v31 = v27 - v28;
    v32 = v24[6];
    v33 = v24[7];
    v34 = v30 << 13;
    v35 = v24[2];
    LODWORD(v24) = v24[3];
    v36 = 4433 * (v32 + v35);
    v37 = v36 + 6270 * v35;
    v38 = v36 - 15137 * v32;
    v39 = v24 + v33;
    v40 = 9633 * (v26 + v29 + v24 + v33);
    v41 = v37 + (v30 << 13);
    v42 = v40 - 3196 * (v26 + v29);
    v43 = -7373 * (v26 + v33);
    v44 = v43 + 12299 * v26 + v42;
    v45 = v43 + 2446 * v33;
    v46 = -20995 * (v24 + v29);
    v47 = v46 + 16819 * v29;
    LODWORD(v24) = v46 + 25172 * v24;
    v48 = (v44 + v41);
    v49 = v40 - 16069 * v39;
    v50 = (v41 - v44);
    v51 = v31 << 13;
    *v25 = *(v22 + ((v48 >> 18) & 0x3FF));
    v52 = v38 + (v31 << 13);
    LODWORD(v24) = v24 + v49;
    v53 = v51 - v38;
    v25[7] = *(v22 + ((v50 >> 18) & 0x3FF));
    v54 = v47 + v42;
    v25[1] = *(v22 + (((v24 + v52) >> 18) & 0x3FF));
    v25[6] = *(v22 + (((v52 - v24) >> 18) & 0x3FF));
    v55 = v45 + v49;
    v25[2] = *(v22 + (((v54 + v53) >> 18) & 0x3FF));
    v25[5] = *(v22 + (((v53 - v54) >> 18) & 0x3FF));
    v25[3] = *(v22 + (((v55 + v34 - v37) >> 18) & 0x3FF));
    v25[4] = *(v22 + (((v34 - v37 - v55) >> 18) & 0x3FF));
    v21 += 2;
  }

  while (v21 != 8);
  return result;
}

uint64_t jpeg_idct_6x3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5)
{
  v5 = 0;
  v36 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 440);
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v7 = *(a2 + 88);
  do
  {
    v8 = v34 + v5;
    v9 = (v7 + 4 * v5);
    v10 = (a3 + 2 * v5);
    v11 = ((*v9 * *v10) << 13) | 0x400;
    v12 = v9[16] * v10[16];
    v13 = v11 + 5793 * v12;
    v14 = 10033 * v9[8] * v10[8];
    *v8 = (v14 + v13) >> 11;
    v8[12] = (v13 - v14) >> 11;
    v8[6] = (v11 + 0x7FFFFFFD2BELL * v12) >> 11;
    ++v5;
  }

  while (v5 != 6);
  v15 = 0;
  v16 = v6 - 384;
  v17 = a5;
  do
  {
    v18 = *a4++;
    v19 = (v18 + v17);
    v20 = *(v34 + v15 + 4);
    v21 = *(&v34[1] + v15);
    v22 = *(&v34[1] + v15 + 4);
    v23 = (*(v34 + v15) << 13) + 134348800;
    v24 = v23 + 5793 * v21;
    v25 = *(v34 + v15 + 12);
    v26 = 10033 * *(v34 + v15 + 8);
    v27 = 2998 * (v22 + v20);
    v28 = v27 + ((v25 + v20) << 13);
    v29 = v22 - v25;
    v30 = v20 - (v25 + v22);
    v31 = v23 - 11586 * v21;
    *v19 = *(v16 + (((v28 + v24 + v26) >> 18) & 0x3FF));
    v32 = v27 + (v29 << 13);
    v19[5] = *(v16 + (((v24 + v26 - v28) >> 18) & 0x3FF));
    v19[1] = *(v16 + (((v31 + (v30 << 13)) >> 18) & 0x3FF));
    v19[4] = *(v16 + (((v31 - (v30 << 13)) >> 18) & 0x3FF));
    v19[2] = *(v16 + (((v32 + v24 - v26) >> 18) & 0x3FF));
    result = *(v16 + (((v24 - v26 - v32) >> 18) & 0x3FF));
    v19[3] = result;
    v15 += 24;
  }

  while (v15 != 72);
  return result;
}

uint64_t jpeg_idct_4x2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = 0;
  v29 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 440);
  memset(v28, 0, sizeof(v28));
  v7 = *(a2 + 88);
  do
  {
    v8 = v28 + v5;
    v9 = (v7 + 4 * v5);
    v10 = (a3 + 2 * v5);
    v11 = *v9 * *v10;
    LODWORD(v10) = v10[8];
    LODWORD(v9) = v9[8];
    *v8 = v11 + v9 * v10;
    v8[4] = v11 - v9 * v10;
    ++v5;
  }

  while (v5 != 4);
  v12 = 0;
  v13 = v6 - 384;
  v14 = v28;
  v15 = 1;
  v16 = a5;
  do
  {
    v17 = (*(a4 + 8 * v12) + v16);
    v18 = *v14 + 4100;
    v19 = v14[4];
    v20 = v14[2];
    v21 = v14[6];
    v22 = 4433 * (v21 + v20);
    v23 = v22 + 6270 * v20;
    v24 = v22 - 15137 * v21;
    *v17 = *(v13 + (((v23 + ((v18 + v19) << 13)) >> 16) & 0x3FF));
    v25 = ((((v18 + v19) << 13) - v23) >> 16) & 0x3FF;
    v26 = v18 - v19;
    v17[3] = *(v13 + v25);
    v17[1] = *(v13 + (((v24 + (v26 << 13)) >> 16) & 0x3FF));
    result = v15;
    v17[2] = *(v13 + ((((v26 << 13) - v24) >> 16) & 0x3FF));
    v14 += 8;
    v12 = 1;
    v15 = 0;
  }

  while ((result & 1) != 0);
  return result;
}

uint64_t jpeg_idct_2x1(uint64_t result, uint64_t a2, unsigned __int16 *a3, void *a4, unsigned int a5)
{
  v5 = *(result + 440) - 384;
  v6 = *(a2 + 88);
  v7 = (*a4 + a5);
  v8 = *v6 * *a3 + 4100;
  LODWORD(v6) = v6[1] * a3[1];
  *v7 = *(v5 + (((v6 + v8) >> 3) & 0x3FF));
  v7[1] = *(v5 + (((v8 - v6) >> 3) & 0x3FF));
  return result;
}

uint64_t jpeg_idct_8x16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = 0;
  v102 = *MEMORY[0x1E69E9840];
  v95 = *(a1 + 440);
  memset(v101, 0, sizeof(v101));
  v98 = *(a2 + 88);
  do
  {
    v6 = (v98 + 4 * v5);
    v7 = (a3 + 2 * v5);
    v8 = v6[32] * v7[32];
    v9 = 10703 * v8;
    v10 = ((*v6 * *v7) << 13) | 0x400;
    v8 *= 4433;
    v11 = v9 + v10;
    v12 = v10 - v9;
    v13 = v8 + v10;
    v14 = v10 - v8;
    v15 = v6[16] * v7[16];
    v16 = v6[48] * v7[48];
    v17 = 2260 * (v15 - v16);
    v18 = 11363 * (v15 - v16);
    v19 = v18 + 20995 * v16;
    v20 = v17 + 7373 * v15;
    v21 = v18 - 4926 * v15;
    v22 = v17 - 4176 * v16;
    v23 = v19 + v11;
    v100 = v11 - v19;
    v24 = v20 + v13;
    v25 = v13 - v20;
    v26 = v21 + v14;
    v27 = v14 - v21;
    v28 = v22 + v12;
    v29 = v12 - v22;
    v30 = v6[8] * v7[8];
    v31 = v6[24] * v7[24];
    LODWORD(v22) = v7[40];
    v32 = v6[40];
    v33 = v7[56];
    v34 = v6[56];
    v35 = v30 + v32 * v7[40];
    v36 = 11086 * (v30 + v31);
    v37 = 10217 * v35;
    v38 = 8956 * (v30 + v34 * v33);
    v39 = 7350 * (v30 - v34 * v33);
    v40 = 5461 * v35;
    v41 = 3363 * (v30 - v31);
    v42 = v36 - 18730 * v30 + 10217 * v35 + v38;
    v43 = v41 - 15038 * v30 + 5461 * v35 + v39;
    v44 = 1136 * (v31 + v32 * v22);
    v45 = v31 + v34 * v33;
    v46 = -5461 * v45;
    v47 = v36 + 589 * v31 + v44 - 5461 * v45;
    v48 = v32 * v22;
    v49 = 11529 * (v48 - v31);
    v45 *= -10217;
    v50 = v41 + 16154 * v31 + v49 + v45;
    v51 = v44 - 9222 * v48 + v37 - 11086 * (v48 + v34 * v33);
    v52 = v38 - 11086 * (v48 + v34 * v33);
    v53 = v34 * v33;
    v54 = v46 + 8728 * v53 + v52;
    v55 = v45 + 25733 * v53;
    v56 = 3363 * (v53 - v48);
    v57 = v55 + v39 + v56;
    v58 = v101 + v5;
    v59 = v49 - 6278 * v48 + v40 + v56;
    *v58 = (v42 + v23) >> 11;
    v58[120] = (v23 - v42) >> 11;
    v58[8] = (v47 + v24) >> 11;
    v58[112] = (v24 - v47) >> 11;
    v58[16] = (v51 + v26) >> 11;
    v58[104] = (v26 - v51) >> 11;
    v58[24] = (v54 + v28) >> 11;
    v58[96] = (v28 - v54) >> 11;
    v58[32] = (v57 + v29) >> 11;
    v58[88] = (v29 - v57) >> 11;
    v58[40] = (v59 + v27) >> 11;
    v58[80] = (v27 - v59) >> 11;
    v58[48] = (v50 + v25) >> 11;
    v58[72] = (v25 - v50) >> 11;
    v58[56] = (v43 + v100) >> 11;
    v58[64] = (v100 - v43) >> 11;
    ++v5;
  }

  while (v5 != 8);
  v60 = 0;
  v61 = v95 - 384;
  result = 4294959923;
  do
  {
    v63 = &v101[v60];
    v64 = (*(a4 + v60 * 4) + a5);
    v65 = v63[1];
    v66 = *v63 + 16400;
    v67 = v63[4];
    v68 = v63[5];
    v69 = v66 + v67;
    v70 = v66 - v67;
    v71 = v63[6];
    v72 = v63[7];
    v73 = v69 << 13;
    v74 = v63[2];
    LODWORD(v63) = v63[3];
    v75 = 4433 * (v71 + v74);
    v76 = v75 + 6270 * v74;
    v77 = v75 - 15137 * v71;
    v78 = v63 + v72;
    v79 = 9633 * (v65 + v68 + v63 + v72);
    v80 = v76 + (v69 << 13);
    v81 = v79 - 3196 * (v65 + v68);
    v82 = -7373 * (v65 + v72);
    v83 = v82 + 12299 * v65 + v81;
    v84 = v82 + 2446 * v72;
    v85 = -20995 * (v63 + v68);
    v86 = v85 + 16819 * v68;
    LODWORD(v63) = v85 + 25172 * v63;
    v87 = (v83 + v80);
    v88 = v79 - 16069 * v78;
    v89 = (v80 - v83);
    v90 = v70 << 13;
    *v64 = *(v61 + ((v87 >> 18) & 0x3FF));
    v91 = v77 + (v70 << 13);
    LODWORD(v63) = v63 + v88;
    v92 = v90 - v77;
    v64[7] = *(v61 + ((v89 >> 18) & 0x3FF));
    v93 = v86 + v81;
    v64[1] = *(v61 + (((v63 + v91) >> 18) & 0x3FF));
    v64[6] = *(v61 + (((v91 - v63) >> 18) & 0x3FF));
    v94 = v84 + v88;
    v64[2] = *(v61 + (((v93 + v92) >> 18) & 0x3FF));
    v64[5] = *(v61 + (((v92 - v93) >> 18) & 0x3FF));
    v64[3] = *(v61 + (((v94 + v73 - v76) >> 18) & 0x3FF));
    v64[4] = *(v61 + (((v73 - v76 - v94) >> 18) & 0x3FF));
    v60 += 2;
  }

  while (v60 != 32);
  return result;
}

uint64_t jpeg_idct_7x14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5)
{
  v5 = 0;
  v83 = *MEMORY[0x1E69E9840];
  v79 = *(a1 + 440);
  v82 = 0;
  memset(v81, 0, sizeof(v81));
  v6 = *(a2 + 88);
  do
  {
    v7 = (v6 + 4 * v5);
    v8 = (a3 + 2 * v5);
    v9 = v7[32] * v8[32];
    v10 = ((*v7 * *v8) << 13) | 0x400;
    v11 = v10 + 10438 * v9;
    v12 = v10 + 2578 * v9;
    v13 = v10 - 7223 * v9;
    v14 = v7[16] * v8[16];
    v15 = v7[48] * v8[48];
    v16 = 9058 * (v14 + v15);
    v17 = v16 + 2237 * v14;
    v18 = v16 - 14084 * v15;
    v19 = 5027 * v14 - 11295 * v15;
    v20 = v17 + v11;
    v21 = v11 - v17;
    v22 = v18 + v12;
    v23 = v12 - v18;
    v24 = v19 + v13;
    v25 = v13 - v19;
    v26 = v7[8] * v8[8];
    v27 = v7[24] * v8[24];
    v28 = v7[40] * v8[40];
    v29 = v7[56] * v8[56];
    v30 = 10935 * (v26 + v27);
    v31 = 9810 * (v26 + v28);
    v32 = v30 - 9232 * v26 + v31;
    v33 = -1297 * (v27 + v28) - (v29 << 13);
    v34 = v30 - 3474 * v27 + v33;
    v35 = v31 - 19447 * v28 + v33;
    v36 = 6164 * (v26 + v28);
    v37 = v26 - v27;
    v38 = 11512 * (v28 - v27);
    v39 = v38 - 13850 * v28 + v36;
    v40 = v36 - 8693 * v26;
    v41 = v38 + 5529 * v27;
    v42 = 3826 * v37 - (v29 << 13);
    v43 = v40 + v42;
    v44 = v41 + v42;
    LODWORD(v42) = v37 - v28;
    v45 = v81 + v5;
    v46 = v32 + (v29 << 13);
    v47 = v39 + (v29 << 13);
    LODWORD(v42) = v42 + v29;
    *v45 = (v46 + v20) >> 11;
    v45[91] = (v20 - v46) >> 11;
    v45[7] = (v34 + v22) >> 11;
    v45[84] = (v22 - v34) >> 11;
    v45[14] = (v35 + v24) >> 11;
    v48 = (v10 - 11586 * v9) >> 11;
    v45[77] = (v24 - v35) >> 11;
    v45[21] = v48 + 4 * v42;
    v45[70] = v48 - 4 * v42;
    v45[28] = (v47 + v25) >> 11;
    v45[63] = (v25 - v47) >> 11;
    v45[35] = (v44 + v23) >> 11;
    v45[56] = (v23 - v44) >> 11;
    v45[42] = (v43 + v21) >> 11;
    v45[49] = (v21 - v43) >> 11;
    ++v5;
  }

  while (v5 != 7);
  v49 = 0;
  v50 = v79 - 384;
  result = 11585;
  do
  {
    v52 = *a4++;
    v53 = *(v81 + v49 + 4);
    v54 = (*(v81 + v49) << 13) + 134348800;
    v56 = *(&v81[1] + v49 + 4);
    v55 = *(&v81[1] + v49 + 8);
    v57 = *(&v81[1] + v49);
    v58 = 7223 * (v57 - v55);
    v60 = *(v81 + v49 + 8);
    v59 = *(v81 + v49 + 12);
    v61 = 2578 * (v60 - v57);
    v62 = v61 + v58;
    v63 = v55 + v60;
    v64 = v58 - 637 * v55;
    v65 = 7663 * (v59 + v53);
    v66 = v61 - 20239 * v60;
    v67 = 1395 * (v53 - v59);
    v68 = v65 - v67;
    v69 = v65 + v67;
    v70 = v54 + 10438 * v63;
    v71 = v64 + v70;
    v72 = 5027 * (v56 + v53);
    v73 = v68 + v72;
    v74 = v54 - 15083 * v57 + v62;
    v75 = (v52 + a5);
    *v75 = *(v50 + (((v73 + v71) >> 18) & 0x3FF));
    v76 = -11295 * (v56 + v59);
    v77 = v69 + v76;
    v75[6] = *(v50 + (((v71 - v73) >> 18) & 0x3FF));
    v78 = v72 + 15326 * v56 + v76;
    v75[1] = *(v50 + (((v77 + v74) >> 18) & 0x3FF));
    v75[5] = *(v50 + (((v74 - v77) >> 18) & 0x3FF));
    v75[2] = *(v50 + (((v78 + v66 + v70) >> 18) & 0x3FF));
    v75[4] = *(v50 + (((v66 + v70 - v78) >> 18) & 0x3FF));
    v75[3] = *(v50 + (((v54 + 11585 * (v57 - v63)) >> 18) & 0x3FF));
    v49 += 28;
  }

  while (v49 != 392);
  return result;
}

uint64_t jpeg_idct_6x12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5)
{
  v5 = 0;
  v64 = *MEMORY[0x1E69E9840];
  v61 = *(a1 + 440);
  memset(v63, 0, sizeof(v63));
  v6 = *(a2 + 88);
  do
  {
    v7 = (v6 + 4 * v5);
    v8 = (a3 + 2 * v5);
    v9 = ((*v7 * *v8) << 13) | 0x400;
    v10 = 10033 * v7[32] * v8[32];
    v11 = v10 + v9;
    v12 = v9 - v10;
    v13 = v7[16] * v8[16];
    v14 = v7[48] * v8[48];
    v15 = v9 + ((v13 - v14) << 13);
    v16 = v9 - ((v13 - v14) << 13);
    v17 = 11190 * v13 + (v14 << 13);
    v18 = v17 + v11;
    v19 = v11 - v17;
    v20 = 2998 * v13 - (v14 << 13);
    v21 = v20 + v12;
    v22 = v12 - v20;
    v23 = v7[8] * v8[8];
    v24 = v7[24] * v8[24];
    v25 = v7[40] * v8[40];
    LODWORD(v8) = v8[56];
    LODWORD(v7) = v7[56];
    v26 = 10703 * v24;
    v27 = -4433 * v24;
    v28 = 7053 * (v23 + v25 + v7 * v8);
    v29 = v28 + 2139 * (v23 + v25);
    v30 = v24 - v25;
    v31 = v26 + 2295 * v23 + v29;
    v32 = -8565 * (v25 + v7 * v8);
    v33 = v27 - 12112 * v25 - 8565 * (v25 + v7 * v8) + v29;
    v34 = v7 * v8;
    v35 = 12998 * v34 - v26 + v32;
    v36 = v23 - v34;
    v37 = v63 + v5;
    v38 = v35 + v28;
    v39 = v27 - 5540 * v23 - 16244 * v34 + v28;
    v40 = 4433 * (v36 + v30);
    v41 = v40 + 6270 * v36;
    v42 = v40 - 15137 * v30;
    *v37 = (v31 + v18) >> 11;
    v37[66] = (v18 - v31) >> 11;
    v37[6] = (v41 + v15) >> 11;
    v37[60] = (v15 - v41) >> 11;
    v37[12] = (v33 + v21) >> 11;
    v37[54] = (v21 - v33) >> 11;
    v37[18] = (v38 + v22) >> 11;
    v37[48] = (v22 - v38) >> 11;
    v37[24] = (v42 + v16) >> 11;
    v37[42] = (v16 - v42) >> 11;
    v37[30] = (v39 + v19) >> 11;
    v37[36] = (v19 - v39) >> 11;
    ++v5;
  }

  while (v5 != 6);
  v43 = 0;
  v44 = v61 - 384;
  do
  {
    v45 = *a4++;
    v46 = (v45 + a5);
    v47 = *(v63 + v43 + 4);
    v48 = *(&v63[1] + v43);
    v49 = *(&v63[1] + v43 + 4);
    v50 = (*(v63 + v43) << 13) + 134348800;
    v51 = v50 + 5793 * v48;
    v52 = *(v63 + v43 + 12);
    v53 = 10033 * *(v63 + v43 + 8);
    v54 = 2998 * (v49 + v47);
    v55 = v54 + ((v52 + v47) << 13);
    v56 = v49 - v52;
    v57 = v47 - (v52 + v49);
    v58 = v50 - 11586 * v48;
    *v46 = *(v44 + (((v55 + v51 + v53) >> 18) & 0x3FF));
    v59 = v54 + (v56 << 13);
    v46[5] = *(v44 + (((v51 + v53 - v55) >> 18) & 0x3FF));
    v46[1] = *(v44 + (((v58 + (v57 << 13)) >> 18) & 0x3FF));
    v46[4] = *(v44 + (((v58 - (v57 << 13)) >> 18) & 0x3FF));
    v46[2] = *(v44 + (((v59 + v51 - v53) >> 18) & 0x3FF));
    result = *(v44 + (((v51 - v53 - v59) >> 18) & 0x3FF));
    v46[3] = result;
    v43 += 24;
  }

  while (v43 != 288);
  return result;
}

uint64_t jpeg_idct_5x10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5)
{
  v5 = 0;
  v59 = *MEMORY[0x1E69E9840];
  v55 = *(a1 + 440);
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v6 = *(a2 + 88);
  do
  {
    v7 = (v6 + 4 * v5);
    v8 = (a3 + 2 * v5);
    v9 = ((*v7 * *v8) << 13) | 0x400;
    v10 = v7[32] * v8[32];
    v11 = v9 + 9373 * v10;
    v12 = v9 - 3580 * v10;
    v13 = v9 - 11586 * v10;
    v14 = v7[16] * v8[16];
    v15 = v7[48] * v8[48];
    v16 = 6810 * (v14 + v15);
    v17 = v16 + 4209 * v14;
    v18 = v16 - 17828 * v15;
    v19 = v17 + v11;
    v20 = v11 - v17;
    v21 = v18 + v12;
    v22 = v12 - v18;
    v23 = v7[8] * v8[8];
    v24 = v7[24] * v8[24];
    v25 = v7[40] * v8[40];
    LODWORD(v8) = v8[56];
    LODWORD(v7) = v7[56];
    v26 = v24 + v7 * v8;
    v27 = v24 - v7 * v8;
    v28 = 2531 * v27 + (v25 << 13);
    v29 = 7791 * v26 + 11443 * v23 + v28;
    v30 = 1812 * v23 - 7791 * v26 + v28;
    v31 = 4815 * v26;
    v32 = -6627 * v27 + (v25 << 13);
    LODWORD(v27) = v23 - v25 - v27;
    v33 = 10323 * v23 - (v31 + v32);
    v34 = 5260 * v23 - v31;
    v35 = v57 + v5;
    v36 = v34 + v32;
    *v35 = (v29 + v19) >> 11;
    v35[45] = (v19 - v29) >> 11;
    v35[5] = (v33 + v21) >> 11;
    v35[40] = (v21 - v33) >> 11;
    v35[10] = (v13 >> 11) + 4 * v27;
    v35[35] = (v13 >> 11) - 4 * v27;
    v35[15] = (v36 + v22) >> 11;
    v35[30] = (v22 - v36) >> 11;
    v35[20] = (v30 + v20) >> 11;
    v35[25] = (v20 - v30) >> 11;
    ++v5;
  }

  while (v5 != 5);
  v37 = 0;
  v38 = v55 - 384;
  result = a5;
  do
  {
    v40 = *a4++;
    v41 = *(v57 + v37 + 4);
    v42 = (v40 + a5);
    v43 = (*(v57 + v37) << 13) + 134348800;
    v44 = *(v57 + v37 + 8);
    v45 = *(v57 + v37 + 12);
    v46 = *(&v57[1] + v37);
    v47 = 6476 * (v46 + v44);
    v48 = v44 - v46;
    v49 = v43 + 2896 * v48;
    v50 = 6810 * (v45 + v41);
    v51 = v49 + v47;
    v52 = v50 + 4209 * v41;
    v53 = v50 - 17828 * v45;
    *v42 = *(v38 + (((v52 + v49 + v47) >> 18) & 0x3FF));
    v54 = v49 - v47;
    v42[4] = *(v38 + (((v51 - v52) >> 18) & 0x3FF));
    v42[1] = *(v38 + (((v53 + v54) >> 18) & 0x3FF));
    v42[3] = *(v38 + (((v54 - v53) >> 18) & 0x3FF));
    v42[2] = *(v38 + (((v43 + 268423872 * v48) >> 18) & 0x3FF));
    v37 += 20;
  }

  while (v37 != 200);
  return result;
}

uint64_t jpeg_idct_4x8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5)
{
  v58 = *MEMORY[0x1E69E9840];
  v55 = *(a1 + 440);
  memset(v57, 0, sizeof(v57));
  v5 = (a3 + 64);
  v6 = v57;
  v7 = 5;
  v8 = *(a2 + 88);
  do
  {
    v9 = *(v5 - 16);
    if (*(v5 - 24) | v9)
    {
      goto LABEL_9;
    }

    if (*(v5 - 8) || *v5 || v5[8] || v5[16] || v5[24])
    {
      v9 = 0;
LABEL_9:
      v10 = v8[32] * *v5;
      v11 = ((*v8 * *(v5 - 32)) << 13) | 0x400;
      v12 = v11 + (v10 << 13);
      v13 = v11 - (v10 << 13);
      v14 = v8[16] * v9;
      v15 = v8[48] * v5[16];
      v16 = 4433 * (v14 + v15);
      v17 = v16 + 6270 * v14;
      v18 = v16 - 15137 * v15;
      v19 = v17 + v12;
      v20 = v12 - v17;
      v21 = v18 + v13;
      v22 = v13 - v18;
      v23 = v8[56] * v5[24];
      v24 = v8[40] * v5[8];
      v25 = v8[24];
      v26 = v8[8] * *(v5 - 24);
      v27 = v23 + v25 * *(v5 - 8);
      v28 = 9633 * (v24 + v26 + v27);
      v29 = v28 - 16069 * v27;
      v30 = v28 - 3196 * (v24 + v26);
      v31 = -7373 * (v23 + v26);
      v32 = v31 + 2446 * v23 + v29;
      v33 = v31 + 12299 * v26 + v30;
      v34 = -20995 * (v24 + v25 * *(v5 - 8));
      v35 = v34 + 16819 * v24 + v30;
      v36 = v34 + 25172 * v25 * *(v5 - 8) + v29;
      *v6 = (v33 + v19) >> 11;
      v6[28] = (v19 - v33) >> 11;
      v6[4] = (v36 + v21) >> 11;
      v6[24] = (v21 - v36) >> 11;
      v6[8] = (v35 + v22) >> 11;
      v6[20] = (v22 - v35) >> 11;
      v6[12] = (v32 + v20) >> 11;
      v37 = (v20 - v32) >> 11;
      v38 = 16;
      goto LABEL_10;
    }

    LODWORD(v37) = 4 * *(v5 - 32) * *v8;
    *v6 = v37;
    v6[4] = v37;
    v6[8] = v37;
    v6[12] = v37;
    v6[16] = v37;
    v6[20] = v37;
    v6[24] = v37;
    v38 = 28;
LABEL_10:
    v6[v38] = v37;
    ++v6;
    ++v8;
    --v7;
    ++v5;
  }

  while (v7 > 1);
  v39 = 0;
  v40 = v55 - 384;
  do
  {
    v41 = *a4++;
    v42 = (v41 + a5);
    v43 = DWORD1(v57[v39]);
    v44 = DWORD2(v57[v39]);
    v45 = HIDWORD(v57[v39]);
    v46 = LODWORD(v57[v39]) + 16400;
    v47 = v46 + v44;
    v48 = (v46 + v44) << 13;
    v49 = v46 - v44;
    v50 = 4433 * (v45 + v43);
    v51 = v49 << 13;
    v52 = v50 + 6270 * v43;
    v53 = v50 - 15137 * v45;
    *v42 = *(v40 + (((v52 + (v47 << 13)) >> 18) & 0x3FF));
    v42[3] = *(v40 + (((v48 - v52) >> 18) & 0x3FF));
    result = *(v40 + (((v53 + (v49 << 13)) >> 18) & 0x3FF));
    v42[1] = result;
    v42[2] = *(v40 + (((v51 - v53) >> 18) & 0x3FF));
    ++v39;
  }

  while (v39 != 8);
  return result;
}

uint64_t jpeg_idct_3x6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5)
{
  v5 = 0;
  v36 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 440);
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v7 = *(a2 + 88);
  do
  {
    v8 = v34 + v5;
    v9 = (v7 + 4 * v5);
    v10 = (a3 + 2 * v5);
    v11 = ((*v9 * *v10) << 13) | 0x400;
    v12 = v9[32] * v10[32];
    v13 = v11 + 5793 * v12;
    v14 = (v11 - 11586 * v12) >> 11;
    v15 = 10033 * v9[16] * v10[16];
    v16 = v15 + v13;
    v17 = v13 - v15;
    v18 = v9[8] * v10[8];
    v19 = v9[24] * v10[24];
    v20 = v9[40] * v10[40];
    v21 = 2998 * (v18 + v20);
    v22 = v21 + ((v18 + v19) << 13);
    v23 = v21 + ((v20 - v19) << 13);
    LODWORD(v18) = v18 - (v19 + v20);
    *v8 = (v22 + v16) >> 11;
    v8[15] = (v16 - v22) >> 11;
    v8[3] = v14 + 4 * v18;
    v8[12] = v14 - 4 * v18;
    v8[6] = (v23 + v17) >> 11;
    v8[9] = (v17 - v23) >> 11;
    ++v5;
  }

  while (v5 != 3);
  v24 = 0;
  v25 = v6 - 384;
  do
  {
    v26 = *a4++;
    v27 = (v26 + a5);
    v28 = (*(v34 + v24) << 13) + 134348800;
    v29 = *(v34 + v24 + 8);
    v30 = v28 + 5793 * v29;
    v31 = (v28 + 268423870 * v29);
    v32 = 10033 * *(v34 + v24 + 4);
    *v27 = *(v25 + (((v30 + v32) >> 18) & 0x3FF));
    result = *(v25 + (((v30 - v32) >> 18) & 0x3FF));
    v27[2] = result;
    v27[1] = *(v25 + ((v31 >> 18) & 0x3FF));
    v24 += 12;
  }

  while (v24 != 72);
  return result;
}

uint64_t jpeg_idct_2x4(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t *a4, unsigned int a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 440);
  memset(v26, 0, sizeof(v26));
  v6 = v26;
  v7 = *(a2 + 88);
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = *v7 * *a3;
    v11 = v7[16];
    v12 = (v10 + v11 * a3[16]) << 13;
    v13 = v10 - v11 * a3[16];
    v14 = v7[8] * a3[8];
    v15 = v7[24] * a3[24];
    v16 = 4433 * (v14 + v15);
    v17 = v16 + 6270 * v14;
    v18 = v16 - 15137 * v15;
    result = v17 + v12;
    *v6 = v17 + v12;
    v6[6] = v12 - v17;
    v6[2] = v18 + (v13 << 13);
    v6[4] = (v13 << 13) - v18;
    ++a3;
    ++v7;
    ++v6;
    v8 = 0;
  }

  while ((v9 & 1) != 0);
  v20 = 0;
  v21 = v5 - 384;
  do
  {
    v22 = *a4++;
    v23 = (v22 + a5);
    v24 = LODWORD(v26[v20]) + 33587200;
    v25 = DWORD2(v26[v20]);
    *v23 = *(v21 + (((v24 + v25) >> 16) & 0x3FF));
    v23[1] = *(v21 + (((v24 - v25) >> 16) & 0x3FF));
    ++v20;
  }

  while (v20 != 4);
  return result;
}

uint64_t jpeg_idct_1x2(uint64_t result, uint64_t a2, unsigned __int16 *a3, void *a4, unsigned int a5)
{
  v5 = *(result + 440) - 384;
  v6 = *(a2 + 88);
  v7 = *v6 * *a3 + 4100;
  LODWORD(v6) = v6[8] * a3[8];
  *(*a4 + a5) = *(v5 + (((v6 + v7) >> 3) & 0x3FF));
  *(a4[1] + a5) = *(v5 + (((v7 - v6) >> 3) & 0x3FF));
  return result;
}

double _cg_jpeg_CreateCompress(char *a1, int a2, uint64_t a3)
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

  if (a3 != 584)
  {
    v6 = *a1;
    *(v6 + 40) = 22;
    *(v6 + 48) = 584;
    *(*a1 + 52) = a3;
    (**a1)(a1);
  }

  v7 = *a1;
  v8 = *(a1 + 3);
  bzero(a1, 0x248uLL);
  *a1 = v7;
  *(a1 + 3) = v8;
  *(a1 + 8) = 0;
  _cg_jinit_memory_mgr(a1);
  *(a1 + 2) = 0;
  *(a1 + 5) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 17) = 0;
  memset_pattern16(a1 + 144, "d", 0x10uLL);
  result = 0.0;
  *(a1 + 12) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 119) = 8;
  *(a1 + 60) = _cg_jpeg_natural_order;
  *(a1 + 122) = 63;
  *(a1 + 71) = 0;
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 9) = 100;
  return result;
}

uint64_t _cg_jpeg_suppress_tables(uint64_t result, int a2)
{
  for (i = 0; i != 32; i += 8)
  {
    v3 = *(result + 112 + i);
    if (v3)
    {
      *(v3 + 128) = a2;
    }
  }

  v4 = result + 192;
  v5 = 4;
  do
  {
    v6 = *(v4 - 32);
    if (v6)
    {
      *(v6 + 276) = a2;
    }

    if (*v4)
    {
      *(*v4 + 276) = a2;
    }

    v4 += 8;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t _cg_jpeg_finish_compress(uint64_t a1)
{
  v2 = *(a1 + 36);
  if ((v2 - 101) >= 2)
  {
    if (v2 == 103)
    {
      goto LABEL_8;
    }

    v5 = *a1;
    *(v5 + 10) = 21;
    *(v5 + 12) = v2;
    v4 = *a1;
  }

  else
  {
    if (*(a1 + 344) < *(a1 + 52))
    {
      v3 = *a1;
      *(v3 + 10) = 69;
      (*v3)(a1);
    }

    v4 = (*(a1 + 496) + 16);
  }

  (*v4)(a1);
LABEL_8:
  for (i = *(a1 + 496); !*(i + 28); i = *(a1 + 496))
  {
    (*i)(a1);
    v7 = *(a1 + 368);
    if (v7)
    {
      for (j = 0; j < v7; ++j)
      {
        v9 = *(a1 + 16);
        if (v9)
        {
          *(v9 + 8) = j;
          *(v9 + 16) = v7;
          (*v9)(a1);
        }

        if (!(*(*(a1 + 520) + 8))(a1, 0))
        {
          v10 = *a1;
          *(v10 + 10) = 25;
          (*v10)(a1);
        }

        v7 = *(a1 + 368);
      }
    }

    (*(*(a1 + 496) + 16))(a1);
  }

  (*(*(a1 + 528) + 24))(a1);
  (*(*(a1 + 40) + 32))(a1);

  return _cg_jpeg_abort(a1);
}

uint64_t _cg_jpeg_write_tables(uint64_t a1)
{
  v2 = *(a1 + 36);
  if (v2 != 100)
  {
    v3 = *a1;
    *(v3 + 10) = 21;
    *(v3 + 12) = v2;
    (**a1)(a1);
  }

  (*(*a1 + 32))(a1);
  (*(*(a1 + 40) + 16))(a1);
  _cg_jinit_marker_writer(a1);
  (*(*(a1 + 528) + 32))(a1);
  v4 = *(*(a1 + 40) + 32);

  return v4(a1);
}

double mq_encoder::start(mq_encoder *this, unsigned __int8 *a2, int a3)
{
  if ((*(this + 56) & 1) == 0)
  {
    v3 = 0;
    v4 = &dword_1EA8E18B8;
    do
    {
      v5 = dword_186205F90[v3 >> 1];
      *(v4 - 4) = mq_encoder::p_bar_table[v5] + (v3 << 31);
      *(v4 - 1) = &mq_encoder::transition_table + 32 * (v3 & 1 | (2 * v5));
      v6 = dword_18620604C[v3 >> 1];
      v8 = v3 >> 1 != 46 && mq_encoder::p_bar_table[v3 >> 1] == 22017;
      v9 = v3 & 1 ^ v8;
      *v4 = mq_encoder::p_bar_table[v6] + (v9 << 31);
      *(v4 + 1) = &mq_encoder::transition_table + 32 * (v9 | (2 * v6));
      ++v3;
      v4 += 8;
    }

    while (v3 != 94);
    *(this + 56) = 1;
  }

  if (*(this + 35) == 1)
  {
    mq_encoder::start();
  }

  if (*(this + 2))
  {
    mq_encoder::start();
  }

  if (*(this + 5) || *(this + 6))
  {
    mq_encoder::start();
  }

  if (!a2)
  {
    mq_encoder::start();
  }

  *(this + 35) = 1;
  *(this + 34) = a3;
  *(this + 2) = a2;
  *(this + 33) = 0;
  if (a3)
  {
    *&result = 0x8000;
    *this = xmmword_186205F80;
    *(this + 3) = a2 - 1;
    *(this + 32) = *(a2 - 1);
  }

  else
  {
    *(this + 3) = a2;
    *&result = 8;
    *(this + 1) = 8;
  }

  return result;
}

unsigned __int8 *mq_encoder::terminate(mq_encoder *this, int a2)
{
  if ((*(this + 35) & 1) == 0)
  {
    mq_encoder::terminate();
  }

  if (*(this + 33) == 1)
  {
    mq_encoder::terminate();
  }

  if (*(this + 34) != 1)
  {
    v10 = *(this + 2);
    v11 = *(this + 3);
    v12 = *(this + 3);
    if (a2)
    {
      v9 = *(this + 3);
      if (v10 == 8)
      {
LABEL_29:
        *(this + 2) = v10;
        *(this + 3) = v11;
        *(this + 3) = v12;
        goto LABEL_30;
      }

      v13 = *(this + 3);
      if (v10 >= 1)
      {
        v14 = v10 + 1;
        v13 = *(this + 3);
        do
        {
          v13 = (2 * v13) | 1;
          --v14;
        }

        while (v14 > 1);
        *(this + 2) = 0;
        *(this + 3) = v13;
      }

      *(this + 3) = v12 + 1;
      *v12 = v13;
LABEL_28:
      v9 = *(this + 3);
      if (!a2)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (v11 == 255)
    {
      if (v10)
      {
        mq_encoder::terminate();
      }

      v15 = 0;
      *(this + 3) = v12 + 1;
      *v12 = -1;
      v16 = 7;
    }

    else
    {
      if (v10 == 8)
      {
        v9 = *(this + 3);
        goto LABEL_30;
      }

      v15 = *(this + 3);
      v16 = *(this + 2);
      if (v10 < 1)
      {
        goto LABEL_27;
      }
    }

    v17 = 0;
    v18 = v16 + 1;
    do
    {
      v15 = v17 | (2 * v15);
      v17 ^= 1u;
      --v18;
    }

    while (v18 > 1);
    *(this + 2) = 0;
    *(this + 3) = v15;
LABEL_27:
    v19 = *(this + 3);
    *(this + 3) = v19 + 1;
    *v19 = v15;
    goto LABEL_28;
  }

  v4 = *(this + 3);
  v23 = *this;
  v5 = *(this + 1);
  *(this + 1) = HIDWORD(*this) << *(this + 1);
  if (SDWORD2(v23) <= 11)
  {
    v6 = 12 - v5;
    do
    {
      mq_encoder::transfer_byte(this);
      v7 = *(this + 2);
      *(this + 1) <<= v7;
      v8 = __OFSUB__(v6, v7);
      v6 -= v7;
    }

    while (!((v6 < 0) ^ v8 | (v6 == 0)));
  }

  mq_encoder::transfer_byte(this);
  v9 = *(this + 3);
  if (a2)
  {
    *this = v23;
    *(this + 3) = v4;
  }

  *(*(this + 2) - 1) = *(this + 32);
LABEL_30:
  v20 = this;
  do
  {
    v21 = v20;
    v20 = *(v20 + 5);
  }

  while (v20);
  while (v21 != this)
  {
    if ((*(v21 + 36) & 1) == 0)
    {
      mq_encoder::find_truncation_point(v21, v9);
    }

    v21 = *(v21 + 48);
  }

  *(this + 35) = 0;
  if (a2)
  {
    mq_encoder::find_truncation_point(this, v9);
    return *(this + 3);
  }

  else
  {
    result = *(this + 3);
    if (result != v9)
    {
      mq_encoder::terminate();
    }

    if (v9 > *(this + 2) && *(result - 1) == 255)
    {
      *(this + 3) = --result;
    }

    *(this + 36) = 1;
  }

  return result;
}

uint64_t mq_encoder::transfer_byte(uint64_t this)
{
  if (*(this + 33) == 1)
  {
    mq_encoder::transfer_byte();
  }

  v1 = *(this + 12);
  if (v1 == 255)
  {
    v2 = *(this + 24);
    *(this + 24) = v2 + 1;
    *v2 = -1;
    v3 = *(this + 4);
  }

  else
  {
    v4 = *(this + 4);
    v5 = ((v4 >> 27) & 1) + v1;
    *(this + 12) = v5;
    *(this + 4) = v4 & 0xF7FFFFFF;
    v6 = *(this + 24);
    *(this + 24) = v6 + 1;
    *v6 = v5;
    v3 = *(this + 4);
    if (*(this + 12) != 255)
    {
      *(this + 12) = v3 >> 19;
      v7 = v3 & 0x7FFFF;
      v8 = 8;
      goto LABEL_7;
    }
  }

  *(this + 12) = v3 >> 20;
  v7 = v3 & 0xFFFFF;
  v8 = 7;
LABEL_7:
  *(this + 4) = v7;
  *(this + 8) = v8;
  return this;
}

uint64_t mq_encoder::find_truncation_point(uint64_t this, unsigned __int8 *a2)
{
  if (*(this + 35) == 1)
  {
    mq_encoder::find_truncation_point();
  }

  if (*(this + 36) == 1)
  {
    mq_encoder::find_truncation_point();
  }

  if (*(this + 34) == 1)
  {
    v2 = *(this + 16);
    v3 = *(v2 - 1);
    *(v2 - 1) = 0;
    LODWORD(v2) = *(this + 4);
    v4 = *(this + 8);
    v5 = *(this + 12);
    v6 = v2 << v4;
    v7 = (*this + v2) << v4;
    if ((v6 & 0x8000000) != 0)
    {
      v8 = v5 + 1;
    }

    else
    {
      v8 = *(this + 12);
    }

    if ((v7 & 0x8000000) != 0)
    {
      v9 = v5 + 1;
    }

    else
    {
      v9 = *(this + 12);
    }

    if (v8 > 255 || v9 <= 255)
    {
      if ((v7 & 0x8000000) != 0)
      {
        v7 -= 0x8000000;
      }

      if ((v6 & 0x8000000) != 0)
      {
        v6 -= 0x8000000;
      }

      v10 = *(this + 24);
      v11 = -1;
      v12 = 8;
      while (1)
      {
        if (v10 >= a2)
        {
          mq_encoder::find_truncation_point();
        }

        v13 = v10 + 1;
        *(this + 24) = v10 + 1;
        v14 = *v10;
        v15 = v14 << (8 - v12);
        *(this + 12) = v14;
        v8 = ((v8 - v15) << v12) + (v6 >> (27 - v12));
        v6 = (v6 << v12) & 0x7FFFFFE;
        v9 = ((v9 - v15) << v12) + (v7 >> (27 - v12));
        v7 = (v7 << v12) & 0x7FFFFFE;
        if (v14 == 255)
        {
          v12 = 7;
        }

        else
        {
          v12 = 8;
        }

        ++v11;
        v10 = v13;
        if (v8 <= 255)
        {
          v10 = v13;
          if (v9 >= 256)
          {
            break;
          }
        }
      }

      if (v11 >= 5)
      {
        mq_encoder::find_truncation_point();
      }
    }

    *(*(this + 16) - 1) = v3;
  }

  else if (*(this + 8) != 8)
  {
    ++*(this + 24);
  }

  v16 = *(this + 16);
  v17 = *(this + 24);
  if (v17 > v16 && *(v17 - 1) == 255)
  {
    *(this + 24) = --v17;
  }

  v18 = v17 - v16;
  if (v18 >= 2)
  {
    v19 = (v17 - 2);
    do
    {
      if (v19[1] != 127)
      {
        break;
      }

      if (*v19 != 255)
      {
        break;
      }

      *(this + 24) = v19;
      v18 -= 2;
      v19 -= 2;
    }

    while (v18 > 1);
  }

  *(this + 36) = 1;
  return this;
}

void mq_encoder::mq_encode(mq_encode *this, int a2, int *a3)
{
  if (*(this + 34) != 1 || *(this + 35) != 1 || (a2 & 0x7FFFFFFF) != 0 || (*(this + 33) & 1) != 0)
  {
    mq_encoder::mq_encode();
  }

  v4 = *a3;
  v5 = *a3 & 0x7FFF;
  v6 = *this - v5;
  *this = v6;
  if ((v4 ^ a2) < 0)
  {
    if (v6 >= v5)
    {
      *this = v5;
    }

    else
    {
      *(this + 1) += v5;
    }

    *a3 = *(*(a3 + 1) + 16);
    v7 = *this;
    do
    {
      v7 *= 2;
      v8 = *(this + 2);
      v9 = 2 * *(this + 1);
      *this = v7;
      *(this + 1) = v9;
      *(this + 2) = v8 - 1;
      if (v8 == 1)
      {
        mq_encoder::transfer_byte(this);
        v7 = *this;
      }
    }

    while (v7 < 0x8000);
  }

  else if (v6 < 0x8000)
  {
    if (v6 >= v5)
    {
      *(this + 1) += v5;
    }

    else
    {
      *this = v5;
    }

    *a3 = **(a3 + 1);
    v10 = *this;
    do
    {
      v10 *= 2;
      v11 = *(this + 2);
      v12 = 2 * *(this + 1);
      *this = v10;
      *(this + 1) = v12;
      *(this + 2) = v11 - 1;
      if (v11 == 1)
      {
        mq_encoder::transfer_byte(this);
        v10 = *this;
      }
    }

    while (v10 < 0x8000);
  }

  else
  {
    *(this + 1) += v5;
  }
}

void mq_encoder::mq_encode_run(mq_encoder *this, int a2)
{
  if (*(this + 34) != 1 || *(this + 35) != 1 || *(this + 33) == 1)
  {
    mq_encoder::mq_encode_run();
  }

  v4[1] = &unk_1EA8E2428;
  v4[0] = dword_1EA8D9540;
  mq_encoder::mq_encode(this, (a2 << 30) & 0x80000000, v4);
  mq_encoder::mq_encode(this, a2 << 31, v4);
}

uint64_t mq_encoder::raw_encode(uint64_t this, unsigned int a2)
{
  if (*(this + 34) & 1) != 0 || *(this + 35) != 1 || a2 > 1 || (*(this + 33))
  {
    mq_encoder::raw_encode();
  }

  v2 = *(this + 8);
  v3 = *(this + 12);
  if (v2)
  {
    v4 = 2 * v3;
  }

  else
  {
    v4 = 0;
    v5 = *(this + 24);
    *(this + 24) = v5 + 1;
    *v5 = v3;
    if (*(this + 12) == 255)
    {
      v2 = 7;
    }

    else
    {
      v2 = 8;
    }
  }

  *(this + 8) = v2 - 1;
  *(this + 12) = v4 | a2;
  return this;
}

uint64_t (**_cg_jinit_d_main_controller(uint64_t *a1, int a2))(uint64_t result, int a2)
{
  result = (*a1[1])();
  v5 = result;
  a1[73] = result;
  *result = start_pass_main;
  if (a2)
  {
    v6 = *a1;
    *(v6 + 40) = 3;
    result = (*v6)(a1);
  }

  v7 = *(a1 + 107);
  if (*(a1[80] + 16))
  {
    if (v7 <= 1)
    {
      v8 = *a1;
      *(v8 + 40) = 48;
      (*v8)(a1);
      v7 = *(a1 + 107);
    }

    v9 = a1[73];
    result = (*a1[1])(a1, 1, 16 * *(a1 + 14));
    v10 = *(a1 + 14);
    *(v9 + 112) = result;
    *(v9 + 120) = &result[v10];
    if (v10 >= 1)
    {
      v11 = 0;
      v12 = v7 + 4;
      v13 = (a1[38] + 40);
      do
      {
        v14 = *(v13 - 7);
        v15 = *v13;
        v13 += 24;
        v16 = v15 * v14 / *(a1 + 107);
        result = (*a1[1])(a1, 1, 16 * v16 * v12);
        v17 = &result[v16];
        *(*(v9 + 112) + 8 * v11) = v17;
        *(*(v9 + 120) + 8 * v11++) = &v17[v16 * v12];
        v10 = *(a1 + 14);
      }

      while (v11 < v10);
    }

    v7 = *(a1 + 107) + 2;
  }

  else
  {
    *(v5 + 25) = v7;
    LODWORD(v10) = *(a1 + 14);
  }

  if (v10 >= 1)
  {
    v18 = 0;
    v19 = v5 + 2;
    v20 = (a1[38] + 40);
    do
    {
      result = (*(a1[1] + 16))(a1, 1, (*(v20 - 1) * *(v20 - 3)), (*v20 * *(v20 - 7) / *(a1 + 107) * v7));
      v19[v18++] = result;
      v20 += 24;
    }

    while (v18 < *(a1 + 14));
  }

  return result;
}

uint64_t start_pass_main(uint64_t result, int a2)
{
  v2 = *(result + 584);
  if (a2 == 2)
  {
    *(v2 + 8) = process_data_crank_post;
  }

  else if (a2)
  {
    v24 = *result;
    *(v24 + 40) = 3;
    return (*v24)(result);
  }

  else if (*(*(result + 640) + 16))
  {
    *(v2 + 8) = process_data_context_main;
    v3 = *(result + 56);
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = *(result + 428);
      v6 = *(result + 304);
      v7 = vdupq_n_s64(2uLL);
      do
      {
        v8 = (*(v6 + 40) * *(v6 + 12) / v5);
        v9 = *(*(v2 + 112) + 8 * v4);
        result = *(*(v2 + 120) + 8 * v4);
        v10 = *(v2 + 16 + 8 * v4);
        v11 = (v8 * (v5 + 2));
        if (v11 >= 1)
        {
          v12 = *(v2 + 16 + 8 * v4);
          v13 = *(*(v2 + 120) + 8 * v4);
          v14 = *(*(v2 + 112) + 8 * v4);
          do
          {
            v15 = *v12++;
            *v13++ = v15;
            *v14++ = v15;
            --v11;
          }

          while (v11);
        }

        if (v8 >= 1)
        {
          LODWORD(v16) = 2 * v8;
          v17 = v8 * v5;
          v18 = v8 * (v5 - 2);
          if (2 * v8 <= 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = v16;
          }

          do
          {
            *(result + 8 * v18) = *(v10 + 8 * v17);
            *(result + 8 * v17) = *(v10 + 8 * v18);
            v10 += 8;
            result += 8;
            --v16;
          }

          while (v16);
          result = *v9;
          v19 = (v8 + 1) & 0xFFFFFFFE;
          v20 = vdupq_n_s64(v8 - 1);
          v21 = &v9[-v8 + 1];
          v22 = xmmword_186205EC0;
          do
          {
            v23 = vmovn_s64(vcgeq_u64(v20, v22));
            if (v23.i8[0])
            {
              *(v21 - 1) = result;
            }

            if (v23.i8[4])
            {
              *v21 = result;
            }

            v22 = vaddq_s64(v22, v7);
            v21 += 2;
            v19 -= 2;
          }

          while (v19);
        }

        ++v4;
        v6 += 96;
      }

      while (v4 != v3);
    }

    *(v2 + 128) = 0;
    *(v2 + 136) = 0;
    *(v2 + 104) = 0;
  }

  else
  {
    *(v2 + 8) = process_data_simple_main;
    *(v2 + 96) = *(v2 + 100);
  }

  return result;
}

int32x2_t process_data_context_main(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v8 = *(a1 + 584);
  if (!v8[13].i32[0])
  {
    if (!(*(*(a1 + 592) + 24))(a1, *&v8[v8[16].i32[0] + 14]))
    {
      return result;
    }

    v8[13].i32[0] = 1;
    ++v8[17].i32[0];
  }

  v10 = v8[16].i32[1];
  if (!v10)
  {
LABEL_9:
    v11 = *(a1 + 428);
    v8[12].i32[0] = 0;
    v8[12].i32[1] = v11 - 1;
    if (v8[17].i32[0] == *(a1 + 432))
    {
      v12 = *(a1 + 56);
      if (v12 >= 1)
      {
        v13 = 0;
        v14 = *(a1 + 304);
        v15 = *(a1 + 584);
        v16 = *(v15 + 128);
        v17 = vdupq_n_s64(2uLL);
        do
        {
          v18 = v14[10] * v14[3];
          v19 = v18 / v11;
          if (v14[12] % v18)
          {
            v18 = v14[12] % v18;
          }

          if (!v13)
          {
            *(v15 + 100) = (v18 - 1) / v19 + 1;
          }

          if (v19 >= 1)
          {
            v20 = *(*(v15 + 112 + 8 * v16) + 8 * v13) + 8 * v18;
            v21 = *(v20 - 8);
            v22 = 2 * v19;
            if (v22 <= 1)
            {
              v23 = 1;
            }

            else
            {
              v23 = v22;
            }

            v24 = (v23 + 1) & 0xFFFFFFFE;
            v25 = vdupq_n_s64(v23 - 1);
            v26 = (v20 + 8);
            v27 = xmmword_186205EC0;
            do
            {
              v28 = vmovn_s64(vcgeq_u64(v25, v27));
              if (v28.i8[0])
              {
                *(v26 - 1) = v21;
              }

              if (v28.i8[4])
              {
                *v26 = v21;
              }

              v27 = vaddq_s64(v27, v17);
              v26 += 2;
              v24 -= 2;
            }

            while (v24);
          }

          ++v13;
          v14 += 24;
        }

        while (v13 != v12);
      }
    }

    v8[16].i32[1] = 1;
    goto LABEL_28;
  }

  if (v10 != 1)
  {
    if (v10 != 2)
    {
      return result;
    }

    (*(*(a1 + 600) + 8))(a1, *&v8[v8[16].i32[0] + 14], v8 + 12, v8[12].u32[1], a2, a3, a4);
    if (v8[12].i32[0] < v8[12].i32[1])
    {
      return result;
    }

    v8[16].i32[1] = 0;
    if (*a3 >= a4)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_28:
  (*(*(a1 + 600) + 8))(a1, *&v8[v8[16].i32[0] + 14], v8 + 12, v8[12].u32[1], a2, a3, a4);
  if (v8[12].i32[0] >= v8[12].i32[1])
  {
    v29 = *(a1 + 428);
    if (v8[17].i32[0] == 1)
    {
      v30 = *(a1 + 56);
      if (v30 >= 1)
      {
        v31 = 0;
        v32 = *(a1 + 304);
        v33 = *(a1 + 584);
        v34 = v29 + 2;
        do
        {
          v35 = *(v32 + 40) * *(v32 + 12) / v29;
          if (v35 >= 1)
          {
            v36 = 0;
            v37 = *(*(v33 + 112) + 8 * v31);
            v38 = *(*(v33 + 120) + 8 * v31);
            v39 = 8 * (*(v32 + 40) * *(v32 + 12) / v29);
            v40 = v35 * (v29 + 1);
            v41 = v38 + 8 * v35 * v34;
            v42 = v37 + 8 * v35 * v34;
            v43 = v38 - 8 * v35;
            v44 = v37 - 8 * v35;
            v45 = v38 + 8 * v40;
            v46 = v37 + 8 * v40;
            do
            {
              *(v44 + v36) = *(v46 + v36);
              *(v43 + v36) = *(v45 + v36);
              *(v42 + v36) = *(v37 + v36);
              *(v41 + v36) = *(v38 + v36);
              v36 += 8;
            }

            while (v39 != v36);
          }

          ++v31;
          v32 += 96;
        }

        while (v31 != v30);
      }
    }

    v47 = v8[16].i32[0] ^ 1;
    v8[13].i32[0] = 0;
    result = vadd_s32(vdup_n_s32(v29), 0x200000001);
    v8[12] = result;
    v8[16].i32[0] = v47;
    v8[16].i32[1] = 2;
  }

  return result;
}

uint64_t process_data_simple_main(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[73];
  v9 = *(v8 + 100);
  if (*(v8 + 96) >= v9)
  {
    result = (*(a1[74] + 24))(a1, v8 + 16);
    if (!result)
    {
      return result;
    }

    *(v8 + 96) = 0;
    v9 = *(v8 + 100);
  }

  v11 = *(a1[75] + 8);

  return v11(a1, v8 + 16, v8 + 96, v9, a2, a3, a4);
}

__n128 _cg_jinit_inverse_dct(uint64_t a1)
{
  v2 = (**(a1 + 8))();
  *(a1 + 632) = v2;
  *v2 = start_pass;
  if (*(a1 + 56) >= 1)
  {
    v4 = 0;
    v5 = v2 + 11;
    v6 = (*(a1 + 304) + 88);
    do
    {
      v7 = (**(a1 + 8))(a1, 1, 256);
      *v6 = v7;
      v6 += 12;
      result = 0uLL;
      *v7 = 0u;
      v7[1] = 0u;
      v7[2] = 0u;
      v7[3] = 0u;
      v7[4] = 0u;
      v7[5] = 0u;
      v7[6] = 0u;
      v7[7] = 0u;
      v7[8] = 0u;
      v7[9] = 0u;
      v7[10] = 0u;
      v7[11] = 0u;
      v7[12] = 0u;
      v7[13] = 0u;
      v7[14] = 0u;
      v7[15] = 0u;
      *(v5 + v4++) = -1;
    }

    while (v4 < *(a1 + 56));
  }

  return result;
}

uint64_t start_pass(uint64_t result)
{
  if (*(result + 56) >= 1)
  {
    v1 = result;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = *(result + 304);
    v6 = *(result + 632);
    v7 = v6 + 8;
    v8 = v6 + 88;
    v10 = xmmword_1862061E0;
    v9 = unk_1862061F0;
    v12 = start_pass_aanscalefactor;
    v11 = unk_1862061D0;
    __asm { FMOV            V17.2D, #0.125 }

    v47 = _Q17;
    do
    {
      v18 = *(v5 + 36);
      v19 = *(v5 + 40) + (v18 << 8);
      v20 = _cg_jpeg_idct_1x1;
      if (v19 > 1805)
      {
        if (v19 > 3077)
        {
          if (v19 > 3597)
          {
            if (v19 > 4103)
            {
              if (v19 == 4104)
              {
                v4 = 0;
                v20 = jpeg_idct_16x8;
                goto LABEL_83;
              }

              if (v19 == 4112)
              {
                v4 = 0;
                v20 = jpeg_idct_16x16;
                goto LABEL_83;
              }
            }

            else
            {
              if (v19 == 3598)
              {
                v4 = 0;
                v20 = jpeg_idct_14x14;
                goto LABEL_83;
              }

              if (v19 == 3855)
              {
                v4 = 0;
                v20 = jpeg_idct_15x15;
                goto LABEL_83;
              }
            }
          }

          else if (v19 > 3340)
          {
            if (v19 == 3341)
            {
              v4 = 0;
              v20 = jpeg_idct_13x13;
              goto LABEL_83;
            }

            if (v19 == 3591)
            {
              v4 = 0;
              v20 = jpeg_idct_14x7;
              goto LABEL_83;
            }
          }

          else
          {
            if (v19 == 3078)
            {
              v4 = 0;
              v20 = jpeg_idct_12x6;
              goto LABEL_83;
            }

            if (v19 == 3084)
            {
              v4 = 0;
              v20 = jpeg_idct_12x12;
              goto LABEL_83;
            }
          }
        }

        else if (v19 > 2312)
        {
          if (v19 > 2569)
          {
            if (v19 == 2570)
            {
              v4 = 0;
              v20 = jpeg_idct_10x10;
              goto LABEL_83;
            }

            if (v19 == 2827)
            {
              v4 = 0;
              v20 = jpeg_idct_11x11;
              goto LABEL_83;
            }
          }

          else
          {
            if (v19 == 2313)
            {
              v4 = 0;
              v20 = jpeg_idct_9x9;
              goto LABEL_83;
            }

            if (v19 == 2565)
            {
              v4 = 0;
              v20 = jpeg_idct_10x5;
              goto LABEL_83;
            }
          }
        }

        else if (v19 > 2055)
        {
          if (v19 == 2056)
          {
            v21 = v1[24];
            if (v21 < 3)
            {
              v3 = off_1EF4D2808[v21];
              v4 = v1[24];
              goto LABEL_84;
            }

            v46 = *v1;
            *(*v1 + 40) = 49;
            goto LABEL_101;
          }

          if (v19 == 2064)
          {
            v4 = 0;
            v20 = jpeg_idct_8x16;
            goto LABEL_83;
          }
        }

        else
        {
          if (v19 == 1806)
          {
            v4 = 0;
            v20 = jpeg_idct_7x14;
            goto LABEL_83;
          }

          if (v19 == 2052)
          {
            v4 = 0;
            v20 = jpeg_idct_8x4;
            goto LABEL_83;
          }
        }
      }

      else if (v19 > 1027)
      {
        if (v19 > 1538)
        {
          if (v19 > 1547)
          {
            if (v19 == 1548)
            {
              v4 = 0;
              v20 = jpeg_idct_6x12;
              goto LABEL_83;
            }

            if (v19 == 1799)
            {
              v4 = 0;
              v20 = jpeg_idct_7x7;
              goto LABEL_83;
            }
          }

          else
          {
            if (v19 == 1539)
            {
              v4 = 0;
              v20 = jpeg_idct_6x3;
              goto LABEL_83;
            }

            if (v19 == 1542)
            {
              v4 = 0;
              v20 = jpeg_idct_6x6;
              goto LABEL_83;
            }
          }
        }

        else if (v19 > 1284)
        {
          if (v19 == 1285)
          {
            v4 = 0;
            v20 = jpeg_idct_5x5;
            goto LABEL_83;
          }

          if (v19 == 1290)
          {
            v4 = 0;
            v20 = jpeg_idct_5x10;
            goto LABEL_83;
          }
        }

        else
        {
          if (v19 == 1028)
          {
            v4 = 0;
            v20 = _cg_jpeg_idct_4x4;
            goto LABEL_83;
          }

          if (v19 == 1032)
          {
            v4 = 0;
            v20 = jpeg_idct_4x8;
            goto LABEL_83;
          }
        }
      }

      else if (v19 > 515)
      {
        if (v19 > 773)
        {
          if (v19 == 774)
          {
            v4 = 0;
            v20 = jpeg_idct_3x6;
            goto LABEL_83;
          }

          if (v19 == 1026)
          {
            v4 = 0;
            v20 = jpeg_idct_4x2;
            goto LABEL_83;
          }
        }

        else
        {
          if (v19 == 516)
          {
            v4 = 0;
            v20 = jpeg_idct_2x4;
            goto LABEL_83;
          }

          if (v19 == 771)
          {
            v4 = 0;
            v20 = jpeg_idct_3x3;
            goto LABEL_83;
          }
        }
      }

      else if (v19 > 512)
      {
        if (v19 == 513)
        {
          v4 = 0;
          v20 = jpeg_idct_2x1;
          goto LABEL_83;
        }

        if (v19 == 514)
        {
          v4 = 0;
          v20 = _cg_jpeg_idct_2x2;
          goto LABEL_83;
        }
      }

      else
      {
        if (v19 == 257)
        {
          v4 = 0;
          goto LABEL_83;
        }

        if (v19 == 258)
        {
          v4 = 0;
          v20 = jpeg_idct_1x2;
LABEL_83:
          v3 = v20;
          goto LABEL_84;
        }
      }

      v45 = *v1;
      *(v45 + 10) = 7;
      *(v45 + 12) = v18;
      *(*v1 + 52) = *(v5 + 40);
      v46 = *v1;
LABEL_101:
      result = (*v46)(v1);
      _Q17 = v47;
      v12 = start_pass_aanscalefactor;
      v11 = unk_1862061D0;
      v10 = xmmword_1862061E0;
      v9 = unk_1862061F0;
LABEL_84:
      *(v7 + 8 * v2) = v3;
      if (*(v5 + 52))
      {
        if (*(v8 + 4 * v2) != v4)
        {
          v22 = *(v5 + 80);
          if (v22)
          {
            *(v8 + 4 * v2) = v4;
            v23 = *(v5 + 88);
            if (v4)
            {
              if (v4 == 1)
              {
                for (i = 0; i != 8; ++i)
                {
                  v25 = *(v22 + i * 16);
                  v26 = vmovl_u16(*v25.i8);
                  v27 = vmovl_high_u16(v25);
                  v28 = start_pass_aanscales[i];
                  v29 = vmovl_s16(*v28.i8);
                  v30 = vmovl_high_s16(v28);
                  *v23 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v29.i8, *v26.i8), 0xCuLL), vmull_high_s32(v29, v26), 0xCuLL);
                  v23[1] = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v30.i8, *v27.i8), 0xCuLL), vmull_high_s32(v30, v27), 0xCuLL);
                  v23 += 2;
                }
              }

              else
              {
                v33 = 0;
                v34 = 0;
                do
                {
                  v35 = v34;
                  v36 = *(&start_pass_aanscalefactor + v33);
                  v37 = (v23 + 4 * v34);
                  v38 = *(v22 + 2 * v35);
                  v39 = vmovl_u16(*v38.i8);
                  v40.i64[0] = v39.u32[0];
                  v40.i64[1] = v39.u32[1];
                  v41 = vcvtq_f64_u64(v40);
                  v40.i64[0] = v39.u32[2];
                  v40.i64[1] = v39.u32[3];
                  v42 = vcvtq_f64_u64(v40);
                  v43 = vmovl_high_u16(v38);
                  v40.i64[0] = v43.u32[0];
                  v40.i64[1] = v43.u32[1];
                  v44 = vcvtq_f64_u64(v40);
                  v40.i64[0] = v43.u32[2];
                  v40.i64[1] = v43.u32[3];
                  *v37 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vmulq_f64(vmulq_n_f64(v41, v36), v12), _Q17)), vmulq_f64(vmulq_f64(vmulq_n_f64(v42, v36), v11), _Q17));
                  v37[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vmulq_f64(vmulq_n_f64(v44, v36), v10), _Q17)), vmulq_f64(vmulq_f64(vmulq_n_f64(vcvtq_f64_u64(v40), v36), v9), _Q17));
                  v33 += 8;
                  v34 = v35 + 8;
                }

                while (v33 != 64);
              }
            }

            else
            {
              for (j = 0; j != 128; j += 16)
              {
                v32 = *(v22 + j);
                *v23 = vmovl_u16(*v32.i8);
                v23[1] = vmovl_high_u16(v32);
                v23 += 2;
              }
            }
          }
        }
      }

      ++v2;
      v5 += 96;
    }

    while (v2 < v1[14]);
  }

  return result;
}

char *_cg_jcopy_sample_rows(char *result, int a2, uint64_t a3, int a4, int a5, size_t __n)
{
  if (a5 >= 1)
  {
    v6 = __n;
    v7 = (a3 + 8 * a4);
    v8 = a5 + 1;
    v9 = &result[8 * a2];
    do
    {
      v11 = *v9++;
      v10 = v11;
      v12 = *v7++;
      result = memcpy(v12, v10, v6);
      --v8;
    }

    while (v8 > 1);
  }

  return result;
}

void kd_create_dwt_description(int a1, int a2, kdu_params *this, int a4, BOOL *a5, BOOL *a6, BOOL *a7, int *a8, void *a9, void *a10)
{
  *a9 = 0;
  *a10 = 0;
  *a8 = 0;
  if (a1 != -1)
  {
    *a6 = 1;
    *a7 = 1;
    if (a1)
    {
      if (a1 == 1)
      {
        *a5 = 1;
        *a8 = 2;
        operator new[]();
      }

      kd_create_dwt_description();
    }

    *a5 = 0;
    *a8 = 4;
    operator new[]();
  }

  v16 = kdu_params::access_cluster(this, "ATK");
  if (!v16 || (v17 = kdu_params::access_relation(v16, a4, -1, a2, 1), (v18 = v17) == 0))
  {
    v24 = 0;
    *v22 = 0u;
    v23 = 0u;
    kdu_error::kdu_error(v22, "Kakadu Core Error:\n");
    (*(*v22 + 16))(v22, "Unable to find ATK marker segment referenced from within an COD/COC or MCC marker segment.");
    kdu_error::~kdu_error(v22);
  }

  v22[0] = 0;
  if (kdu_params::get(v17, "Ksymmetric", 0, 0, a6, 1, 1, 1) && kdu_params::get(v18, "Kextension", 0, 0, v22, 1, 1, 1) && (kdu_params::get(v18, "Kreversible", 0, 0, a5, 1, 1, 1) & 1) != 0)
  {
    *a7 = v22[0] == 1;
    v21 = 0;
    v19 = 0;
    if (kdu_params::get(v18, "Ksteps", 0, 0, &v21, 1, 1, 1))
    {
      v20 = 0;
      v19 = 0;
      do
      {
        v20 += v21;
        ++v19;
      }

      while ((kdu_params::get(v18, "Ksteps", v19, 0, &v21, 1, 1, 1) & 1) != 0);
    }

    *a8 = v19;
    operator new[]();
  }

  kd_create_dwt_description();
}

uint64_t print_marker_code(int a1, kdu_message *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1 <= 65423)
  {
    v3 = "SOC";
    switch(a1)
    {
      case 65359:
        goto LABEL_34;
      case 65361:
        v3 = "SIZ";
        goto LABEL_34;
      case 65362:
        v3 = "COD";
        goto LABEL_34;
      case 65363:
        v3 = "COC";
        goto LABEL_34;
      case 65365:
        v3 = "TLM";
        goto LABEL_34;
      case 65367:
        v3 = "PLM";
        goto LABEL_34;
      case 65368:
        v3 = "PLT";
        goto LABEL_34;
      case 65372:
        v3 = "QCD";
        goto LABEL_34;
      case 65373:
        v3 = "QCC";
        goto LABEL_34;
      case 65374:
        v3 = "RGN";
        goto LABEL_34;
      case 65375:
        v3 = "POC";
        goto LABEL_34;
      case 65376:
        v3 = "PPM";
        goto LABEL_34;
      case 65377:
        v3 = "PPT";
        goto LABEL_34;
      case 65379:
        v3 = "CRG";
        goto LABEL_34;
      case 65380:
        v3 = "COM";
        goto LABEL_34;
      case 65394:
        v3 = "DFS";
        goto LABEL_34;
      case 65395:
        v3 = "ADS";
        goto LABEL_34;
      case 65396:
        v3 = "MCT";
        goto LABEL_34;
      case 65397:
        v3 = "MCC";
        goto LABEL_34;
      case 65399:
        v3 = "MCO";
        goto LABEL_34;
      case 65400:
        v3 = "CBD";
        goto LABEL_34;
      case 65401:
        v3 = "ATK";
        goto LABEL_34;
      default:
        goto LABEL_37;
    }
  }

  if (a1 <= 65425)
  {
    if (a1 == 65424)
    {
      v3 = "SOT";
    }

    else
    {
      v3 = "SOP";
    }

LABEL_34:
    (*(*a2 + 16))(a2, "<");
    (*(*a2 + 16))(a2, v3);
    v4 = *(*a2 + 16);

    return v4(a2, ">");
  }

  switch(a1)
  {
    case 65426:
      v3 = "EPH";
      goto LABEL_34;
    case 65427:
      v3 = "SOD";
      goto LABEL_34;
    case 65497:
      v3 = "EOC";
      goto LABEL_34;
  }

LABEL_37:
  v6 = *(a2 + 8);
  *(a2 + 8) = 1;
  (*(*a2 + 16))(a2, "0x");
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *v7 = 0u;
  if (*(a2 + 8))
  {
    sprintf(v7, "%x");
  }

  else
  {
    sprintf(v7, "%u");
  }

  result = (*(*a2 + 16))(a2, v7);
  *(a2 + 8) = v6;
  return result;
}

kd_input *kd_input::process_unexpected_marker(kd_input *this, int a2)
{
  if ((*(this + 545) & 1) == 0)
  {
    kd_input::process_unexpected_marker();
  }

  v3 = this;
  *(this + 545) = 0;
  v4 = *(this + 544);
  if (v4 == 1)
  {
    *(this + 546) = 0;
  }

  if (*(this + 547))
  {
    if (v4)
    {
LABEL_13:
      kd_input::process_unexpected_marker();
    }

LABEL_19:
    v8 = a2 | 0xFF00;
    kd_input::putback(v3, v8);
    exception = __cxa_allocate_exception(2uLL);
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E54A0], 0);
  }

  if ((a2 & 0xFE) == 0x90)
  {
    v10 = 0;
    this = kd_input::get(this, &v10);
    if (this)
    {
      v5 = v10;
      if (kd_input::get(v3, &v10))
      {
        v6 = v10 | (v5 << 8);
        if (a2 == 145)
        {
          v7 = 4;
        }

        else
        {
          v7 = 10;
        }

        kd_input::putback(v3, v10);
        this = kd_input::putback(v3, v5);
        if (v6 == v7)
        {
          if (*(v3 + 544))
          {
            goto LABEL_13;
          }

          goto LABEL_19;
        }
      }

      else
      {
        *(v3 + 544) = 0;
        this = kd_input::putback(v3, a2);
      }
    }

    else
    {
      *(v3 + 544) = 0;
    }
  }

  *(v3 + 545) = 1;
  *(v3 + 546) = a2 == 255;
  return this;
}

uint64_t kd_input::putback(kd_input *this, __int16 a2)
{
  v2 = HIBYTE(a2);
  kd_input::putback(this, a2);

  return kd_input::putback(this, v2);
}

uint64_t kd_input::read(kd_input *this, unsigned __int8 *a2, int a3)
{
  v3 = 0;
  if (a3 >= 1 && (*(this + 544) & 1) == 0)
  {
    v5 = a3;
    v3 = 0;
    do
    {
      v7 = *(this + 134) - *(this + 132);
      if (!v7)
      {
        if (!(*(*this + 24))(this))
        {
          return v3;
        }

        v7 = *(this + 134) - *(this + 132);
        if (v7 <= 0)
        {
          kd_input::read();
        }
      }

      if (v7 >= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v7;
      }

      if (*(this + 545))
      {
        v9 = v8;
        do
        {
          v10 = *(this + 66);
          *(this + 66) = v10 + 1;
          v11 = *v10;
          *a2++ = v11;
          if (*(this + 546) == 1 && v11 >= 0x90)
          {
            kd_input::process_unexpected_marker(this, v11);
          }

          *(this + 546) = v11 == 255;
          --v9;
        }

        while (v9);
      }

      else
      {
        v12 = v8;
        do
        {
          v13 = *(this + 66);
          *(this + 66) = v13 + 1;
          *a2++ = *v13;
          --v12;
        }

        while (v12);
      }

      v3 = (v8 + v3);
      v14 = __OFSUB__(v5, v8);
      v5 -= v8;
    }

    while (!((v5 < 0) ^ v14 | (v5 == 0)));
  }

  return v3;
}

uint64_t kd_input::ignore(kd_input *this, uint64_t a2)
{
  v2 = 0;
  if (a2 >= 1 && (*(this + 544) & 1) == 0)
  {
    v4 = a2;
    v2 = 0;
    do
    {
      v5 = *(this + 66);
      v6 = *(this + 134) - v5;
      if (!v6)
      {
        if (!(*(*this + 24))(this))
        {
          return v2;
        }

        v5 = *(this + 66);
        v6 = *(this + 134) - v5;
        if (v6 <= 0)
        {
          kd_input::ignore();
        }
      }

      if (v4 >= v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = v4;
      }

      if (*(this + 545) == 1)
      {
        v8 = *(this + 546);
        v9 = v7;
        do
        {
          v10 = *(this + 66);
          *(this + 66) = v10 + 1;
          v11 = *v10;
          if ((v8 & 1) != 0 && v11 >= 0x90)
          {
            kd_input::process_unexpected_marker(this, *v10);
          }

          v8 = v11 == 255;
          *(this + 546) = v11 == 255;
          --v9;
        }

        while (v9);
      }

      else
      {
        *(this + 66) = v5 + v7;
      }

      v2 += v7;
      v4 -= v7;
    }

    while (v4 > 0);
  }

  return v2;
}

uint64_t kd_compressed_input::set_max_bytes(uint64_t this, uint64_t a2)
{
  if ((*(this + 608) & 1) == 0 && *(this + 568) > a2)
  {
    v2 = 0x3FFFFFFFFFFFFFFFLL;
    if (a2 < 0x3FFFFFFFFFFFFFFFLL)
    {
      v2 = a2;
    }

    *(this + 568) = v2;
    if (!*(this + 592))
    {
      v3 = *(this + 584) + v2;
      v4 = *(this + 536);
      v5 = v4 - this - 14;
      v6 = v3 - *(this + 560);
      v7 = v6 < v5;
      v8 = v6 - v5;
      if (v7)
      {
        v9 = v4 + v8;
        *(this + 536) = v9;
        v10 = *(this + 528);
        if (v9 < v10)
        {
          *(this + 544) = 1;
          *(this + 536) = v10;
        }
      }
    }
  }

  return this;
}

uint64_t kd_compressed_input::load_buf(kd_compressed_input *this)
{
  v1 = *(this + 67);
  if (v1 != *(this + 66))
  {
    kd_compressed_input::load_buf();
  }

  v3 = this + 14;
  *(this + 66) = this + 14;
  v4 = *(this + 70) + v1 - (this + 14);
  *(this + 70) = v4;
  if (*(this + 608) == 1)
  {
    v5 = (*(**(this + 69) + 32))(*(this + 69));
    v6 = *(this + 66);
  }

  else
  {
    v7 = *(this + 74);
    if (v7)
    {
      if (*(this + 75))
      {
        kd_compressed_input::load_buf();
      }

      if (v7 < v3 || v7 > v1)
      {
        kd_compressed_input::load_buf();
      }

      *(this + 73) += v1 - v7;
      *(this + 67) = v3;
      *(this + 74) = v3;
      v8 = *(**(this + 69) + 32);
    }

    else
    {
      *(this + 75) = 0;
      v9 = *(this + 71) - v4 + *(this + 73);
      *(this + 67) = v3;
      if (v9 < 1)
      {
        v10 = 0;
        *(this + 544) = 1;
        return v10 & 1;
      }

      v8 = *(**(this + 69) + 32);
    }

    v5 = v8();
    v6 = *(this + 67);
  }

  *(this + 67) = v6 + v5;
  if (!v5)
  {
    *(this + 544) = 1;
  }

  v10 = *(this + 544) ^ 1;
  return v10 & 1;
}

uint64_t kd_compressed_input::set_tileheader_scope(kd_compressed_input *this)
{
  *(this + 608) = 1;
  *(this + 66) = this + 14;
  v2 = (*(**(this + 69) + 56))(*(this + 69));
  v3 = *(this + 69);
  if (v2)
  {
    v4 = (*(*v3 + 32))(v3, *(this + 66), 512);
    *(this + 67) = *(this + 66) + v4;
    if (v4 < 0)
    {
      kd_compressed_input::set_tileheader_scope();
    }

    v5 = v4 == 0;
  }

  else
  {
    if (((*(*v3 + 24))(v3) & 4) == 0)
    {
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      kdu_error::kdu_error(v7, "Kakadu Core Error:\n");
      (*(*&v7[0] + 16))(v7, "Attempting to load cached tile header data from a compressed data source which does not appear to support caching.  It is possible that the source has been incorrectly implemented.");
      kdu_error::~kdu_error(v7);
    }

    *(this + 67) = *(this + 66);
    v5 = 1;
  }

  *(this + 544) = v5;
  return v2;
}

uint64_t kd_compressed_input::seek(uint64_t this, uint64_t a2)
{
  if (*(this + 545) == 1)
  {
    kd_compressed_input::seek();
  }

  v2 = this;
  if (a2 < 0)
  {
    *(this + 608) = 1;
    *(this + 536) = this + 14;
    *(this + 528) = this + 14;
    if (((*(**(this + 552) + 64))(*(this + 552), ~a2) & 1) == 0)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      kdu_error::kdu_error(&v14, "Kakadu Core Error:\n");
      (*(v14 + 16))(&v14, "Attempting to load cached precinct packets from a compressed data source which does not appear to support caching.  It is possible that the source has been incorrectly implemented.");
      kdu_error::~kdu_error(&v14);
    }

    this = (*(**(v2 + 552) + 32))(*(v2 + 552), *(v2 + 528), 512);
    *(v2 + 536) = *(v2 + 528) + this;
    v12 = this == 0;
    goto LABEL_13;
  }

  v3 = this + 14;
  v4 = *(this + 560);
  v5 = *(this + 528);
  v6 = v4 - (this + 14);
  if (v6 + v5 == a2)
  {
    return this;
  }

  v7 = ~v3 + v5 + v4;
  if (v7 > *(this + 576))
  {
    *(this + 576) = v7;
  }

  v8 = *(this + 568);
  if (v8 <= a2)
  {
    *(this + 544) = 1;
    *(this + 560) = v8;
    *(this + 536) = v3;
    goto LABEL_15;
  }

  v9 = *(this + 536);
  *(this + 544) = 0;
  v10 = __OFSUB__(a2, v4);
  v11 = a2 - v4;
  if (v11 < 0 == v10 && v6 + v9 > a2)
  {
    v3 += v11;
LABEL_15:
    *(this + 528) = v3;
    return this;
  }

  *(this + 560) = a2;
  *(this + 536) = v3;
  *(this + 528) = v3;
  if (((*(**(this + 552) + 40))(*(this + 552)) & 1) == 0)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    kdu_error::kdu_error(&v14, "Kakadu Core Error:\n");
    (*(v14 + 16))(&v14, "Attempting to seek inside a compressed data source which does not appear to support seeking.  The source may have been implemented incorrectly.");
    kdu_error::~kdu_error(&v14);
  }

  if ((*(v2 + 568) - *(v2 + 560)) >= 512)
  {
    v13 = 512;
  }

  else
  {
    v13 = *(v2 + 568) - *(v2 + 560);
  }

  this = (*(**(v2 + 552) + 32))(*(v2 + 552), *(v2 + 528), v13);
  *(v2 + 536) = *(v2 + 528) + this;
  if (!this)
  {
    v12 = 1;
LABEL_13:
    *(v2 + 544) = v12;
  }

  return this;
}

uint64_t kd_compressed_input::ignore(kd_compressed_input *this, uint64_t a2)
{
  if (((*(**(this + 69) + 24))(*(this + 69)) & 2) != 0)
  {
    v5 = a2 - this;
    v6 = *(this + 70) + *(this + 66);
    kd_compressed_input::seek(this, v5 + v6 - 14);
    return *(this + 70) - v6 + *(this + 66);
  }

  else
  {

    return kd_input::ignore(this, a2);
  }
}

void kd_pph_input::~kd_pph_input(kd_pph_input *this)
{
  *this = &unk_1EF4D2830;
  *(this + 70) = 0;
  while (1)
  {
    v2 = *(this + 69);
    *(this + 71) = v2;
    if (!v2)
    {
      break;
    }

    *(this + 69) = *v2;
    kd_buf_server::release(*(this + 73), v2);
  }

  *this = &unk_1EF4D2860;
}

{
  kd_pph_input::~kd_pph_input(this);

  JUMPOUT(0x186602850);
}

uint64_t kd_buf_server::release(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 8);
  do
  {
    if ((*(a2 - ((v3 & 0x3F) << 6) + 8 + v2) & 0x80000000) == 0)
    {
      *a2 = 0;
      *(a2 + 8) = v3 & 0x7F;
      return result;
    }

    v2 += 64;
  }

  while (v2 != 256);
  v4 = *(result + 24);
  if (v4 <= 0)
  {
    kd_buf_server::release();
  }

  *a2 = *(result + 8);
  *(a2 + 8) = v3 & 0x7F;
  *(result + 8) = a2;
  *(result + 24) = v4 - 1;
  return result;
}

uint64_t kd_pph_input::add_bytes(uint64_t this, char *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v5 = this;
    while (*(v5 + 568))
    {
      v6 = *(v5 + 580);
      if (v6 == 55)
      {
        this = kd_buf_server::get(*(v5 + 584));
        **(v5 + 568) = this;
        *(v5 + 568) = this;
LABEL_7:
        v6 = 0;
        *(v5 + 580) = 0;
      }

      v7 = 55 - v6;
      if (v7 >= v3)
      {
        v7 = v3;
      }

      if (v7)
      {
        v8 = v7;
        do
        {
          v9 = *a2++;
          v10 = *(v5 + 580);
          v11 = *(v5 + 568) + v10;
          *(v5 + 580) = v10 + 1;
          *(v11 + 9) = v9;
          --v8;
        }

        while (v8);
      }

      v3 -= v7;
      if (v3 < 1)
      {
        return this;
      }
    }

    this = kd_buf_server::get(*(v5 + 584));
    *(v5 + 552) = this;
    *(v5 + 560) = this;
    *(v5 + 568) = this;
    *(v5 + 576) = 0;
    goto LABEL_7;
  }

  return this;
}

uint64_t kd_buf_server::get(kd_buf_server *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    if (*(this + 3) != *(this + 2))
    {
      kd_buf_server::get();
    }

    kd_buf_server::alloc_pages(this);
    v2 = *(this + 1);
  }

  v3 = *(v2 + 8);
  v4 = v3 & 0x3F;
  v5 = v2 - ((v3 & 0x3F) << 6);
  if ((v3 & 0x3F) != 0)
  {
    v6 = v3 & 0x3F;
    result = v2 - (v6 << 6);
    do
    {
      v8 = *(result + 8);
      if ((v8 & 0x80000000) == 0)
      {
        *(result + 8) = v8 | 0x80;
        return result;
      }

      result += 64;
      --v6;
    }

    while (v6);
    *(v2 + 8) = v3 | 0x80;
    if (v4 <= 2)
    {
      goto LABEL_11;
    }

LABEL_14:
    *(this + 1) = *v2;
    *v2 = 0;
    v12 = *(this + 3);
    v11 = *(this + 4);
    *(this + 3) = v12 + 1;
    if (v12 >= v11)
    {
      *(this + 4) = v11 + 1;
    }
  }

  else
  {
    *(v2 + 8) = v3 | 0x80;
LABEL_11:
    v9 = 3;
    while (1)
    {
      v10 = v5 + (v9 << 6);
      if ((*(v10 + 8) & 0x80000000) == 0)
      {
        break;
      }

      if (--v9 <= v4)
      {
        goto LABEL_14;
      }
    }

    *(this + 1) = v10;
    *v10 = *v2;
    *v2 = 0;
  }

  return v2;
}

uint64_t kd_pph_input::load_buf(kd_pph_input *this)
{
  if (!*(this + 70))
  {
    goto LABEL_20;
  }

  *(this + 67) = this + 14;
  *(this + 66) = this + 14;
  v1 = 506;
  do
  {
    v2 = *(this + 144);
    v3 = *(this + 70);
    v4 = *(this + 71);
    if (v2 == 55)
    {
      if (v3 == v4)
      {
        v2 = 55;
      }

      else
      {
        v3 = *v3;
        *(this + 70) = v3;
        *(this + 144) = 0;
        if (!v3)
        {
          kd_pph_input::load_buf();
        }

        v2 = 0;
      }
    }

    if (v3 == v4)
    {
      v5 = *(this + 145);
    }

    else
    {
      v5 = 55;
    }

    v6 = v5 - v2;
    if (v6 < 0)
    {
      kd_pph_input::load_buf();
    }

    if (!v6)
    {
      break;
    }

    if (v6 >= v1)
    {
      v6 = v1;
    }

    v1 -= v6;
    do
    {
      v7 = *(this + 144);
      v8 = *(this + 70) + v7;
      *(this + 144) = v7 + 1;
      LOBYTE(v8) = *(v8 + 9);
      v9 = *(this + 67);
      *(this + 67) = v9 + 1;
      *v9 = v8;
      --v6;
    }

    while (v6);
  }

  while (v1 >= 1);
  if (*(this + 66) != *(this + 67))
  {
    return 1;
  }

LABEL_20:
  v10 = 0;
  *(this + 544) = 1;
  return v10;
}

uint64_t kd_marker::kd_marker(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *result = 0;
  *(result + 8) = v2;
  *(result + 16) = *(a2 + 16);
  LODWORD(v2) = *(a2 + 20);
  *(result + 20) = v2;
  *(result + 24) = v2;
  if (v2)
  {
    operator new[]();
  }

  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t kd_marker::read(kd_marker *this, char a2, int a3)
{
  v3 = *this;
  if (!*this)
  {
    kd_marker::read();
  }

  v26 = 0;
  if (*(v3 + 545) == 1)
  {
    *(v3 + 545) = 0;
    if (*(v3 + 544) == 1)
    {
      *(v3 + 546) = 0;
    }
  }

  v6 = 0;
  v7 = a2 ^ 1;
  while (1)
  {
    v8 = *this;
    if (v6 != 255)
    {
      if ((kd_input::get(v8, &v26) & 1) == 0)
      {
        goto LABEL_69;
      }

      if (a3 && v26 != 255)
      {
        while ((kd_input::get(*this, &v26) & 1) != 0)
        {
          if (v26 == 255)
          {
            v8 = *this;
            goto LABEL_14;
          }
        }

        goto LABEL_69;
      }

      v8 = *this;
      if (v26 != 255)
      {
        kd_input::putback(v8, v26);
        goto LABEL_69;
      }
    }

LABEL_14:
    if ((kd_input::get(v8, &v26) & 1) == 0)
    {
      goto LABEL_69;
    }

    v9 = v26;
    *(this + 8) = v26 | 0xFF00;
    if (v9 > 0x8F)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7;
    }

    if (v9 - 144 < 2)
    {
      if ((v10 & 1) == 0)
      {
        kd_marker::read();
      }

      if ((kd_input::get(*this, &v26) & 1) == 0)
      {
        goto LABEL_69;
      }

      *(this + 5) = v26 << 8;
      if ((kd_input::get(*this, &v26) & 1) == 0)
      {
        goto LABEL_69;
      }

      v11 = *(this + 5) + v26;
      *(this + 5) = v11;
      v12 = *(this + 8);
      if (v12 != 65425 || v11 == 4)
      {
        v10 = 1;
        if (v12 != 65424 || v11 == 10)
        {
          goto LABEL_39;
        }

        v18 = *this;
        kd_input::putback(*this, v11);
        kd_input::putback(v18, SBYTE1(v11));
        v25 = 0;
        v23 = 0u;
        v24 = 0u;
        kdu_warning::kdu_warning(&v23, "Kakadu Core Warning:\n");
        (*(v23 + 16))(&v23, "Skipping over corrupt SOT marker code!");
      }

      else
      {
        v13 = *this;
        kd_input::putback(*this, v11);
        kd_input::putback(v13, SBYTE1(v11));
        v25 = 0;
        v23 = 0u;
        v24 = 0u;
        kdu_warning::kdu_warning(&v23, "Kakadu Core Warning:\n");
        (*(v23 + 16))(&v23, "Skipping over corrupt SOP marker code!");
      }

      kdu_warning::~kdu_warning(&v23);
      v10 = 0;
LABEL_39:
      v26 = *(this + 16);
      goto LABEL_40;
    }

    if (v9 == 217)
    {
      result = kd_input::get(*this, &v26);
      if (!result)
      {
        goto LABEL_62;
      }

      v15 = *(*(this + 1) + 412);
      kd_input::putback(*this, v26);
      if ((v15 & 1) == 0)
      {
        result = 0;
        *(*this + 544) = 1;
LABEL_62:
        *(this + 5) = 0;
LABEL_63:
        *(this + 8) = 0;
        return result;
      }

      v26 = *(this + 16);
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      kdu_warning::kdu_warning(&v23, "Kakadu Core Warning:\n");
      (*(v23 + 16))(&v23, "Disregarding non-terminal EOC marker.");
      kdu_warning::~kdu_warning(&v23);
      v10 = 0;
    }

    else
    {
      v16 = (v9 & 0xF0) == 48;
      v17 = v10 ^ 1;
      if (!v16)
      {
        v17 = 1;
      }

      if ((v17 & 1) == 0)
      {
        v26 = 0;
        if ((*(this + 40) & 1) == 0)
        {
          v25 = 0;
          v23 = 0u;
          v24 = 0u;
          kdu_warning::kdu_warning(&v23, "Kakadu Core Warning:\n");
          (*(v23 + 16))(&v23, "Encountered one or more marker codes in the range 0xFF30 to 0xFF3F.  These are to be ignored.");
          kdu_warning::~kdu_warning(&v23);
        }

        *(this + 40) = 1;
        goto LABEL_42;
      }
    }

LABEL_40:
    if ((a3 & 1) == 0)
    {
      v19 = *(this + 8);
      if (v10)
      {
        goto LABEL_46;
      }

      kd_input::putback(*this, v19);
      goto LABEL_69;
    }

    if (v10)
    {
      break;
    }

LABEL_42:
    v6 = v26;
  }

  v19 = *(this + 8);
LABEL_46:
  result = 1;
  if (v19 > 65423)
  {
    if ((v19 - 65424) < 2)
    {
      goto LABEL_49;
    }

    if ((v19 - 65426) >= 2 && v19 != 65497)
    {
      goto LABEL_73;
    }
  }

  else
  {
    if ((v19 - 65359) > 0x2A)
    {
      goto LABEL_73;
    }

    if (((1 << (v19 - 79)) & 0x7780037E35CLL) != 0)
    {
      goto LABEL_49;
    }

    if (v19 != 65359)
    {
LABEL_73:
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      kdu_warning::kdu_warning(&v23, "Kakadu Core Warning:\n");
      (*(v23 + 16))(&v23, "Unrecognized/unimplemented marker code, ");
      print_marker_code(*(this + 8), &v23);
      (*(v23 + 16))(&v23, ", found in code-stream.");
      kdu_warning::~kdu_warning(&v23);
      LOWORD(v19) = *(this + 8);
LABEL_49:
      if ((v19 & 0xFFFE) == 0xFF90)
      {
        v20 = *(this + 5);
      }

      else
      {
        if ((kd_input::get(*this, &v26) & 1) == 0)
        {
          result = 0;
          goto LABEL_63;
        }

        *(this + 5) = v26 << 8;
        if ((kd_input::get(*this, &v26) & 1) == 0)
        {
          goto LABEL_69;
        }

        v20 = *(this + 5) + v26;
        *(this + 5) = v20;
      }

      v21 = v20 - 2;
      *(this + 5) = v20 - 2;
      if (v20 <= 1)
      {
        goto LABEL_69;
      }

      if (v21 > *(this + 6))
      {
        *(this + 6) = 2 * v21;
        v22 = *(this + 4);
        if (v22)
        {
          MEMORY[0x186602830](v22, 0x1000C8077774924);
        }

        operator new[]();
      }

      if (kd_input::read(*this, *(this + 4), v21) < *(this + 5))
      {
LABEL_69:
        result = 0;
        *(this + 8) = 0;
        *(this + 5) = 0;
        return result;
      }

      return 1;
    }
  }

  return result;
}

void kd_pp_markers::~kd_pp_markers(kd_pp_markers *this)
{
  for (i = *(this + 1); i; i = *(this + 1))
  {
    *(this + 1) = *(i + 48);
    v3 = *(i + 32);
    if (v3)
    {
      MEMORY[0x186602830](v3, 0x1000C8077774924);
    }

    MEMORY[0x186602850](i, 0x1030C406C6F31B6);
  }
}

void kd_pp_markers::add_marker(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 20) <= 0)
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
    kdu_error::kdu_error(v2, "Kakadu Core Error:\n");
    (*(*&v2[0] + 16))(v2, "PPM/PPT marker segments must be at least 3 bytes long!");
    kdu_error::~kdu_error(v2);
  }

  operator new();
}

void kd_pp_markers::transfer_tpart(kd_pp_markers *this, kd_pph_input *a2)
{
  v4 = *(this + 1);
  if (*this == 1)
  {
    if (!v4)
    {
LABEL_5:
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      kdu_error::kdu_error(&v19, "Kakadu Core Error:\n");
      (*(v19 + 16))(&v19, "Insufficient packet header data in PPM marker segments!");
      kdu_error::~kdu_error(&v19);
    }

    while (1)
    {
      v5 = *(v4 + 60);
      v6 = *(v4 + 20);
      if (v5 != v6)
      {
        break;
      }

      kd_pp_markers::advance_list(this);
      v4 = *(this + 1);
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    if (v6 - v5 <= 3)
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      kdu_error::kdu_error(&v19, "Kakadu Core Error:\n");
      (*(v19 + 16))(&v19, "Encountered malformed PPM marker: 4-byte Nppm values may not straddle multiple PPM marker segments.  Problem is most likely due to a previously incorrect Nppm value.");
      kdu_error::~kdu_error(&v19);
    }

    v7 = *(v4 + 32);
    v8 = v5 + 1;
    *(v4 + 60) = v8;
    v9 = *(v7 + v5);
    v10 = v5 + 2;
    *(v4 + 60) = v10;
    LODWORD(v8) = (v9 << 16) | (*(v7 + v8) << 8);
    v11 = v5 + 3;
    *(v4 + 60) = v11;
    LODWORD(v8) = v8 | *(v7 + v10);
    *(v4 + 60) = v5 + 4;
    v12 = *(v7 + v11) | (v8 << 8);
  }

  else
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v12 > 0;
  if (v4)
  {
    v14 = v12 < 1;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    do
    {
      v15 = *(v4 + 60);
      if (*(v4 + 20) - v15 >= v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = *(v4 + 20) - v15;
      }

      kd_pph_input::add_bytes(a2, (*(v4 + 32) + v15), v16);
      v4 = *(this + 1);
      v17 = *(v4 + 60) + v16;
      *(v4 + 60) = v17;
      if (v17 == *(v4 + 20))
      {
        kd_pp_markers::advance_list(this);
        v4 = *(this + 1);
      }

      v12 -= v16;
      v13 = v12 > 0;
    }

    while (v4 && v12 > 0);
  }

  if (*this == 1 && v13)
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    kdu_error::kdu_error(&v19, "Kakadu Core Error:\n");
    (*(v19 + 16))(&v19, "Insufficient packet header data in PPM marker segments, or else Nppm values must be incorrect!");
    kdu_error::~kdu_error(&v19);
  }
}

void kd_pp_markers::advance_list(kd_pp_markers *this)
{
  v1 = *(this + 1);
  if (v1 && *(v1 + 60) == *(v1 + 20))
  {
    *(this + 1) = *(v1 + 48);
    v2 = *(v1 + 32);
    if (v2)
    {
      MEMORY[0x186602830](v2, 0x1000C8077774924);
    }

    JUMPOUT(0x186602850);
  }

  kd_pp_markers::advance_list();
}

void kd_pp_markers::ignore_tpart(kd_pp_markers *this)
{
  if (*this == 1)
  {
    v2 = 0;
    v3 = 0x7FFFFFFF;
    v4 = 1;
    do
    {
      while (1)
      {
        v5 = *(this + 1);
        if (!v5)
        {
          v18 = 0;
          v16 = 0u;
          v17 = 0u;
          kdu_error::kdu_error(&v16, "Kakadu Core Error:\n");
          (*(v16 + 16))(&v16, "Insufficient packet header data in PPM marker segments!");
          kdu_error::~kdu_error(&v16);
        }

        v6 = *(v5 + 60);
        if (v6 != *(v5 + 20))
        {
          break;
        }

        kd_pp_markers::advance_list(this);
        if (!v4)
        {
          goto LABEL_11;
        }
      }

      v7 = *(v5 + 32);
      *(v5 + 60) = v6 + 1;
      v3 = *(v7 + v6) | (v3 << 8);
      v4 = v2++ < 3;
    }

    while (v2 != 4);
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

LABEL_11:
  v8 = *(this + 1);
  v9 = v3 > 0;
  if (v8)
  {
    v10 = v3 < 1;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    do
    {
      v11 = *(v8 + 20);
      v12 = *(v8 + 60);
      if (v11 - v12 >= v3)
      {
        v13 = v3;
      }

      else
      {
        v13 = v11 - v12;
      }

      v14 = v13 + v12;
      *(v8 + 60) = v14;
      if (v14 == v11)
      {
        kd_pp_markers::advance_list(this);
        v8 = *(this + 1);
      }

      v3 -= v13;
      v9 = v3 > 0;
    }

    while (v8 && v3 > 0);
  }

  if (*this == 1 && v9)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    kdu_error::kdu_error(&v16, "Kakadu Core Error:\n");
    (*(v16 + 16))(&v16, "Insufficient packet header data in PPM marker segments, or else Nppm values must be incorrect!");
    kdu_error::~kdu_error(&v16);
  }
}

BOOL kd_tlm_generator::init(kd_tlm_generator *this, int a2, int a3)
{
  *(this + 3) = 0;
  *this = 0;
  *(this + 3) = 0;
  v6 = *(this + 4);
  if (v6)
  {
    MEMORY[0x186602830](v6, 0x1000C80CE7E837CLL);
  }

  v7 = 0;
  v8 = 0;
  if (a3 >= 0xFF)
  {
    v9 = 255;
  }

  else
  {
    v9 = a3;
  }

  if (a3 < 0)
  {
    v9 = 1;
  }

  *this = a2;
  *(this + 1) = v9;
  v10 = v9 * a2;
  *(this + 12) = v10;
  *(this + 3) = 0;
  v11 = v10;
  do
  {
    if (v11 >= 10921)
    {
      v12 = 10921;
    }

    else
    {
      v12 = v11;
    }

    v11 -= v12;
    v7 += 6 * v12 + 6;
    if (v11 < 1)
    {
      break;
    }
  }

  while (v8++ < 0xFE);
  *(this + 2) = v7;
  if (v11 < 1)
  {
    operator new[]();
  }

  *(this + 3) = 0;
  *this = 0;
  *(this + 3) = 0;
  v14 = *(this + 4);
  if (v14)
  {
    MEMORY[0x186602830](v14, 0x1000C80CE7E837CLL);
  }

  return v11 < 1;
}

uint64_t kd_tlm_generator::add_tpart_length(uint64_t this, unsigned int a2, unint64_t a3)
{
  if (*this >= 1)
  {
    v3 = *(this + 16);
    if (v3 >= *(this + 12))
    {
      kd_tlm_generator::add_tpart_length();
    }

    if ((a2 & 0x80000000) != 0 || *this <= a2)
    {
      kd_tlm_generator::add_tpart_length();
    }

    v4 = *(this + 32) + 8 * v3;
    *v4 = a2;
    *(v4 + 4) = a3;
    if (HIDWORD(a3))
    {
      v6 = 0;
      memset(v5, 0, sizeof(v5));
      kdu_error::kdu_error(v5, "Kakadu Core Error:\n");
      (*(*&v5[0] + 16))(v5, "Attempting to write TLM (tile-part length) data where one tile-part's length cannot be represented as an unsigned 32-bit value.");
      kdu_error::~kdu_error(v5);
    }

    *(this + 16) = v3 + 1;
    *(this + 24) += a3;
  }

  return this;
}

int *kd_tlm_generator::write_dummy_tlms(int *this, kd_compressed_output *a2)
{
  if (*this >= 1)
  {
    operator new[]();
  }

  return this;
}

uint64_t kd_tlm_generator::write_tlms(uint64_t this, kdu_compressed_target *a2, int a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*this >= 1)
  {
    v5 = *(this + 24) + a4 + *(this + 8);
    v6 = *(this + 4) * a3;
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        if (!v7)
        {
          if (v8 >= 256)
          {
            kd_tlm_generator::write_tlms();
          }

          v5 -= 6;
          ++v8;
          v7 = 10921;
        }

        if (v6 >= v7)
        {
          v9 = v7;
        }

        else
        {
          v9 = v6;
        }

        v7 -= v9;
        v5 -= 6 * v9;
        v10 = __OFSUB__(v6, v9);
        v6 -= v9;
      }

      while (!((v6 < 0) ^ v10 | (v6 == 0)));
    }

    if (((*(*a2 + 24))(a2, v5) & 1) == 0)
    {
      v12 = 0;
      memset(v11, 0, sizeof(v11));
      kdu_error::kdu_error(v11, "Kakadu Core Error:\n");
      kdu_error::~kdu_error(v11);
    }

    operator new[]();
  }

  return this;
}

void kd_tpart_pointer_server::~kd_tpart_pointer_server(kd_tpart_pointer_server *this)
{
  for (i = *this; *this; i = *this)
  {
    *this = *(i + 48);
    v3 = *(i + 32);
    if (v3)
    {
      MEMORY[0x186602830](v3, 0x1000C8077774924);
    }

    MEMORY[0x186602850](i, 0x1030C40DF1BA421);
  }

  for (j = *(this + 1); j; j = *(this + 1))
  {
    *(this + 1) = *(j + 512);
    MEMORY[0x186602850]();
  }
}

void kd_tpart_pointer_server::add_tlm_marker(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  if (*(a2 + 16) == -171)
  {
    if (*(a2 + 20) <= 3)
    {
      v3 = 0;
      memset(v2, 0, sizeof(v2));
      kdu_error::kdu_error(v2, "Kakadu Core Error:\n");
      (*(*&v2[0] + 16))(v2, "TLM marker segments must be at least 6 bytes long!");
      kdu_error::~kdu_error(v2);
    }

    operator new();
  }

  kd_tpart_pointer_server::add_tlm_marker();
}

void *kd_tpart_pointer_server::add_tpart(uint64_t a1, void *a2, uint64_t a3)
{
  result = *(a1 + 16);
  if (!result)
  {
    operator new();
  }

  *(a1 + 16) = result[1];
  *result = a3;
  result[1] = 0;
  v5 = a2 + 1;
  if (*a2)
  {
    if (!*v5)
    {
      kd_tpart_pointer_server::add_tpart();
    }

    v6 = (*v5 + 8);
  }

  else
  {
    v6 = a2 + 1;
    v5 = a2;
  }

  *v6 = result;
  *v5 = result;
  return result;
}

uint64_t *kd_tpart_pointer_server::translate_markers(uint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  if (result[1])
  {
    kd_tpart_pointer_server::translate_markers();
  }

  v4 = result;
  v5 = *result;
  if (*result)
  {
    v9 = -1;
    do
    {
      v10 = *(v5 + 32);
      v11 = *(v10 + 1);
      v12 = (v11 >> 4) & 3;
      v36 = v5;
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          v39 = 0;
          v37 = 0u;
          v38 = 0u;
          kdu_error::kdu_error(&v37, "Kakadu Core Error:\n");
          (*(v37 + 16))(&v37, "Illegal Stlm field encountered in TLM marker segment!");
          kdu_error::~kdu_error(&v37);
        }

        v13 = 0;
        v14 = 0;
      }

      else
      {
        v13 = v12 != 0;
        v14 = v12 == 0;
      }

      v15 = (v10 + 2);
      v16 = *(v5 + 20) - 2;
      if ((v11 & 0x40) != 0)
      {
        v17 = 4;
      }

      else
      {
        v17 = 2;
      }

      v18 = v12 + v17;
      v19 = v16 / v18;
      v20 = v16 / v18 * v18;
      if (v19 < 1 || v16 != v20)
      {
        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        kdu_error::kdu_error(&v37, "Kakadu Core Error:\n");
        (*(v37 + 16))(&v37, "Malformed TLM marker segment encountered in main header.  Segment length is inconsistent with the number of bytes used to represent pointer info for each tile-part.");
        kdu_error::~kdu_error(&v37);
      }

      while (1)
      {
        if (v14)
        {
          ++v9;
        }

        else
        {
          v9 = *v15;
          if (v13)
          {
            ++v15;
          }

          else
          {
            v22 = v15[1];
            v15 += 2;
            v9 = v22 | (v9 << 8);
          }
        }

        if (v9 >= a3)
        {
          v39 = 0;
          v37 = 0u;
          v38 = 0u;
          kdu_error::kdu_error(&v37, "Kakadu Core Error:\n");
          (*(v37 + 16))(&v37, "Illegal TLM marker segment data encountered in main header.  An illegal tile number has been identified, either explicitly or implicitly (through the rule that missing tile identifiers are legal only when tiles appear in order with only one tile-part each).");
          kdu_error::~kdu_error(&v37);
        }

        kd_tpart_pointer_server::add_tpart(v4, (a4 + 24 * v9), a2);
        v23 = __rev16(*v15);
        if ((v11 & 0x40) != 0)
        {
          v24 = (v23 << 16) | (v15[2] << 8);
          v25 = v15[3];
          v15 += 4;
          v23 = v24 | v25;
        }

        else
        {
          v15 += 2;
        }

        if (v23 <= 0xD)
        {
          break;
        }

        a2 += v23;
        if (!--v19)
        {
          v26 = 0;
          v27 = v36;
          goto LABEL_31;
        }
      }

      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      kdu_warning::kdu_warning(&v37, "Kakadu Core Warning:\n");
      (*(v37 + 16))(&v37, "TLM marker segments contain one or more illegal lengths (< 14 bytes).  Proceeding with incomplete tile-part length information.");
      v27 = v36;
      kdu_warning::~kdu_warning(&v37);
      v26 = 1;
LABEL_31:
      *v4 = *(v27 + 48);
      v28 = *(v27 + 32);
      if (v28)
      {
        MEMORY[0x186602830](v28, 0x1000C8077774924);
      }

      result = MEMORY[0x186602850](v27, 0x1030C40DF1BA421);
      v5 = *v4;
      if (*v4)
      {
        v29 = v26;
      }

      else
      {
        v29 = 1;
      }
    }

    while ((v29 & 1) == 0);
    *(v4 + 24) = 1;
    if (a3 >= 1)
    {
      v30 = (a3 + 1) & 0xFFFFFFFE;
      v31 = vdupq_n_s64(a3 - 1);
      v32 = xmmword_186205EC0;
      v33 = (a4 + 32);
      v34 = vdupq_n_s64(2uLL);
      do
      {
        v35 = vmovn_s64(vcgeq_u64(v31, v32));
        if (v35.i8[0])
        {
          *(v33 - 3) = 0;
        }

        if (v35.i8[4])
        {
          *v33 = 0;
        }

        v32 = vaddq_s64(v32, v34);
        v33 += 6;
        v30 -= 2;
      }

      while (v30);
    }
  }

  return result;
}

uint64_t kd_precinct_pointer_server::add_plt_marker(uint64_t result, uint64_t a2, kdu_params *this, kdu_params *a4)
{
  if (*result)
  {
    v6 = result;
    v7 = *(a2 + 32);
    v8 = *(a2 + 20);
    v9 = v8 - 1;
    if (v8 < 1 || (v10 = *v7, v10 != *(result + 61)))
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      kdu_error::kdu_error(&v24, "Kakadu Core Error:\n");
      (*(v24 + 16))(&v24, "PLT marker segments appear out of order within one or more tile-part headers.  While this is not illegal, it is highly inadvisable since it prevents immediate condensation of the pointer information by efficient parsers.  To process this code-stream, you will have to open it again, with file seeking disabled.");
      kdu_error::~kdu_error(&v24);
    }

    *(result + 61) = v10 + 1;
    if (*(result + 48))
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      kdu_error::kdu_error(&v24, "Kakadu Core Error:\n");
      (*(v24 + 16))(&v24, "There appears to be a problem with the PLT marker segments included in the input code-stream.  The PLT marker segments encountered so far do not have sufficient length information to describe the lengths of all packets in the tile-parts encountered so far.  To process this code-stream, you will have to open it again, with file seeking disabled.");
      kdu_error::~kdu_error(&v24);
    }

    *v23 = 0;
    v22 = 0;
    if (!kdu_params::get(this, "Clayers", 0, 0, v23, 1, 1, 1) || (result = kdu_params::get(this, "Corder", 0, 0, &v22, 1, 1, 1), (result & 1) == 0))
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = -1;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }

    v11 = *(v6 + 56);
    v12 = v23[0];
    if (v11)
    {
      if (v11 != v23[0])
      {
LABEL_16:
        result = kd_precinct_pointer_server::disable(v6);
        if (*(v6 + 60) == 1)
        {
          v26 = 0;
          v24 = 0u;
          v25 = 0u;
          kdu_error::kdu_error(&v24, "Kakadu Core Error:\n");
          (*(v24 + 16))(&v24, "Unexpected change in coding parameters or packet sequencing detected while parsing packet length information in PLT marker segments.  While this is not illegal, it is highly inadvisable.  To process this code-stream, open it again with file seeking disabled!");
          kdu_error::~kdu_error(&v24);
        }

        return result;
      }
    }

    else
    {
      *(v6 + 56) = v23[0];
    }

    if (v12 >= 2)
    {
      if (v22 < 2)
      {
        goto LABEL_16;
      }

      result = kdu_params::get(a4, "Porder", 0, 0, &v23[1], 1, 1, 1);
      if (result)
      {
        goto LABEL_16;
      }
    }

    if (!*(v6 + 8))
    {
      result = *v6;
      if (*v6)
      {
        result = kd_buf_server::get(result);
        *(v6 + 8) = result;
        *(v6 + 16) = result;
      }
    }

    if (v8 >= 2)
    {
      v13 = (v7 + 1);
      do
      {
        if (!*(v6 + 72))
        {
          *(v6 + 72) = *(v6 + 56);
          *(v6 + 64) = 0;
        }

        v14 = 0;
        do
        {
          if (!v9)
          {
            v26 = 0;
            v24 = 0u;
            v25 = 0u;
            kdu_error::kdu_error(&v24, "Kakadu Core Error:\n");
            (*(v24 + 16))(&v24, "Malformed PLT marker segment encountered in tile-part header.  Segment terminates part of the way through a multi-byte packet length specification!");
            kdu_error::~kdu_error(&v24);
          }

          v15 = *v13++;
          --v9;
          v16 = v15 & 0x7F | (v14 << 7);
          v14 = v16;
        }

        while (v15 < 0);
        v17 = *(v6 + 64) + v16;
        *(v6 + 64) = v17;
        v18 = *(v6 + 72) - 1;
        *(v6 + 72) = v18;
        if (!v18)
        {
          v19 = -7;
          do
          {
            v19 += 7;
          }

          while (v17 >> v19 > 127);
          do
          {
            result = kd_precinct_pointer_server::record_byte(v6, (*(v6 + 64) >> v19) & 0x7Fu | ((v19 != 0) << 7));
            v20 = v19 <= 6;
            v19 -= 7;
          }

          while (!v20);
          ++*(v6 + 32);
        }
      }

      while (v9 + 1 > 1);
    }
  }

  return result;
}

uint64_t kd_precinct_pointer_server::record_byte(kd_precinct_pointer_server *this, char a2)
{
  result = *(this + 2);
  if (!result)
  {
    kd_precinct_pointer_server::record_byte();
  }

  v5 = *(this + 7);
  if (v5 == 55)
  {
    result = kd_buf_server::get(*this);
    v5 = 0;
    **(this + 2) = result;
    *(this + 2) = result;
  }

  *(this + 7) = v5 + 1;
  *(result + v5 + 9) = a2;
  return result;
}

uint64_t *kd_precinct_pointer_server::start_tpart_body(uint64_t *this, uint64_t a2, int a3, kdu_params *a4, kdu_params *a5, char a6, char a7)
{
  v7 = a7 ^ 1;
  *(this + 61) = 0;
  if (a3)
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    v8 = this;
    if (*this)
    {
      if (this[1] || (*(this + 60) & 1) != 0)
      {
        v18 = 0;
        v16 = 0;
        v17 = 0;
        if ((a6 & 1) != 0 || (this = kdu_params::get(a4, "Clayers", 0, 0, &v17, 1, 1, 1), !this) || v17 != *(v8 + 14) || v17 >= 2 && ((kdu_params::get(a5, "Porder", 0, 0, &v18, 1, 1, 1) & 1) != 0 || (this = kdu_params::get(a4, "Corder", 0, 0, &v16, 1, 1, 1), !this) || v16 <= 1))
        {
          this = kd_precinct_pointer_server::disable(v8);
          if (*(v8 + 60) == 1)
          {
            v15 = 0;
            memset(v14, 0, sizeof(v14));
            kdu_error::kdu_error(v14, "Kakadu Core Error:\n");
            (*(*&v14[0] + 16))(v14, "Unexpected change in coding parameters or packet sequencing detected after parsing packet length information in PLT marker segments.  While this is not illegal, it is highly inadvisable.  To process this code-stream, open it again with file seeking disabled!");
            kdu_error::~kdu_error(v14);
          }
        }

        v8[5] = a2;
        *(v8 + 12) = a3;
        *(v8 + 52) = a7;
      }

      else
      {

        return kd_precinct_pointer_server::disable(this);
      }
    }
  }

  return this;
}

uint64_t kd_precinct_pointer_server::pop_address(kd_precinct_pointer_server *this)
{
  if (!*this)
  {
    return 0;
  }

  if (!*(this + 8) && (*(this + 52) & 1) == 0 && *(this + 12))
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    kdu_error::kdu_error(&v6, "Kakadu Core Error:\n");
    (*(v6 + 16))(&v6, "Unexpectedly ran out of packet length information while processing tile-parts.  Most likely cause is that PLT marker segments are malformed, incomplete, or do not appear until after the packets whose lengths they describe.  All of these conditions are violations of the standard!");
    kdu_error::~kdu_error(&v6);
  }

  if (!*(this + 12) && *(this + 52) != 1)
  {
    return -1;
  }

  v2 = 0;
  do
  {
    if (*(this + 1) == *(this + 2) && *(this + 6) >= *(this + 7))
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
      kdu_error::kdu_error(&v6, "Kakadu Core Error:\n");
      (*(v6 + 16))(&v6, "kd_precinct_pointer_server runs into file corruption");
      kdu_error::~kdu_error(&v6);
    }

    byte = kd_precinct_pointer_server::retrieve_byte(this);
    v2 = byte & 0x7F | (v2 << 7);
  }

  while (byte < 0);
  --*(this + 8);
  if ((*(this + 52) & 1) == 0)
  {
    v4 = *(this + 12);
    if (v2 > v4)
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
      kdu_error::kdu_error(&v6, "Kakadu Core Error:\n");
      (*(v6 + 16))(&v6, "Tile-part holds some but not all the packets of a precinct for which PLT information is being used to extract precinct addresses for random access.  In particular, the current tile has its packets sequenced so that all packets of any given precinct appear consecutively and yet a tile-part boundary has been inserted between the packets of a precinct.  While this is not illegal, it indicates very poor judgement in the placement of tile-part boundaries.  To process this code-stream, you will have to open it again with file seeking disabled.");
      kdu_error::~kdu_error(&v6);
    }

    *(this + 12) = v4 - v2;
  }

  *(this + 60) = 1;
  result = *(this + 5);
  *(this + 5) = result + v2;
  return result;
}

uint64_t kd_precinct_pointer_server::retrieve_byte(kd_precinct_pointer_server *this)
{
  v2 = *(this + 1);
  v3 = *(this + 6);
  if (v2 != *(this + 2))
  {
    if (v3 != 55)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v3 == 55 && *(this + 7) > 55)
  {
LABEL_6:
    *(this + 1) = *v2;
    *(this + 6) = 0;
    kd_buf_server::release(*this, v2);
    v2 = *(this + 1);
    v3 = *(this + 6);
  }

LABEL_7:
  *(this + 6) = v3 + 1;
  return *(v2 + v3 + 9);
}

void kd_buf_server::~kd_buf_server(kd_buf_server *this)
{
  if (*(this + 16))
  {
    __assert_rtn("~kd_buf_server", "codestream.cpp", 1690, "num_users == 0");
  }

  if (*(this + 3))
  {
    v5 = 0;
    v3 = 0u;
    v4 = 0u;
    kdu_warning::kdu_warning(&v3, "Kakadu Core Warning:\n");
    (*(v3 + 16))(&v3, "The compressed data buffer server is being destroyed before all allocated buffers have been returned.  The problem is most likely connected with a bug in the code-block destruction code.");
    kdu_warning::~kdu_warning(&v3);
  }

  if (*(this + 5))
  {
    v5 = 0;
    v3 = 0u;
    v4 = 0u;
    kdu_warning::kdu_warning(&v3, "Kakadu Core Warning:\n");
    (*(v3 + 16))(&v3, "The compressed data buffer server is being destroyed before all size accounting associated with fixed data structures has been completed.  This is most likely due to a bug in the memory accounting logic used for dynamic cache management.");
    kdu_warning::~kdu_warning(&v3);
  }

  while (1)
  {
    v2 = *this;
    if (!*this)
    {
      break;
    }

    *this = *v2;
    free(v2);
  }
}

void *kd_buf_server::alloc_pages(kd_buf_server *this)
{
  result = malloc_type_malloc(0x4108uLL, 0x2004093837F09uLL);
  v3 = *(this + 1);
  *result = *this;
  *this = result;
  v4 = -(result + 8);
  v5 = 16640 - -(result + 8);
  v6 = (result + v4 + 8);
  v7 = *(this + 2);
  v8 = result + v4 + 16;
  do
  {
    v9 = 0;
    v10 = v6;
    v11 = v8;
    do
    {
      *(v11 - 1) = 0;
      *v11 = v9;
      v11 += 64;
      ++v9;
    }

    while (v9 != 4);
    *v10 = v3;
    ++v7;
    v6 = v10 + 32;
    v8 += 256;
    v3 = v10;
    v12 = v5 > 0x1FF;
    v5 -= 256;
  }

  while (v12);
  *(this + 1) = v10;
  *(this + 2) = v7;
  return result;
}

uint64_t kd_buf_server::get_page_block(kd_buf_server *this, int a2, uint64_t *a3)
{
  *a3 = 0;
  if (a2 < 1)
  {
    result = 0;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    v7 = 0;
    v8 = *(this + 1);
    do
    {
      v9 = v8;
      if (!v8)
      {
        kd_buf_server::alloc_pages(this);
        v7 = 0;
        v9 = *(this + 1);
      }

      v10 = 0;
      v8 = *v9;
      v11 = v9[1] & 0x7F;
      v12 = &v9[-8 * v11];
      do
      {
        if (SLOBYTE(v9[v10 + 1 + -8 * v11]) < 0)
        {
          v7 = v9;
          result = v6;
          goto LABEL_17;
        }

        v10 += 8;
      }

      while (v10 != 32);
      v13 = 0;
      if (v7)
      {
        v14 = v7;
      }

      else
      {
        v14 = (this + 8);
      }

      *v14 = v8;
      ++*(this + 3);
      v15 = *a3;
      v16 = 4;
      v17 = v12;
      do
      {
        *(v17 + 8) |= 0x80u;
        result = v17;
        if (v15)
        {
          *v15 = v17;
          result = v6;
        }

        v15 = (v12 + (v13 << 6));
        *a3 = v17;
        ++v13;
        v17 += 64;
        v6 = result;
        --v16;
      }

      while (v16);
      --v5;
      *(v17 - 64) = 0;
      v6 = result;
LABEL_17:
      ;
    }

    while (v5 > 0);
  }

  v19 = *(this + 3);
  if (v19 > *(this + 4))
  {
    *(this + 4) = v19;
  }

  return result;
}

int32x2_t kd_thread_buf_server::augment_local_store(kd_thread_buf_server *this, int a2)
{
  *(this + 40) = 1;
  v2 = *this;
  v3 = *(*this + 128);
  if (!v3)
  {
    kd_thread_buf_server::augment_local_store();
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = v5 - *(this + 3);
    if (v6 < 1)
    {
      return result;
    }
  }

  else
  {
    v6 = 4 * *(this + 4) + 4;
    if (v6 <= 32)
    {
      v6 = 32;
    }
  }

  v7 = (v6 - 1) >> 2;
  v8 = v7 + 1;
  v9 = 4 * (v7 + 1);
  v13 = 0;
  if (a2)
  {
    page_block = kd_buf_server::get_page_block(*(v3 + 48), v7 + 1, &v13);
  }

  else
  {
    kdu_thread_entity::acquire_lock(*(v2 + 136), 0, 1);
    page_block = kd_buf_server::get_page_block(*(*(*this + 128) + 48), v8, &v13);
    kdu_thread_entity::release_lock(*(*this + 136), 0);
  }

  v11 = *(this + 4);
  if (!v11)
  {
    v11 = (this + 24);
  }

  *v11 = page_block;
  *(this + 4) = v13;
  result = vadd_s32(*(this + 12), vdup_n_s32(v9));
  *(this + 12) = result;
  return result;
}

uint64_t kd_thread_env::flush(uint64_t this, int a2)
{
  v2 = this + 0x8000;
  v3 = *(this + 128);
  v4 = *(this + 33208);
  if (v3)
  {
    if (v4 < 1)
    {
      return this;
    }

    v6 = this;
    if (*(v3 + 64) && *(this + 360))
    {
      kdu_thread_entity::acquire_lock(*(this + 136), 1, 1);
      updated = kd_compressed_stats::update_stats(*(*(v6 + 128) + 64), (v6 + 328));
      v8 = *(v6 + 128);
      if (updated)
      {
        v9 = *(v8 + 422) ^ 1;
      }

      else
      {
        v9 = 0;
      }

      kd_compressed_stats::update_quant_slope_thresholds(*(v8 + 64));
      this = kdu_thread_entity::release_lock(*(v6 + 136), 1);
      if (*(v2 + 440) < 1)
      {
        if ((v9 & 1) == 0)
        {
          return this;
        }

        LOBYTE(v9) = 1;
        goto LABEL_35;
      }
    }

    else
    {
      v9 = 0;
    }

    kdu_thread_entity::acquire_lock(*(v6 + 136), 2, 1);
    v10 = 0;
    v11 = (v2 + 496);
    for (i = 9; i > 1; --i)
    {
      v13 = *(v11 - 1);
      if (v13)
      {
        v14 = *(v13 + 36);
        if (v14 <= 0)
        {
          kd_thread_env::flush();
        }

        if (v14 == 1)
        {
          v10 = 1;
        }

        else
        {
          if (!*(*(v6 + 128) + 8))
          {
            v15 = v11 - 6;
            v16 = *v11;
            v17 = *(v11 - 6);
            *v16 = v17;
            *(v16 + 8) = v17;
            *(v16 + 16) = *(v11 - 8);
            *v15 = 0;
            v15[1] = 0;
            v13 = *(v11 - 1);
            v14 = *(v13 + 36);
          }

          *(v13 + 36) = v14 - 1;
          *(v11 - 1) = 0;
          *v11 = 0;
          --*(v2 + 440);
        }
      }

      v11 += 7;
    }

    this = kdu_thread_entity::release_lock(*(v6 + 136), 2);
    if (*(v2 + 440))
    {
      if ((v10 & 1) == 0)
      {
        kd_thread_env::flush();
      }
    }

    else
    {
      *(*(v6 + 136) + 88) = 0;
    }

    if (*(v2 + 432) == 1)
    {
      v18 = *(v2 + 404);
      v19 = 4 * (*(v2 + 408) - v18);
      if (v19 > *(v2 + 400))
      {
        *(v2 + 400) = v19;
      }

      *(v2 + 408) = v18;
    }

    if ((v10 | v9))
    {
      if (((a2 | v9) & 1) == 0)
      {
        this = kdu_thread_entity::try_lock(*(v6 + 136), 0, 1);
        LOBYTE(v9) = 0;
        if (!this)
        {
          return this;
        }

        goto LABEL_36;
      }

LABEL_35:
      kdu_thread_entity::acquire_lock(*(v6 + 136), 0, 1);
LABEL_36:
      v20 = (v2 + 448);
      for (j = 9; j > 1; --j)
      {
        v22 = v20[5];
        if (v22)
        {
          if (!*(*(v6 + 128) + 8))
          {
            v23 = v20[6];
            v24 = *v20;
            *v23 = *v20;
            *(v23 + 8) = v24;
            *(v23 + 16) = *(v20 + 4);
            *v20 = 0;
            v20[1] = 0;
          }

          if (*(v22 + 36) != 1)
          {
            kd_thread_env::flush();
          }

          *(v22 + 36) = 0;
          v20[5] = 0;
          v20[6] = 0;
          --*(v2 + 440);
          v25 = *(v6 + 128);
          if (*(v25 + 8))
          {
            kd_precinct::release(v22);
          }

          else if (*(v25 + 16))
          {
            kd_global_rescomp::add_ready_precinct(*(*v22 + 16), v22);
          }
        }

        v20 += 7;
      }

      v26 = *(v6 + 136);
      *(v26 + 88) = 0;
      if (v9)
      {
        kdu_thread_entity::acquire_lock(v26, 2, 1);
        kd_codestream::trim_compressed_data(*(v6 + 128));
        kdu_thread_entity::release_lock(*(v6 + 136), 2);
      }

      if (*(v2 + 432) == 1)
      {
        kd_thread_buf_server::augment_local_store((v6 + 33160), 1);
      }

      this = kdu_thread_entity::release_lock(*(v6 + 136), 0);
      if (*(v2 + 440))
      {
        kd_thread_env::flush();
      }
    }
  }

  else if (v4)
  {
    kd_thread_env::flush();
  }

  return this;
}