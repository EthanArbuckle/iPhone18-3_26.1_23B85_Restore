uint64_t libssh2_sftp_readdir_ex(uint64_t a1, void *a2, unint64_t a3, void *a4, unint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return 4294967257;
  }

  v12 = time(0);
  do
  {
    result = sftp_readdir(a1, a2, a3, a4, a5, a6);
    if (result != -37)
    {
      break;
    }

    if (!*(*(**(a1 + 24) + 104) + 172))
    {
      break;
    }

    result = _libssh2_wait_socket(*(**(a1 + 24) + 104), v12);
  }

  while (!result);
  return result;
}

uint64_t sftp_readdir(uint64_t a1, void *a2, unint64_t a3, void *a4, unint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 24);
  v12 = *v11;
  v13 = *(*v11 + 104);
  v51 = 0;
  v52 = 0;
  v14 = *(a1 + 288);
  v50 = 0;
  v15 = *(v11 + 188);
  if (!v15)
  {
    *(v11 + 64) = 0;
    if (!*(a1 + 304))
    {
      v47 = a6;
      v37 = (*(v13 + 8))((v14 + 13), v13);
      *(v11 + 192) = v37;
      v51 = v37;
      if (!v37)
      {
        v20 = "Unable to allocate memory for FXP_READDIR packet";
        v21 = v13;
        v19 = 4294967290;
        return _libssh2_error(v21, v19, v20);
      }

      _libssh2_store_u32(&v51, v14 + 9);
      v38 = v51;
      v51 = (v51 + 1);
      *v38 = 12;
      v39 = *(v11 + 8);
      *(v11 + 8) = v39 + 1;
      *(v11 + 200) = v39;
      _libssh2_store_u32(&v51, v39);
      _libssh2_store_str(&v51, (a1 + 32), *(a1 + 288));
      *(v11 + 188) = 2;
      goto LABEL_3;
    }

    v49 = 0;
    memset(v48, 0, sizeof(v48));
    v22 = *(a1 + 328);
    v23 = v22 - 4;
    if (v22 >= 4)
    {
      v25 = *(a1 + 320);
      v26 = _libssh2_ntohu32(v25);
      v27 = v26;
      if (v26 < a3 && v23 >= v26)
      {
        v29 = v25 + 1;
        memcpy(a2, v25 + 1, v26);
        *(a2 + v27) = 0;
        v30 = v23 - v27 - 4;
        if (v23 - v27 >= 4)
        {
          v31 = (v29 + v27);
          v32 = _libssh2_ntohu32(v31);
          v33 = v32;
          v34 = (v31 + 1);
          if (a4 && a5 >= 2)
          {
            if (v32 >= a5 || v30 < v32)
            {
              return -38;
            }

            memcpy(a4, v34, v32);
            *(a4 + v33) = 0;
          }

          if (v30 >= v33)
          {
            if (a6)
            {
              v36 = a6;
              *(a6 + 48) = 0;
              *(a6 + 16) = 0u;
              *(a6 + 32) = 0u;
              *a6 = 0u;
            }

            else
            {
              v36 = v48;
            }

            v44 = sftp_bin2attr(v36, &v34[v33], v30 - v33);
            if ((v44 & 0x8000000000000000) == 0)
            {
              *(a1 + 320) = &v34[v33 + v44];
              *(a1 + 328) = v30 - v33 - v44;
              v45 = *(a1 + 304) - 1;
              *(a1 + 304) = v45;
              if (!v45)
              {
                (*(v13 + 24))(*(a1 + 312), v13);
              }

              return v27;
            }
          }
        }
      }
    }

    return -38;
  }

  v47 = a6;
  if (v15 == 2)
  {
LABEL_3:
    v16 = _libssh2_channel_write(v12, 0, *(v11 + 192), (v14 + 13));
    if (v16 == -37)
    {
      return -37;
    }

    v17 = v16;
    (*(v13 + 24))(*(v11 + 192), v13);
    *(v11 + 192) = 0;
    if (v17 != v14 + 13)
    {
      *(v11 + 188) = 0;
      v20 = "_libssh2_channel_write() failed";
      v21 = v13;
      v19 = 4294967289;
      return _libssh2_error(v21, v19, v20);
    }

    *(v11 + 188) = 3;
  }

  v18 = sftp_packet_requirev(v11, &sftp_readdir_read_responses, *(v11 + 200), &v50, &v52, 9uLL);
  if (v18)
  {
    v19 = v18;
    if (v18 != -37)
    {
      if (v18 != -38)
      {
        *(v11 + 188) = 0;
        v20 = "Timeout waiting for status message";
        v21 = v13;
        return _libssh2_error(v21, v19, v20);
      }

      if (v52)
      {
        (*(v13 + 24))(v50, v13);
      }

      v20 = "Status message too short";
LABEL_12:
      v21 = v13;
      v19 = 4294967265;
      return _libssh2_error(v21, v19, v20);
    }

    return -37;
  }

  v40 = v50;
  if (*v50 == 101)
  {
    v41 = _libssh2_ntohu32((v50 + 5));
    (*(v13 + 24))(v50, v13);
    if (v41 != 1)
    {
      *(v11 + 64) = v41;
      *(v11 + 188) = 0;
      v20 = "SFTP Protocol Error";
      goto LABEL_12;
    }

    v27 = 0;
    *(v11 + 188) = 0;
  }

  else
  {
    *(v11 + 188) = 0;
    v42 = _libssh2_ntohu32((v40 + 5));
    if (v42)
    {
      *(a1 + 304) = v42;
      v43 = v50 + 9;
      *(a1 + 312) = v50;
      *(a1 + 320) = v43;
      *(a1 + 328) = v52 - 9;
      return sftp_readdir(a1, a2, a3, a4, a5, v47);
    }

    else
    {
      (*(v13 + 24))(v50, v13);
      return 0;
    }
  }

  return v27;
}

uint64_t libssh2_sftp_write(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return -39;
  }

  v4 = time(0);
  v34 = v4;
  while (1)
  {
    v5 = *(a1 + 24);
    v6 = *v5;
    v7 = *(*v5 + 104);
    v37 = 0;
    v38 = 0;
    v36 = 0;
    if (v5[41] == 3)
    {
      break;
    }

    v5[16] = 0;
    v8 = *(a1 + 312) - *(a1 + 304) + *(a1 + 320);
    v5[41] = 0;
    if (v8 >= a3)
    {
LABEL_14:
      v18 = _libssh2_list_first(a1 + 376);
      v4 = v34;
      if (v18)
      {
        v19 = v18;
        do
        {
          v20 = *(v19 + 48);
          if (v20)
          {
            result = _libssh2_channel_write(v6, 0, (v19 + *(v19 + 40) + 60), v20);
            if (result < 0)
            {
              goto LABEL_43;
            }

            v22 = *(v19 + 48) - result;
            *(v19 + 40) += result;
            *(v19 + 48) = v22;
            if (v22)
            {
              break;
            }
          }

          v19 = _libssh2_list_next(v19);
        }

        while (v19);
      }

      break;
    }

    if (a3 >= v8)
    {
      v9 = a3 - v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = (a2 + v8);
    while (1)
    {
      v11 = v9 >= 0x7530 ? 30000 : v9;
      v12 = *(a1 + 288) + v11;
      v13 = (v12 + 25);
      v14 = (*(v7 + 8))(v13 + 64, v7);
      if (!v14)
      {
        break;
      }

      v15 = v14;
      *(v14 + 32) = v11;
      *(v14 + 40) = 0;
      *(v14 + 48) = v13;
      v37 = (v14 + 60);
      _libssh2_store_u32(&v37, v12 + 21);
      v16 = v37;
      v37 = (v37 + 1);
      *v16 = 6;
      v17 = v5[2];
      v5[2] = v17 + 1;
      *(v15 + 56) = v17;
      _libssh2_store_u32(&v37, v17);
      _libssh2_store_str(&v37, (a1 + 32), *(a1 + 288));
      *v37 = bswap64(*(a1 + 312));
      v37 += 2;
      *(a1 + 312) += v11;
      _libssh2_store_str(&v37, v10, v11);
      _libssh2_list_add((a1 + 376), v15);
      v10 += v11;
      v9 -= v11;
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    result = _libssh2_error(v7, 4294967290, "malloc fail for FXP_WRITE");
    v4 = v34;
LABEL_43:
    if (result != -37)
    {
      return result;
    }

LABEL_44:
    v32 = *(**(a1 + 24) + 104);
    if (!*(v32 + 172))
    {
      return -37;
    }

    LODWORD(result) = _libssh2_wait_socket(v32, v4);
    if (result)
    {
      return result;
    }
  }

  v5[41] = 0;
  v23 = _libssh2_list_first(a1 + 376);
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    while (1)
    {
      if (*(v24 + 48) | v25)
      {
        goto LABEL_29;
      }

      LODWORD(result) = sftp_packet_require(v5, 101, *(v24 + 56), &v36, &v38, 9uLL);
      if (result == -38)
      {
        break;
      }

      if ((result & 0x80000000) != 0)
      {
        if (result == -37)
        {
          v5[41] = 3;
          goto LABEL_44;
        }

        goto LABEL_42;
      }

      v26 = _libssh2_ntohu32((v36 + 5));
      (*(v7 + 24))(v36, v7);
      v5[16] = v26;
      if (v26)
      {
        sftp_packetlist_flush(a1);
        v31 = *(a1 + 304) - *(a1 + 320);
        *(a1 + 304) = v31;
        *(a1 + 312) = v31;
        *(a1 + 320) = 0;
        v29 = v7;
        v30 = "FXP write failed";
        goto LABEL_41;
      }

      v25 = *(v24 + 32);
      *(a1 + 304) += v25;
      v27 = _libssh2_list_next(v24);
      _libssh2_list_remove(v24);
      (*(v7 + 24))(v24, v7);
      v24 = v27;
      if (!v27)
      {
        goto LABEL_29;
      }
    }

    if (v38)
    {
      (*(v7 + 24))(v36, v7);
    }

    v29 = v7;
    v30 = "FXP write packet too short";
LABEL_41:
    LODWORD(result) = _libssh2_error(v29, 4294967265, v30);
LABEL_42:
    result = result;
    goto LABEL_43;
  }

  v25 = 0;
LABEL_29:
  v28 = *(a1 + 320) + v25;
  if (v28)
  {
    if (v28 >= a3)
    {
      result = a3;
    }

    else
    {
      result = *(a1 + 320) + v25;
    }

    *(a1 + 320) = v28 - result;
    goto LABEL_43;
  }

  return 0;
}

uint64_t libssh2_sftp_fsync(void *a1)
{
  if (!a1)
  {
    return 4294967257;
  }

  v2 = time(0);
  while (1)
  {
    v3 = a1[3];
    v4 = *v3;
    v5 = *(*v3 + 104);
    v6 = *(a1 + 72);
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v7 = *(v3 + 168);
    if (v7 == 2)
    {
      v9 = *(v3 + 176);
    }

    else
    {
      if (v7)
      {
        goto LABEL_15;
      }

      *(v3 + 64) = 0;
      v8 = (*(v5 + 8))((v6 + 34), v5);
      v23 = v8;
      if (!v8)
      {
        v17 = v5;
        v16 = 4294967290;
        v18 = "Unable to allocate memory for FXP_EXTENDED packet";
        goto LABEL_26;
      }

      v9 = v8;
      _libssh2_store_u32(&v23, v6 + 30);
      v10 = v23;
      v23 = (v23 + 1);
      *v10 = -56;
      v11 = *(v3 + 8);
      *(v3 + 8) = v11 + 1;
      *(v3 + 184) = v11;
      _libssh2_store_u32(&v23, v11);
      _libssh2_store_str(&v23, "fsync@openssh.com", 0x11uLL);
      _libssh2_store_str(&v23, a1 + 4, a1[36]);
      *(v3 + 168) = 2;
    }

    v12 = _libssh2_channel_write(v4, 0, v9, (v6 + 34));
    if (v12 == -37 || v12 < (v6 + 34))
    {
      *(v3 + 176) = v9;
      goto LABEL_27;
    }

    v14 = v12;
    (*(v5 + 24))(v9, v5);
    *(v3 + 176) = 0;
    if ((v14 & 0x8000000000000000) != 0)
    {
      *(v3 + 168) = 0;
      v17 = v5;
      v16 = 4294967289;
      v18 = "_libssh2_channel_write() failed";
      goto LABEL_26;
    }

    *(v3 + 168) = 3;
LABEL_15:
    v15 = sftp_packet_require(v3, 101, *(v3 + 184), &v22, &v24, 9uLL);
    if (!v15)
    {
      break;
    }

    v16 = v15;
    if (v15 == -37)
    {
      goto LABEL_27;
    }

    if (v15 == -38)
    {
      if (v24)
      {
        (*(v5 + 24))(v22, v5);
      }

      v17 = v5;
      v16 = 4294967265;
      v18 = "SFTP fsync packet too short";
    }

    else
    {
      *(v3 + 168) = 0;
      v17 = v5;
      v18 = "Error waiting for FXP EXTENDED REPLY";
    }

LABEL_26:
    result = _libssh2_error(v17, v16, v18);
    if (result != -37)
    {
      return result;
    }

LABEL_27:
    v21 = *(*a1[3] + 104);
    if (!*(v21 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v21, v2);
    if (result)
    {
      return result;
    }
  }

  *(v3 + 168) = 0;
  v19 = _libssh2_ntohu32((v22 + 5));
  (*(v5 + 24))(v22, v5);
  if (v19)
  {
    *(v3 + 64) = v19;
    v17 = v5;
    v16 = 4294967265;
    v18 = "fsync failed";
    goto LABEL_26;
  }

  return 0;
}

uint64_t libssh2_sftp_fstat_ex(void *a1, uint64_t *a2, int a3)
{
  result = 4294967257;
  if (a1 && a2)
  {
    v7 = time(0);
    if (a3)
    {
      v8 = 10;
    }

    else
    {
      v8 = 8;
    }

    v9 = "Unable to send FXP_FSTAT command";
    if (a3)
    {
      v9 = "Unable to send FXP_FSETSTAT";
    }

    v30 = v9;
    while (1)
    {
      v10 = a1[3];
      v11 = *v10;
      v12 = *(*v10 + 104);
      v33 = 0;
      v13 = a3 ? (*a2 & 0xC) + 8 * (*a2 & 1) + ((4 * *a2) & 8) + 4 : 0;
      v14 = a1[36] + 13 + v13;
      v31 = 0;
      v32 = 0;
      v15 = *(v10 + 204);
      if (!v15)
      {
        break;
      }

      if (v15 == 2)
      {
        v16 = v14;
LABEL_19:
        v21 = _libssh2_channel_write(v11, 0, *(v10 + 208), v16);
        if (v21 == -37)
        {
          goto LABEL_37;
        }

        v22 = v21;
        (*(v12 + 24))(*(v10 + 208), v12);
        *(v10 + 208) = 0;
        if (v16 != v22)
        {
          *(v10 + 204) = 0;
          v25 = v12;
          v24 = 4294967289;
          v26 = v30;
          goto LABEL_36;
        }

        *(v10 + 204) = 3;
      }

      v23 = sftp_packet_requirev(v10, &sftp_fstat_fstat_responses, *(v10 + 216), &v31, &v33, 9uLL);
      if (v23)
      {
        v24 = v23;
        if (v23 == -37)
        {
          goto LABEL_37;
        }

        if (v23 == -38)
        {
          if (v33)
          {
            (*(v12 + 24))(v31, v12);
          }

          v25 = v12;
          v24 = 4294967265;
          v26 = "SFTP fstat packet too short";
        }

        else
        {
          *(v10 + 204) = 0;
          v25 = v12;
          v26 = "Timeout waiting for status message";
        }
      }

      else
      {
        *(v10 + 204) = 0;
        if (*v31 == 101)
        {
          v27 = _libssh2_ntohu32((v31 + 5));
          (*(v12 + 24))(v31, v12);
          if (!v27)
          {
            return 0;
          }

          *(v10 + 64) = v27;
          v25 = v12;
          v24 = 4294967265;
          v26 = "SFTP Protocol Error";
        }

        else
        {
          v28 = sftp_bin2attr(a2, v31 + 5, v33 - 5);
          (*(v12 + 24))(v31, v12);
          if ((v28 & 0x8000000000000000) == 0)
          {
            return 0;
          }

          v25 = v12;
          v24 = 4294967265;
          v26 = "Attributes too short in SFTP fstat";
        }
      }

LABEL_36:
      result = _libssh2_error(v25, v24, v26);
      if (result != -37)
      {
        return result;
      }

LABEL_37:
      v29 = *(*a1[3] + 104);
      if (!*(v29 + 172))
      {
        return 4294967259;
      }

      result = _libssh2_wait_socket(v29, v7);
      if (result)
      {
        return result;
      }
    }

    *(v10 + 64) = 0;
    v16 = v14;
    v17 = (*(v12 + 8))(v14, v12);
    *(v10 + 208) = v17;
    v32 = v17;
    if (!v17)
    {
      v25 = v12;
      v24 = 4294967290;
      v26 = "Unable to allocate memory for FSTAT/FSETSTAT packet";
      goto LABEL_36;
    }

    _libssh2_store_u32(&v32, v14 - 4);
    v18 = v32;
    v32 = (v32 + 1);
    *v18 = v8;
    v19 = *(v10 + 8);
    *(v10 + 8) = v19 + 1;
    *(v10 + 216) = v19;
    _libssh2_store_u32(&v32, v19);
    _libssh2_store_str(&v32, a1 + 4, a1[36]);
    if (a3)
    {
      v20 = sftp_attr2bin(v32, a2);
      v32 = (v32 + v20);
    }

    *(v10 + 204) = 2;
    goto LABEL_19;
  }

  return result;
}

uint64_t libssh2_sftp_seek64(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 304) != a2 || *(result + 312) != a2)
    {
      *(result + 304) = a2;
      *(result + 312) = a2;
      result = sftp_packetlist_flush(result);
      if (*(v2 + 344))
      {
        result = (*(*(**(v2 + 24) + 104) + 24))(*(v2 + 328));
        *(v2 + 328) = 0;
        *(v2 + 336) = 0;
        *(v2 + 344) = 0;
      }

      *(v2 + 352) = 0;
    }
  }

  return result;
}

uint64_t sftp_packetlist_flush(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = (*v1)[13];
  result = _libssh2_list_first(a1 + 376);
  if (result)
  {
    v4 = result;
    do
    {
      v10 = 0;
      v5 = _libssh2_list_next(v4);
      if (sftp_packet_ask(v1, 101, *(v4 + 56), &v10, &v9) && sftp_packet_ask(v1, 103, *(v4 + 56), &v10, &v9))
      {
        if (*(v4 + 40))
        {
          v6 = *(v4 + 56);
          v7 = (*v1)[13];
          v8 = (*(v7 + 8))(32, v7);
          if (v8)
          {
            *(v8 + 24) = v6;
            _libssh2_list_add(v1 + 4, v8);
          }

          else
          {
            _libssh2_error(v7, 4294967290, "malloc fail for zombie request  ID");
          }
        }
      }

      else
      {
        (*(v2 + 24))(v10, v2);
      }

      _libssh2_list_remove(v4);
      result = (*(v2 + 24))(v4, v2);
      v4 = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t libssh2_sftp_tell(uint64_t result)
{
  if (result)
  {
    return *(result + 304);
  }

  return result;
}

uint64_t libssh2_sftp_tell64(uint64_t result)
{
  if (result)
  {
    return *(result + 304);
  }

  return result;
}

uint64_t libssh2_sftp_close_handle(uint64_t a1)
{
  if (a1)
  {
    v2 = time(0);
    while (1)
    {
      v3 = *(a1 + 24);
      v4 = *v3;
      v5 = *(*v3 + 104);
      v25 = 0;
      v26 = 0;
      v6 = *(a1 + 288);
      v7 = (v6 + 13);
      v24 = 0;
      v8 = *(a1 + 360);
      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v3[16] = 0;
        v10 = (*(v5 + 8))((v6 + 13), v5);
        *(a1 + 368) = v10;
        v25 = v10;
        if (v10)
        {
          _libssh2_store_u32(&v25, v6 + 9);
          v11 = v25;
          v25 = (v25 + 1);
          *v11 = 4;
          v12 = v3[2];
          v3[2] = v12 + 1;
          *(a1 + 364) = v12;
          _libssh2_store_u32(&v25, v12);
          _libssh2_store_str(&v25, (a1 + 32), *(a1 + 288));
          v9 = 0;
          *(a1 + 360) = 2;
LABEL_9:
          v13 = _libssh2_channel_write(v4, 0, *(a1 + 368), v7);
          if (v13 == -37)
          {
            goto LABEL_35;
          }

          if (v13 == v7)
          {
            *(a1 + 360) = 3;
          }

          else
          {
            *(a1 + 360) = 0;
            v9 = _libssh2_error(v5, 4294967289, "Unable to send FXP_CLOSE command");
          }

          (*(v5 + 24))(*(a1 + 368), v5);
          *(a1 + 368) = 0;
          v8 = *(a1 + 360);
          goto LABEL_14;
        }

        *(a1 + 360) = 0;
        v9 = _libssh2_error(v5, 4294967290, "Unable to allocate memory for FXP_CLOSE packet");
        v8 = *(a1 + 360);
      }

      if (v8 == 2)
      {
        goto LABEL_9;
      }

      if (v8 != 3)
      {
        goto LABEL_27;
      }

LABEL_14:
      v14 = sftp_packet_require(v3, 101, *(a1 + 364), &v24, &v26, 9uLL);
      v9 = v14;
      if (v14)
      {
        if (v14 == -37)
        {
          goto LABEL_35;
        }

        if (v14 == -38)
        {
          if (v26)
          {
            (*(v5 + 24))(v24, v5);
          }

          v24 = 0;
          v15 = v5;
          v16 = 4294967265;
          v17 = "Packet too short in FXP_CLOSE command";
        }

        else
        {
          v15 = v5;
          v16 = v9;
          v17 = "Error waiting for status message";
        }

        _libssh2_error(v15, v16, v17);
      }

      *(a1 + 360) = 4;
      if (v24)
      {
        v18 = _libssh2_ntohu32((v24 + 5));
        (*(v5 + 24))(v24, v5);
        if (v18)
        {
          v3[16] = v18;
          *(a1 + 360) = 0;
          v9 = _libssh2_error(v5, 4294967265, "SFTP Protocol Error");
        }
      }

      else
      {
LABEL_27:
        if (!v9)
        {
          libssh2_sftp_close_handle_cold_1();
        }
      }

      _libssh2_list_remove(a1);
      v19 = *(a1 + 296);
      if (v19)
      {
        if (v19 == 1 && *(a1 + 304))
        {
          (*(v5 + 24))(*(a1 + 312), v5);
        }
      }

      else
      {
        v20 = *(a1 + 328);
        if (v20)
        {
          (*(v5 + 24))(v20, v5);
        }
      }

      sftp_packetlist_flush(a1);
      v3[39] = 0;
      *(a1 + 360) = 0;
      (*(v5 + 24))(a1, v5);
      if (v9 != -37)
      {
        return v9;
      }

LABEL_35:
      v21 = *(**(a1 + 24) + 104);
      if (!*(v21 + 172))
      {
        return 4294967259;
      }

      v22 = _libssh2_wait_socket(v21, v2);
      if (v22)
      {
        return v22;
      }
    }
  }

  return 4294967257;
}

uint64_t libssh2_sftp_unlink_ex(uint64_t a1, const void *a2, unsigned int a3)
{
  if (!a1)
  {
    return 4294967257;
  }

  v6 = time(0);
  while (1)
  {
    v7 = *a1;
    v8 = *(*a1 + 104);
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v9 = *(a1 + 220);
    if (v9 != 2)
    {
      if (v9)
      {
        goto LABEL_10;
      }

      *(a1 + 64) = 0;
      v10 = (*(v8 + 8))(a3 + 13, v8);
      *(a1 + 224) = v10;
      v23 = v10;
      if (!v10)
      {
        v17 = v8;
        v16 = 4294967290;
        v18 = "Unable to allocate memory for FXP_REMOVE packet";
        goto LABEL_21;
      }

      _libssh2_store_u32(&v23, a3 + 9);
      v11 = v23;
      v23 = (v23 + 1);
      *v11 = 13;
      v12 = *(a1 + 8);
      *(a1 + 8) = v12 + 1;
      *(a1 + 232) = v12;
      _libssh2_store_u32(&v23, v12);
      _libssh2_store_str(&v23, a2, a3);
      *(a1 + 220) = 2;
    }

    v13 = _libssh2_channel_write(v7, 0, *(a1 + 224), a3 + 13);
    if (v13 == -37)
    {
      goto LABEL_22;
    }

    v14 = v13;
    (*(v8 + 24))(*(a1 + 224), v8);
    *(a1 + 224) = 0;
    if (v14 != a3 + 13)
    {
      *(a1 + 220) = 0;
      v17 = v8;
      v16 = 4294967289;
      v18 = "Unable to send FXP_REMOVE command";
      goto LABEL_21;
    }

    *(a1 + 220) = 3;
LABEL_10:
    v15 = sftp_packet_require(a1, 101, *(a1 + 232), &v22, &v24, 9uLL);
    if (!v15)
    {
      break;
    }

    v16 = v15;
    if (v15 == -37)
    {
      goto LABEL_22;
    }

    if (v15 == -38)
    {
      if (v24)
      {
        (*(v8 + 24))(v22, v8);
      }

      v17 = v8;
      v16 = 4294967265;
      v18 = "SFTP unlink packet too short";
    }

    else
    {
      *(a1 + 220) = 0;
      v17 = v8;
      v18 = "Error waiting for FXP STATUS";
    }

LABEL_21:
    result = _libssh2_error(v17, v16, v18);
    if (result != -37)
    {
      return result;
    }

LABEL_22:
    v21 = *(*a1 + 104);
    if (!*(v21 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v21, v6);
    if (result)
    {
      return result;
    }
  }

  *(a1 + 220) = 0;
  v19 = _libssh2_ntohu32((v22 + 5));
  (*(v8 + 24))(v22, v8);
  if (v19)
  {
    *(a1 + 64) = v19;
    v17 = v8;
    v16 = 4294967265;
    v18 = "SFTP Protocol Error";
    goto LABEL_21;
  }

  return 0;
}

uint64_t libssh2_sftp_rename_ex(uint64_t a1, const void *a2, unsigned int a3, const void *a4, unsigned int a5, unsigned int a6)
{
  if (!a1)
  {
    return 4294967257;
  }

  v11 = time(0);
  v12 = a3;
  v13 = a5;
  v14 = a3 + a5 + 17;
  while (1)
  {
    v15 = *a1;
    v16 = *(*a1 + 104);
    v33 = 0;
    v34 = 0;
    v17 = *(a1 + 12);
    v18 = v14 + 4 * (v17 > 4);
    v19 = *(a1 + 236);
    if (v19 != 2)
    {
      if (v19)
      {
        goto LABEL_14;
      }

      *(a1 + 64) = 0;
      if (v17 <= 1)
      {
        v20 = v16;
        v21 = 4294967265;
        v22 = "Server does not support RENAME";
        goto LABEL_29;
      }

      v23 = (*(v16 + 8))(v18, v16);
      *(a1 + 240) = v23;
      *(a1 + 248) = v23;
      if (!v23)
      {
        v20 = v16;
        v21 = 4294967290;
        v22 = "Unable to allocate memory for FXP_RENAME packet";
        goto LABEL_29;
      }

      _libssh2_store_u32((a1 + 248), v18 - 4);
      v24 = *(a1 + 248);
      *(a1 + 248) = v24 + 1;
      *v24 = 18;
      v25 = *(a1 + 8);
      *(a1 + 8) = v25 + 1;
      *(a1 + 256) = v25;
      _libssh2_store_u32((a1 + 248), v25);
      _libssh2_store_str((a1 + 248), a2, v12);
      _libssh2_store_str((a1 + 248), a4, v13);
      if (*(a1 + 12) >= 5u)
      {
        _libssh2_store_u32((a1 + 248), a6);
      }

      *(a1 + 236) = 2;
    }

    v26 = _libssh2_channel_write(v15, 0, *(a1 + 240), *(a1 + 248) - *(a1 + 240));
    if (v26 == -37)
    {
      goto LABEL_30;
    }

    v27 = v26;
    (*(v16 + 24))(*(a1 + 240), v16);
    *(a1 + 240) = 0;
    if (v27 != v18)
    {
      *(a1 + 236) = 0;
      v20 = v16;
      v21 = 4294967289;
      v22 = "Unable to send FXP_RENAME command";
      goto LABEL_29;
    }

    *(a1 + 236) = 3;
LABEL_14:
    v28 = sftp_packet_require(a1, 101, *(a1 + 256), &v33, &v34, 9uLL);
    if (!v28)
    {
      break;
    }

    v21 = v28;
    if (v28 == -37)
    {
      goto LABEL_30;
    }

    if (v28 == -38)
    {
      if (v34)
      {
        (*(v16 + 24))(v33, v16);
      }

      v20 = v16;
      v21 = 4294967265;
      v22 = "SFTP rename packet too short";
    }

    else
    {
      *(a1 + 236) = 0;
      v20 = v16;
      v22 = "Error waiting for FXP STATUS";
    }

LABEL_29:
    result = _libssh2_error(v20, v21, v22);
    if (result != -37)
    {
      return result;
    }

LABEL_30:
    v31 = *(*a1 + 104);
    if (!*(v31 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v31, v11);
    if (result)
    {
      return result;
    }
  }

  *(a1 + 236) = 0;
  v29 = _libssh2_ntohu32((v33 + 5));
  (*(v16 + 24))(v33, v16);
  *(a1 + 64) = v29;
  if (v29 == 8)
  {
    v20 = v16;
    v21 = 4294967265;
    v22 = "Operation Not Supported";
    goto LABEL_29;
  }

  if (v29 == 11)
  {
    v20 = v16;
    v21 = 4294967265;
    v22 = "File already exists and SSH_FXP_RENAME_OVERWRITE not specified";
    goto LABEL_29;
  }

  if (v29)
  {
    v20 = v16;
    v21 = 4294967265;
    v22 = "SFTP Protocol Error";
    goto LABEL_29;
  }

  return 0;
}

uint64_t libssh2_sftp_fstatvfs(void *a1, unint64_t *a2)
{
  result = 4294967257;
  if (a1 && a2)
  {
    v5 = time(0);
    do
    {
      v6 = a1[3];
      v7 = *v6;
      v8 = *(*v6 + 104);
      v28 = 0;
      v29 = 0;
      v9 = *(a1 + 72);
      v27 = 0;
      v10 = *(v6 + 260);
      if (v10 == 2)
      {
        v12 = *(v6 + 264);
      }

      else
      {
        if (v10)
        {
          goto LABEL_16;
        }

        *(v6 + 64) = 0;
        v11 = (*(v8 + 8))((v9 + 37), v8);
        v28 = v11;
        if (!v11)
        {
          v20 = v8;
          v19 = 4294967290;
          v21 = "Unable to allocate memory for FXP_EXTENDED packet";
          goto LABEL_29;
        }

        v12 = v11;
        _libssh2_store_u32(&v28, v9 + 33);
        v13 = v28;
        v28 = (v28 + 1);
        *v13 = -56;
        v14 = *(v6 + 8);
        *(v6 + 8) = v14 + 1;
        *(v6 + 272) = v14;
        _libssh2_store_u32(&v28, v14);
        _libssh2_store_str(&v28, "fstatvfs@openssh.com", 0x14uLL);
        _libssh2_store_str(&v28, a1 + 4, a1[36]);
        *(v6 + 260) = 2;
      }

      v15 = _libssh2_channel_write(v7, 0, v12, (v9 + 37));
      if (v15 == -37 || v15 < (v9 + 37))
      {
        *(v6 + 264) = v12;
        goto LABEL_30;
      }

      v17 = v15;
      (*(v8 + 24))(v12, v8);
      *(v6 + 264) = 0;
      if ((v17 & 0x8000000000000000) != 0)
      {
        *(v6 + 260) = 0;
        v20 = v8;
        v19 = 4294967289;
        v21 = "_libssh2_channel_write() failed";
        goto LABEL_29;
      }

      *(v6 + 260) = 3;
LABEL_16:
      v18 = sftp_packet_requirev(v6, &sftp_fstatvfs_responses, *(v6 + 272), &v27, &v29, 9uLL);
      if (v18)
      {
        v19 = v18;
        if (v18 == -37)
        {
          goto LABEL_30;
        }

        if (v18 == -38)
        {
          if (v29)
          {
            (*(v8 + 24))(v27, v8);
          }

          v20 = v8;
          v19 = 4294967265;
          v21 = "SFTP rename packet too short";
        }

        else
        {
          *(v6 + 260) = 0;
          v20 = v8;
          v21 = "Error waiting for FXP EXTENDED REPLY";
        }
      }

      else
      {
        v22 = v27;
        if (*v27 == 101)
        {
          v23 = _libssh2_ntohu32((v27 + 5));
          *(v6 + 260) = 0;
          (*(v8 + 24))(v27, v8);
          *(v6 + 64) = v23;
          v20 = v8;
          v19 = 4294967265;
          v21 = "SFTP Protocol Error";
        }

        else
        {
          if (v29 > 0x5C)
          {
            *(v6 + 260) = 0;
            *a2 = _libssh2_ntohu64((v22 + 5));
            a2[1] = _libssh2_ntohu64((v27 + 13));
            a2[2] = _libssh2_ntohu64((v27 + 21));
            a2[3] = _libssh2_ntohu64((v27 + 29));
            a2[4] = _libssh2_ntohu64((v27 + 37));
            a2[5] = _libssh2_ntohu64((v27 + 45));
            a2[6] = _libssh2_ntohu64((v27 + 53));
            a2[7] = _libssh2_ntohu64((v27 + 61));
            a2[8] = _libssh2_ntohu64((v27 + 69));
            v25 = _libssh2_ntohu64((v27 + 77));
            v26 = _libssh2_ntohu64((v27 + 85));
            a2[9] = v25 & 3;
            a2[10] = v26;
            (*(v8 + 24))(v27, v8);
            return 0;
          }

          (*(v8 + 24))();
          *(v6 + 260) = 0;
          v20 = v8;
          v19 = 4294967265;
          v21 = "SFTP Protocol Error: short response";
        }
      }

LABEL_29:
      result = _libssh2_error(v20, v19, v21);
      if (result != -37)
      {
        return result;
      }

LABEL_30:
      v24 = *(*a1[3] + 104);
      if (!*(v24 + 172))
      {
        return 4294967259;
      }

      result = _libssh2_wait_socket(v24, v5);
    }

    while (!result);
  }

  return result;
}

uint64_t libssh2_sftp_statvfs(uint64_t a1, const void *a2, unsigned int a3, unint64_t *a4)
{
  result = 4294967257;
  if (a1 && a4)
  {
    v8 = time(0);
    do
    {
      v9 = *a1;
      v10 = *(*a1 + 104);
      v32 = 0;
      v33 = 0;
      v31 = 0;
      v11 = *(a1 + 276);
      if (v11 == 2)
      {
        v13 = *(a1 + 280);
      }

      else
      {
        if (v11)
        {
          goto LABEL_16;
        }

        *(a1 + 64) = 0;
        v12 = (*(v10 + 8))(a3 + 36, v10);
        v32 = v12;
        if (!v12)
        {
          v21 = v10;
          v20 = 4294967290;
          v22 = "Unable to allocate memory for FXP_EXTENDED packet";
          goto LABEL_29;
        }

        v13 = v12;
        _libssh2_store_u32(&v32, a3 + 32);
        v14 = v32;
        v32 = (v32 + 1);
        *v14 = -56;
        v15 = *(a1 + 8);
        *(a1 + 8) = v15 + 1;
        *(a1 + 288) = v15;
        _libssh2_store_u32(&v32, v15);
        _libssh2_store_str(&v32, "statvfs@openssh.com", 0x13uLL);
        _libssh2_store_str(&v32, a2, a3);
        *(a1 + 276) = 2;
      }

      v16 = _libssh2_channel_write(v9, 0, v13, a3 + 36);
      if (v16 == -37 || v16 < a3 + 36)
      {
        *(a1 + 280) = v13;
        goto LABEL_30;
      }

      v18 = v16;
      (*(v10 + 24))(v13, v10);
      *(a1 + 280) = 0;
      if ((v18 & 0x8000000000000000) != 0)
      {
        *(a1 + 276) = 0;
        v21 = v10;
        v20 = 4294967289;
        v22 = "_libssh2_channel_write() failed";
        goto LABEL_29;
      }

      *(a1 + 276) = 3;
LABEL_16:
      v19 = sftp_packet_requirev(a1, &sftp_statvfs_responses, *(a1 + 288), &v31, &v33, 9uLL);
      if (v19)
      {
        v20 = v19;
        if (v19 == -37)
        {
          goto LABEL_30;
        }

        if (v19 == -38)
        {
          if (v33)
          {
            (*(v10 + 24))(v31, v10);
          }

          v21 = v10;
          v20 = 4294967265;
          v22 = "SFTP fstat packet too short";
        }

        else
        {
          *(a1 + 276) = 0;
          v21 = v10;
          v22 = "Error waiting for FXP EXTENDED REPLY";
        }
      }

      else
      {
        v23 = v31;
        if (*v31 == 101)
        {
          v24 = _libssh2_ntohu32((v31 + 5));
          *(a1 + 276) = 0;
          (*(v10 + 24))(v31, v10);
          *(a1 + 64) = v24;
          v21 = v10;
          v20 = 4294967265;
          v22 = "SFTP Protocol Error";
        }

        else
        {
          if (v33 > 0x5C)
          {
            *(a1 + 276) = 0;
            v26 = _libssh2_ntohu64((v23 + 5));
            v27 = v31;
            *a4 = v26;
            a4[1] = _libssh2_ntohu64((v27 + 13));
            a4[2] = _libssh2_ntohu64((v31 + 21));
            a4[3] = _libssh2_ntohu64((v31 + 29));
            a4[4] = _libssh2_ntohu64((v31 + 37));
            a4[5] = _libssh2_ntohu64((v31 + 45));
            a4[6] = _libssh2_ntohu64((v31 + 53));
            a4[7] = _libssh2_ntohu64((v31 + 61));
            a4[8] = _libssh2_ntohu64((v31 + 69));
            v28 = _libssh2_ntohu64((v31 + 77));
            v29 = _libssh2_ntohu64((v31 + 85));
            a4[9] = v28 & 3;
            a4[10] = v29;
            (*(v10 + 24))(v31, v10);
            return 0;
          }

          (*(v10 + 24))();
          *(a1 + 276) = 0;
          v21 = v10;
          v20 = 4294967265;
          v22 = "SFTP Protocol Error: short response";
        }
      }

LABEL_29:
      result = _libssh2_error(v21, v20, v22);
      if (result != -37)
      {
        return result;
      }

LABEL_30:
      v25 = *(*a1 + 104);
      if (!*(v25 + 172))
      {
        return 4294967259;
      }

      result = _libssh2_wait_socket(v25, v8);
    }

    while (!result);
  }

  return result;
}

uint64_t libssh2_sftp_mkdir_ex(uint64_t a1, const void *a2, unsigned int a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294967257;
  }

  v7 = time(0);
  while (1)
  {
    v8 = *a1;
    v9 = *(*a1 + 104);
    v33 = 0;
    v32 = 0u;
    memset(v31, 0, sizeof(v31));
    v30 = 0;
    v28 = 0;
    if (a4 == -1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 4;
      *&v31[0] = 4;
      *&v32 = a4 | 0x4000;
    }

    v29 = 0;
    v11 = a3 + 17 + v10;
    v12 = *(a1 + 292);
    if (v12)
    {
      if (v12 != 2)
      {
        goto LABEL_15;
      }

      v13 = *(a1 + 296);
    }

    else
    {
      *(a1 + 64) = 0;
      v14 = (*(v9 + 8))(v11, v9);
      v29 = v14;
      if (!v14)
      {
        v22 = v9;
        v21 = 4294967290;
        v23 = "Unable to allocate memory for FXP_MKDIR packet";
        goto LABEL_26;
      }

      v13 = v14;
      _libssh2_store_u32(&v29, v11 - 4);
      v15 = v29;
      v29 = (v29 + 1);
      *v15 = 14;
      v16 = *(a1 + 8);
      *(a1 + 8) = v16 + 1;
      *(a1 + 304) = v16;
      _libssh2_store_u32(&v29, v16);
      _libssh2_store_str(&v29, a2, a3);
      v17 = sftp_attr2bin(v29, v31);
      v29 = (v29 + v17);
      *(a1 + 292) = 2;
    }

    v18 = _libssh2_channel_write(v8, 0, v13, v11);
    if (v18 == -37)
    {
      *(a1 + 296) = v13;
      goto LABEL_27;
    }

    v19 = v18;
    (*(v9 + 24))(v13, v9);
    if (v19 != v11)
    {
      *(a1 + 292) = 0;
      v22 = v9;
      v21 = 4294967289;
      v23 = "_libssh2_channel_write() failed";
      goto LABEL_26;
    }

    *(a1 + 292) = 3;
    *(a1 + 296) = 0;
LABEL_15:
    v20 = sftp_packet_require(a1, 101, *(a1 + 304), &v28, &v30, 9uLL);
    if (!v20)
    {
      break;
    }

    v21 = v20;
    if (v20 == -37)
    {
      goto LABEL_27;
    }

    if (v20 == -38)
    {
      if (v30)
      {
        (*(v9 + 24))(v28, v9);
      }

      v22 = v9;
      v21 = 4294967265;
      v23 = "SFTP mkdir packet too short";
    }

    else
    {
      *(a1 + 292) = 0;
      v22 = v9;
      v23 = "Error waiting for FXP STATUS";
    }

LABEL_26:
    result = _libssh2_error(v22, v21, v23);
    if (result != -37)
    {
      return result;
    }

LABEL_27:
    v26 = *(*a1 + 104);
    if (!*(v26 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v26, v7);
    if (result)
    {
      return result;
    }
  }

  *(a1 + 292) = 0;
  v24 = _libssh2_ntohu32((v28 + 5));
  (*(v9 + 24))(v28, v9);
  if (v24)
  {
    *(a1 + 64) = v24;
    v22 = v9;
    v21 = 4294967265;
    v23 = "SFTP Protocol Error";
    goto LABEL_26;
  }

  return 0;
}

uint64_t libssh2_sftp_rmdir_ex(uint64_t a1, const void *a2, unsigned int a3)
{
  if (!a1)
  {
    return 4294967257;
  }

  v6 = time(0);
  while (1)
  {
    v7 = *a1;
    v8 = *(*a1 + 104);
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v9 = *(a1 + 308);
    if (v9 != 2)
    {
      if (v9)
      {
        goto LABEL_10;
      }

      *(a1 + 64) = 0;
      v10 = (*(v8 + 8))(a3 + 13, v8);
      *(a1 + 312) = v10;
      v23 = v10;
      if (!v10)
      {
        v17 = v8;
        v16 = 4294967290;
        v18 = "Unable to allocate memory for FXP_RMDIR packet";
        goto LABEL_21;
      }

      _libssh2_store_u32(&v23, a3 + 9);
      v11 = v23;
      v23 = (v23 + 1);
      *v11 = 15;
      v12 = *(a1 + 8);
      *(a1 + 8) = v12 + 1;
      *(a1 + 320) = v12;
      _libssh2_store_u32(&v23, v12);
      _libssh2_store_str(&v23, a2, a3);
      *(a1 + 308) = 2;
    }

    v13 = _libssh2_channel_write(v7, 0, *(a1 + 312), a3 + 13);
    if (v13 == -37)
    {
      goto LABEL_22;
    }

    v14 = v13;
    (*(v8 + 24))(*(a1 + 312), v8);
    *(a1 + 312) = 0;
    if (v14 != a3 + 13)
    {
      *(a1 + 308) = 0;
      v17 = v8;
      v16 = 4294967289;
      v18 = "Unable to send FXP_RMDIR command";
      goto LABEL_21;
    }

    *(a1 + 308) = 3;
LABEL_10:
    v15 = sftp_packet_require(a1, 101, *(a1 + 320), &v22, &v24, 9uLL);
    if (!v15)
    {
      break;
    }

    v16 = v15;
    if (v15 == -37)
    {
      goto LABEL_22;
    }

    if (v15 == -38)
    {
      if (v24)
      {
        (*(v8 + 24))(v22, v8);
      }

      v17 = v8;
      v16 = 4294967265;
      v18 = "SFTP rmdir packet too short";
    }

    else
    {
      *(a1 + 308) = 0;
      v17 = v8;
      v18 = "Error waiting for FXP STATUS";
    }

LABEL_21:
    result = _libssh2_error(v17, v16, v18);
    if (result != -37)
    {
      return result;
    }

LABEL_22:
    v21 = *(*a1 + 104);
    if (!*(v21 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v21, v6);
    if (result)
    {
      return result;
    }
  }

  *(a1 + 308) = 0;
  v19 = _libssh2_ntohu32((v22 + 5));
  (*(v8 + 24))(v22, v8);
  if (v19)
  {
    *(a1 + 64) = v19;
    v17 = v8;
    v16 = 4294967265;
    v18 = "SFTP Protocol Error";
    goto LABEL_21;
  }

  return 0;
}

uint64_t libssh2_sftp_stat_ex(uint64_t a1, const void *a2, unsigned int a3, int a4, uint64_t a5)
{
  if (!a1)
  {
    return 4294967257;
  }

  v10 = time(0);
  if (a4 == 1)
  {
    v11 = 7;
  }

  else
  {
    v11 = 17;
  }

  if (a4 == 2)
  {
    v11 = 9;
  }

  v32 = v11;
  while (1)
  {
    v12 = *a1;
    v13 = *(*a1 + 104);
    v35 = 0;
    if (a4 == 2)
    {
      v14 = (*a5 & 0xC) + 8 * (*a5 & 1) + ((4 * *a5) & 8) + 4;
    }

    else
    {
      v14 = 0;
    }

    v15 = a3 + 13 + v14;
    v33 = 0;
    v34 = 0;
    v16 = *(a1 + 324);
    if (v16 != 2)
    {
      if (v16)
      {
        goto LABEL_20;
      }

      *(a1 + 64) = 0;
      v17 = (*(v13 + 8))(v15, v13);
      *(a1 + 328) = v17;
      v34 = v17;
      if (!v17)
      {
        v25 = v13;
        v24 = 4294967290;
        v26 = "Unable to allocate memory for FXP_*STAT packet";
        goto LABEL_34;
      }

      _libssh2_store_u32(&v34, v15 - 4);
      v18 = v34;
      v34 = (v34 + 1);
      *v18 = v32;
      v19 = *(a1 + 8);
      *(a1 + 8) = v19 + 1;
      *(a1 + 336) = v19;
      _libssh2_store_u32(&v34, v19);
      _libssh2_store_str(&v34, a2, a3);
      if (a4 == 2)
      {
        v20 = sftp_attr2bin(v34, a5);
        v34 = (v34 + v20);
      }

      *(a1 + 324) = 2;
    }

    v21 = _libssh2_channel_write(v12, 0, *(a1 + 328), v15);
    if (v21 == -37)
    {
      goto LABEL_35;
    }

    v22 = v21;
    (*(v13 + 24))(*(a1 + 328), v13);
    *(a1 + 328) = 0;
    if (v22 != v15)
    {
      *(a1 + 324) = 0;
      v25 = v13;
      v24 = 4294967289;
      v26 = "Unable to send STAT/LSTAT/SETSTAT command";
      goto LABEL_34;
    }

    *(a1 + 324) = 3;
LABEL_20:
    v23 = sftp_packet_requirev(a1, &sftp_stat_stat_responses, *(a1 + 336), &v33, &v35, 9uLL);
    if (!v23)
    {
      break;
    }

    v24 = v23;
    if (v23 == -37)
    {
      goto LABEL_35;
    }

    if (v23 == -38)
    {
      if (v35)
      {
        (*(v13 + 24))(v33, v13);
      }

      v25 = v13;
      v24 = 4294967265;
      v26 = "SFTP stat packet too short";
    }

    else
    {
      *(a1 + 324) = 0;
      v25 = v13;
      v26 = "Timeout waiting for status message";
    }

LABEL_34:
    result = _libssh2_error(v25, v24, v26);
    if (result != -37)
    {
      return result;
    }

LABEL_35:
    v31 = *(*a1 + 104);
    if (!*(v31 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v31, v10);
    if (result)
    {
      return result;
    }
  }

  *(a1 + 324) = 0;
  v27 = v33;
  if (*v33 != 101)
  {
    *(a5 + 48) = 0;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
    v29 = sftp_bin2attr(a5, v27 + 5, v35 - 5);
    (*(v13 + 24))(v33, v13);
    if ((v29 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    v25 = v13;
    v24 = 4294967265;
    v26 = "Attributes too short in SFTP fstat";
    goto LABEL_34;
  }

  v28 = _libssh2_ntohu32((v33 + 5));
  (*(v13 + 24))(v33, v13);
  if (v28)
  {
    *(a1 + 64) = v28;
    v25 = v13;
    v24 = 4294967265;
    v26 = "SFTP Protocol Error";
    goto LABEL_34;
  }

  *(a5 + 48) = 0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  return 0;
}

uint64_t libssh2_sftp_symlink_ex(uint64_t a1, const void *a2, unsigned int a3, void *a4, unsigned int a5, int a6)
{
  if (a1)
  {
    v11 = time(0);
    v12 = a5 + 4;
    if (a6)
    {
      v12 = 0;
    }

    v38 = a3 + v12;
    v13 = a3 + v12 + 13;
    if (a6)
    {
      v14 = 19;
    }

    else
    {
      v14 = 20;
    }

    if (a6 == 2)
    {
      v14 = 16;
    }

    v37 = v14;
    __n = a3;
    while (1)
    {
      v15 = *a1;
      v16 = *(*a1 + 104);
      v40 = 0;
      v41 = 0;
      v39 = 0;
      v17 = *(a1 + 340);
      if (v17 != 2)
      {
        if (v17)
        {
          goto LABEL_22;
        }

        *(a1 + 64) = 0;
        if (a6 != 2 && *(a1 + 12) <= 2u)
        {
          v18 = v16;
          v19 = 4294967265;
          v20 = "Server does not support SYMLINK or READLINK";
LABEL_40:
          v29 = _libssh2_error(v18, v19, v20);
          goto LABEL_41;
        }

        v21 = (*(v16 + 8))(v13, v16);
        *(a1 + 344) = v21;
        v40 = v21;
        if (!v21)
        {
          v18 = v16;
          v19 = 4294967290;
          v20 = "Unable to allocate memory for SYMLINK/READLINK/REALPATH packet";
          goto LABEL_40;
        }

        _libssh2_store_u32(&v40, v38 + 9);
        v22 = v40;
        v40 = (v40 + 1);
        *v22 = v37;
        v23 = *(a1 + 8);
        *(a1 + 8) = v23 + 1;
        *(a1 + 352) = v23;
        _libssh2_store_u32(&v40, v23);
        _libssh2_store_str(&v40, a2, __n);
        if (!a6)
        {
          _libssh2_store_str(&v40, a4, a5);
        }

        *(a1 + 340) = 2;
      }

      v24 = _libssh2_channel_write(v15, 0, *(a1 + 344), v13);
      if (v24 == -37)
      {
        goto LABEL_42;
      }

      v25 = v24;
      (*(v16 + 24))(*(a1 + 344), v16);
      *(a1 + 344) = 0;
      if (v25 != v13)
      {
        *(a1 + 340) = 0;
        v18 = v16;
        v19 = 4294967289;
        v20 = "Unable to send SYMLINK/READLINK command";
        goto LABEL_40;
      }

      *(a1 + 340) = 3;
LABEL_22:
      v26 = sftp_packet_requirev(a1, &sftp_symlink_link_responses, *(a1 + 352), &v39, &v41, 9uLL);
      if (v26)
      {
        v19 = v26;
        if (v26 == -37)
        {
          goto LABEL_42;
        }

        if (v26 == -38)
        {
          if (v41)
          {
            (*(v16 + 24))(v39, v16);
          }

          v18 = v16;
          v19 = 4294967265;
          v20 = "SFTP symlink packet too short";
        }

        else
        {
          *(a1 + 340) = 0;
          v18 = v16;
          v20 = "Error waiting for status message";
        }

        goto LABEL_40;
      }

      *(a1 + 340) = 0;
      v27 = *v39;
      v28 = _libssh2_ntohu32((v39 + 5));
      v29 = v28;
      if (v27 == 101)
      {
        (*(v16 + 24))(v39, v16);
        if (!v29)
        {
          return v29;
        }

        *(a1 + 64) = v29;
        v18 = v16;
        v19 = 4294967265;
        v20 = "SFTP Protocol Error";
        goto LABEL_40;
      }

      if (!v28)
      {
        (*(v16 + 24))(v39, v16);
        v18 = v16;
        v19 = 4294967265;
        v20 = "Invalid READLINK/REALPATH response, no name entries";
        goto LABEL_40;
      }

      if (v41 <= 0xC)
      {
        if (v41)
        {
          (*(v16 + 24))(v39, v16);
        }

        v18 = v16;
        v19 = 4294967265;
        v20 = "SFTP stat packet too short";
        goto LABEL_40;
      }

      v32 = _libssh2_ntohu32((v39 + 9));
      v33 = v39;
      if (v32 >= a5)
      {
        v29 = 4294967258;
      }

      else
      {
        v29 = v32;
        memcpy(a4, v39 + 13, v32);
        *(a4 + v29) = 0;
      }

      (*(v16 + 24))(v33, v16);
LABEL_41:
      if (v29 != -37)
      {
        return v29;
      }

LABEL_42:
      v30 = *(*a1 + 104);
      if (!*(v30 + 172))
      {
        return 4294967259;
      }

      v31 = _libssh2_wait_socket(v30, v11);
      if (v31)
      {
        return v31;
      }
    }
  }

  return 4294967257;
}

uint64_t libssh2_sftp_last_error(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

uint64_t libssh2_sftp_get_channel(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t sftp_packet_require(uint64_t a1, int a2, int a3, void *a4, unint64_t *a5, unint64_t a6)
{
  result = 4294967257;
  if (a4 && a5)
  {
    v13 = *(*a1 + 104);
    while (sftp_packet_ask(a1, a2, a3, a4, a5))
    {
      if (*(v13 + 596))
      {
        return 4294967283;
      }

      result = sftp_packet_read(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    if (*a5 >= a6)
    {
      return 0;
    }

    else
    {
      return 4294967258;
    }
  }

  return result;
}

uint64_t sftp_packet_ask(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  v9 = *(*a1 + 104);
  v10 = _libssh2_list_first(a1 + 16);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  while (1)
  {
    v12 = *(v11 + 32);
    if (*v12 == a2 && (a2 == 2 || *(v11 + 24) == a3))
    {
      break;
    }

    v11 = _libssh2_list_next(v11);
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }
  }

  *a4 = v12;
  *a5 = *(v11 + 40);
  _libssh2_list_remove(v11);
  (*(v9 + 24))(v11, v9);
  return 0;
}

uint64_t sftp_packet_read(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(a1 + 160);
  if (v4 == 4)
  {
    *(a1 + 160) = 0;
    v5 = *(a1 + 88);
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else if (v4 == 3)
  {
    *(a1 + 160) = 0;
    v5 = *(a1 + 88);
LABEL_4:
    v6 = libssh2_channel_window_read_ex(v2, 0, 0);
    v7 = *(a1 + 96);
    if (v6 < v7)
    {
      v8 = _libssh2_channel_receive_window_adjust(v2, 2 * v7, 1, 0);
      v9 = v8 == -37 ? 3 : 0;
      *(a1 + 160) = v9;
      if (v8 == -37)
      {
        return 4294967259;
      }
    }

LABEL_11:
    v10 = *(a1 + 96);
    v11 = *(a1 + 104);
    while (v11 < v10)
    {
      v12 = _libssh2_channel_read(v2, 0, &v5[v11], v10 - v11);
      if (v12 == -37)
      {
        *(a1 + 160) = 4;
        return 4294967259;
      }

      v13 = v12;
      if ((v12 & 0x8000000000000000) != 0)
      {
        (*(v3 + 24))(v5, v3);
        *(a1 + 88) = 0;
        v21 = "Error waiting for SFTP packet";
        v22 = v3;
        v15 = v13;
        goto LABEL_51;
      }

      v11 = *(a1 + 104) + v12;
      *(a1 + 104) = v11;
      v10 = *(a1 + 96);
    }

    *(a1 + 88) = 0;
    if (v10 >= 5)
    {
      v24 = *v5;
      v25 = *(*a1 + 104);
      if ((v24 - 1) < 0x14 || (v24 - 101) < 5 || (v24 - 200) < 2)
      {
        v26 = _libssh2_ntohu32((v5 + 1));
        if ((*v5 | 2) == 0x67 && find_zombie_request(a1, v26))
        {
          (*(v25 + 24))(v5, v25);
          v27 = *(*a1 + 104);
          zombie_request = find_zombie_request(a1, v26);
          if (zombie_request)
          {
            v29 = zombie_request;
            _libssh2_list_remove(zombie_request);
            (*(v27 + 24))(v29, v27);
          }

          return v24;
        }

        v30 = (*(v25 + 8))(48, v25);
        if (v30)
        {
          *(v30 + 32) = v5;
          *(v30 + 40) = v10;
          *(v30 + 24) = v26;
          _libssh2_list_add((a1 + 16), v30);
          return v24;
        }

        v32 = "Unable to allocate datablock for SFTP packet";
        v33 = v25;
        v34 = 4294967290;
      }

      else
      {
        *(a1 + 64) = 0;
        v32 = "Out of sync with the world";
        v33 = v25;
        v34 = 4294967265;
      }

      v23 = _libssh2_error(v33, v34, v32);
      if (!v23)
      {
        return v24;
      }
    }

    else
    {
      v23 = 4294967255;
    }

    (*(v3 + 24))(v5, v3);
    return v23;
  }

  v14 = _libssh2_channel_read(v2, 0, a1 + 68 + *(a1 + 80), 9 - *(a1 + 80));
  if (v14 == -37)
  {
    return 4294967259;
  }

  v15 = v14;
  if ((v14 & 0x8000000000000000) != 0)
  {
    v21 = "channel read";
    v22 = v3;
    goto LABEL_51;
  }

  v16 = *(a1 + 80) + v14;
  *(a1 + 80) = v16;
  if (v16 != 9)
  {
    return 4294967259;
  }

  v17 = _libssh2_ntohu32((a1 + 68));
  v18 = *(a1 + 72);
  *(a1 + 96) = v17;
  v19 = _libssh2_ntohu32((a1 + 73));
  v20 = *(a1 + 96);
  if (v20 <= 0x40000)
  {
    if (v20 <= 4)
    {
      v21 = "Invalid SFTP packet size";
      goto LABEL_50;
    }
  }

  else if (!*(a1 + 188) || *(a1 + 200) != v19 || v18 != 104)
  {
    libssh2_channel_flush_ex(v2, 0);
    *(a1 + 80) = 0;
    v21 = "SFTP packet too large";
    v22 = v3;
    v15 = 4294967271;
    goto LABEL_51;
  }

  v35 = (*(v3 + 8))();
  if (v35)
  {
    v5 = v35;
    *(a1 + 80) = 0;
    *(a1 + 88) = v35;
    *(a1 + 104) = 5;
    v36 = *(a1 + 72);
    *(v35 + 4) = *(a1 + 76);
    *v35 = v36;
    goto LABEL_4;
  }

  v21 = "Unable to allocate SFTP packet";
LABEL_50:
  v22 = v3;
  v15 = 4294967290;
LABEL_51:

  return _libssh2_error(v22, v15, v21);
}

uint64_t find_zombie_request(uint64_t a1, int a2)
{
  for (result = _libssh2_list_first(a1 + 32); result; result = _libssh2_list_next(result))
  {
    if (*(result + 24) == a2)
    {
      break;
    }
  }

  return result;
}

uint64_t sftp_attr2bin(char *a1, uint64_t *a2)
{
  v6 = a1;
  if (a2)
  {
    _libssh2_store_u32(&v6, *a2 & 0xF);
    v4 = *a2;
    if (*a2)
    {
      *v6 = bswap64(a2[1]);
      v6 += 8;
      v4 = *a2;
      if ((*a2 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    _libssh2_store_u32(&v6, *(a2 + 4));
    _libssh2_store_u32(&v6, *(a2 + 6));
    v4 = *a2;
    if ((*a2 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        return v6 - a1;
      }

LABEL_6:
      _libssh2_store_u32(&v6, *(a2 + 10));
      _libssh2_store_u32(&v6, *(a2 + 12));
      return v6 - a1;
    }

LABEL_12:
    _libssh2_store_u32(&v6, *(a2 + 8));
    if ((*a2 & 8) == 0)
    {
      return v6 - a1;
    }

    goto LABEL_6;
  }

  _libssh2_htonu32(a1, 0);
  return 4;
}

uint64_t sftp_packet_requirev(void *a1, uint64_t a2, int a3, void *a4, unint64_t *a5, unint64_t a6)
{
  v6 = 4294967257;
  if (a4 && a5)
  {
    if (!a1[14])
    {
      a1[14] = time(0);
    }

    if (*(*(*a1 + 104) + 596))
    {
LABEL_6:
      a1[14] = 0;
      return 4294967283;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      while (sftp_packet_ask(a1, *(a2 + v14), a3, a4, a5))
      {
        if (v15)
        {
          v14 = 1;
        }

        else
        {
          v16 = sftp_packet_read(a1);
          v6 = v16;
          if ((v16 & 0x80000000) != 0 && v16 != -37)
          {
            a1[14] = 0;
            return v6;
          }

          if (v16 <= 0)
          {
            v17 = *(*(*a1 + 104) + 73576);
            if (v17 - time(0) + a1[14] <= 0)
            {
              a1[14] = 0;
              return 4294967287;
            }

            if (v6 == -37)
            {
              return v6;
            }
          }

          if (*(*(*a1 + 104) + 596))
          {
            goto LABEL_6;
          }

          v14 = 0;
        }

        v15 ^= 1u;
      }

      a1[14] = 0;
      if (*a5 >= a6)
      {
        return 0;
      }

      else
      {
        return 4294967258;
      }
    }
  }

  return v6;
}

uint64_t sftp_bin2attr(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = a2;
  v16 = a2;
  v17 = a3;
  if (_libssh2_get_u32(&v15, &v14))
  {
    return -38;
  }

  LODWORD(v5) = v14;
  *a1 = v14;
  if (v5)
  {
    if (_libssh2_get_u64(&v15, a1 + 1))
    {
      return -38;
    }

    v5 = *a1;
  }

  if ((v5 & 2) != 0)
  {
    LODWORD(v12) = 0;
    LODWORD(v11) = 0;
    if (_libssh2_get_u32(&v15, &v12) || _libssh2_get_u32(&v15, &v11))
    {
      return -38;
    }

    v6 = v11;
    a1[2] = v12;
    a1[3] = v6;
    v5 = *a1;
    if ((*a1 & 4) != 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v5 & 4) != 0)
  {
LABEL_9:
    LODWORD(v12) = 0;
    if (_libssh2_get_u32(&v15, &v12))
    {
      return -38;
    }

    a1[4] = v12;
    v5 = *a1;
  }

  if ((v5 & 8) != 0)
  {
    LODWORD(v12) = 0;
    LODWORD(v11) = 0;
    if (_libssh2_get_u32(&v15, &v12) || _libssh2_get_u32(&v15, &v11))
    {
      return -38;
    }

    v7 = v11;
    a1[5] = v12;
    a1[6] = v7;
    if ((*a1 & 0x80000000) == 0)
    {
      return v16 - v15;
    }
  }

  else if ((v5 & 0x80000000) == 0)
  {
    return v16 - v15;
  }

  v13 = 0;
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  if (!_libssh2_get_u32(&v15, &v13))
  {
    if (v13)
    {
      v8 = 0;
      while (!_libssh2_get_string(&v15, &v11, &v12) && !_libssh2_get_string(&v15, &v9, &v10))
      {
        if (++v8 >= v13)
        {
          return v16 - v15;
        }
      }

      return -38;
    }

    return v16 - v15;
  }

  return -38;
}

_DWORD *libssh2_hostkey_hash(_DWORD *a1, int a2)
{
  switch(a2)
  {
    case 3:
      v2 = a1[72];
      v3 = a1 + 64;
      break;
    case 2:
      v2 = a1[63];
      v3 = a1 + 58;
      break;
    case 1:
      v2 = a1[57];
      v3 = a1 + 53;
      break;
    default:
      return 0;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void *libssh2_session_hostkey(uint64_t a1, void *a2, int *a3)
{
  v3 = *(a1 + 208);
  if (v3)
  {
    if (a2)
    {
      *a2 = v3;
    }

    result = *(a1 + 200);
    if (a3)
    {
      if (v3 >= 0xB)
      {
        if (*result == 0x2D68737307000000 && *(result + 3) == 0x6173722D68737307)
        {
          v5 = 1;
          goto LABEL_46;
        }

        if (*result == 0x2D68737307000000 && *(result + 3) == 0x7373642D68737307)
        {
          v5 = 2;
          goto LABEL_46;
        }

        if (v3 >= 0xF)
        {
          if (*result == 0x2D6873730B000000 && *(result + 7) == 0x393135353264652DLL)
          {
            v5 = 6;
            goto LABEL_46;
          }

          if (v3 >= 0x17)
          {
            if (*result == 0x7364636513000000 && result[1] == 0x6E2D326168732D61 && *(result + 15) == 0x363532707473696ELL)
            {
              v5 = 3;
            }

            else if (*result == 0x7364636513000000 && result[1] == 0x6E2D326168732D61 && *(result + 15) == 0x343833707473696ELL)
            {
              v5 = 4;
            }

            else if (*result ^ 0x7364636513000000 | result[1] ^ 0x6E2D326168732D61 | *(result + 15) ^ 0x313235707473696ELL)
            {
              v5 = 0;
            }

            else
            {
              v5 = 5;
            }

            goto LABEL_46;
          }
        }
      }

      v5 = 0;
LABEL_46:
      *a3 = v5;
    }
  }

  else
  {
    result = 0;
    if (a2)
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t hostkey_method_ssh_ecdsa_init(uint64_t a1, uint64_t a2, unint64_t a3, EC_KEY **a4)
{
  v22 = 0;
  if (a4 && *a4)
  {
    EC_KEY_free(*a4);
    *a4 = 0;
  }

  if (a3 < 0x27)
  {
    return 0xFFFFFFFFLL;
  }

  v20 = 0;
  __s1 = 0;
  v18 = 0;
  v19 = 0;
  v16[2] = a3;
  v17 = 0;
  v16[0] = a2;
  v16[1] = a2;
  string = _libssh2_get_string(v16, &__s1, &v17);
  result = 0xFFFFFFFFLL;
  if (!string && v17 == 19)
  {
    v9 = __s1;
    v10 = strncmp(__s1, "ecdsa-sha2-nistp256", 0x13uLL);
    if (v10)
    {
      if (!strncmp(v9, "ecdsa-sha2-nistp384", 0x13uLL))
      {
        v13 = 0;
        v12 = 715;
        v11 = 1;
      }

      else
      {
        if (strncmp(v9, "ecdsa-sha2-nistp521", 0x13uLL))
        {
          return 0xFFFFFFFFLL;
        }

        v11 = 0;
        v12 = 716;
        v13 = 1;
      }
    }

    else
    {
      v11 = 0;
      v13 = 0;
      v12 = 415;
    }

    v14 = _libssh2_get_string(v16, &v20, &v17);
    result = 0xFFFFFFFFLL;
    if (v14 || v17 != 8)
    {
      return result;
    }

    if ((v10 || !strncmp(v20, "nistp256", 8uLL)) && (!v11 || !strncmp(v20, "nistp384", 8uLL)) && (!v13 || !strncmp(v20, "nistp521", 8uLL)) && !_libssh2_get_string(v16, &v19, &v18) && _libssh2_eob(v16))
    {
      v15 = _libssh2_ecdsa_curve_name_with_octal_new(&v22, v19, v18, v12);
      if (v15)
      {
        result = 0xFFFFFFFFLL;
      }

      else
      {
        result = 0;
      }

      if (a4)
      {
        if (!v15)
        {
          result = 0;
          *a4 = v22;
        }
      }

      return result;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t hostkey_method_ssh_ecdsa_initPEM(uint64_t a1, char *a2, const char *a3, EC_KEY **a4)
{
  v9 = 0;
  if (!a4)
  {
    return _libssh2_ecdsa_new_private(&v9, a1, a2, a3);
  }

  if (*a4)
  {
    EC_KEY_free(*a4);
    *a4 = 0;
  }

  result = _libssh2_ecdsa_new_private(&v9, a1, a2, a3);
  *a4 = v9;
  return result;
}

uint64_t hostkey_method_ssh_ecdsa_initPEMFromMemory(uint64_t a1, void *a2, unint64_t a3, const char *a4, EC_KEY **a5)
{
  v12 = 0;
  if (a5 && *a5)
  {
    EC_KEY_free(*a5);
    *a5 = 0;
  }

  v10 = _libssh2_ecdsa_new_private_frommemory(&v12, a1, a2, a3, a4);
  if (v10)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  if (a5)
  {
    if (!v10)
    {
      result = 0;
      *a5 = v12;
    }
  }

  return result;
}

uint64_t hostkey_method_ssh_ecdsa_sig_verify(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4, size_t a5, const EC_KEY **a6)
{
  if (a3 < 0x23)
  {
    return 0xFFFFFFFFLL;
  }

  v21[5] = v6;
  v21[6] = v7;
  v11 = *a6;
  v20 = 0;
  v21[0] = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v14[0] = a2;
  v14[1] = a2;
  v14[2] = a3;
  string = _libssh2_get_string(v14, &v19, &v16);
  result = 0xFFFFFFFFLL;
  if (!string && v16 == 19)
  {
    u32 = _libssh2_get_u32(v14, &v15);
    result = 0xFFFFFFFFLL;
    if (!u32 && v15 >= 8)
    {
      if (_libssh2_get_string(v14, v21, &v18) || _libssh2_get_string(v14, &v20, &v17))
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return _libssh2_ecdsa_verify(v11, v21[0], v18, v20, v17, a4, a5);
      }
    }
  }

  return result;
}

uint64_t hostkey_method_ssh_ecdsa_signv(uint64_t a1, void *a2, size_t *a3, int a4, uint64_t a5, const EC_KEY **a6)
{
  LODWORD(v7) = a4;
  v23 = *MEMORY[0x277D85DE8];
  v11 = *a6;
  curve_type = _libssh2_ecdsa_get_curve_type(*a6);
  switch(curve_type)
  {
    case 716:
      ctx = 0;
      _libssh2_sha512_init(&ctx);
      if (v7 >= 1)
      {
        v7 = v7;
        v18 = (a5 + 8);
        do
        {
          EVP_DigestUpdate(ctx, *(v18 - 1), *v18);
          v18 += 2;
          --v7;
        }

        while (v7);
      }

      EVP_DigestFinal(ctx, md, 0);
      EVP_MD_CTX_free(ctx);
      v14 = a1;
      v15 = v11;
      v16 = 64;
      break;
    case 715:
      ctx = 0;
      _libssh2_sha384_init(&ctx);
      if (v7 >= 1)
      {
        v7 = v7;
        v17 = (a5 + 8);
        do
        {
          EVP_DigestUpdate(ctx, *(v17 - 1), *v17);
          v17 += 2;
          --v7;
        }

        while (v7);
      }

      EVP_DigestFinal(ctx, md, 0);
      EVP_MD_CTX_free(ctx);
      v14 = a1;
      v15 = v11;
      v16 = 48;
      break;
    case 415:
      ctx = 0;
      _libssh2_sha256_init(&ctx);
      if (v7 >= 1)
      {
        v7 = v7;
        v13 = (a5 + 8);
        do
        {
          EVP_DigestUpdate(ctx, *(v13 - 1), *v13);
          v13 += 2;
          --v7;
        }

        while (v7);
      }

      EVP_DigestFinal(ctx, md, 0);
      EVP_MD_CTX_free(ctx);
      v14 = a1;
      v15 = v11;
      v16 = 32;
      break;
    default:
      result = 0xFFFFFFFFLL;
      goto LABEL_18;
  }

  result = _libssh2_ecdsa_sign(v14, v15, md, v16, a2, a3);
LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t hostkey_method_ssh_ecdsa_dtor(uint64_t a1, EC_KEY **a2)
{
  if (*a2)
  {
    EC_KEY_free(*a2);
  }

  *a2 = 0;
  return 0;
}

uint64_t hostkey_method_ssh_ed25519_init(uint64_t a1, uint64_t a2, unint64_t a3, EVP_PKEY **a4)
{
  v10 = 0;
  if (*a4)
  {
    EVP_PKEY_free(*a4);
    *a4 = 0;
  }

  if (a3 < 0x13)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 0;
  v12 = 0;
  v9[0] = a2;
  v9[1] = a2;
  v9[2] = a3;
  if (_libssh2_match_string(v9, "ssh-ed25519"))
  {
    return 0xFFFFFFFFLL;
  }

  if (_libssh2_get_string(v9, &v11, &v12))
  {
    return 0xFFFFFFFFLL;
  }

  if (!_libssh2_eob(v9))
  {
    return 0xFFFFFFFFLL;
  }

  result = _libssh2_ed25519_new_public(&v10, a1, v11, v12);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a4 = v10;
  return result;
}

uint64_t hostkey_method_ssh_ed25519_initPEM(uint64_t a1, const char *a2, const char *a3, EVP_PKEY **a4)
{
  v9 = 0;
  if (*a4)
  {
    EVP_PKEY_free(*a4);
    *a4 = 0;
  }

  result = _libssh2_ed25519_new_private(&v9, a1, a2, a3);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a4 = v9;
  return result;
}

uint64_t hostkey_method_ssh_ed25519_initPEMFromMemory(uint64_t a1, void *a2, unint64_t a3, const char *a4, EVP_PKEY **a5)
{
  v12 = 0;
  if (a5 && *a5)
  {
    EVP_PKEY_free(*a5);
    *a5 = 0;
  }

  v10 = _libssh2_ed25519_new_private_frommemory(&v12, a1, a2, a3, a4);
  if (v10)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  if (a5)
  {
    if (!v10)
    {
      result = 0;
      *a5 = v12;
    }
  }

  return result;
}

uint64_t hostkey_method_ssh_ed25519_sig_verify(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, size_t a5, uint64_t *a6)
{
  if (a3 == 83)
  {
    return _libssh2_ed25519_verify(*a6, a2 + 19, 64, a4, a5);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t hostkey_method_ssh_ed25519_signv(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5, uint64_t *a6)
{
  if (a4 == 1)
  {
    return _libssh2_ed25519_sign(*a6, a1, a2, a3, *a5, *(a5 + 8));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t hostkey_method_ssh_ed25519_dtor(uint64_t a1, EVP_PKEY **a2)
{
  if (*a2)
  {
    EVP_PKEY_free(*a2);
  }

  *a2 = 0;
  return 0;
}

uint64_t hostkey_method_ssh_rsa_init(uint64_t a1, uint64_t a2, unint64_t a3, RSA **a4)
{
  if (*a4)
  {
    RSA_free(*a4);
    *a4 = 0;
  }

  if (a3 < 0x13)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v12[0] = a2;
  v12[1] = a2;
  v12[2] = a3;
  if (_libssh2_get_string(v12, &v16, &v13))
  {
    return 0xFFFFFFFFLL;
  }

  if (v13 != 12)
  {
    if (v13 != 7)
    {
      return 0xFFFFFFFFLL;
    }

    v8 = v16;
    v9 = "ssh-rsa";
    v10 = 7;
    goto LABEL_12;
  }

  v11 = v16;
  if (strncmp("rsa-sha2-256", v16, 0xCuLL))
  {
    v9 = "rsa-sha2-512";
    v8 = v11;
    v10 = 12;
LABEL_12:
    if (strncmp(v9, v8, v10))
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (!_libssh2_get_string(v12, &v18, &v15) && !_libssh2_get_string(v12, &v17, &v14) && _libssh2_eob(v12))
  {
    result = _libssh2_rsa_new(&v19, v18, v15, v17, v14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    if (!result)
    {
      *a4 = v19;
      return result;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t hostkey_method_ssh_rsa_initPEM(uint64_t a1, char *a2, const char *a3, RSA **a4)
{
  if (*a4)
  {
    RSA_free(*a4);
    *a4 = 0;
  }

  v9 = 0;
  result = _libssh2_rsa_new_private(&v9, a1, a2, a3);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a4 = v9;
  return result;
}

uint64_t hostkey_method_ssh_rsa_initPEMFromMemory(uint64_t a1, void *a2, unint64_t a3, const char *a4, RSA **a5)
{
  if (*a5)
  {
    RSA_free(*a5);
    *a5 = 0;
  }

  v11 = 0;
  result = _libssh2_rsa_new_private_frommemory(&v11, a1, a2, a3, a4);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a5 = v11;
  return result;
}

uint64_t hostkey_method_ssh_rsa_sha2_512_sig_verify(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4, size_t a5, RSA **a6)
{
  if (a3 >= 0x14)
  {
    return _libssh2_rsa_sha2_verify(*a6, 0x40uLL, (a2 + 20), a3 - 20, a4, a5);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t hostkey_method_ssh_rsa_sha2_512_signv(uint64_t a1, unsigned __int8 **a2, void *a3, int a4, uint64_t a5, RSA **a6)
{
  LODWORD(v7) = a4;
  v17 = *MEMORY[0x277D85DE8];
  v11 = *a6;
  ctx = 0;
  if (_libssh2_sha512_init(&ctx))
  {
    if (v7 >= 1)
    {
      v7 = v7;
      v12 = (a5 + 8);
      do
      {
        EVP_DigestUpdate(ctx, *(v12 - 1), *v12);
        v12 += 2;
        --v7;
      }

      while (v7);
    }

    EVP_DigestFinal(ctx, md, 0);
    EVP_MD_CTX_free(ctx);
    if (_libssh2_rsa_sha2_sign(a1, v11, md, 64, a2, a3))
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t hostkey_method_ssh_rsa_dtor(uint64_t a1, RSA **a2)
{
  RSA_free(*a2);
  *a2 = 0;
  return 0;
}

uint64_t hostkey_method_ssh_rsa_sha2_256_sig_verify(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4, size_t a5, RSA **a6)
{
  if (a3 >= 0x14)
  {
    return _libssh2_rsa_sha2_verify(*a6, 0x20uLL, (a2 + 20), a3 - 20, a4, a5);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t hostkey_method_ssh_rsa_sha2_256_signv(uint64_t a1, unsigned __int8 **a2, void *a3, int a4, uint64_t a5, RSA **a6)
{
  LODWORD(v7) = a4;
  v17 = *MEMORY[0x277D85DE8];
  v11 = *a6;
  ctx = 0;
  if (_libssh2_sha256_init(&ctx))
  {
    if (v7 >= 1)
    {
      v7 = v7;
      v12 = (a5 + 8);
      do
      {
        EVP_DigestUpdate(ctx, *(v12 - 1), *v12);
        v12 += 2;
        --v7;
      }

      while (v7);
    }

    EVP_DigestFinal(ctx, md, 0);
    EVP_MD_CTX_free(ctx);
    if (_libssh2_rsa_sha2_sign(a1, v11, md, 32, a2, a3))
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t hostkey_method_ssh_rsa_sig_verify(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4, size_t a5, RSA **a6)
{
  v6 = a3 >= 0xF;
  v7 = a3 - 15;
  if (v6)
  {
    return _libssh2_rsa_sha1_verify(*a6, (a2 + 15), v7, a4, a5);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t hostkey_method_ssh_rsa_signv(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6)
{
  LODWORD(v7) = a4;
  v17 = *MEMORY[0x277D85DE8];
  v11 = *a6;
  ctx = 0;
  _libssh2_sha1_init(&ctx);
  if (v7 >= 1)
  {
    v7 = v7;
    v12 = (a5 + 8);
    do
    {
      EVP_DigestUpdate(ctx, *(v12 - 1), *v12);
      v12 += 2;
      --v7;
    }

    while (v7);
  }

  EVP_DigestFinal(ctx, md, 0);
  EVP_MD_CTX_free(ctx);
  if (_libssh2_rsa_sha1_sign(a1, v11, md, 20, a2, a3))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t hostkey_method_ssh_dss_init(uint64_t a1, uint64_t a2, unint64_t a3, DSA **a4)
{
  if (*a4)
  {
    DSA_free(*a4);
    *a4 = 0;
  }

  if (a3 < 0x1B)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  v8[0] = a2;
  v8[1] = a2;
  v8[2] = a3;
  if (_libssh2_match_string(v8, "ssh-dss"))
  {
    return 0xFFFFFFFFLL;
  }

  if (_libssh2_get_string(v8, &v16, &v12))
  {
    return 0xFFFFFFFFLL;
  }

  if (_libssh2_get_string(v8, &v15, &v11))
  {
    return 0xFFFFFFFFLL;
  }

  if (_libssh2_get_string(v8, &v14, &v10))
  {
    return 0xFFFFFFFFLL;
  }

  if (_libssh2_get_string(v8, &v13, &v9))
  {
    return 0xFFFFFFFFLL;
  }

  if (!_libssh2_eob(v8))
  {
    return 0xFFFFFFFFLL;
  }

  result = _libssh2_dsa_new(&v17, v16, v12, v15, v11, v14, v10, v13, v9, 0, 0);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a4 = v17;
  return result;
}

uint64_t hostkey_method_ssh_dss_initPEM(uint64_t a1, char *a2, const char *a3, DSA **a4)
{
  if (*a4)
  {
    DSA_free(*a4);
    *a4 = 0;
  }

  v9 = 0;
  result = _libssh2_dsa_new_private(&v9, a1, a2, a3);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a4 = v9;
  return result;
}

uint64_t hostkey_method_ssh_dss_initPEMFromMemory(uint64_t a1, void *a2, unint64_t a3, const char *a4, DSA **a5)
{
  if (*a5)
  {
    DSA_free(*a5);
    *a5 = 0;
  }

  v11 = 0;
  result = _libssh2_dsa_new_private_frommemory(&v11, a1, a2, a3, a4);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a5 = v11;
  return result;
}

uint64_t hostkey_method_ssh_dss_sig_verify(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, DSA **a6)
{
  if (a3 == 55)
  {
    return _libssh2_dsa_sha1_verify(*a6, (a2 + 15), a4, a5);
  }

  else
  {
    return _libssh2_error(a1, 4294967282, "Invalid DSS signature length");
  }
}

uint64_t hostkey_method_ssh_dss_signv(uint64_t a1, uint64_t *a2, void *a3, int a4, uint64_t a5, DSA **a6)
{
  LODWORD(v7) = a4;
  v18 = *MEMORY[0x277D85DE8];
  v11 = *a6;
  v12 = _libssh2_calloc(a1, 0x28uLL);
  *a2 = v12;
  if (!v12)
  {
    goto LABEL_7;
  }

  ctx = 0;
  *a3 = 40;
  _libssh2_sha1_init(&ctx);
  if (v7 >= 1)
  {
    v7 = v7;
    v13 = (a5 + 8);
    do
    {
      EVP_DigestUpdate(ctx, *(v13 - 1), *v13);
      v13 += 2;
      --v7;
    }

    while (v7);
  }

  EVP_DigestFinal(ctx, md, 0);
  EVP_MD_CTX_free(ctx);
  result = _libssh2_dsa_sha1_sign(v11, md, 20, *a2);
  if (result)
  {
    (*(a1 + 24))(*a2, a1);
LABEL_7:
    result = 0xFFFFFFFFLL;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t hostkey_method_ssh_dss_dtor(uint64_t a1, DSA **a2)
{
  DSA_free(*a2);
  *a2 = 0;
  return 0;
}

uint64_t _libssh2_bcrypt_pbkdf(const void *a1, size_t a2, const void *a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!a7)
  {
    goto LABEL_26;
  }

  v7 = a4;
  result = 0xFFFFFFFFLL;
  if (a4 > 0x100000 || !a2 || !a4 || a6 - 1025 < 0xFFFFFFFFFFFFFC00)
  {
    goto LABEL_27;
  }

  v14 = malloc_type_calloc(1uLL, a4 + 4, 0x2AD0354EuLL);
  if (!v14)
  {
LABEL_26:
    result = 0xFFFFFFFFLL;
    goto LABEL_27;
  }

  ctx = 0;
  v15 = (a6 + 31) >> 5;
  v28 = v14;
  memcpy(v14, a3, v7);
  _libssh2_sha512_init(&ctx);
  EVP_DigestUpdate(ctx, a1, a2);
  EVP_DigestFinal(ctx, md, 0);
  EVP_MD_CTX_free(ctx);
  v16 = 0;
  v17 = 1;
  v18 = a6;
  v19 = (v15 + a6 - 1) / v15;
  v27 = v7;
  do
  {
    v30 = v16;
    v31 = v17;
    *&v28[v7] = bswap32(v17);
    _libssh2_sha512_init(&ctx);
    EVP_DigestUpdate(ctx, v28, v7 + 4);
    EVP_DigestFinal(ctx, v35, 0);
    EVP_MD_CTX_free(ctx);
    bcrypt_hash(md);
    __s[0] = d[0];
    __s[1] = d[1];
    if (a7 != 1)
    {
      v20 = 1;
      do
      {
        _libssh2_sha512_init(&ctx);
        EVP_DigestUpdate(ctx, d, 0x20uLL);
        EVP_DigestFinal(ctx, v35, 0);
        EVP_MD_CTX_free(ctx);
        bcrypt_hash(md);
        for (i = 0; i != 2; ++i)
        {
          __s[i] = veorq_s8(__s[i], d[i]);
        }

        ++v20;
      }

      while (v20 != a7);
    }

    if (v19 >= v18)
    {
      v22 = v18;
    }

    else
    {
      v22 = v19;
    }

    v23 = 0;
    if (v19)
    {
      if (v22 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v22;
      }

      v25 = v30;
      while (v25 < a6)
      {
        *(a5 + v25) = *(__s + v23++);
        v25 += v15;
        if (v24 == v23)
        {
          v23 = v24;
          break;
        }
      }
    }

    v17 = v31 + 1;
    v16 = v30 + 1;
    v19 = v22;
    v18 -= v23;
    v7 = v27;
  }

  while (v18);
  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  free(v28);
  result = 0;
LABEL_27:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t bcrypt_hash(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v48 = *MEMORY[0x277D85DE8];
  qmemcpy(__s, "OxychromaticBlowfishSwatDynamite", 32);
  memcpy(__dst, &Blowfish_initstate_initstate, sizeof(__dst));
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if ((v8 & 0xFFC0) != 0)
      {
        v8 = 0;
      }

      v9 = *(v6 + v8++) | (v9 << 8);
      v11 = v10++ >= 3;
    }

    while (!v11);
    __dst[v7++ + 1024] ^= v9;
  }

  while (v7 != 18);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  do
  {
    v16 = 0;
    v17 = 0;
    do
    {
      if ((v15 & 0xFFC0) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = v15;
      }

      v16 = *(v5 + v18) | (v16 << 8);
      v15 = v18 + 1;
      v11 = v17++ >= 3;
    }

    while (!v11);
    v19 = 0;
    v20 = 0;
    v46[0] = v16 ^ v13;
    do
    {
      if ((v15 & 0xFFC0) != 0)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      v19 = *(v5 + v21) | (v19 << 8);
      v15 = v21 + 1;
      v11 = v20++ >= 3;
    }

    while (!v11);
    v45 = v19 ^ v12;
    Blowfish_encipher(__dst, v46, &v45);
    v12 = v45;
    v13 = v46[0];
    v22 = &__dst[v14 + 1024];
    *v22 = v46[0];
    v22[1] = v12;
    v11 = v14 >= 0x10;
    v14 += 2;
  }

  while (!v11);
  for (i = 0; i != 4; ++i)
  {
    v24 = 0;
    do
    {
      v25 = 0;
      v26 = 0;
      do
      {
        if ((v15 & 0xFFC0) != 0)
        {
          v27 = 0;
        }

        else
        {
          v27 = v15;
        }

        v25 = *(v5 + v27) | (v25 << 8);
        v15 = v27 + 1;
        v11 = v26++ >= 3;
      }

      while (!v11);
      v28 = 0;
      v29 = 0;
      v46[0] = v25 ^ v13;
      do
      {
        if ((v15 & 0xFFC0) != 0)
        {
          v30 = 0;
        }

        else
        {
          v30 = v15;
        }

        v28 = *(v5 + v30) | (v28 << 8);
        v15 = v30 + 1;
        v11 = v29++ >= 3;
      }

      while (!v11);
      v45 = v28 ^ v12;
      Blowfish_encipher(__dst, v46, &v45);
      v31 = &__dst[256 * i + v24];
      v12 = v45;
      v13 = v46[0];
      *v31 = v46[0];
      v31[1] = v12;
      v11 = v24 >= 0xFE;
      v24 += 2;
    }

    while (!v11);
  }

  v32 = 64;
  do
  {
    Blowfish_expand0state(__dst, v5);
    Blowfish_expand0state(__dst, v6);
    --v32;
  }

  while (v32);
  v33 = 0;
  v34 = 0;
  do
  {
    v35 = 0;
    v36 = 0;
    do
    {
      if ((v34 & 0xFFE0) != 0)
      {
        v34 = 0;
      }

      v35 = __s[v34++] | (v35 << 8);
      v11 = v36++ >= 3;
    }

    while (!v11);
    v46[v33++] = v35;
  }

  while (v33 != 8);
  for (j = 0; j != 64; ++j)
  {
    v38 = 0;
    v39 = v46;
    do
    {
      Blowfish_encipher(__dst, v39, v39 + 1);
      v39 += 2;
      v11 = v38++ >= 3;
    }

    while (!v11);
  }

  v40 = 0;
  v41 = v3 + 3;
  do
  {
    *(v41 - 3) = v46[v40++];
    v41 += 4;
  }

  while (v40 != 8);
  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  memset_s(v46, 0x20uLL, 0, 0x20uLL);
  result = memset_s(__dst, 0x1048uLL, 0, 0x1048uLL);
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *Blowfish_expand0state(_DWORD *a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if ((v4 & 0xFFC0) != 0)
      {
        v4 = 0;
      }

      v5 = *(a2 + v4++) | (v5 << 8);
    }

    while (v6++ < 3);
    a1[v3++ + 1024] ^= v5;
  }

  while (v3 != 18);
  v17 = 0;
  v8 = a1 + 1025;
  v9 = -2;
  do
  {
    Blowfish_encipher(a1, &v17 + 1, &v17);
    v10 = v17;
    *(v8 - 1) = HIDWORD(v17);
    *v8 = v10;
    v9 += 2;
    v8 += 2;
  }

  while (v9 < 0x10);
  v11 = 0;
  v12 = a1 + 1;
  do
  {
    v13 = -2;
    v14 = v12;
    do
    {
      result = Blowfish_encipher(a1, &v17 + 1, &v17);
      v16 = v17;
      *(v14 - 1) = HIDWORD(v17);
      *v14 = v16;
      v13 += 2;
      v14 += 2;
    }

    while (v13 < 0xFE);
    ++v11;
    v12 += 256;
  }

  while (v11 != 4);
  return result;
}

_DWORD *Blowfish_encipher(_DWORD *result, unsigned int *a2, int *a3)
{
  v3 = result[1024] ^ *a2;
  v4 = result[1025] ^ *a3 ^ (((result[BYTE2(v3) | 0x100] + result[HIBYTE(v3)]) ^ result[BYTE1(v3) | 0x200]) + result[(*(result + 4096) ^ *a2) | 0x300]);
  v5 = result[1026] ^ v3 ^ (((result[BYTE2(v4) | 0x100] + result[HIBYTE(v4)]) ^ result[BYTE1(v4) | 0x200]) + result[(*(result + 4100) ^ *a3 ^ (((LOBYTE(result[BYTE2(v3) | 0x100]) + LOBYTE(result[HIBYTE(v3)])) ^ LOBYTE(result[BYTE1(v3) | 0x200])) + LOBYTE(result[(*(result + 4096) ^ *a2) | 0x300]))) | 0x300]);
  v6 = result[1027] ^ v4 ^ (((result[BYTE2(v5) | 0x100] + result[HIBYTE(v5)]) ^ result[BYTE1(v5) | 0x200]) + result[v5 | 0x300]);
  v7 = result[1028] ^ v5 ^ (((result[BYTE2(v6) | 0x100] + result[HIBYTE(v6)]) ^ result[BYTE1(v6) | 0x200]) + result[v6 | 0x300]);
  v8 = result[1029] ^ v6 ^ (((result[BYTE2(v7) | 0x100] + result[HIBYTE(v7)]) ^ result[BYTE1(v7) | 0x200]) + result[v7 | 0x300]);
  v9 = result[1030] ^ v7 ^ (((result[BYTE2(v8) | 0x100] + result[HIBYTE(v8)]) ^ result[BYTE1(v8) | 0x200]) + result[v8 | 0x300]);
  v10 = result[1031] ^ v8 ^ (((result[BYTE2(v9) | 0x100] + result[HIBYTE(v9)]) ^ result[BYTE1(v9) | 0x200]) + result[v9 | 0x300]);
  v11 = result[1032] ^ v9 ^ (((result[BYTE2(v10) | 0x100] + result[HIBYTE(v10)]) ^ result[BYTE1(v10) | 0x200]) + result[v10 | 0x300]);
  v12 = result[1033] ^ v10 ^ (((result[BYTE2(v11) | 0x100] + result[HIBYTE(v11)]) ^ result[BYTE1(v11) | 0x200]) + result[v11 | 0x300]);
  v13 = result[1034] ^ v11 ^ (((result[BYTE2(v12) | 0x100] + result[HIBYTE(v12)]) ^ result[BYTE1(v12) | 0x200]) + result[v12 | 0x300]);
  v14 = result[1035] ^ v12 ^ (((result[BYTE2(v13) | 0x100] + result[HIBYTE(v13)]) ^ result[BYTE1(v13) | 0x200]) + result[v13 | 0x300]);
  v15 = result[1036] ^ v13 ^ (((result[BYTE2(v14) | 0x100] + result[HIBYTE(v14)]) ^ result[BYTE1(v14) | 0x200]) + result[v14 | 0x300]);
  v16 = result[1037] ^ v14 ^ (((result[BYTE2(v15) | 0x100] + result[HIBYTE(v15)]) ^ result[BYTE1(v15) | 0x200]) + result[v15 | 0x300]);
  v17 = result[1038] ^ v15 ^ (((result[BYTE2(v16) | 0x100] + result[HIBYTE(v16)]) ^ result[BYTE1(v16) | 0x200]) + result[v16 | 0x300]);
  v18 = result[1039] ^ v16 ^ (((result[BYTE2(v17) | 0x100] + result[HIBYTE(v17)]) ^ result[BYTE1(v17) | 0x200]) + result[v17 | 0x300]);
  v19 = result[1040] ^ v17 ^ (((result[BYTE2(v18) | 0x100] + result[HIBYTE(v18)]) ^ result[BYTE1(v18) | 0x200]) + result[v18 | 0x300]);
  *a2 = result[1041] ^ v18;
  *a3 = v19;
  return result;
}

uint64_t libssh2_keepalive_config(uint64_t result, int a2, int a3)
{
  if (a3 == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = a3;
  }

  *(result + 73560) = v3;
  *(result + 73564) = a2 != 0;
  return result;
}

uint64_t libssh2_keepalive_send(uint64_t a1, _DWORD *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1 + 69632;
  if (*(a1 + 73560))
  {
    v5 = time(0);
    v6 = v5;
    v7 = *(v3 + 3936);
    v8 = *(v3 + 3928);
    if (v7 + v8 > v5)
    {
      if (a2)
      {
        *a2 = v8 + v7 - v5;
      }

      goto LABEL_14;
    }

    strcpy(v13 + 12, "ve@libssh2.orgW");
    v13[0] = xmmword_23E22C000;
    BYTE10(v13[1]) = *(v3 + 3932);
    v10 = _libssh2_transport_send(a1, v13, 0x1BuLL, 0, 0);
    v9 = v10;
    if (v10 != -37 && v10)
    {
      _libssh2_error(a1, 4294967289, "Unable to send keepalive message");
    }

    else
    {
      *(v3 + 3936) = v6;
      if (a2)
      {
        *a2 = *(v3 + 3928);
      }
    }

    if (v9 == -37 || !v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (!a2)
    {
LABEL_14:
      v9 = 0;
      goto LABEL_15;
    }

    v9 = 0;
    *a2 = 0;
  }

LABEL_15:
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t libssh2_session_banner_set(uint64_t a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 424);
  if (v5)
  {
    (*(a1 + 24))(v5, a1);
    *(a1 + 424) = 0;
  }

  if (!v4)
  {
    return 0;
  }

  v6 = (*(a1 + 8))(v4 + 3, a1);
  *(a1 + 424) = v6;
  if (v6)
  {
    memcpy(v6, __s, v4);
    *(*(a1 + 424) + v4) = 0;
    *(*(a1 + 424) + v4) = 13;
    *(*(a1 + 424) + v4 + 1) = 10;
    *(*(a1 + 424) + v4 + 2) = 0;
    return 0;
  }

  return _libssh2_error(a1, 4294967290, "Unable to allocate memory for local banner");
}

void *libssh2_session_init_ex(void *(*a1)(size_t a1), void (__cdecl *a2)(void *), void *(*a3)(void *a1, size_t a2), uint64_t a4)
{
  v10 = a4;
  if (a1)
  {
    v6 = a1;
    v7 = (a1)(73584, &v10);
  }

  else
  {
    v6 = libssh2_default_alloc;
    v7 = (libssh2_default_alloc)(73584, &v10);
  }

  v8 = v7;
  if (v7)
  {
    if (!a3)
    {
      a3 = libssh2_default_realloc;
    }

    if (!a2)
    {
      a2 = libssh2_default_free;
    }

    bzero(v7, 0x11F70uLL);
    v8[2] = a3;
    v8[3] = a2;
    v8[12] = _libssh2_send;
    v8[13] = _libssh2_recv;
    *v8 = v10;
    v8[1] = v6;
    v8[22] = 0;
    *(v8 + 43) = 1;
    v8[9197] = 60;
    *(v8 + 35) = 1;
    _libssh2_init_if_needed();
  }

  return v8;
}

uint64_t libssh2_session_callback_set(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 > 9)
  {
    return 0;
  }

  v3 = qword_23E22C028[a2];
  v4 = *(a1 + v3);
  *(a1 + v3) = a3;
  return v4;
}

uint64_t _libssh2_wait_socket(uint64_t a1, time_t a2)
{
  v36 = 0;
  *(a1 + 616) = 0;
  result = libssh2_keepalive_send(a1, &v36);
  if (!result)
  {
    v5 = *(a1 + 600);
    if (v5)
    {
      LODWORD(v6) = 1000 * v36;
    }

    else
    {
      LODWORD(v6) = 1000;
    }

    v6 = v6;
    v7 = *(a1 + 176);
    if (v7 < 1 || v36 && v7 >= v6)
    {
      v8 = v6 < 1;
    }

    else
    {
      v16 = time(0);
      v17 = difftime(v16, a2) * 1000.0;
      v18 = *(a1 + 176);
      v6 = v18 - v17;
      if (v18 < v17)
      {
        v15 = "API timeout expired";
        return _libssh2_error(a1, 4294967287, v15);
      }

      v8 = 0;
    }

    v9 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19[0] = v6 / 1000;
    v19[1] = 1000 * (v6 % 1000);
    if (v5)
    {
      v34 = 0uLL;
      v35 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v10 = *(a1 + 592);
      v9 = &v28;
      if (__darwin_check_fd_set_overflow(v10, &v28, 0))
      {
        *(&v28 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v10;
      }
    }

    if ((v5 & 2) != 0)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = *(a1 + 592);
      v11 = &v20;
      if (__darwin_check_fd_set_overflow(v12, &v20, 0))
      {
        *(&v20 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v12;
      }
    }

    else
    {
      v11 = 0;
    }

    if (v8)
    {
      v13 = 0;
    }

    else
    {
      v13 = v19;
    }

    v14 = select(*(a1 + 592) + 1, v9, v11, 0, v13);
    if (v14)
    {
      if ((v14 & 0x80000000) == 0)
      {
        return 0;
      }

      v15 = "Error waiting on socket";
    }

    else
    {
      v15 = "Timed out waiting on socket";
    }

    return _libssh2_error(a1, 4294967287, v15);
  }

  return result;
}

uint64_t libssh2_session_handshake(uint64_t a1, int a2)
{
  v4 = a1 + 69632;
  v5 = time(0);
  v6 = a1 + 70724;
  while (1)
  {
    v7 = *(v4 + 1384);
    result = 4294967262;
    if (v7 <= 3)
    {
      if (v7)
      {
        if (v7 != 2)
        {
          if (v7 != 3)
          {
            return result;
          }

          goto LABEL_27;
        }

        goto LABEL_18;
      }

      if (a2 == -1)
      {
        v14 = a1;
        v13 = 4294967251;
        v15 = "Bad socket provided";
      }

      else
      {
        *(a1 + 592) = a2;
        v9 = fcntl(a2, 3, 0);
        *(a1 + 604) = (v9 & 4) == 0;
        if ((v9 & 4) != 0 || (v10 = *(a1 + 592), v11 = fcntl(v10, 3, 0), v12 = fcntl(v10, 4, v11 | 4u), !v12))
        {
          *(v4 + 1384) = 2;
LABEL_18:
          if (*(v4 + 1088))
          {
            v16 = "SSH-2.0-libssh2_1.11.0\r\n";
            v17 = 24;
          }

          else
          {
            v16 = *(a1 + 424);
            if (v16)
            {
              v17 = strlen(*(a1 + 424));
            }

            else
            {
              v16 = "SSH-2.0-libssh2_1.11.0\r\n";
              v17 = 24;
            }

            *(v4 + 1088) = 2;
          }

          *(a1 + 600) &= ~2u;
          v18 = (*(a1 + 96))(*(a1 + 592), &v16[*(v4 + 1352)], v17 - *(v4 + 1352), (*(a1 + 132) == 0) << 19, a1);
          v19 = *(v4 + 1352);
          if (v18 == v17 - v19)
          {
            *(v4 + 1352) = 0;
            *(v4 + 1384) = 3;
            *(v4 + 1088) = 0;
LABEL_27:
            while (2)
            {
              if (*(v4 + 1088))
              {
                v20 = *(v4 + 1352);
                if (v20 > 0xFF)
                {
                  goto LABEL_45;
                }

                goto LABEL_29;
              }

              v20 = 0;
              *(v4 + 1088) = 2;
              do
              {
                v33 = 0;
                *(a1 + 600) &= ~1u;
                v21 = (*(a1 + 104))(*(a1 + 592), &v33, 1, (*(a1 + 132) == 0) << 19, a1);
                if (v21 < 0)
                {
                  if (v21 == -35)
                  {
                    *(a1 + 600) = 1;
                    *(v4 + 1352) = v20;
                    v13 = 4294967259;
                  }

                  else
                  {
                    *(v4 + 1088) = 0;
                    *(v4 + 1352) = 0;
                    v13 = 4294967253;
                  }

                  goto LABEL_63;
                }

                if (!v21)
                {
                  *(a1 + 596) = -1;
                  v13 = 4294967283;
                  goto LABEL_63;
                }

                v22 = v33 == 13 || v33 == 10;
                v23 = v22;
                if (v20 || !v23)
                {
                  if (!v33)
                  {
                    *(v4 + 1088) = 0;
                    *(v4 + 1352) = 0;
                    v13 = 4294967294;
                    goto LABEL_63;
                  }

                  *(v6 + v20++) = v33;
                }

                else
                {
                  v20 = 0;
                }

                if (v20 >= 0x100)
                {
                  break;
                }

LABEL_29:
                ;
              }

              while (!v20 || *(v20 + v6 - 1) != 10);
LABEL_45:
              while (1)
              {
                v24 = *(a1 + 70723 + v20);
                if (v24 != 13 && v24 != 10)
                {
                  break;
                }

                if (!--v20)
                {
                  *(v4 + 1088) = 0;
                  *(v4 + 1352) = 0;
                  v13 = 4294967294;
                  goto LABEL_75;
                }
              }

              *(v4 + 1088) = 0;
              *(v4 + 1352) = 0;
              v26 = *(a1 + 312);
              if (v26)
              {
                (*(a1 + 24))(v26, a1);
              }

              v27 = (*(a1 + 8))(v20 + 1, a1);
              *(a1 + 312) = v27;
              if (v27)
              {
                memcpy(v27, (a1 + 70724), v20);
                *(*(a1 + 312) + v20) = 0;
LABEL_64:
                if (strncmp("SSH-", *(a1 + 312), 4uLL))
                {
                  continue;
                }

                *(v4 + 1384) = 4;
                goto LABEL_66;
              }

              break;
            }

            v13 = _libssh2_error(a1, 4294967290, "Error allocating space for remote banner");
LABEL_63:
            if (!v13)
            {
              goto LABEL_64;
            }

            if (v13 != -37)
            {
LABEL_75:
              v14 = a1;
              v15 = "Failed getting banner";
              goto LABEL_83;
            }

            goto LABEL_85;
          }

          if ((v18 & 0x8000000000000000) == 0 || v18 == -35)
          {
            *(a1 + 600) = 2;
            if (v18 >= 1)
            {
              *(v4 + 1352) = v19 + v18;
            }

            goto LABEL_85;
          }

          *(v4 + 1088) = 0;
          *(v4 + 1352) = 0;
          v14 = a1;
          v13 = 4294967253;
          v15 = "Failed sending banner";
          goto LABEL_83;
        }

        v13 = v12;
        v14 = a1;
        v15 = "Failed changing socket's blocking state to non-blocking";
      }

LABEL_83:
      result = _libssh2_error(v14, v13, v15);
      goto LABEL_84;
    }

    if (v7 > 5)
    {
      if (v7 != 6)
      {
        if (v7 != 7)
        {
          return result;
        }

        goto LABEL_73;
      }
    }

    else
    {
      if (v7 == 4)
      {
LABEL_66:
        v28 = _libssh2_kex_exchange(a1, 0, a1 + 71088);
        if (v28 == -37)
        {
          goto LABEL_85;
        }

        v13 = v28;
        if (v28)
        {
          v14 = a1;
          v15 = "Unable to exchange encryption keys";
          goto LABEL_83;
        }

        *(v4 + 1384) = 5;
      }

      *(v4 + 1408) = 5;
      _libssh2_htonu32((a1 + 71041), 0xCu);
      *(a1 + 71053) = 1752462689;
      *(a1 + 71045) = *"ssh-userauth";
      *(v4 + 1384) = 6;
    }

    v29 = _libssh2_transport_send(a1, (a1 + 71040), 0x11uLL, 0, 0);
    if (v29 == -37)
    {
      goto LABEL_85;
    }

    v13 = v29;
    if (v29)
    {
      v14 = a1;
      v15 = "Unable to ask for ssh-userauth service";
      goto LABEL_83;
    }

    *(v4 + 1384) = 7;
LABEL_73:
    v30 = _libssh2_packet_require(a1, 6, (a1 + 71024), (a1 + 71032), 0, 0, 0, a1 + 71072);
    if (v30)
    {
      v13 = v30;
      v14 = a1;
      v15 = "Failed to get response to ssh-userauth request";
      goto LABEL_83;
    }

    if (*(a1 + 71032) <= 4uLL)
    {
      v14 = a1;
      v13 = 4294967282;
      v15 = "Unexpected packet length";
      goto LABEL_83;
    }

    v31 = _libssh2_ntohu32((*(v4 + 1392) + 1));
    *(v4 + 1432) = v31;
    v32 = *(v4 + 1392);
    if (v31 == 12 && !strncmp("ssh-userauth", (v32 + 5), 0xCuLL))
    {
      break;
    }

    (*(a1 + 24))(v32, a1);
    *(a1 + 71024) = 0;
    result = _libssh2_error(a1, 4294967282, "Invalid response received from server");
LABEL_84:
    if (result != -37)
    {
      return result;
    }

LABEL_85:
    if (!*(a1 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(a1, v5);
    if (result)
    {
      return result;
    }
  }

  (*(a1 + 24))(v32, a1);
  result = 0;
  *(v4 + 1392) = 0;
  *(v4 + 1384) = 0;
  return result;
}

uint64_t libssh2_session_free(uint64_t a1)
{
  v2 = a1 + 71000;
  v3 = (a1 + 35664);
  v4 = time(0);
  while (2)
  {
    v5 = *(v2 + 752);
    switch(v5)
    {
      case 3:
        goto LABEL_10;
      case 2:
        do
        {
LABEL_6:
          v6 = _libssh2_list_first(a1 + 552);
          if (!v6)
          {
            *(v2 + 752) = 3;
LABEL_10:
            while (1)
            {
              v7 = _libssh2_list_first(a1 + 576);
              if (!v7)
              {
                break;
              }

              if (_libssh2_channel_forward_cancel(v7) == -37)
              {
                goto LABEL_12;
              }
            }

            *(v2 + 752) = 4;
            goto LABEL_16;
          }
        }

        while (_libssh2_channel_free(v6) != -37);
LABEL_12:
        if (*(a1 + 172))
        {
          result = _libssh2_wait_socket(a1, v4);
          if (!result)
          {
            continue;
          }
        }

        else
        {
          return 4294967259;
        }

        break;
      case 0:
        *(v2 + 752) = 2;
        goto LABEL_6;
      default:
LABEL_16:
        if ((*(a1 + 128) & 2) != 0)
        {
          v9 = *(a1 + 184);
          if (v9)
          {
            v10 = *(v9 + 64);
            if (v10)
            {
              v10(a1, a1 + 192);
            }
          }

          v11 = *(a1 + 448);
          if (v11)
          {
            v12 = *(v11 + 56);
            if (v12)
            {
              v12(a1, a1 + 456);
            }
          }

          v13 = *(a1 + 488);
          if (v13)
          {
            v14 = *(v13 + 40);
            if (v14)
            {
              v14(a1, 1, a1 + 496);
            }
          }

          v15 = *(a1 + 464);
          if (v15)
          {
            v16 = *(v15 + 32);
            if (v16)
            {
              v16(a1, a1 + 480);
            }
          }

          v17 = *(a1 + 336);
          if (v17)
          {
            v18 = *(v17 + 56);
            if (v18)
            {
              v18(a1, a1 + 344);
            }
          }

          v19 = *(a1 + 376);
          if (v19)
          {
            v20 = *(v19 + 40);
            if (v20)
            {
              v20(a1, 0, a1 + 384);
            }
          }

          v21 = *(a1 + 352);
          if (v21)
          {
            v22 = *(v21 + 32);
            if (v22)
            {
              v22(a1, a1 + 368);
            }
          }

          v23 = *(a1 + 160);
          if (v23)
          {
            (*(a1 + 24))(v23, a1);
          }
        }

        v24 = *(a1 + 312);
        if (v24)
        {
          (*(a1 + 24))(v24, a1);
        }

        v25 = *(a1 + 424);
        if (v25)
        {
          (*(a1 + 24))(v25, a1);
        }

        v26 = *(a1 + 112);
        if (v26)
        {
          (*(a1 + 24))(v26, a1);
        }

        v27 = *(a1 + 120);
        if (v27)
        {
          (*(a1 + 24))(v27, a1);
        }

        v28 = *(a1 + 432);
        if (v28)
        {
          (*(a1 + 24))(v28, a1);
        }

        v29 = *(a1 + 504);
        if (v29)
        {
          (*(a1 + 24))(v29, a1);
        }

        v30 = *(a1 + 512);
        if (v30)
        {
          (*(a1 + 24))(v30, a1);
        }

        v31 = *(a1 + 520);
        if (v31)
        {
          (*(a1 + 24))(v31, a1);
        }

        v32 = *(a1 + 528);
        if (v32)
        {
          (*(a1 + 24))(v32, a1);
        }

        v33 = *(a1 + 320);
        if (v33)
        {
          (*(a1 + 24))(v33, a1);
        }

        v34 = *(a1 + 392);
        if (v34)
        {
          (*(a1 + 24))(v34, a1);
        }

        v35 = *(a1 + 400);
        if (v35)
        {
          (*(a1 + 24))(v35, a1);
        }

        v36 = *(a1 + 408);
        if (v36)
        {
          (*(a1 + 24))(v36, a1);
        }

        v37 = *(a1 + 416);
        if (v37)
        {
          (*(a1 + 24))(v37, a1);
        }

        v38 = *(a1 + 296);
        if (v38)
        {
          (*(a1 + 24))(v38, a1);
        }

        v39 = *(a1 + 304);
        if (v39)
        {
          (*(a1 + 24))(v39, a1);
        }

        if (*v2)
        {
          (*(a1 + 24))(*v2, a1);
        }

        v40 = *(v2 + 24);
        if (v40)
        {
          (*(a1 + 24))(v40, a1);
        }

        v41 = *(v2 + 1056);
        if (v41)
        {
          (*(a1 + 24))(v41, a1);
        }

        v42 = *(v2 + 1072);
        if (v42)
        {
          (*(a1 + 24))(v42, a1);
        }

        v43 = *(v2 + 1096);
        if (v43)
        {
          (*(a1 + 24))(v43, a1);
        }

        v44 = *(v2 + 1120);
        if (v44)
        {
          (*(a1 + 24))(v44, a1);
        }

        v45 = *(v2 + 1168);
        if (v45)
        {
          (*(a1 + 24))(v45, a1);
        }

        v46 = *(v2 + 1184);
        if (v46)
        {
          (*(a1 + 24))(v46, a1);
        }

        v47 = *(v2 + 1152);
        if (v47)
        {
          (*(a1 + 24))(v47, a1);
        }

        v48 = *(v2 + 1224);
        if (v48)
        {
          (*(a1 + 24))(v48, a1);
        }

        v49 = *(v2 + 1240);
        if (v49)
        {
          (*(a1 + 24))(v49, a1);
        }

        v50 = *(v2 + 1256);
        if (v50)
        {
          (*(a1 + 24))(v50, a1);
        }

        v51 = *(v2 + 1304);
        if (v51)
        {
          (*(a1 + 24))(v51, a1);
        }

        v52 = *(v2 + 1320);
        if (v52)
        {
          (*(a1 + 24))(v52, a1);
        }

        v53 = *(v2 + 1360);
        if (v53)
        {
          (*(a1 + 24))(v53, a1);
        }

        v54 = *(v2 + 1424);
        if (v54)
        {
          (*(a1 + 24))(v54, a1);
        }

        v55 = *(v2 + 1440);
        if (v55)
        {
          (*(a1 + 24))(v55, a1);
        }

        v56 = *(v2 + 1464);
        if (v56)
        {
          (*(a1 + 24))(v56, a1);
        }

        v57 = *(v2 + 1504);
        if (v57)
        {
          (*(a1 + 24))(v57, a1);
        }

        v58 = *(v2 + 1552);
        if (v58)
        {
          (*(a1 + 24))(v58, a1);
        }

        v59 = *(v2 + 1944);
        if (v59)
        {
          (*(a1 + 24))(v59, a1);
        }

        v60 = *(v2 + 2272);
        if (v60)
        {
          (*(a1 + 24))(v60, a1);
        }

        v61 = *(v2 + 1896);
        if (v61)
        {
          (*(a1 + 24))(v61, a1);
        }

        if (*v3)
        {
          (*(a1 + 24))(v3[1], a1);
        }

        v62 = _libssh2_list_first(a1 + 536);
        if (v62)
        {
          v63 = v62;
          do
          {
            _libssh2_list_remove(v63);
            (*(a1 + 24))(v63[3], a1);
            (*(a1 + 24))(v63, a1);
            v63 = _libssh2_list_first(a1 + 536);
          }

          while (v63);
        }

        if (*(a1 + 604))
        {
          v64 = *(a1 + 592);
          v65 = fcntl(v64, 3, 0);
          fcntl(v64, 4, v65 & 0xFFFFFFFB);
        }

        v66 = *(a1 + 200);
        if (v66)
        {
          (*(a1 + 24))(v66, a1);
        }

        if (*(a1 + 608))
        {
          if (*(a1 + 620))
          {
            (*(a1 + 24))();
          }
        }

        (*(a1 + 24))(a1, a1);
        return 0;
    }

    return result;
  }
}

uint64_t libssh2_session_disconnect_ex(_DWORD *a1, unsigned int a2, const char *a3, const char *a4)
{
  v8 = a1 + 17408;
  a1[32] &= ~1u;
  v9 = time(0);
  while (1)
  {
    v10 = 0;
    v16 = 0;
    if (v8[531])
    {
      break;
    }

    if (a3)
    {
      v11 = strlen(a3);
      v12 = v11;
      if (!a4)
      {
        if (v11 <= 0x100)
        {
          goto LABEL_16;
        }

LABEL_12:
        v14 = "too long description";
        goto LABEL_13;
      }

      v13 = strlen(a4);
      if (v12 > 0x100)
      {
        goto LABEL_12;
      }

      v10 = v13;
    }

    else
    {
      if (!a4)
      {
        v12 = 0;
LABEL_16:
        v10 = 0;
LABEL_17:
        *(v8 + 300) = v12 + v10 + 13;
        v16 = (a1 + 71761);
        *(v8 + 2128) = 1;
        _libssh2_store_u32(&v16, a2);
        _libssh2_store_str(&v16, a3, v12);
        _libssh2_store_u32(&v16, v10);
        v8[531] = 2;
        break;
      }

      v10 = strlen(a4);
      v12 = 0;
    }

    v14 = "too long language string";
    if (v10 <= 0x100)
    {
      goto LABEL_17;
    }

LABEL_13:
    result = _libssh2_error(a1, 4294967262, v14);
    if (result != -37)
    {
      return result;
    }

LABEL_19:
    if (!a1[43])
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(a1, v9);
    if (result)
    {
      return result;
    }
  }

  if (_libssh2_transport_send(a1, a1 + 17940, *(v8 + 300), a4, v10) == -37)
  {
    goto LABEL_19;
  }

  result = 0;
  v8[531] = 0;
  return result;
}

const char *libssh2_session_methods(uint64_t a1, int a2)
{
  if (a2 > 4)
  {
    if (a2 <= 7)
    {
      if (a2 == 5)
      {
        v2 = 352;
      }

      else if (a2 == 6)
      {
        v2 = 488;
      }

      else
      {
        v2 = 376;
      }

      goto LABEL_20;
    }

    if ((a2 - 8) < 2)
    {
      return "";
    }

    goto LABEL_23;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = 448;
    }

    else if (a2 == 3)
    {
      v2 = 336;
    }

    else
    {
      v2 = 464;
    }

    goto LABEL_20;
  }

  if (!a2)
  {
    v2 = 144;
    goto LABEL_20;
  }

  if (a2 != 1)
  {
LABEL_23:
    v5 = "Invalid parameter specified for method_type";
    v6 = 4294967262;
    goto LABEL_24;
  }

  v2 = 184;
LABEL_20:
  v4 = *(a1 + v2);
  if (v4)
  {
    return *v4;
  }

  v5 = "No method negotiated";
  v6 = 4294967279;
LABEL_24:
  _libssh2_error(a1, v6, v5);
  return 0;
}

uint64_t libssh2_session_last_error(uint64_t a1, const char **a2, _DWORD *a3, int a4)
{
  if (*(a1 + 616))
  {
    if (a2)
    {
      if (*(a1 + 608))
      {
        v8 = *(a1 + 608);
      }

      else
      {
        v8 = "";
      }

      v9 = strlen(v8);
      v10 = v9;
      if (!a4)
      {
        *a2 = v8;
        if (!a3)
        {
          return *(a1 + 616);
        }

        goto LABEL_16;
      }

      v11 = (*(a1 + 8))(v9 + 1, a1);
      *a2 = v11;
      if (v11)
      {
        memcpy(v11, v8, v10);
        (*a2)[v10] = 0;
        if (!a3)
        {
          return *(a1 + 616);
        }

        goto LABEL_16;
      }
    }

    else
    {
      LODWORD(v10) = 0;
    }

    if (!a3)
    {
      return *(a1 + 616);
    }

LABEL_16:
    *a3 = v10;
    return *(a1 + 616);
  }

  if (a2)
  {
    if (a4)
    {
      v12 = (*(a1 + 8))(1, a1);
      *a2 = v12;
      if (v12)
      {
        *v12 = 0;
      }
    }

    else
    {
      *a2 = "";
    }
  }

  result = 0;
  if (a3)
  {
    *a3 = 0;
  }

  return result;
}

uint64_t libssh2_session_flag(uint64_t a1, int a2, int a3)
{
  if ((a2 - 1) > 2)
  {
    return 4294967262;
  }

  result = 0;
  *(a1 + (4 * (a2 - 1)) + 132) = a3;
  return result;
}

uint64_t _libssh2_session_set_blocking(uint64_t a1, int a2)
{
  v2 = *(a1 + 172);
  *(a1 + 172) = a2;
  return v2;
}

uint64_t libssh2_session_set_read_timeout(uint64_t result, uint64_t a2)
{
  v2 = 60;
  if (a2 >= 1)
  {
    v2 = a2;
  }

  *(result + 73576) = v2;
  return result;
}

uint64_t libssh2_poll_channel_read(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 4294967257;
  }

  v4 = *(a1 + 104);
  result = _libssh2_list_first(v4 + 536);
  if (!result)
  {
    return result;
  }

  v6 = result;
  while (*(v6 + 32) > 4uLL)
  {
    v7 = *(a1 + 48);
    if (v7 == _libssh2_ntohu32((*(v6 + 24) + 1)))
    {
      if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_11;
        }

        v8 = **(v6 + 24) & 0xFE;
      }

      else
      {
        v8 = **(v6 + 24);
      }

      if (v8 == 94)
      {
        return 1;
      }
    }

LABEL_11:
    result = _libssh2_list_next(v6);
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  return _libssh2_error(v4, 4294967258, "Packet too small");
}

uint64_t libssh2_poll(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a2;
  v47.tv_sec = 0;
  *&v47.tv_usec = 0;
  memset(&v49, 0, sizeof(v49));
  memset(&v48, 0, sizeof(v48));
  v43 = 1;
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = (a1 + 16);
    v9 = a2;
    while (1)
    {
      v8[1] = 0;
      v10 = *(v8 - 16);
      switch(v10)
      {
        case 3:
          v16 = *(*(*(v8 - 1) + 24) + 592);
          if (__darwin_check_fd_set_overflow(v16, &v49, 0))
          {
            *(v49.fds_bits + ((v16 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v16;
          }

          v15 = *(*(v8 - 1) + 24);
          break;
        case 2:
          v14 = *(*(*(v8 - 1) + 104) + 592);
          if (__darwin_check_fd_set_overflow(v14, &v49, 0))
          {
            *(v49.fds_bits + ((v14 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v14;
          }

          v15 = *(*(v8 - 1) + 104);
          break;
        case 1:
          v11 = *v8;
          if (*v8)
          {
            v12 = *(v8 - 2);
            if (__darwin_check_fd_set_overflow(v12, &v49, 0))
            {
              *(v49.fds_bits + ((v12 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v12;
            }

            if (*(v8 - 2) > v6)
            {
              v6 = *(v8 - 2);
            }

            v11 = *v8;
          }

          if ((v11 & 4) != 0)
          {
            v13 = *(v8 - 2);
            if (__darwin_check_fd_set_overflow(v13, &v48, 0))
            {
              *(v48.fds_bits + ((v13 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v13;
            }

            if (*(v8 - 2) > v6)
            {
              v6 = *(v8 - 2);
            }
          }

          goto LABEL_28;
        default:
          if (v7)
          {
            _libssh2_error(v7, 4294967261, "Invalid descriptor passed to libssh2_poll()");
          }

          return 0xFFFFFFFFLL;
      }

      if (*(v15 + 592) > v6)
      {
        v6 = *(v15 + 592);
      }

      if (!v7)
      {
        v7 = v15;
      }

LABEL_28:
      v8 += 4;
      if (!--v9)
      {
        v43 = v6 + 1;
        break;
      }
    }
  }

  v17 = v4;
  v42 = v4;
  do
  {
    v18 = 0;
    if (!v4)
    {
      goto LABEL_62;
    }

    v19 = v17;
    v20 = (a1 + 24);
    do
    {
      v22 = *(v20 - 1);
      v21 = *v20;
      if (v22 == *v20)
      {
        goto LABEL_56;
      }

      v23 = *(v20 - 24);
      if (v23 == 3)
      {
        if ((v22 & 1) != 0 && (v21 & 1) == 0)
        {
          v21 = *v20 | (_libssh2_list_first(*(v20 - 2) + 48) != 0);
          *v20 = v21;
        }

        v27 = *(*(v20 - 2) + 24);
      }

      else
      {
        if (v23 != 2)
        {
          v22 = *v20;
          goto LABEL_56;
        }

        if ((v22 & 1) != 0 && (v21 & 1) == 0)
        {
          v24 = libssh2_poll_channel_read(*(v20 - 2), 0);
          v22 = *(v20 - 1);
          v21 = *v20 | (v24 != 0);
          *v20 = v21;
        }

        if ((v22 & 2) != 0 && (v21 & 2) == 0)
        {
          v25 = libssh2_poll_channel_read(*(v20 - 2), 1);
          v22 = *(v20 - 1);
          v21 = *v20 | (2 * (v25 != 0));
          *v20 = v21;
        }

        if ((v22 & 4) != 0 && (v21 & 4) == 0)
        {
          v21 |= 4 * (*(*(v20 - 2) + 56) != 0);
          *v20 = v21;
        }

        v26 = *(v20 - 2);
        if (*(v26 + 84) || *(v26 + 64))
        {
          v21 |= 0x80uLL;
          *v20 = v21;
        }

        v27 = *(v26 + 104);
      }

      v28 = *(v27 + 596);
      v22 = v21;
      if (v28 == -1)
      {
        *v20 = v21 | 0x90;
        v22 = 1;
      }

LABEL_56:
      if (v22)
      {
        v18 = (v18 + 1);
      }

      else
      {
        v18 = v18;
      }

      v20 += 4;
      --v19;
    }

    while (v19);
    if (v18)
    {
      a3 = 0;
    }

LABEL_62:
    *&v46.tv_usec = 0;
    v47.tv_sec = a3 / 1000;
    v47.tv_usec = 1000 * (a3 % 1000);
    *&v45.tv_usec = 0;
    v46.tv_sec = 0;
    v45.tv_sec = 0;
    gettimeofday(&v46, 0);
    v29 = select(v43, &v49, &v48, 0, &v47);
    gettimeofday(&v45, 0);
    tv_sec = v45.tv_sec;
    v30 = v46.tv_sec;
    tv_usec = v45.tv_usec;
    v32 = v46.tv_usec;
    if (v29 >= 1 && v4)
    {
      v33 = 0;
      do
      {
        v34 = (a1 + 32 * v33);
        v35 = *v34;
        switch(v35)
        {
          case 3:
            v39 = *(*(*(v34 + 1) + 24) + 592);
            if (__darwin_check_fd_set_overflow(v39, &v49, 0) && ((*(v49.fds_bits + ((v39 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v39) & 1) != 0)
            {
                ;
              }
            }

            break;
          case 2:
            v38 = *(*(*(v34 + 1) + 104) + 592);
            if (__darwin_check_fd_set_overflow(v38, &v49, 0) && ((*(v49.fds_bits + ((v38 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v38) & 1) != 0)
            {
                ;
              }
            }

            break;
          case 1:
            v36 = *(v34 + 2);
            if (__darwin_check_fd_set_overflow(v36, &v49, 0) && ((*(v49.fds_bits + ((v36 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v36) & 1) != 0)
            {
              *(v34 + 3) |= 1uLL;
            }

            v37 = *(v34 + 2);
            if (__darwin_check_fd_set_overflow(v37, &v48, 0) && ((*(v48.fds_bits + ((v37 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v37) & 1) != 0)
            {
              *(v34 + 3) |= 4uLL;
            }

            if (*(v34 + 3))
            {
              v18 = (v18 + 1);
            }

            else
            {
              v18 = v18;
            }

            break;
        }

        ++v33;
      }

      while (v33 != v17);
    }

    a3 = a3 - 1000 * (tv_sec - v30) + (tv_usec - v32) / -1000;
    v40 = a3 >= 1 && v18 == 0;
    v4 = v42;
  }

  while (v40);
  return v18;
}

uint64_t libssh2_session_banner_get(uint64_t result)
{
  if (result)
  {
    return *(result + 312);
  }

  return result;
}

char ***_libssh2_comp_methods(uint64_t a1)
{
  if (*(a1 + 136))
  {
    return &comp_methods;
  }

  else
  {
    return &no_comp_methods;
  }
}

uint64_t comp_method_none_decomp(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a2 = a5;
  *a3 = a6;
  return 0;
}

uint64_t libssh2_userauth_list(uint64_t a1, const void *a2, unsigned int a3)
{
  v5 = a1 + 69632;
  v6 = time(0);
  v7 = a3 + 27;
  do
  {
    v28 = 3486516;
    v27 = 0;
    v8 = *(v5 + 2416);
    if (v8 == 3)
    {
      goto LABEL_13;
    }

    if (v8 == 2)
    {
      goto LABEL_7;
    }

    if (v8)
    {
      goto LABEL_36;
    }

    *(a1 + 72080) = 0;
    *(a1 + 72064) = v7;
    v9 = (*(a1 + 8))(v7, a1);
    *(a1 + 72056) = v9;
    if (v9)
    {
      v27 = (v9 + 1);
      *v9 = 50;
      _libssh2_store_str(&v27, a2, a3);
      _libssh2_store_str(&v27, "ssh-connection", 0xEuLL);
      _libssh2_store_u32(&v27, 4u);
      *(v5 + 2416) = 2;
LABEL_7:
      v10 = _libssh2_transport_send(a1, *(a1 + 72056), *(a1 + 72064), "none", 4uLL);
      if (v10 == -37)
      {
        v11 = a1;
        v12 = 4294967259;
      }

      else
      {
        v13 = v10;
        (*(a1 + 24))(*(a1 + 72056), a1);
        *(a1 + 72056) = 0;
        if (v13)
        {
          v14 = a1;
          v12 = 4294967289;
          v15 = "Unable to send userauth-none request";
          goto LABEL_30;
        }

        *(v5 + 2416) = 3;
LABEL_13:
        v12 = _libssh2_packet_requirev(a1, &v28, (a1 + 72056), (a1 + 72064), 0, 0, 0, (a1 + 72080));
        if (!v12)
        {
          v18 = *(a1 + 72064);
          if (!v18)
          {
            goto LABEL_29;
          }

          v19 = *(a1 + 72056);
          v20 = *v19;
          if (v20 != 53)
          {
            goto LABEL_27;
          }

          if (v18 <= 4)
          {
            goto LABEL_33;
          }

          v21 = _libssh2_ntohu32((v19 + 1));
          if (*(a1 + 72064) - 5 < v21)
          {
            (*(a1 + 24))(*(a1 + 72056), a1);
            *(a1 + 72056) = 0;
            v11 = a1;
            v12 = 4294967255;
            v16 = "Unexpected userauth banner size";
            goto LABEL_17;
          }

          v22 = v21;
          v23 = (*(a1 + 8))(v21 + 1, a1);
          *(v5 + 2440) = v23;
          if (!v23)
          {
            (*(a1 + 24))(*(a1 + 72056), a1);
            *(a1 + 72056) = 0;
            v11 = a1;
            v12 = 4294967290;
            v16 = "Unable to allocate memory for userauth_banner";
            goto LABEL_17;
          }

          memcpy(v23, (*(v5 + 2424) + 5), v22);
          *(*(v5 + 2440) + v22) = 0;
          (*(a1 + 24))(*(v5 + 2424), a1);
          *(v5 + 2424) = 0;
          BYTE2(v28) = 0;
          v12 = _libssh2_packet_requirev(a1, &v28, (a1 + 72056), (a1 + 72064), 0, 0, 0, (a1 + 72080));
          if (!v12)
          {
            v18 = *(a1 + 72064);
            if (v18)
            {
              v19 = *(a1 + 72056);
              v20 = *v19;
LABEL_27:
              if (v20 != 52)
              {
                if (v18 > 4)
                {
                  v24 = _libssh2_ntohu32((v19 + 1));
                  if (*(a1 + 72064) - 5 > v24)
                  {
                    v25 = v24;
                    memmove(*(a1 + 72056), (*(a1 + 72056) + 5), v24);
                    *(*(a1 + 72056) + v25) = 0;
LABEL_36:
                    *(v5 + 2416) = 0;
                    result = *(v5 + 2424);
                    goto LABEL_37;
                  }

                  v11 = a1;
                  v12 = 4294967255;
                  v16 = "Unexpected userauth list size";
                  goto LABEL_17;
                }

LABEL_33:
                (*(a1 + 24))();
                *(a1 + 72056) = 0;
                v11 = a1;
                v12 = 4294967282;
                v16 = "Unexpected packet size";
                goto LABEL_17;
              }

              _libssh2_error(a1, 0, "No error");
              (*(a1 + 24))(*(v5 + 2424), a1);
              result = 0;
              *(v5 + 2424) = 0;
              *(a1 + 128) |= 4u;
LABEL_31:
              *(v5 + 2416) = 0;
              goto LABEL_37;
            }

LABEL_29:
            v14 = a1;
            v15 = "Failed getting response";
LABEL_30:
            _libssh2_error(v14, v12, v15);
            result = 0;
            goto LABEL_31;
          }
        }

        if (v12 != -37)
        {
          goto LABEL_29;
        }

        v11 = a1;
      }

      v16 = "Would block requesting userauth list";
      goto LABEL_17;
    }

    v11 = a1;
    v12 = 4294967290;
    v16 = "Unable to allocate memory for userauth_list";
LABEL_17:
    _libssh2_error(v11, v12, v16);
    result = 0;
LABEL_37:
    if (!*(a1 + 172) || result)
    {
      return result;
    }
  }

  while (libssh2_session_last_errno(a1) == -37 && !_libssh2_wait_socket(a1, v6));
  return 0;
}

uint64_t libssh2_userauth_banner(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  v2 = *(a1 + 72072);
  if (!v2)
  {
    return _libssh2_error(a1, 4294967246, "Missing userauth banner");
  }

  result = 0;
  if (a2)
  {
    *a2 = v2;
  }

  return result;
}

uint64_t libssh2_userauth_password_ex(uint64_t a1, const void *a2, unsigned int a3, const void *a4, unsigned int a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = a1 + 69632;
  v13 = time(0);
  __n = a3;
  v39 = a5;
  v35 = a5;
  v14 = a3 + a5;
  v15 = a2;
  v16 = a4;
  v17 = v13;
  v36 = a3 + 40;
  v37 = v14 + 44;
  while (1)
  {
    v40 = 0;
    v18 = *(v12 + 2456);
    if (v18 != 2)
    {
      if (v18)
      {
        if ((v18 - 3) >= 3)
        {
          v25 = *(a1 + 72096);
LABEL_10:
          (*(a1 + 24))(v25, a1);
          *(v12 + 2464) = 0;
          *(v12 + 2456) = 0;
          v22 = a1;
          v23 = 4294967278;
          v24 = "Authentication failed";
          goto LABEL_47;
        }

        goto LABEL_15;
      }

      *(v12 + 2504) = 0;
      *(v12 + 2480) = v36;
      *(v12 + 2472) = -61;
      v19 = (*(a1 + 8))();
      *(v12 + 2464) = v19;
      if (!v19)
      {
        v22 = a1;
        v23 = 4294967290;
        v24 = "Unable to allocate memory for userauth-password request";
        goto LABEL_47;
      }

      v40 = (v19 + 1);
      *v19 = 50;
      _libssh2_store_str(&v40, v15, __n);
      _libssh2_store_str(&v40, "ssh-connection", 0xEuLL);
      _libssh2_store_str(&v40, "password", 8uLL);
      v20 = v40;
      v40 = (v40 + 1);
      *v20 = 0;
      _libssh2_store_u32(&v40, v35);
      *(v12 + 2456) = 2;
    }

    v21 = _libssh2_transport_send(a1, *(a1 + 72096), *(a1 + 72112), v16, v39);
    if (v21 == -37)
    {
      v22 = a1;
      v23 = 4294967259;
      v24 = "Would block writing password request";
      goto LABEL_47;
    }

    v26 = v21;
    (*(a1 + 24))(*(a1 + 72096), a1);
    *(a1 + 72096) = 0;
    if (v26)
    {
      *(v12 + 2456) = 0;
      v22 = a1;
      v23 = 4294967289;
      v24 = "Unable to send userauth-password request";
      goto LABEL_47;
    }

    v18 = 3;
    *(v12 + 2456) = 3;
LABEL_15:
    if (v18 != 3)
    {
      if (!*(a1 + 72112))
      {
LABEL_40:
        *(v12 + 2456) = 0;
        v22 = a1;
        v23 = 4294967282;
        v24 = "Unexpected packet size";
        goto LABEL_47;
      }

      v25 = *(a1 + 72096);
      goto LABEL_23;
    }

    while (1)
    {
      v27 = _libssh2_packet_requirev(a1, "43<", (a1 + 72096), (a1 + 72112), 0, 0, 0, (a1 + 72136));
      if (v27)
      {
        v23 = v27;
        if (v27 != -37)
        {
          *(v12 + 2456) = 0;
        }

        v22 = a1;
        v24 = "Waiting for password response";
        goto LABEL_47;
      }

      if (!*(a1 + 72112))
      {
        goto LABEL_40;
      }

      v25 = *(a1 + 72096);
      v28 = *v25;
      if (v28 == 51)
      {
        (*(a1 + 24))(*(a1 + 72096), a1);
        *(v12 + 2464) = 0;
        *(v12 + 2456) = 0;
        v22 = a1;
        v23 = 4294967278;
        v24 = "Authentication failed (username/password)";
        goto LABEL_47;
      }

      if (v28 == 52)
      {
        (*(a1 + 24))(*(a1 + 72096), a1);
        result = 0;
        *(v12 + 2464) = 0;
        *(a1 + 128) |= 4u;
        *(v12 + 2456) = 0;
        return result;
      }

      *(v12 + 2488) = 0;
      *(v12 + 2496) = 0;
      v18 = 4;
      *(v12 + 2456) = 4;
LABEL_23:
      if (*v25 != 60 && *(v12 + 2472) != 60)
      {
        goto LABEL_10;
      }

      *(v12 + 2472) = 60;
      if ((v18 & 0xFFFFFFFE) != 4)
      {
        *(v12 + 2456) = 0;
        v22 = a1;
        v23 = 4294967281;
        v24 = "Password Expired, and no callback specified";
        goto LABEL_47;
      }

      if (v18 == 4)
      {
        (*(a1 + 24))(v25, a1);
        v25 = 0;
        *(a1 + 72096) = 0;
      }

      if (!a6)
      {
        goto LABEL_10;
      }

      v29 = *(v12 + 2456);
      if (v29 != 5)
      {
        break;
      }

LABEL_34:
      v32 = _libssh2_transport_send(a1, v25, *(a1 + 72112), *(a1 + 72120), *(a1 + 72128));
      if (v32 == -37)
      {
        v22 = a1;
        v23 = 4294967259;
        v24 = "Would block waiting";
        goto LABEL_47;
      }

      v33 = v32;
      (*(a1 + 24))(*(a1 + 72096), a1);
      *(a1 + 72096) = 0;
      (*(a1 + 24))(*(a1 + 72120), a1);
      *(a1 + 72120) = 0;
      if (v33)
      {
        v22 = a1;
        v23 = 4294967289;
        v24 = "Unable to send userauth password-change request";
        goto LABEL_47;
      }

      *(v12 + 2456) = 3;
    }

    if (v29 != 4)
    {
      goto LABEL_10;
    }

    a6(a1, a1 + 72120, a1 + 72128, a1);
    if (*(a1 + 72120))
    {
      *(a1 + 72112) = v37;
      v30 = (*(a1 + 8))();
      *(a1 + 72096) = v30;
      v40 = v30;
      if (v30)
      {
        v40 = (v30 + 1);
        *v30 = 50;
        _libssh2_store_str(&v40, v15, __n);
        _libssh2_store_str(&v40, "ssh-connection", 0xEuLL);
        _libssh2_store_str(&v40, "password", 8uLL);
        v31 = v40;
        v40 = (v40 + 1);
        *v31 = 1;
        _libssh2_store_str(&v40, v16, v39);
        _libssh2_store_u32(&v40, *(v12 + 2496));
        *(v12 + 2456) = 5;
        v25 = *(v12 + 2464);
        goto LABEL_34;
      }

      (*(a1 + 24))(*(a1 + 72120), a1);
      *(a1 + 72120) = 0;
      v22 = a1;
      v23 = 4294967290;
      v24 = "Unable to allocate memory for userauth password change request";
    }

    else
    {
      v22 = a1;
      v23 = 4294967281;
      v24 = "Password expired, and callback failed";
    }

LABEL_47:
    result = _libssh2_error(v22, v23, v24);
    if (result != -37)
    {
      return result;
    }

    if (!*(a1 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(a1, v17);
    if (result)
    {
      return result;
    }
  }
}

uint64_t libssh2_sign_sk(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, unsigned int **a6)
{
  v6 = *a6;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v7 = *(v6 + 3);
  if (!v7)
  {
    return 4294967284;
  }

  v11 = (*(v6 + 4))(a1, &v21, a4, a5, *v6, *(v6 + 4), *(v6 + 1), *(v6 + 2), v7, *(v6 + 5));
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = v22 == 0;
  }

  if (v12 || *(&v21 + 1) == 0)
  {
    v14 = v11;
    *a3 = 0;
    return v14;
  }

  v20 = 0;
  if (!v23 || !*(&v22 + 1))
  {
    *a3 = v22 + 9;
    v17 = (*(a1 + 8))();
    *a2 = v17;
    if (v17)
    {
      v20 = v17;
      _libssh2_store_str(&v20, *(&v21 + 1), v22);
      goto LABEL_18;
    }

LABEL_19:
    v14 = 4294967290;
    goto LABEL_20;
  }

  *a3 = v22 + v23 + 19;
  v15 = (*(a1 + 8))();
  *a2 = v15;
  if (!v15)
  {
    goto LABEL_19;
  }

  v19 = v15;
  v20 = v15;
  _libssh2_store_u32(&v20, 0);
  _libssh2_store_bignum2_bytes(&v20, *(&v21 + 1), v22);
  _libssh2_store_bignum2_bytes(&v20, *(&v22 + 1), v23);
  v16 = v20 - *a2;
  *a3 = v16;
  _libssh2_store_u32(&v19, v16 - 4);
LABEL_18:
  v14 = 0;
LABEL_20:
  if (v20)
  {
    *v20 = v21;
    v20 = (v20 + 1);
    _libssh2_store_u32(&v20, DWORD1(v21));
    *a3 = v20 - *a2;
  }

  (*(a1 + 24))(*(&v21 + 1), a1);
  if (*(&v22 + 1))
  {
    (*(a1 + 24))(*(&v22 + 1), a1);
  }

  return v14;
}

uint64_t libssh2_userauth_hostbased_fromfile_ex(uint64_t a1, const void *a2, unsigned int a3, char *a4, char *a5, void *a6, const void *a7, unsigned int a8, const void *a9, unsigned int a10)
{
  v55[8] = *MEMORY[0x277D85DE8];
  v14 = a1 + 69632;
  v15 = time(0);
  while (1)
  {
    v16 = *(v14 + 2512);
    if (v16 == 3)
    {
      goto LABEL_32;
    }

    if (v16 == 2)
    {
      goto LABEL_28;
    }

    if (v16)
    {
      v20 = *(a1 + 72152);
      goto LABEL_9;
    }

    *v53 = 0;
    v54 = 0;
    v51 = 0;
    *v52 = 0;
    v49 = 0;
    v50 = 0;
    *(a1 + 72208) = 0;
    v17 = (a1 + 72184);
    v18 = (a1 + 72192);
    if (a4)
    {
      v19 = file_read_publickey(a1, v17, v18, v53, &v51, a4);
      if (v19)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v19 = _libssh2_pub_priv_keyfile(a1, v17, v18, v53, &v51, a5, a6);
      if (v19)
      {
        goto LABEL_40;
      }
    }

    v24 = *(v14 + 2560);
    v25 = v51;
    v26 = a8 + a3 + a10 + v24 + v51;
    *(v14 + 2544) = v26 + 52;
    v27 = (*(a1 + 8))(v25 + v24 + v26 + 64, a1);
    *(v14 + 2536) = v27;
    *(v14 + 2568) = v27;
    if (!v27)
    {
      (*(a1 + 24))(*(a1 + 72184), a1);
      *(a1 + 72184) = 0;
      (*(a1 + 24))(*v53, a1);
      v21 = a1;
      v22 = 4294967290;
      v23 = "Out of memory";
      goto LABEL_39;
    }

    *(a1 + 72200) = v27 + 1;
    *v27 = 50;
    _libssh2_store_str((a1 + 72200), a2, a3);
    _libssh2_store_str((a1 + 72200), "ssh-connection", 0xEuLL);
    _libssh2_store_str((a1 + 72200), "hostbased", 9uLL);
    _libssh2_store_str((a1 + 72200), *(a1 + 72184), *(a1 + 72192));
    _libssh2_store_str((a1 + 72200), *v53, v51);
    (*(a1 + 24))(*v53, a1);
    _libssh2_store_str((a1 + 72200), a7, a8);
    _libssh2_store_str((a1 + 72200), a9, a10);
    v28 = file_read_privatekey(a1, &v54, &v49, *(a1 + 72184), *(a1 + 72192), a5, a6);
    if (v28)
    {
      v29 = v28;
      (*(a1 + 24))(*(v14 + 2552), a1);
      *(v14 + 2552) = 0;
      (*(a1 + 24))(*(v14 + 2536), a1);
      *(v14 + 2536) = 0;
      goto LABEL_41;
    }

    _libssh2_htonu32(&v48, *(a1 + 168));
    v55[0] = &v48;
    v55[1] = 4;
    v30 = *(a1 + 168);
    v55[2] = *(a1 + 160);
    v55[3] = v30;
    v31 = *(v14 + 2544);
    v55[4] = *(v14 + 2536);
    v55[5] = v31;
    v32 = v54;
    if (!v54)
    {
      goto LABEL_23;
    }

    v33 = v54[6];
    if (!v33 || !(v33)(a1, v52, &v50, 3, v55, &v49))
    {
      v35 = v32[8];
      if (v35)
      {
        (v35)(a1, &v49);
      }

LABEL_23:
      v36 = v50;
      v37 = *(v14 + 2536);
      if (v50 > v51)
      {
        v38 = v50 + *(v14 + 2544) + *(v14 + 2560);
        if (v37)
        {
          v37 = (*(a1 + 16))(v37, v38 + 12, a1);
          if (v37)
          {
            goto LABEL_26;
          }

LABEL_46:
          (*(a1 + 24))(*v52, a1);
          (*(a1 + 24))(*(v14 + 2536), a1);
          *(v14 + 2536) = 0;
          (*(a1 + 24))(*(v14 + 2552), a1);
          *(v14 + 2552) = 0;
          v21 = a1;
          v22 = 4294967290;
          v23 = "Failed allocating additional space for userauth-hostbased packet";
LABEL_39:
          v19 = _libssh2_error(v21, v22, v23);
LABEL_40:
          v29 = v19;
          goto LABEL_41;
        }

        v37 = (*(a1 + 8))(v38 + 12, a1);
        if (!v37)
        {
          goto LABEL_46;
        }

LABEL_26:
        *(v14 + 2536) = v37;
        v36 = v50;
      }

      *(v14 + 2568) = v37 + *(v14 + 2544);
      _libssh2_store_u32((a1 + 72200), v36 + *(v14 + 2560) + 8);
      _libssh2_store_str((a1 + 72200), *(v14 + 2552), *(v14 + 2560));
      (*(a1 + 24))(*(v14 + 2552), a1);
      *(v14 + 2552) = 0;
      _libssh2_store_str((a1 + 72200), *v52, v50);
      (*(a1 + 24))(*v52, a1);
      *(v14 + 2512) = 2;
LABEL_28:
      v39 = _libssh2_transport_send(a1, *(v14 + 2536), *(v14 + 2568) - *(v14 + 2536), 0, 0);
      if (v39)
      {
        if (v39 != -37)
        {
          (*(a1 + 24))(*(v14 + 2536), a1);
          *(v14 + 2536) = 0;
          *(v14 + 2512) = 0;
          v21 = a1;
          v22 = 4294967289;
          v23 = "Unable to send userauth-hostbased request";
          goto LABEL_39;
        }

LABEL_33:
        v21 = a1;
        v22 = 4294967259;
        v23 = "Would block";
        goto LABEL_39;
      }

      (*(a1 + 24))(*(v14 + 2536), a1);
      *(v14 + 2536) = 0;
      *(v14 + 2512) = 3;
LABEL_32:
      v55[0] = 0;
      v40 = _libssh2_packet_requirev(a1, "43", (a1 + 72152), v55, 0, 0, 0, (a1 + 72208));
      if (v40 == -37)
      {
        goto LABEL_33;
      }

      *(v14 + 2512) = 0;
      if (v40 || !v55[0])
      {
        v21 = a1;
        v22 = 4294967277;
        v23 = "Auth failed";
        goto LABEL_39;
      }

      v20 = *(a1 + 72152);
      if (*v20 == 52)
      {
        (*(a1 + 24))();
        v29 = 0;
        *(a1 + 72152) = 0;
        *(a1 + 128) |= 4u;
        goto LABEL_41;
      }

LABEL_9:
      (*(a1 + 24))(v20, a1);
      *(a1 + 72152) = 0;
      v21 = a1;
      v22 = 4294967277;
      v23 = "Invalid signature for supplied public key, or bad username/public key combination";
      goto LABEL_39;
    }

    (*(a1 + 24))(*(v14 + 2552), a1);
    *(v14 + 2552) = 0;
    (*(a1 + 24))(*(v14 + 2536), a1);
    *(v14 + 2536) = 0;
    v34 = v32[8];
    if (v34)
    {
      (v34)(a1, &v49);
    }

    v29 = 0xFFFFFFFFLL;
LABEL_41:
    if (v29 != -37)
    {
      goto LABEL_48;
    }

    if (!*(a1 + 172))
    {
      break;
    }

    v41 = _libssh2_wait_socket(a1, v15);
    if (v41)
    {
      v29 = v41;
      goto LABEL_48;
    }
  }

  v29 = 4294967259;
LABEL_48:
  v42 = *MEMORY[0x277D85DE8];
  return v29;
}

size_t plain_method(char *__s2, size_t __n)
{
  v2 = __n;
  if (!strncmp("ssh-rsa-cert-v01@openssh.com", __s2, __n))
  {
    return 7;
  }

  if (!strncmp("ecdsa-sha2-nistp256-cert-v01@openssh.com", __s2, v2) || !strncmp("ecdsa-sha2-nistp384-cert-v01@openssh.com", __s2, v2) || !strncmp("ecdsa-sha2-nistp521-cert-v01@openssh.com", __s2, v2))
  {
    return 19;
  }

  if (!strncmp("ssh-ed25519-cert-v01@openssh.com", __s2, v2))
  {
    return 11;
  }

  if (!strncmp("sk-ecdsa-sha2-nistp256-cert-v01@openssh.com", __s2, v2))
  {
    qmemcpy(__s2, "sk-ecdsa-sha2-nistp256@openssh.com", 34);
    return 34;
  }

  else if (!strncmp("sk-ssh-ed25519-cert-v01@openssh.com", __s2, v2))
  {
    qmemcpy(__s2, "sk-ssh-ed25519@openssh.com", 26);
    return 26;
  }

  return v2;
}

uint64_t _libssh2_userauth_publickey(uint64_t a1, const void *a2, size_t a3, unsigned int *a4, size_t a5, uint64_t (*a6)(uint64_t, const void **, size_t *, char *, int64_t, uint64_t), uint64_t a7)
{
  v7 = a7;
  v8 = a5;
  v10 = a1 + 69632;
  v80 = 3945268;
  v79 = 0;
  v67 = a1 + 69632;
  v68 = a5 - 4;
  v73 = a5 + a3;
  v72 = a5 + 57;
  v11 = *(a1 + 72216);
  v12 = 1;
  while (v11 > 2)
  {
    if (v11 == 3)
    {
      goto LABEL_71;
    }

    if (v11 != 4)
    {
      if (v11 == 5)
      {
        v57 = *(v10 + 2640);
        goto LABEL_107;
      }

      goto LABEL_112;
    }

LABEL_76:
    v77 = 0;
    v78 = 0;
    v51 = (*(a1 + 8))(*(v10 + 2616) + (*(a1 + 168) + 4), a1);
    v79 = v51;
    if (!v51)
    {
      v54 = "Unable to allocate memory for userauth-publickey signed data";
      goto LABEL_123;
    }

    v52 = v51;
    _libssh2_store_str(&v79, *(a1 + 160), *(a1 + 168));
    memcpy(v79, *(v10 + 2608), *(v10 + 2616));
    v79 = (v79 + *(v10 + 2616));
    v53 = a6(a1, &v78, &v77, v52, v79 - v52, v7);
    (*(a1 + 24))(v52, a1);
    if (v53 == -37)
    {
      goto LABEL_109;
    }

    if ((v12 & (v53 == -51)) == 0)
    {
      if (v53)
      {
        (*(a1 + 24))(*(v10 + 2624), a1);
        *(v10 + 2624) = 0;
        (*(a1 + 24))(*(v10 + 2608), a1);
        *(v10 + 2608) = 0;
        *(v10 + 2584) = 0;
        v54 = "Callback returned error";
        goto LABEL_121;
      }

      v58 = *(v10 + 2608);
      if (v77 > v8)
      {
        if (v58)
        {
          v58 = (*(a1 + 16))(v58, v77 + *(v10 + 2616) + *(v10 + 2632) + 12, a1);
        }

        else
        {
          v58 = (*(a1 + 8))(v77 + *(v10 + 2616) + *(v10 + 2632) + 12, a1);
        }

        if (v58)
        {
          *(v10 + 2608) = v58;
          goto LABEL_102;
        }

        (*(a1 + 24))(v78, a1);
        (*(a1 + 24))(*(v10 + 2608), a1);
        *(v10 + 2608) = 0;
        (*(a1 + 24))(*(v10 + 2624), a1);
        *(v10 + 2624) = 0;
        *(v10 + 2584) = 0;
        v54 = "Failed allocating additional space for userauth-publickey packet";
LABEL_123:
        v55 = a1;
        v56 = 4294967290;
        return _libssh2_error(v55, v56, v54);
      }

LABEL_102:
      v79 = (v58 + *(v10 + 2616));
      *(v10 + 2648) = 0;
      v59 = plain_method(*(v10 + 2624), *(v10 + 2632));
      *(v10 + 2632) = v59;
      v60 = *(v10 + 2624);
      if (!strncmp(v60, "sk-ecdsa-sha2-nistp256@openssh.com", v59) || !strncmp(v60, "sk-ssh-ed25519@openssh.com", v59))
      {
        _libssh2_store_u32(&v79, v59 + v77 + 4);
        _libssh2_store_str(&v79, *(v10 + 2624), *(v10 + 2632));
        memcpy(v79, v78, v77);
        v79 = (v79 + v77);
      }

      else
      {
        _libssh2_store_u32(&v79, v59 + v77 + 8);
        _libssh2_store_str(&v79, *(v10 + 2624), *(v10 + 2632));
        _libssh2_store_str(&v79, v78, v77);
      }

      (*(a1 + 24))(*(v10 + 2624), a1);
      *(v10 + 2624) = 0;
      (*(a1 + 24))(v78, a1);
      v57 = v79;
      *(v10 + 2640) = v79;
      *(v10 + 2584) = 5;
LABEL_107:
      v61 = _libssh2_transport_send(a1, *(v10 + 2608), v57 - *(v10 + 2608), 0, 0);
      if (v61)
      {
        if (v61 == -37)
        {
LABEL_109:
          v54 = "Would block";
LABEL_110:
          v55 = a1;
          v56 = 4294967259;
          return _libssh2_error(v55, v56, v54);
        }

        (*(a1 + 24))(*(v10 + 2608), a1);
        *(v10 + 2608) = 0;
LABEL_116:
        *(v10 + 2584) = 0;
        v54 = "Unable to send userauth-publickey request";
        v55 = a1;
        v56 = 4294967289;
        return _libssh2_error(v55, v56, v54);
      }

      (*(a1 + 24))(*(v10 + 2608), a1);
      *(v10 + 2608) = 0;
      *(v10 + 2584) = 6;
LABEL_112:
      BYTE2(v80) = 0;
      v62 = _libssh2_packet_requirev(a1, &v80, (a1 + 72224), (a1 + 72232), 0, 0, 0, (a1 + 72288));
      if (v62)
      {
        if (v62 == -37)
        {
          v54 = "Would block requesting userauth list";
          goto LABEL_110;
        }

LABEL_120:
        *(v10 + 2584) = 0;
        v54 = "Waiting for publickey USERAUTH response";
      }

      else
      {
        if (!*(a1 + 72232))
        {
          goto LABEL_120;
        }

        v63 = **(a1 + 72224);
        (*(a1 + 24))();
        *(a1 + 72224) = 0;
        if (v63 == 52)
        {
          v43 = 0;
          goto LABEL_88;
        }

        *(v10 + 2584) = 0;
        v54 = "Invalid signature for supplied public key, or bad username/public key combination";
      }

LABEL_121:
      v55 = a1;
      v56 = 4294967277;
      return _libssh2_error(v55, v56, v54);
    }

    (*(a1 + 24))(*(v10 + 2624), a1);
    *(v10 + 2624) = 0;
    (*(a1 + 24))(*(v10 + 2608), a1);
    v11 = 0;
    v12 = 0;
    *(v10 + 2608) = 0;
    *(v10 + 2584) = 0;
  }

  if (v11)
  {
    if (v11 == 2)
    {
      goto LABEL_69;
    }

    goto LABEL_112;
  }

  if (v8 <= 3)
  {
    v54 = "Invalid public key, too short";
    goto LABEL_121;
  }

  *(v10 + 2656) = 0;
  if (!*(v10 + 2624))
  {
    v13 = _libssh2_ntohu32(a4);
    *(v10 + 2632) = v13;
    if (v68 < v13)
    {
      v54 = "Invalid public key";
      goto LABEL_121;
    }

    v14 = (*(a1 + 8))();
    *(v10 + 2624) = v14;
    if (!v14)
    {
      v54 = "Unable to allocate memory for public key data";
      goto LABEL_123;
    }

    memcpy(v14, a4 + 1, *(v10 + 2632));
  }

  __n = v8;
  if ((v12 & 1) == 0)
  {
    goto LABEL_67;
  }

  v15 = _libssh2_supported_key_sign_algorithms(a1, *(v10 + 2624), *(v10 + 2632));
  if (!v15 || !*(a1 + 296))
  {
    goto LABEL_67;
  }

  v16 = v15;
  v65 = v12;
  v17 = strlen(v15);
  v18 = (*(a1 + 8))(v17 + 1, a1);
  if (!v18)
  {
    v43 = _libssh2_error(a1, 4294967290, "Unable to allocate filtered algs");
    goto LABEL_66;
  }

  v19 = v18;
  v20 = *(a1 + 296);
  v21 = v18;
  if (v20)
  {
    v21 = v18;
    do
    {
      if (!*v20)
      {
        break;
      }

      v22 = strchr(v20, 44);
      v23 = v22;
      v24 = v22 ? v22 - v20 : strlen(v20);
      v25 = v16;
      do
      {
        if (!*v25)
        {
          break;
        }

        v26 = strchr(v25, 44);
        v27 = v26;
        if (v26)
        {
          v28 = v26 - v25;
        }

        else
        {
          v28 = strlen(v25);
        }

        if (v28 == v24 && !memcmp(v25, v20, v24))
        {
          v29 = v19;
          if (v21 != v19)
          {
            *v21 = 44;
            v29 = v21 + 1;
          }

          memcpy(v29, v20, v24);
          v21 = &v29[v24];
        }

        v25 = v27 + 1;
      }

      while (v27);
      v20 = v23 + 1;
    }

    while (v23);
  }

  v30 = 0;
  v31 = 0;
  *v21 = 0;
  if (*(a1 + 304))
  {
    v16 = *(a1 + 304);
  }

  v74 = v19;
  do
  {
    if (v31 || !*v16)
    {
      break;
    }

    v32 = strchr(v16, 44);
    v33 = v32;
    if (v32)
    {
      v34 = v32 - v16;
    }

    else
    {
      v34 = strlen(v16);
    }

    v35 = v19;
    v36 = *v19;
    if (!v36)
    {
      v31 = 0;
      goto LABEL_58;
    }

    v37 = v30;
    while (1)
    {
      v38 = strchr(v35, 44);
      v39 = v38;
      if (v38)
      {
        v40 = v38 - v35;
      }

      else
      {
        v40 = strlen(v35);
      }

      if (v40 == v34)
      {
        v31 = v16;
        v30 = v34;
        if (!memcmp(v35, v16, v34))
        {
          goto LABEL_53;
        }
      }

      v31 = 0;
      if (!v39)
      {
        break;
      }

      v36 = v39[1];
      v35 = v39 + 1;
      v30 = v37;
LABEL_53:
      if (!v31)
      {
        v37 = v30;
        if (v36)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    v30 = v37;
LABEL_58:
    v16 = v33 + 1;
    v19 = v74;
  }

  while (v33);
  if (v31)
  {
    v41 = *(v67 + 2624);
    if (v41)
    {
      (*(a1 + 24))(v41, a1);
    }

    v42 = (*(a1 + 8))(v30, a1);
    v10 = v67;
    *(v67 + 2624) = v42;
    memcpy(v42, v31, v30);
    v43 = 0;
    *(v67 + 2632) = v30;
  }

  else
  {
    v43 = _libssh2_error(a1, 4294967279, "No signing signature matched");
    v10 = v67;
  }

  (*(a1 + 24))(v19, a1);
  v7 = a7;
LABEL_66:
  v12 = v65;
  if (v43)
  {
    return v43;
  }

LABEL_67:
  v44 = *(v10 + 2632);
  *(v10 + 2616) = v73 + v44 + 45;
  v45 = (*(a1 + 8))(v72 + v44 + v73 + v44, a1);
  *(v10 + 2608) = v45;
  v79 = v45;
  if (!v45)
  {
    (*(a1 + 24))(*(v10 + 2624), a1);
    *(v10 + 2624) = 0;
    v54 = "Out of memory";
    goto LABEL_123;
  }

  v79 = (v45 + 1);
  *v45 = 50;
  _libssh2_store_str(&v79, a2, a3);
  _libssh2_store_str(&v79, "ssh-connection", 0xEuLL);
  _libssh2_store_str(&v79, "publickey", 9uLL);
  v46 = v79;
  *(v10 + 2648) = v79;
  v79 = (v46 + 1);
  *v46 = 0;
  _libssh2_store_str(&v79, *(v10 + 2624), *(v10 + 2632));
  v8 = __n;
  _libssh2_store_str(&v79, a4, __n);
  *(v10 + 2584) = 2;
LABEL_69:
  v47 = _libssh2_transport_send(a1, *(v10 + 2608), *(v10 + 2616), 0, 0);
  if (v47)
  {
    if (v47 == -37)
    {
      goto LABEL_109;
    }

    (*(a1 + 24))(*(v10 + 2608), a1);
    *(v10 + 2608) = 0;
    (*(a1 + 24))(*(v10 + 2624), a1);
    *(v10 + 2624) = 0;
    goto LABEL_116;
  }

  *(v10 + 2584) = 3;
LABEL_71:
  v48 = _libssh2_packet_requirev(a1, &v80, (a1 + 72224), (a1 + 72232), 0, 0, 0, (a1 + 72288));
  if (v48)
  {
    if (v48 == -37)
    {
      goto LABEL_109;
    }

LABEL_81:
    (*(a1 + 24))(*(v10 + 2608), a1);
    *(v10 + 2608) = 0;
    (*(a1 + 24))(*(v10 + 2624), a1);
    *(v10 + 2624) = 0;
    *(v10 + 2584) = 0;
    v54 = "Waiting for USERAUTH response";
    goto LABEL_121;
  }

  if (!*(a1 + 72232))
  {
    goto LABEL_81;
  }

  v49 = v12;
  v50 = **(a1 + 72224);
  (*(a1 + 24))();
  *(a1 + 72224) = 0;
  if (v50 == 51)
  {
    (*(a1 + 24))(*(v10 + 2608), a1);
    *(v10 + 2608) = 0;
    (*(a1 + 24))(*(v10 + 2624), a1);
    *(v10 + 2624) = 0;
    *(v10 + 2584) = 0;
    v54 = "Username/PublicKey combination invalid";
    v55 = a1;
    v56 = 4294967278;
    return _libssh2_error(v55, v56, v54);
  }

  if (v50 != 52)
  {
    **(v10 + 2648) = 1;
    *(v10 + 2584) = 4;
    v12 = v49;
    goto LABEL_76;
  }

  (*(a1 + 24))(*(v10 + 2608), a1);
  *(v10 + 2608) = 0;
  (*(a1 + 24))(*(v10 + 2624), a1);
  v43 = 0;
  *(v10 + 2624) = 0;
LABEL_88:
  *(a1 + 128) |= 4u;
  *(v10 + 2584) = 0;
  return v43;
}

uint64_t libssh2_userauth_publickey_frommemory(uint64_t a1, const void *a2, size_t a3, const void *a4, unint64_t a5, void *a6, unint64_t a7, char *a8)
{
  if (a8)
  {
    v15 = a8;
  }

  else
  {
    v15 = "";
  }

  v16 = time(0);
  v26 = a4;
  v27 = a5;
  if (a4)
  {
    v17 = a5 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  if (a6)
  {
    v19 = a7 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = !v19;
  v25 = v20;
  while (1)
  {
    v30 = 0;
    v31 = 0;
    v28 = v29;
    v29[0] = a6;
    v29[1] = v15;
    if (!*(a1 + 72216))
    {
      if (v18)
      {
        v22 = memory_read_publickey(a1, (a1 + 72256), (a1 + 72264), &v31, &v30, v26, v27);
        if (v22)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (!v25)
        {
          v22 = _libssh2_error(a1, 4294967280, "Invalid data in public and private key.");
LABEL_27:
          v21 = v22;
          goto LABEL_28;
        }

        v22 = _libssh2_pub_priv_keyfilememory(a1, (a1 + 72256), (a1 + 72264), &v31, &v30, a6, a7, v15);
        if (v22)
        {
          goto LABEL_27;
        }
      }
    }

    v21 = _libssh2_userauth_publickey(a1, a2, a3, v31, v30, sign_frommemory, &v28);
    if (v31)
    {
      (*(a1 + 24))(v31, a1);
    }

LABEL_28:
    if (v21 != -37)
    {
      return v21;
    }

    if (!*(a1 + 172))
    {
      return 4294967259;
    }

    v23 = _libssh2_wait_socket(a1, v16);
    if (v23)
    {
      return v23;
    }
  }
}

uint64_t libssh2_userauth_publickey_fromfile_ex(uint64_t a1, const void *a2, unsigned int a3, char *a4, char *a5, char *a6)
{
  if (a6)
  {
    v11 = a6;
  }

  else
  {
    v11 = "";
  }

  v12 = time(0);
  while (1)
  {
    v21 = 0;
    v22 = 0;
    v19 = v20;
    v20[0] = a5;
    v20[1] = v11;
    if (!*(a1 + 72216))
    {
      v14 = (a1 + 72256);
      v15 = (a1 + 72264);
      if (a4)
      {
        v16 = file_read_publickey(a1, v14, v15, &v22, &v21, a4);
        if (v16)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v16 = _libssh2_pub_priv_keyfile(a1, v14, v15, &v22, &v21, a5, v11);
        if (v16)
        {
LABEL_12:
          v13 = v16;
          goto LABEL_13;
        }
      }
    }

    v13 = _libssh2_userauth_publickey(a1, a2, a3, v22, v21, sign_fromfile, &v19);
    if (v22)
    {
      (*(a1 + 24))(v22, a1);
    }

LABEL_13:
    if (v13 != -37)
    {
      return v13;
    }

    if (!*(a1 + 172))
    {
      return 4294967259;
    }

    v17 = _libssh2_wait_socket(a1, v12);
    if (v17)
    {
      return v17;
    }
  }
}

uint64_t libssh2_userauth_publickey(uint64_t a1, const char *a2, unsigned int *a3, size_t a4, uint64_t (*a5)(uint64_t, const void **, size_t *, char *, int64_t, uint64_t), uint64_t a6)
{
  if (!a1)
  {
    return 4294967257;
  }

  v12 = time(0);
  do
  {
    v13 = strlen(a2);
    result = _libssh2_userauth_publickey(a1, a2, v13, a3, a4, a5, a6);
    if (result != -37)
    {
      break;
    }

    if (!*(a1 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(a1, v12);
  }

  while (!result);
  return result;
}

uint64_t libssh2_userauth_keyboard_interactive_ex(uint64_t a1, const void *a2, unsigned int a3, void (*a4)(void, void, void, void, void, void, void, uint64_t))
{
  v6 = a1 + 69632;
  v7 = time(0);
  v8 = (a1 + 72376);
  v9 = a3 + 55;
  while (1)
  {
    v41 = 0;
    v10 = *(v6 + 2664);
    if (v10 <= 2)
    {
      if (v10)
      {
        if (v10 != 2)
        {
          goto LABEL_18;
        }
      }

      else
      {
        *(v6 + 2712) = 0;
        *(v6 + 2728) = 0;
        *(v6 + 2736) = 0x100000000;
        *v8 = 0;
        *(a1 + 72384) = 0;
        *(v6 + 2760) = 0;
        *(v6 + 2696) = v9;
        v15 = (*(a1 + 8))(v9, a1);
        *(v6 + 2672) = v15;
        if (!v15)
        {
          v17 = a1;
          v18 = 4294967290;
          v19 = "Unable to allocate memory for keyboard-interactive authentication";
          goto LABEL_59;
        }

        v41 = (v15 + 1);
        *v15 = 50;
        _libssh2_store_str(&v41, a2, a3);
        _libssh2_store_str(&v41, "ssh-connection", 0xEuLL);
        _libssh2_store_str(&v41, "keyboard-interactive", 0x14uLL);
        _libssh2_store_u32(&v41, 0);
        _libssh2_store_u32(&v41, 0);
        *(v6 + 2664) = 2;
      }

      v16 = _libssh2_transport_send(a1, *(v6 + 2672), *(v6 + 2696), 0, 0);
      if (v16)
      {
        if (v16 != -37)
        {
          (*(a1 + 24))(*(v6 + 2672), a1);
          *(v6 + 2672) = 0;
          *(v6 + 2664) = 0;
          v17 = a1;
          v18 = 4294967289;
          v19 = "Unable to send keyboard-interactive request";
          goto LABEL_59;
        }

LABEL_41:
        v17 = a1;
        v18 = 4294967259;
        v19 = "Would block";
        goto LABEL_59;
      }

      (*(a1 + 24))(*(a1 + 72304), a1);
      *(a1 + 72304) = 0;
LABEL_38:
      *(v6 + 2664) = 3;
      goto LABEL_39;
    }

    if (v10 != 3)
    {
      if (v10 == 4)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_39:
    v28 = _libssh2_packet_requirev(a1, "43<", (a1 + 72304), (a1 + 72312), 0, 0, 0, (a1 + 72392));
    if (v28)
    {
      if (v28 == -37)
      {
        goto LABEL_41;
      }

LABEL_55:
      *(v6 + 2664) = 0;
      v17 = a1;
      v18 = 4294967278;
      v19 = "Waiting for keyboard USERAUTH response";
      goto LABEL_59;
    }

    if (!*(a1 + 72312))
    {
      goto LABEL_55;
    }

    v29 = **(a1 + 72304);
    if (v29 != 51)
    {
      break;
    }

    (*(a1 + 24))();
    *(v6 + 2672) = 0;
    *(v6 + 2664) = 0;
    v17 = a1;
    v18 = 4294967278;
    v19 = "Authentication failed (keyboard-interactive)";
LABEL_59:
    result = _libssh2_error(v17, v18, v19);
    if (result != -37)
    {
      return result;
    }

    if (!*(a1 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(a1, v7);
    if (result)
    {
      return result;
    }
  }

  if (v29 != 52)
  {
    if ((userauth_keyboard_interactive_decode_info_request(a1) & 0x80000000) == 0)
    {
      a4(*(v6 + 2712), *(v6 + 2704), *(v6 + 2728), *(v6 + 2720), *(v6 + 2736), *(v6 + 2744), *(v6 + 2752), a1);
      *(v6 + 2696) = 5;
      v30 = *(v6 + 2736);
      if (v30)
      {
        v31 = (*(v6 + 2752) + 8);
        v32 = 5;
        while (1)
        {
          v34 = *v31;
          v31 += 4;
          v33 = v34;
          if (-5 - v32 < v34)
          {
            break;
          }

          v32 += v33 + 4;
          *(v6 + 2696) = v32;
          if (!--v30)
          {
            goto LABEL_50;
          }
        }

LABEL_63:
        v12 = a1;
        v13 = 4294967290;
        v14 = "Unable to allocate memory for keyboard-interactive response packet";
        goto LABEL_11;
      }

LABEL_50:
      (*(a1 + 24))(*(v6 + 2672), a1);
      v35 = (*(a1 + 8))(*(v6 + 2696), a1);
      v41 = v35;
      *(v6 + 2672) = v35;
      if (!v35)
      {
        goto LABEL_63;
      }

      *v35 = 61;
      v41 = (v41 + 1);
      _libssh2_store_u32(&v41, *(v6 + 2736));
      if (*(v6 + 2736))
      {
        v36 = 0;
        v37 = 0;
        do
        {
          _libssh2_store_str(&v41, *(*(v6 + 2752) + v36), *(*(v6 + 2752) + v36 + 8));
          ++v37;
          v36 += 16;
        }

        while (v37 < *(v6 + 2736));
      }

      *(v6 + 2664) = 4;
LABEL_8:
      v11 = _libssh2_transport_send(a1, *(v6 + 2672), *(v6 + 2696), 0, 0);
      if (v11)
      {
        if (v11 == -37)
        {
          goto LABEL_41;
        }

        v12 = a1;
        v13 = 4294967289;
        v14 = "Unable to send userauth-keyboard-interactive request";
LABEL_11:
        _libssh2_error(v12, v13, v14);
      }

      else
      {
        *(v6 + 2740) = 0;
      }
    }

LABEL_18:
    (*(a1 + 24))(*(a1 + 72304), a1);
    v20 = 0;
    *(a1 + 72304) = 0;
    if (*v8)
    {
      if (*(v6 + 2736))
      {
        v21 = 0;
        v22 = 0;
        v20 = *v8;
        do
        {
          (*(a1 + 24))(*(v20 + v21), a1);
          v20 = *(v6 + 2744);
          *(v20 + v21) = 0;
          ++v22;
          v21 += 24;
        }

        while (v22 < *(v6 + 2736));
      }

      else
      {
        v20 = *v8;
      }
    }

    v23 = *(v6 + 2752);
    if (v23 && *(v6 + 2736))
    {
      v24 = 0;
      v25 = 0;
      do
      {
        (*(a1 + 24))(*(v23 + v24), a1);
        v23 = *(v6 + 2752);
        *(v23 + v24) = 0;
        ++v25;
        v24 += 16;
      }

      while (v25 < *(v6 + 2736));
      v20 = *v8;
    }

    if (v20)
    {
      (*(a1 + 24))(v20, a1);
      *(v6 + 2744) = 0;
      v23 = *(v6 + 2752);
    }

    if (v23)
    {
      (*(a1 + 24))(v23, a1);
      *(v6 + 2752) = 0;
    }

    v26 = *(v6 + 2712);
    if (v26)
    {
      (*(a1 + 24))(v26, a1);
      *(v6 + 2712) = 0;
    }

    v27 = *(v6 + 2728);
    if (v27)
    {
      (*(a1 + 24))(v27, a1);
      *(v6 + 2728) = 0;
    }

    if (*(v6 + 2740))
    {
      result = 0xFFFFFFFFLL;
      goto LABEL_66;
    }

    goto LABEL_38;
  }

  (*(a1 + 24))();
  result = 0;
  *(a1 + 72304) = 0;
  *(a1 + 128) |= 4u;
LABEL_66:
  *(v6 + 2664) = 0;
  return result;
}

uint64_t libssh2_userauth_publickey_sk(uint64_t a1, const void *a2, size_t a3, const char *a4, unint64_t a5, void *a6, unint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = &v27;
  v29 = a9;
  v30 = a10;
  if (!a6 || !a7)
  {
    v15 = "Invalid data in public and private key.";
    return _libssh2_error(a1, 4294967280, v15);
  }

  if (_libssh2_sk_pub_keyfilememory(a1, &v36, &v35, &v34, &v33, &v27, &v27 + 4, &v27 + 1, &v28, &v28 + 1, a6, a7, a8))
  {
    v15 = "Unable to extract public key from private key.";
    return _libssh2_error(a1, 4294967280, v15);
  }

  if (a4 && a5)
  {
    if (v36)
    {
      (*(a1 + 24))(v36, a1);
    }

    v18 = "sk-ecdsa-sha2-nistp256-cert-v01@openssh.com";
    v19 = 43;
    if (!strncmp(a4, "sk-ecdsa-sha2-nistp256-cert-v01@openssh.com", 0x2BuLL) || (v18 = "sk-ssh-ed25519-cert-v01@openssh.com", v19 = 35, !strncmp(a4, "sk-ssh-ed25519-cert-v01@openssh.com", 0x23uLL)))
    {
      *(a1 + 72264) = v19;
      v20 = (*(a1 + 8))(v19, a1);
      *(a1 + 72256) = v20;
      memcpy(v20, v18, *(a1 + 72264));
    }

    v21 = &v32;
    v22 = &v31;
    v23 = memory_read_publickey(a1, (a1 + 72256), (a1 + 72264), &v32, &v31, a4, a5);
    if (v23)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *(a1 + 72256) = v36;
    *(a1 + 72264) = v35;
    v21 = &v34;
    v22 = &v33;
  }

  v24 = *v21;
  v25 = *v22;
  do
  {
    v23 = _libssh2_userauth_publickey(a1, a2, a3, v24, v25, libssh2_sign_sk, &v26);
  }

  while (v23 == -37);
LABEL_20:
  v16 = v23;
  if (v34)
  {
    (*(a1 + 24))(v34, a1);
  }

  if (*(&v27 + 1))
  {
    (*(a1 + 24))(*(&v27 + 1), a1);
  }

  return v16;
}

uint64_t memory_read_publickey(uint64_t a1, char **a2, void *a3, void *a4, void *a5, const void *a6, unint64_t a7)
{
  if (a7 <= 1)
  {
    v8 = "Invalid data in public key file";
LABEL_19:
    v19 = a1;
    v20 = 4294967280;
    goto LABEL_20;
  }

  v9 = a7;
  v15 = (*(a1 + 8))(a7, a1);
  if (!v15)
  {
    v8 = "Unable to allocate memory for public key data";
    v19 = a1;
    v20 = 4294967290;
LABEL_20:

    return _libssh2_error(v19, v20, v8);
  }

  v16 = v15;
  v28 = 0;
  v29 = 0;
  memcpy(v15, a6, v9);
  v17 = MEMORY[0x277D85DE0];
  while (1)
  {
    v18 = v16[v9 - 1];
    if (v18 < 0)
    {
      break;
    }

    if ((*(v17 + 4 * v18 + 60) & 0x4000) == 0)
    {
      goto LABEL_12;
    }

LABEL_9:
    if (!--v9)
    {
      (*(a1 + 24))(v16, a1);
      v8 = "Missing public key data";
      goto LABEL_19;
    }
  }

  if (__maskrune(v16[v9 - 1], 0x4000uLL))
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = memchr(v16, 32, v9);
  if (!v21)
  {
    (*(a1 + 24))(v16, a1);
    v8 = "Invalid public key data";
    goto LABEL_19;
  }

  v22 = &v16[v9];
  v23 = (v21 + 1);
  v24 = memchr((v21 + 1), 32, &v22[~v21]);
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v22;
  }

  result = _libssh2_base64_decode(a1, &v29, &v28, v23, v25 - v23);
  if (result)
  {
    (*(a1 + 24))(v16, a1);
    return _libssh2_error(a1, 4294967280, "Invalid key data, not base64 encoded");
  }

  else
  {
    *a2 = v16;
    *a3 = v23 - v16 - 1;
    v27 = v28;
    *a4 = v29;
    *a5 = v27;
  }

  return result;
}

uint64_t file_read_publickey(uint64_t a1, char **a2, void *a3, void *a4, void *a5, char *__filename)
{
  v11 = fopen(__filename, "r");
  if (!v11)
  {
    v13 = "Unable to open public key file";
LABEL_14:
    v16 = a1;
    v17 = 4294967280;
LABEL_15:

    return _libssh2_error(v16, v17, v13);
  }

  v12 = v11;
  if (feof(v11))
  {
    rewind(v12);
LABEL_13:
    fclose(v12);
    v13 = "Invalid data in public key file";
    goto LABEL_14;
  }

  v14 = 0;
  __ptr = 0;
  v29 = 0;
  v30 = 0;
  do
  {
    if (fread(&__ptr, 1uLL, 1uLL, v12) != 1)
    {
      break;
    }

    if (__ptr == 10 || __ptr == 13)
    {
      break;
    }

    ++v14;
  }

  while (!feof(v12));
  rewind(v12);
  if (v14 <= 1)
  {
    goto LABEL_13;
  }

  v19 = (*(a1 + 8))(v14, a1);
  if (!v19)
  {
    fclose(v12);
    v13 = "Unable to allocate memory for public key data";
    v16 = a1;
    v17 = 4294967290;
    goto LABEL_15;
  }

  v20 = v19;
  if (fread(v19, 1uLL, v14, v12) != v14)
  {
    (*(a1 + 24))(v20, a1);
    fclose(v12);
    v13 = "Unable to read public key from file";
    goto LABEL_14;
  }

  fclose(v12);
  v21 = MEMORY[0x277D85DE0];
  while (1)
  {
    v22 = v20[v14 - 1];
    if (v22 < 0)
    {
      break;
    }

    if ((*(v21 + 4 * v22 + 60) & 0x4000) == 0)
    {
      goto LABEL_29;
    }

LABEL_25:
    if (!--v14)
    {
      (*(a1 + 24))(v20, a1);
      v13 = "Missing public key data";
      goto LABEL_14;
    }
  }

  if (__maskrune(v20[v14 - 1], 0x4000uLL))
  {
    goto LABEL_25;
  }

LABEL_29:
  v23 = memchr(v20, 32, v14);
  if (!v23)
  {
    (*(a1 + 24))(v20, a1);
    v13 = "Invalid public key data";
    goto LABEL_14;
  }

  v24 = (v23 + 1);
  if (v20 <= v23 + 1)
  {
    v25 = v23 + 1;
  }

  else
  {
    v25 = v20;
  }

  v26 = memchr(v23 + 1, 32, v20 - v25 + v14);
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = &v20[v14];
  }

  result = _libssh2_base64_decode(a1, &v30, &v29, v24, v27 - v24);
  if (result)
  {
    (*(a1 + 24))(v20, a1);
    return _libssh2_error(a1, 4294967280, "Invalid key data, not base64 encoded");
  }

  else
  {
    *a2 = v20;
    *a3 = v24 - v20 - 1;
    v28 = v29;
    *a4 = v30;
    *a5 = v28;
  }

  return result;
}

uint64_t file_read_privatekey(uint64_t a1, char ***a2, void *a3, const char *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v14 = libssh2_hostkey_methods();
  *a2 = 0;
  *a3 = 0;
  v15 = *v14;
  if (*v14)
  {
    v16 = v14 + 1;
    while (*v15)
    {
      if (v15[3] && !strncmp(*v15, a4, a5))
      {
        *a2 = v15;
        goto LABEL_10;
      }

      v17 = *v16++;
      v15 = v17;
      if (!v17)
      {
        break;
      }
    }
  }

  v15 = *a2;
  if (*a2)
  {
LABEL_10:
    result = (v15[3])(a1, a6, a7, a3);
    if (!result)
    {
      return result;
    }

    v18 = "Unable to initialize private key from file";
    v19 = a1;
    v20 = 4294967280;
  }

  else
  {
    v18 = "No handler for specified private key";
    v19 = a1;
    v20 = 4294967279;
  }

  return _libssh2_error(v19, v20, v18);
}

uint64_t sign_frommemory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char ***a6)
{
  v8 = *a6;
  v9 = *(a1 + 72256);
  v10 = *(a1 + 72264);
  v11 = **a6;
  v12 = strlen(v11);
  v13 = v8[1];
  v14 = libssh2_hostkey_methods();
  v27 = 0;
  v15 = *v14;
  if (*v14)
  {
    v16 = v14 + 1;
    while (*v15)
    {
      v17 = v15[4];
      if (v17 && !strncmp(*v15, v9, v10))
      {
        if ((v17)(a1, v11, v12, v13, &v27))
        {
          v19 = _libssh2_error(a1, 4294967280, "Unable to initialize private key from memory");
          if (v19)
          {
            return v19;
          }
        }

        goto LABEL_8;
      }

      v18 = *v16++;
      v15 = v18;
      if (!v18)
      {
        break;
      }
    }
  }

  v19 = _libssh2_error(a1, 4294967279, "No handler for specified private key");
  v15 = 0;
  if (!v19)
  {
LABEL_8:
    v26[0] = a4;
    v26[1] = a5;
    v20 = (v15[6])(a1, a2, a3, 1, v26, &v27);
    v21 = v15[8];
    if (v20)
    {
      v19 = 0xFFFFFFFFLL;
    }

    else
    {
      v19 = 0;
    }

    if (v21)
    {
      (v21)(a1, &v27);
    }
  }

  return v19;
}

uint64_t sign_fromfile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  v11 = *a6;
  v18 = 0;
  v19 = 0;
  v12 = file_read_privatekey(a1, &v19, &v18, *(a1 + 72256), *(a1 + 72264), *v11, v11[1]);
  if (!v12)
  {
    v17[0] = a4;
    v17[1] = a5;
    v13 = v19;
    v14 = (v19[6])(a1, a2, a3, 1, v17, &v18);
    v15 = v13[8];
    if (v14)
    {
      v12 = 0xFFFFFFFFLL;
    }

    else
    {
      v12 = 0;
    }

    if (v15)
    {
      (v15)(a1, &v18);
    }
  }

  return v12;
}

uint64_t _libssh2_kex_exchange(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 128);
  *(a1 + 128) = v5 | 8;
  v6 = *a3;
  if (!*a3)
  {
    *(a1 + 128) = v5 | 9;
    if (a2)
    {
      *(a1 + 144) = 0;
      v7 = *(a1 + 184);
      if (v7)
      {
        v8 = *(v7 + 64);
        if (v8)
        {
          v8(a1, a1 + 192);
        }
      }

      *(a1 + 184) = 0;
    }

    v6 = 2;
    *a3 = 2;
  }

  v9 = *(a1 + 144);
  if (!v9 || !*(a1 + 184))
  {
    if (v6 == 4)
    {
LABEL_66:
      v55 = (a3 + 632);
      v56 = _libssh2_packet_require(a1, 20, (a3 + 632), (a3 + 640), 0, 0, 0, a3 + 8);
      if (v56)
      {
        if (v56 == -37)
        {
          goto LABEL_68;
        }

        v60 = *(a1 + 432);
        if (v60)
        {
          (*(a1 + 24))(v60, a1);
        }

        goto LABEL_83;
      }

      v57 = *(a1 + 320);
      if (v57)
      {
        (*(a1 + 24))(v57, a1);
      }

      v58 = *v55;
      v59 = *(a3 + 640);
      *(a1 + 320) = *v55;
      *(a1 + 328) = v59;
      if (v59 < 0x11)
      {
        goto LABEL_80;
      }

      v115 = 0;
      v116 = 0;
      v113 = 0;
      v114 = 0;
      v111 = 0;
      v112 = 0;
      v109 = 0;
      v110 = 0;
      v107 = 0;
      v108 = 0;
      v105 = 0;
      v106 = 0;
      v103 = 0;
      v104 = 0;
      v101 = 0;
      v102 = 0;
      v100 = v59;
      v98 = v58;
      v99 = (v58 + 17);
      if (_libssh2_get_string(&v98, &v116, &v108) || _libssh2_get_string(&v98, &v115, &v107) || _libssh2_get_string(&v98, &v114, &v106) || _libssh2_get_string(&v98, &v113, &v105) || _libssh2_get_string(&v98, &v110, &v102) || _libssh2_get_string(&v98, &v109, &v101) || _libssh2_get_string(&v98, &v112, &v104) || _libssh2_get_string(&v98, &v111, &v103) || !_libssh2_check_length(&v98, 1uLL) || (v88 = v99, ++v99, *(a1 + 152) = *v88, kex_agree_kex_hostkey(a1, v116, v108, v115, v107)) || kex_agree_crypt(a1 + 424, v114, v106) || kex_agree_crypt(a1 + 312, v113, v105) || kex_agree_mac(a1 + 424, v110, v102) || kex_agree_mac(a1 + 312, v109, v101) || kex_agree_comp(a1, a1 + 424, v112, v104) || kex_agree_comp(a1, a1 + 312, v111, v103))
      {
LABEL_80:
        *a3 = 5;
        v11 = 4294967291;
        goto LABEL_124;
      }

      v6 = 5;
      *a3 = 5;
      v9 = *(a1 + 144);
LABEL_122:
      v11 = 0;
      if (!v9 || v6 != 5)
      {
        goto LABEL_124;
      }

      goto LABEL_11;
    }

    if (v6 != 3)
    {
      if (v6 != 2)
      {
        goto LABEL_122;
      }

      v12 = *(a1 + 440);
      *(a3 + 648) = *(a1 + 432);
      *(a3 + 656) = v12;
      *(a1 + 432) = 0;
      *a3 = 3;
    }

    if (*(a1 + 70992))
    {
      v13 = *(a1 + 71000);
      v14 = *(a1 + 71008);
      *(a1 + 71000) = 0u;
    }

    else
    {
      v17 = *(a1 + 112);
      if (v17)
      {
        v18 = strlen(v17);
      }

      else
      {
        v18 = kex_method_strlen(libssh2_kex_methods);
      }

      v23 = v18;
      v24 = *(a1 + 120);
      if (v24)
      {
        v25 = strlen(v24);
      }

      else
      {
        v26 = libssh2_hostkey_methods();
        v25 = kex_method_strlen(v26);
      }

      v27 = v25;
      v28 = *(a1 + 504);
      if (v28)
      {
        v29 = strlen(v28);
      }

      else
      {
        v30 = libssh2_crypt_methods();
        v29 = kex_method_strlen(v30);
      }

      v31 = v29;
      v32 = *(a1 + 392);
      if (v32)
      {
        v33 = strlen(v32);
      }

      else
      {
        v34 = libssh2_crypt_methods();
        v33 = kex_method_strlen(v34);
      }

      v95 = v33;
      v35 = *(a1 + 512);
      if (v35)
      {
        v36 = strlen(v35);
      }

      else
      {
        v37 = _libssh2_mac_methods();
        v36 = kex_method_strlen(v37);
      }

      v96 = v36;
      v38 = *(a1 + 400);
      if (v38)
      {
        v39 = strlen(v38);
      }

      else
      {
        v40 = _libssh2_mac_methods();
        v39 = kex_method_strlen(v40);
      }

      v97 = v39;
      v41 = *(a1 + 520);
      if (v41)
      {
        v42 = strlen(v41);
      }

      else
      {
        v43 = _libssh2_comp_methods(a1);
        v42 = kex_method_strlen(v43);
      }

      v44 = v42;
      v45 = *(a1 + 408);
      if (v45)
      {
        v46 = strlen(v45);
      }

      else
      {
        v47 = _libssh2_comp_methods(a1);
        v46 = kex_method_strlen(v47);
      }

      v48 = v46;
      v49 = *(a1 + 528);
      if (v49)
      {
        v50 = strlen(v49);
      }

      else
      {
        v50 = 0;
      }

      v51 = *(a1 + 416);
      if (v51)
      {
        v52 = strlen(v51);
      }

      else
      {
        v52 = 0;
      }

      v93 = v44;
      v94 = v48;
      v14 = v27 + v23 + v31 + v95 + v96 + v97 + v44 + v48 + v50 + v52 + 62;
      v53 = (*(a1 + 8))(v14, a1);
      if (!v53)
      {
        v20 = "Unable to allocate memory";
        v21 = a1;
        v22 = 4294967290;
        goto LABEL_62;
      }

      v13 = v53;
      *v53 = 20;
      if (_libssh2_openssl_random(v53 + 1, 0x10uLL))
      {
        v20 = "Unable to get random bytes for KEXINIT cookie";
        v21 = a1;
        v22 = 4294967247;
        goto LABEL_62;
      }

      v92 = v50;
      if (*(a1 + 112))
      {
        _libssh2_htonu32(v13 + 17, v23);
        memcpy(v13 + 21, *(a1 + 112), v23);
        v62 = &v13[v23 + 21];
      }

      else
      {
        v62 = &v13[kex_method_list(v13 + 17, v23, libssh2_kex_methods) + 17];
      }

      if (*(a1 + 120))
      {
        _libssh2_htonu32(v62, v27);
        v63 = (v62 + 1);
        memcpy(v63, *(a1 + 120), v27);
        v64 = &v63[v27];
      }

      else
      {
        v65 = libssh2_hostkey_methods();
        v64 = v62 + kex_method_list(v62, v27, v65);
      }

      if (*(a1 + 504))
      {
        _libssh2_htonu32(v64, v31);
        v66 = v64 + 4;
        memcpy(v66, *(a1 + 504), v31);
        v67 = &v66[v31];
      }

      else
      {
        v68 = libssh2_crypt_methods();
        v67 = &v64[kex_method_list(v64, v31, v68)];
      }

      if (*(a1 + 392))
      {
        _libssh2_htonu32(v67, v95);
        v69 = v67 + 4;
        memcpy(v69, *(a1 + 392), v95);
        v70 = &v69[v95];
      }

      else
      {
        v71 = libssh2_crypt_methods();
        v70 = &v67[kex_method_list(v67, v95, v71)];
      }

      if (*(a1 + 512))
      {
        _libssh2_htonu32(v70, v96);
        v72 = v70 + 4;
        memcpy(v72, *(a1 + 512), v96);
        v73 = &v72[v96];
      }

      else
      {
        v74 = _libssh2_mac_methods();
        v73 = &v70[kex_method_list(v70, v96, v74)];
      }

      if (*(a1 + 400))
      {
        _libssh2_htonu32(v73, v97);
        v75 = v73 + 4;
        memcpy(v75, *(a1 + 400), v97);
        v76 = &v75[v97];
      }

      else
      {
        v77 = _libssh2_mac_methods();
        v76 = &v73[kex_method_list(v73, v97, v77)];
      }

      if (*(a1 + 520))
      {
        _libssh2_htonu32(v76, v93);
        v78 = v76 + 4;
        memcpy(v78, *(a1 + 520), v93);
        v79 = &v78[v93];
      }

      else
      {
        v80 = _libssh2_comp_methods(a1);
        v79 = &v76[kex_method_list(v76, v93, v80)];
      }

      if (*(a1 + 408))
      {
        _libssh2_htonu32(v79, v94);
        v81 = v79 + 4;
        memcpy(v81, *(a1 + 408), v94);
        v82 = &v81[v94];
      }

      else
      {
        v83 = _libssh2_comp_methods(a1);
        v82 = &v79[kex_method_list(v79, v94, v83)];
      }

      v84 = *(a1 + 528);
      _libssh2_htonu32(v82, v92);
      v85 = v82 + 4;
      if (v84)
      {
        memcpy(v85, *(a1 + 528), v92);
        v85 += v92;
      }

      v86 = *(a1 + 416);
      _libssh2_htonu32(v85, v52);
      v87 = v85 + 4;
      if (v86)
      {
        memcpy(v87, *(a1 + 416), v52);
        v87 += v52;
      }

      *v87 = 0;
      _libssh2_htonu32(v87 + 1, 0);
      *(a1 + 70992) = 2;
    }

    v15 = _libssh2_transport_send(a1, v13, v14);
    if (!v15)
    {
      v19 = *(a1 + 432);
      if (v19)
      {
        (*(a1 + 24))(v19, a1);
      }

      *(a1 + 432) = v13;
      *(a1 + 440) = v14;
      *(a1 + 70992) = 0;
LABEL_65:
      *a3 = 4;
      goto LABEL_66;
    }

    v16 = v15;
    if (v15 == -37)
    {
      *(a1 + 71000) = v13;
      *(a1 + 71008) = v14;
LABEL_68:
      *(a1 + 128) &= ~8u;
      return 4294967259;
    }

    (*(a1 + 24))(v13, a1);
    *(a1 + 70992) = 0;
    v20 = "Unable to send KEXINIT packet to remote host";
    v21 = a1;
    v22 = v16;
LABEL_62:
    v54 = _libssh2_error(v21, v22, v20);
    if (v54)
    {
      if (v54 == -37)
      {
        goto LABEL_68;
      }

LABEL_83:
      v61 = *(a3 + 656);
      *(a1 + 432) = *(a3 + 648);
      *(a1 + 440) = v61;
      *a3 = 0;
      *(a1 + 128) &= 0xFFFFFFF6;
      return 0xFFFFFFFFLL;
    }

    goto LABEL_65;
  }

  *a3 = 5;
LABEL_11:
  v10 = (*(v9 + 8))(a1, a3 + 24);
  v11 = v10;
  if (v10)
  {
    if (v10 == -37)
    {
      *(a1 + 128) &= ~8u;
      return v11;
    }

    v11 = _libssh2_error(a1, 4294967288, "Unrecoverable error exchanging keys");
  }

LABEL_124:
  v89 = *(a1 + 432);
  if (v89)
  {
    (*(a1 + 24))(v89, a1);
    *(a1 + 432) = 0;
  }

  v90 = *(a1 + 320);
  if (v90)
  {
    (*(a1 + 24))(v90, a1);
    *(a1 + 320) = 0;
  }

  *(a1 + 128) &= 0xFFFFFFF6;
  *a3 = 0;
  return v11;
}

uint64_t libssh2_session_method_pref(uint64_t a1, int a2, char *__s)
{
  v6 = strlen(__s);
  if (a2 <= 4)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        v7 = (a1 + 112);
        v8 = libssh2_kex_methods;
        goto LABEL_27;
      }

      if (a2 != 1)
      {
        goto LABEL_47;
      }

      v7 = (a1 + 120);
      v9 = libssh2_hostkey_methods();
    }

    else
    {
      if (a2 == 2)
      {
        v7 = (a1 + 504);
      }

      else
      {
        if (a2 != 3)
        {
          v7 = (a1 + 512);
LABEL_25:
          v9 = _libssh2_mac_methods();
          goto LABEL_26;
        }

        v7 = (a1 + 392);
      }

      v9 = libssh2_crypt_methods();
    }

LABEL_26:
    v8 = v9;
    goto LABEL_27;
  }

  if (a2 <= 7)
  {
    if (a2 != 5)
    {
      if (a2 == 6)
      {
        v7 = (a1 + 520);
      }

      else
      {
        v7 = (a1 + 408);
      }

      v9 = _libssh2_comp_methods(a1);
      goto LABEL_26;
    }

    v7 = (a1 + 400);
    goto LABEL_25;
  }

  if (a2 != 8)
  {
    if (a2 == 9)
    {
      v8 = 0;
      v7 = (a1 + 416);
      goto LABEL_27;
    }

    if (a2 == 10)
    {
      v8 = 0;
      v7 = (a1 + 304);
      goto LABEL_27;
    }

LABEL_47:
    v19 = "Invalid parameter specified for method_type";
    v20 = a1;
    v21 = 4294967262;
    goto LABEL_48;
  }

  v8 = 0;
  v7 = (a1 + 528);
LABEL_27:
  v10 = (*(a1 + 8))(v6 + 1, a1);
  if (v10)
  {
    v11 = v10;
    memcpy(v10, __s, v6 + 1);
    if (v8 && *v11)
    {
      v12 = v11;
      do
      {
        v13 = strchr(v12, 44);
        if (v13)
        {
          v14 = v13 - v12;
          v15 = v13 + 1;
          if (kex_get_method_by_name(v12, v13 - v12, v8))
          {
            v12 = v15;
          }

          else
          {
            v17 = strlen(v12);
            memmove(v12, v15, v17 - v14);
          }
        }

        else
        {
          v16 = strlen(v12);
          if (kex_get_method_by_name(v12, v16, v8))
          {
            break;
          }

          if (v12 <= v11)
          {
            *v12 = 0;
          }

          else
          {
            *--v12 = 0;
          }
        }
      }

      while (*v12);
    }

    if (*v11)
    {
      if (*v7)
      {
        (*(a1 + 24))(*v7, a1);
      }

      *v7 = v11;
      return 0;
    }

    (*(a1 + 24))(v11, a1);
    v19 = "The requested method(s) are not currently supported";
    v20 = a1;
    v21 = 4294967263;
  }

  else
  {
    v19 = "Error allocated space for method preferences";
    v20 = a1;
    v21 = 4294967290;
  }

LABEL_48:

  return _libssh2_error(v20, v21, v19);
}

const char **kex_get_method_by_name(const char *a1, size_t a2, const char ***a3)
{
  v3 = *a3;
  if (*a3)
  {
    v6 = a3 + 1;
    do
    {
      if (strlen(*v3) == a2 && !strncmp(*v3, a1, a2))
      {
        break;
      }

      v7 = *v6++;
      v3 = v7;
    }

    while (v7);
  }

  return v3;
}

uint64_t libssh2_session_supported_algs(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = a1;
  if (a3)
  {
    if (a2 <= 3)
    {
      if ((a2 - 2) < 2)
      {
        v5 = libssh2_crypt_methods();
      }

      else
      {
        if (!a2)
        {
          v8 = libssh2_kex_methods;
LABEL_15:
          v9 = *v8;
          if (*v8)
          {
            LODWORD(v10) = 0;
            v11 = 1;
            do
            {
              if (*v9)
              {
                v10 = (v10 + 1);
              }

              else
              {
                v10 = v10;
              }

              v9 = v8[v11++];
            }

            while (v9);
            if (v10)
            {
              v12 = (*(v3 + 8))(8 * v10, v3);
              *a3 = v12;
              if (!v12)
              {
                v6 = "Memory allocation failed";
                a1 = v3;
                v7 = 4294967290;
                goto LABEL_35;
              }

              v13 = *v8;
              if (*v8)
              {
                v14 = 0;
                v15 = 1;
                do
                {
                  v16 = *v13;
                  if (v16)
                  {
                    *(*a3 + 8 * v14++) = v16;
                  }

                  v13 = v8[v15++];
                  if (v13)
                  {
                    v17 = v14 >= v10;
                  }

                  else
                  {
                    v17 = 1;
                  }
                }

                while (!v17);
              }

              else
              {
                v14 = 0;
              }

              if (v14 == v10)
              {
                return v10;
              }

              (*(v3 + 24))(*a3, v3);
              *a3 = 0;
              v6 = "Internal error";
              goto LABEL_7;
            }
          }

LABEL_34:
          v6 = "No algorithm found";
          a1 = v3;
          v7 = 4294967262;
          goto LABEL_35;
        }

        if (a2 != 1)
        {
          goto LABEL_39;
        }

        v5 = libssh2_hostkey_methods();
      }
    }

    else
    {
      if ((a2 - 4) >= 2)
      {
        if ((a2 - 6) < 2)
        {
          v5 = _libssh2_comp_methods(a1);
          goto LABEL_14;
        }

        if (a2 == 10)
        {
          goto LABEL_34;
        }

LABEL_39:
        v6 = "Unknown method type";
        v7 = 4294967263;
        goto LABEL_35;
      }

      v5 = _libssh2_mac_methods();
    }

LABEL_14:
    v8 = v5;
    if (!v5)
    {
      goto LABEL_34;
    }

    goto LABEL_15;
  }

  v6 = "algs must not be NULL";
LABEL_7:
  a1 = v3;
  v7 = 4294967257;
LABEL_35:

  return _libssh2_error(a1, v7, v6);
}

const char ***kex_method_strlen(const char ***result)
{
  if (result)
  {
    v1 = *result;
    if (*result)
    {
      v2 = 0;
      v3 = result + 1;
      do
      {
        if (!*v1)
        {
          break;
        }

        v2 += strlen(*v1) + 1;
        v4 = *v3++;
        v1 = v4;
      }

      while (v4);
      return (v2 - 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t kex_method_list(_DWORD *a1, unsigned int a2, const char ***a3)
{
  _libssh2_htonu32(a1, a2);
  if (!a3)
  {
    return 4;
  }

  v6 = *a3;
  if (!*a3)
  {
    return 4;
  }

  v7 = (a1 + 1);
  v8 = a3 + 1;
  do
  {
    v9 = *v6;
    if (!*v6)
    {
      break;
    }

    v10 = strlen(*v6);
    memcpy(v7, v9, v10);
    v11 = &v7[v10];
    *v11 = 44;
    v7 = v11 + 1;
    v12 = *v8++;
    v6 = v12;
  }

  while (v12);
  return a2 + 4;
}

uint64_t kex_agree_kex_hostkey(uint64_t a1, char *a2, size_t a3, char *a4, size_t a5)
{
  v10 = *(a1 + 112);
  if (v10)
  {
    while (*v10)
    {
      v11 = strchr(v10, 44);
      v12 = v11;
      if (v11)
      {
        v13 = v11 - v10;
      }

      else
      {
        v13 = strlen(v10);
      }

      v14 = kex_agree_instr(a2, a3, v10, v13);
      if (v14)
      {
        v15 = v14;
        method_by_name = kex_get_method_by_name(v10, v13, libssh2_kex_methods);
        if (!method_by_name)
        {
          return 0xFFFFFFFFLL;
        }

        v17 = method_by_name;
        result = kex_agree_hostkey(a1, method_by_name[2], a4, a5);
        if (!result)
        {
          v27 = *(a1 + 152);
          v26 = (a1 + 152);
          v25 = v27;
          *(v26 - 1) = v17;
          if (v15 == a2 && v25)
          {
            goto LABEL_28;
          }

          return result;
        }
      }

      v10 = v12 + 1;
      if (!v12)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    v19 = libssh2_kex_methods[0];
    if (libssh2_kex_methods[0])
    {
      v20 = off_27E32DCD0;
      while (*v19)
      {
        v21 = strlen(*v19);
        v22 = kex_agree_instr(a2, a3, *v19, v21);
        if (v22)
        {
          v23 = v22;
          if (!kex_agree_hostkey(a1, v19[2], a4, a5))
          {
            v29 = *(a1 + 152);
            v26 = (a1 + 152);
            v28 = v29;
            *(v26 - 1) = *(v20 - 1);
            if (v23 != a2 || v28 == 0)
            {
              return 0;
            }

LABEL_28:
            result = 0;
            *v26 = 0;
            return result;
          }
        }

        v24 = *v20++;
        v19 = v24;
        if (!v24)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t kex_agree_crypt(uint64_t a1, char *a2, size_t a3)
{
  v6 = libssh2_crypt_methods();
  v7 = v6;
  v8 = *(a1 + 80);
  if (v8)
  {
    while (*v8)
    {
      v9 = strchr(v8, 44);
      v10 = v9;
      if (v9)
      {
        v11 = v9 - v8;
      }

      else
      {
        v11 = strlen(v8);
      }

      if (kex_agree_instr(a2, a3, v8, v11))
      {
        method_by_name = kex_get_method_by_name(v8, v11, v7);
        if (!method_by_name)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_16;
      }

      v8 = v10 + 1;
      if (!v10)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    method_by_name = *v6;
    if (*v6)
    {
      v13 = (v6 + 1);
      while (*method_by_name)
      {
        v14 = strlen(*method_by_name);
        if (kex_agree_instr(a2, a3, *method_by_name, v14))
        {
LABEL_16:
          result = 0;
          *(a1 + 24) = method_by_name;
          return result;
        }

        v15 = *v13++;
        method_by_name = v15;
        if (!v15)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t kex_agree_mac(uint64_t a1, char *a2, size_t a3)
{
  v6 = _libssh2_mac_methods();
  method_by_name = _libssh2_mac_override(*(a1 + 24));
  if (method_by_name)
  {
LABEL_2:
    v8 = method_by_name;
LABEL_3:
    result = 0;
    *(a1 + 40) = v8;
  }

  else
  {
    v10 = *(a1 + 88);
    if (v10)
    {
      while (*v10)
      {
        v11 = strchr(v10, 44);
        v12 = v11;
        if (v11)
        {
          v13 = v11 - v10;
        }

        else
        {
          v13 = strlen(v10);
        }

        if (kex_agree_instr(a2, a3, v10, v13))
        {
          method_by_name = kex_get_method_by_name(v10, v13, v6);
          if (method_by_name)
          {
            goto LABEL_2;
          }

          return 0xFFFFFFFFLL;
        }

        v10 = v12 + 1;
        if (!v12)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    else
    {
      v8 = *v6;
      if (*v6)
      {
        v14 = (v6 + 1);
        while (*v8)
        {
          v15 = strlen(*v8);
          if (kex_agree_instr(a2, a3, *v8, v15))
          {
            goto LABEL_3;
          }

          v16 = *v14++;
          v8 = v16;
          result = 0xFFFFFFFFLL;
          if (!v16)
          {
            return result;
          }
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t kex_agree_comp(uint64_t a1, uint64_t a2, char *a3, size_t a4)
{
  v7 = _libssh2_comp_methods(a1);
  v8 = v7;
  v9 = *(a2 + 96);
  if (v9)
  {
    while (*v9)
    {
      v10 = strchr(v9, 44);
      v11 = v10;
      if (v10)
      {
        v12 = v10 - v9;
      }

      else
      {
        v12 = strlen(v9);
      }

      if (kex_agree_instr(a3, a4, v9, v12))
      {
        method_by_name = kex_get_method_by_name(v9, v12, v8);
        if (!method_by_name)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_16;
      }

      v9 = v11 + 1;
      if (!v11)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    method_by_name = *v7;
    if (*v7)
    {
      v14 = (v7 + 1);
      while (*method_by_name)
      {
        v15 = strlen(*method_by_name);
        if (kex_agree_instr(a3, a4, *method_by_name, v15))
        {
LABEL_16:
          result = 0;
          *(a2 + 64) = method_by_name;
          return result;
        }

        v16 = *v14++;
        method_by_name = v16;
        if (!v16)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

char *kex_agree_instr(char *a1, size_t a2, char *__s2, size_t __n)
{
  v4 = 0;
  if (a1 && __n - 1 < a2)
  {
    if (!strncmp(a1, __s2, __n) && (__n == a2 || a1[__n] == 44))
    {
      return a1;
    }

    else
    {
      v9 = memchr(a1, 44, a2);
      if (v9)
      {
        v10 = &a1[a2];
        v11 = __n - a1;
        do
        {
          v12 = v10 - v9;
          if (v10 - v9 <= __n || v10 - v9 - 1 >= a2)
          {
            break;
          }

          v4 = v9 + 1;
          if (!strncmp(v9 + 1, __s2, __n) && (&v4[v11] == a2 || v4[__n] == 44))
          {
            return v4;
          }

          v9 = memchr(v4, 44, v12);
        }

        while (v9);
      }

      return 0;
    }
  }

  return v4;
}

uint64_t kex_agree_hostkey(uint64_t a1, char a2, char *a3, size_t a4)
{
  v8 = libssh2_hostkey_methods();
  v9 = v8;
  v10 = *(a1 + 120);
  if (v10)
  {
    while (*v10)
    {
      v11 = strchr(v10, 44);
      v12 = v11;
      if (v11)
      {
        v13 = v11 - v10;
      }

      else
      {
        v13 = strlen(v10);
      }

      if (kex_agree_instr(a3, a4, v10, v13))
      {
        method_by_name = kex_get_method_by_name(v10, v13, v9);
        if (!method_by_name)
        {
          return 0xFFFFFFFFLL;
        }

        v15 = method_by_name;
        if (((a2 & 1) == 0 || method_by_name[7]) && ((a2 & 2) == 0 || method_by_name[5]))
        {
          goto LABEL_25;
        }
      }

      v10 = v12 + 1;
      if (!v12)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  else if (v8)
  {
    v15 = *v8;
    if (*v8)
    {
      v16 = (v8 + 1);
      while (*v15)
      {
        v17 = strlen(*v15);
        if (kex_agree_instr(a3, a4, *v15, v17) && ((a2 & 1) == 0 || v15[7]) && ((a2 & 2) == 0 || v15[5]))
        {
LABEL_25:
          result = 0;
          *(a1 + 184) = v15;
          return result;
        }

        v18 = *v16++;
        v15 = v18;
        if (!v18)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}