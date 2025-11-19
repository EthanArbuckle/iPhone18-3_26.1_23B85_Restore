uint64_t lifs_kext_start()
{
  if (lifs_add())
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to add lifs");
    return 5;
  }

  else
  {
    lifs_register_sysctl();
    return 0;
  }
}

uint64_t lifs_kext_stop()
{
  lifs_req_hashtbl_deinit();
  lck_rw_destroy(&lifs_port_rwlock, lifs_kext_grp);
  lck_mtx_destroy(&lifs_mount_list_lock, lifs_mount_grp);
  lck_grp_free(lifs_node_grp);
  lck_grp_free(lifs_rw_grp);
  lck_grp_free(lifs_mount_grp);
  lck_grp_free(lifs_kext_grp);
  if (vfs_fsremove(0))
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to remove lifs");
    return 5;
  }

  else
  {
    lifs_unregister_sysctl();
    return 0;
  }
}

uint64_t lifs_set_machport(uint64_t a1, _BYTE *a2)
{
  lck_rw_lock_exclusive(&lifs_port_rwlock);
  if (*a2)
  {
    v4 = 15;
  }

  else if (a1 == -1)
  {
    v4 = 29;
  }

  else
  {
    v5 = lifs_port;
    lifs_port = a1;
    if (v5)
    {
      ipc_port_release_send();
    }

    if (a1)
    {
      v6 = proc_selfpid();
    }

    else
    {
      v6 = 0;
    }

    v4 = 0;
    lifs_port_pid = v6;
  }

  lck_rw_unlock_exclusive(&lifs_port_rwlock);
  return v4;
}

void lifs_req_hashtbl_init()
{
  lifs_req_hashtbl = hashinit(512, 80, &lifs_req_hashtbl_mask);
  v0 = lifs_num_cpus();
  powerof2 = lifs_next_powerof2(v0, v1);
  v3 = (lifs_req_hashtbl_mask + 1) >> 2;
  if (v3 > 2 * powerof2)
  {
    v4 = lifs_num_cpus();
    v3 = 2 * lifs_next_powerof2(v4, v5);
  }

  lifs_req_hashtbl_num_locks = v3;
  lifs_req_hashtbl_locks = kalloc_data();
  if (lifs_req_hashtbl_num_locks)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      lck_rw_init((lifs_req_hashtbl_locks + v6), lifs_kext_grp, 0);
      ++v7;
      v6 += 16;
    }

    while (v7 < lifs_req_hashtbl_num_locks);
  }

  lifs_req_num_locks = lifs_num_cpus();
  lifs_req_locks = kalloc_data();
  if (lifs_req_num_locks)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      lck_mtx_init((lifs_req_locks + v8), lifs_kext_grp, 0);
      ++v9;
      v8 += 16;
    }

    while (v9 < lifs_req_num_locks);
  }
}

uint64_t lifs_req_hashtbl_deinit()
{
  if (lifs_req_hashtbl_num_locks)
  {
    v0 = 0;
    v1 = 0;
    do
    {
      lck_rw_destroy((lifs_req_hashtbl_locks + v0), lifs_kext_grp);
      ++v1;
      v0 += 16;
    }

    while (v1 < lifs_req_hashtbl_num_locks);
  }

  lifs_req_hashtbl_locks = 0;
  kfree_data();
  hashdestroy(lifs_req_hashtbl, 80, lifs_req_hashtbl_mask);
  if (lifs_req_num_locks)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      lck_mtx_free((lifs_req_locks + v2), lifs_kext_grp);
      ++v3;
      v2 += 16;
    }

    while (v3 < lifs_req_num_locks);
  }

  lifs_req_locks = 0;

  return kfree_data();
}

uint64_t lifs_mount_request(uint64_t a1, const char *a2, const char *a3, int a4, int a5, __int128 *a6, uint64_t a7)
{
  v17 = 0;
  lifs_port = get_lifs_port(&v17);
  if (!lifs_port)
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    memset(v18, 0, sizeof(v18));
    *&v19 = OSAddAtomic64(1, &lifs_request_id);
    *&v20 = a1;
    DWORD2(v19) = 1638400;
    DWORD2(v20) = 248;
    v22 = 0;
    v23 = 0;
    *&v21 = a7;
    lifs_add_req(v18);
    v15 = lifs_mount_send(v17, v19, a2, a3, a4, a5, a6);
    if (v15)
    {
      lifs_port = 4;
      if (v15 != 268435463 && v15 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_mount_send() failed, err: %d\n", "lifs_mount_request", lifs_port);
      DWORD2(v19) |= 1u;
      release_lifs_port();
      lifs_remove_req(v18);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v18);
      return HIDWORD(v19);
    }
  }

  return lifs_port;
}

void lifs_request_init(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = OSAddAtomic64(1, &lifs_request_id);
  *(a1 + 48) = a2;
  *(a1 + 40) = a3 << 16;
  *(a1 + 64) = a4;
  *(a1 + 56) = a5;
  *(a1 + 80) = a6;
  *(a1 + 88) = a7;
  if (a3 != a3)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "lifs_request for opcode %x outside valid range", a3);
  }
}

void lifs_add_req(void *a1)
{
  v2 = a1[4];
  v3 = 8 * (lifs_req_hashtbl_mask & v2);
  v4 = (lifs_req_hashtbl + v3);
  if (v3 != v3)
  {
    v4 = ((lifs_req_hashtbl + v3) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  v5 = a1[6];
  v6 = 16 * (v2 % lifs_req_hashtbl_num_locks);
  v7 = (lifs_req_hashtbl_locks + v6);
  if (v6 != v6)
  {
    v7 = ((lifs_req_hashtbl_locks + v6) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  lck_rw_lock_exclusive(v7);
  v8 = *v4;
  if (*v4)
  {
    if (*(v8 + 8) != v4)
    {
      __break(0xBFFDu);
      return;
    }

    *a1 = v8;
    *(v8 + 8) = a1;
  }

  else
  {
    *a1 = 0;
  }

  *v4 = a1;
  a1[1] = v4;
  lck_rw_unlock_exclusive(v7);
  lck_mtx_lock((v5 + 696));
  v9 = *(v5 + 624);
  a1[2] = 0;
  a1[3] = v9;
  *v9 = a1;
  *(v5 + 624) = a1 + 2;

  lck_mtx_unlock((v5 + 696));
}

void lifs_remove_req(uint64_t *a1)
{
  v2 = a1[6];
  v3 = 16 * (a1[4] % lifs_req_hashtbl_num_locks);
  v4 = (lifs_req_hashtbl_locks + v3);
  if (v3 != v3)
  {
    v4 = ((lifs_req_hashtbl_locks + v3) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  lck_rw_lock_exclusive(v4);
  v5 = *a1;
  if (*a1)
  {
    if (*(v5 + 8) != a1)
    {
LABEL_21:
      __break(0xBFFDu);
      goto LABEL_22;
    }

    v6 = a1[1];
    if (*v6 == a1)
    {
      *(v5 + 8) = v6;
      v7 = a1[1];
      goto LABEL_8;
    }

LABEL_19:
    __break(0xBFFDu);
LABEL_20:
    __break(0xBFFDu);
    goto LABEL_21;
  }

  v7 = a1[1];
  if (*v7 != a1)
  {
    goto LABEL_19;
  }

LABEL_8:
  *v7 = v5;
  lck_rw_unlock_exclusive(v4);
  lck_mtx_lock((v2 + 696));
  if ((a1[5] & 4) == 0)
  {
    v8 = a1[2];
    if (v8)
    {
      if (*(v8 + 24) != a1 + 2)
      {
LABEL_22:
        __break(0xBFFDu);
        return;
      }

      v9 = a1[3];
      if (*v9 == a1)
      {
        *(v8 + 24) = v9;
        v10 = a1[3];
LABEL_15:
        *v10 = v8;
        goto LABEL_16;
      }
    }

    else
    {
      v10 = a1[3];
      if (*v10 == a1)
      {
        *(v2 + 624) = v10;
        goto LABEL_15;
      }
    }

    goto LABEL_20;
  }

LABEL_16:

  lck_mtx_unlock((v2 + 696));
}

void lifs_wait_req_completion(uint64_t a1)
{
  v2 = 16 * (*(a1 + 32) % lifs_req_num_locks);
  v3 = (lifs_req_locks + v2);
  if (v2 != v2)
  {
    v3 = ((lifs_req_locks + v2) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  lck_mtx_lock(v3);
  if ((*(a1 + 40) & 1) == 0 && msleep(a1, v3, 21, "lifs_wait_req_completion", 0))
  {
    *(a1 + 44) = 5;
    lifs_find_and_remove_req_byid(*(a1 + 32));
  }

  lck_mtx_unlock(v3);
}

uint64_t lifs_unmount_request(uint64_t a1, int a2, __int128 *a3)
{
  v10 = 0;
  lifs_port = get_lifs_port(&v10);
  if (lifs_port)
  {
    v7 = lifs_port;
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "lifs_u_req no port\n");
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    memset(v11, 0, sizeof(v11));
    *&v12 = OSAddAtomic64(1, &lifs_request_id);
    *&v13 = a1;
    DWORD2(v12) = 0x20000;
    DWORD2(v13) = 0;
    v15 = 0;
    v16 = 0;
    *&v14 = 0;
    lifs_add_req(v11);
    v8 = lifs_unmount_send(v10, v12, a2, a3);
    if (v8)
    {
      v7 = 4;
      if (v8 != 268435463 && v8 != 268451845)
      {
        v7 = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_unmount_send() failed, err: %d\n", "lifs_unmount_request", v7);
      DWORD2(v12) |= 1u;
      release_lifs_port();
      lifs_remove_req(v11);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v11);
      return HIDWORD(v12);
    }
  }

  return v7;
}

uint64_t lifs_unmount2_request(uint64_t a1, int a2, __int128 *a3)
{
  v10 = 0;
  lifs_port = get_lifs_port(&v10);
  if (lifs_port)
  {
    v7 = lifs_port;
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "lifs_u2_req no port\n");
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    memset(v11, 0, sizeof(v11));
    *&v12 = OSAddAtomic64(1, &lifs_request_id);
    *&v13 = a1;
    DWORD2(v12) = 0x20000;
    DWORD2(v13) = 0;
    v15 = 0;
    v16 = 0;
    *&v14 = 0;
    lifs_add_req(v11);
    v8 = lifs_unmount2_send(v10, v12, a2, a3);
    if (v8)
    {
      v7 = 4;
      if (v8 != 268435463 && v8 != 268451845)
      {
        v7 = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_unmount2_send() failed, err: %d\n", "lifs_unmount2_request", v7);
      DWORD2(v12) |= 1u;
      release_lifs_port();
      lifs_remove_req(v11);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v11);
      return HIDWORD(v12);
    }
  }

  return v7;
}

uint64_t lifs_statfs_request(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v11 = 0;
  lifs_port = get_lifs_port(&v11);
  if (!lifs_port)
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    memset(v12, 0, sizeof(v12));
    *&v13 = OSAddAtomic64(1, &lifs_request_id);
    *&v14 = a1;
    DWORD2(v13) = 196608;
    DWORD2(v14) = 72;
    v16 = 0;
    v17 = 0;
    *&v15 = a3;
    lifs_add_req(v12);
    v7 = *(a1 + 592);
    v8 = *(a1 + 808);
    throttle_info_update_with_type();
    v9 = lifs_statfs_send(v11, v13, a2);
    if (v9)
    {
      lifs_port = 4;
      if (v9 != 268435463 && v9 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_statfs_send() failed, err: %d\n", "lifs_statfs_request", lifs_port);
      DWORD2(v13) |= 1u;
      release_lifs_port();
      lifs_remove_req(v12);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v12);
      return HIDWORD(v13);
    }
  }

  return lifs_port;
}

uint64_t lifs_create_request(uint64_t a1, const char *a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
{
  v15 = 0;
  lifs_port = get_lifs_port(&v15);
  if (!lifs_port)
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    memset(v16, 0, sizeof(v16));
    *&v17 = OSAddAtomic64(1, &lifs_request_id);
    *&v18 = a1;
    DWORD2(v17) = 0x40000;
    DWORD2(v18) = 448;
    v20 = 0;
    v21 = 0;
    *&v19 = a5;
    lifs_add_req(v16);
    v11 = *(a1 + 592);
    v12 = *(a1 + 808);
    throttle_info_update_with_type();
    send = lifs_create_send(v15, v17, a2, a3, a4);
    if (send)
    {
      lifs_port = 4;
      if (send != 268435463 && send != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_create_send() failed, err: %d\n", "lifs_create_request", lifs_port);
      DWORD2(v17) |= 1u;
      release_lifs_port();
      lifs_remove_req(v16);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v16);
      return HIDWORD(v17);
    }
  }

  return lifs_port;
}

uint64_t lifs_clonefile_request(uint64_t a1, const char *a2, _OWORD *a3, _OWORD *a4, int a5, _OWORD *a6, uint64_t a7)
{
  v17 = 0;
  lifs_port = get_lifs_port(&v17);
  if (!lifs_port)
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    memset(v18, 0, sizeof(v18));
    *&v19 = OSAddAtomic64(1, &lifs_request_id);
    *&v20 = a1;
    DWORD2(v19) = 0x40000;
    DWORD2(v20) = 448;
    v22 = 0;
    v23 = 0;
    *&v21 = a7;
    lifs_add_req(v18);
    v15 = lifs_clonefile_send(v17, v19, a2, a3, a4, a5, a6);
    if (v15)
    {
      lifs_port = 4;
      if (v15 != 268435463 && v15 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_clonefile_send() failed, err: %d\n", "lifs_clonefile_request", lifs_port);
      DWORD2(v19) |= 1u;
      release_lifs_port();
      lifs_remove_req(v18);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v18);
      return HIDWORD(v19);
    }
  }

  return lifs_port;
}

uint64_t lifs_mkdir_request(uint64_t a1, const char *a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
{
  v15 = 0;
  lifs_port = get_lifs_port(&v15);
  if (!lifs_port)
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    memset(v16, 0, sizeof(v16));
    *&v17 = OSAddAtomic64(1, &lifs_request_id);
    *&v18 = a1;
    DWORD2(v17) = 327680;
    DWORD2(v18) = 448;
    v20 = 0;
    v21 = 0;
    *&v19 = a5;
    lifs_add_req(v16);
    v11 = *(a1 + 592);
    v12 = *(a1 + 808);
    throttle_info_update_with_type();
    v13 = lifs_mkdir_send(v15, v17, a2, a3, a4);
    if (v13)
    {
      lifs_port = 4;
      if (v13 != 268435463 && v13 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_mkdir_send() failed, err: %d\n", "lifs_mkdir_request", lifs_port);
      DWORD2(v17) |= 1u;
      release_lifs_port();
      lifs_remove_req(v16);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v16);
      return HIDWORD(v17);
    }
  }

  return lifs_port;
}

uint64_t lifs_lookup_request(uint64_t a1, const char *a2, _OWORD *a3, int a4, uint64_t a5)
{
  v15 = 0;
  lifs_port = get_lifs_port(&v15);
  if (!lifs_port)
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    memset(v16, 0, sizeof(v16));
    *&v17 = OSAddAtomic64(1, &lifs_request_id);
    *&v18 = a1;
    DWORD2(v17) = 393216;
    DWORD2(v18) = 616;
    v20 = 0;
    v21 = 0;
    *&v19 = a5;
    lifs_add_req(v16);
    v11 = *(a1 + 592);
    v12 = *(a1 + 808);
    throttle_info_update_with_type();
    v13 = lifs_lookup_send(v15, v17, a2, a3, a4);
    if (v13)
    {
      lifs_port = 4;
      if (v13 != 268435463 && v13 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_lookup_send() failed, err: %d\n", "lifs_lookup_request", lifs_port);
      DWORD2(v17) |= 1u;
      release_lifs_port();
      lifs_remove_req(v16);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v16);
      return HIDWORD(v17);
    }
  }

  return lifs_port;
}

uint64_t lifs_lookupmed_request(uint64_t a1, char *a2, _OWORD *a3, int a4, uint64_t a5)
{
  *v15 = 0;
  lifs_port = get_lifs_port(v15);
  if (!lifs_port)
  {
    v18 = 0u;
    v19 = 0u;
    *v17 = 0u;
    memset(v16, 0, sizeof(v16));
    *v17 = OSAddAtomic64(1, &lifs_request_id);
    *&v18 = a1;
    v17[2] = 393216;
    DWORD2(v18) = 616;
    v20 = 0;
    v21 = 0;
    *&v19 = a5;
    lifs_add_req(v16);
    v11 = *(a1 + 592);
    v12 = *(a1 + 808);
    throttle_info_update_with_type();
    v13 = lifs_lookupmed_send(*v15, *v17, a2, a3, a4);
    if (v13)
    {
      lifs_port = 4;
      if (v13 != 268435463 && v13 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_lookupmed_send() failed, err: %d\n", "lifs_lookupmed_request", lifs_port);
      v17[2] |= 1u;
      release_lifs_port();
      lifs_remove_req(v16);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v16);
      return v17[3];
    }
  }

  return lifs_port;
}

uint64_t lifs_lookupsmall_request(uint64_t a1, char *a2, _OWORD *a3, int a4, uint64_t a5)
{
  *v15 = 0;
  lifs_port = get_lifs_port(v15);
  if (!lifs_port)
  {
    v18 = 0u;
    v19 = 0u;
    *v17 = 0u;
    memset(v16, 0, sizeof(v16));
    *v17 = OSAddAtomic64(1, &lifs_request_id);
    *&v18 = a1;
    v17[2] = 393216;
    DWORD2(v18) = 616;
    v20 = 0;
    v21 = 0;
    *&v19 = a5;
    lifs_add_req(v16);
    v11 = *(a1 + 592);
    v12 = *(a1 + 808);
    throttle_info_update_with_type();
    v13 = lifs_lookupsmall_send(*v15, *v17, a2, a3, a4);
    if (v13)
    {
      lifs_port = 4;
      if (v13 != 268435463 && v13 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_lookupsmall_send() failed, err: %d\n", "lifs_lookupsmall_request", lifs_port);
      v17[2] |= 1u;
      release_lifs_port();
      lifs_remove_req(v16);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v16);
      return v17[3];
    }
  }

  return lifs_port;
}

uint64_t lifs_setattr_request(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  v13 = 0;
  lifs_port = get_lifs_port(&v13);
  if (!lifs_port)
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    memset(v14, 0, sizeof(v14));
    *&v15 = OSAddAtomic64(1, &lifs_request_id);
    *&v16 = a1;
    DWORD2(v15) = 917504;
    DWORD2(v16) = 200;
    v18 = 0;
    v19 = 0;
    *&v17 = a4;
    lifs_add_req(v14);
    v9 = *(a1 + 592);
    v10 = *(a1 + 808);
    throttle_info_update_with_type();
    v11 = lifs_setattr_send(v13, v15, a2, a3);
    if (v11)
    {
      lifs_port = 4;
      if (v11 != 268435463 && v11 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_setattr_send() failed, err: %d\n", "lifs_setattr_request", lifs_port);
      DWORD2(v15) |= 1u;
      release_lifs_port();
      lifs_remove_req(v14);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v14);
      return HIDWORD(v15);
    }
  }

  return lifs_port;
}

uint64_t lifs_getattr_request(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v11 = 0;
  lifs_port = get_lifs_port(&v11);
  if (!lifs_port)
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    memset(v12, 0, sizeof(v12));
    *&v13 = OSAddAtomic64(1, &lifs_request_id);
    *&v14 = a1;
    DWORD2(v13) = 983040;
    DWORD2(v14) = 184;
    v16 = 0;
    v17 = 0;
    *&v15 = a3;
    lifs_add_req(v12);
    v7 = *(a1 + 592);
    v8 = *(a1 + 808);
    throttle_info_update_with_type();
    v9 = lifs_getattr_send(v11, v13, a2);
    if (v9)
    {
      lifs_port = 4;
      if (v9 != 268435463 && v9 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_getattr_send() failed, err: %d\n", "lifs_getattr_request", lifs_port);
      DWORD2(v13) |= 1u;
      release_lifs_port();
      lifs_remove_req(v12);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v12);
      return HIDWORD(v13);
    }
  }

  return lifs_port;
}

uint64_t lifs_getfsattr_request(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  *v15 = 0;
  lifs_port = get_lifs_port(v15);
  if (!lifs_port)
  {
    v18 = 0u;
    v19 = 0u;
    *v17 = 0u;
    memset(v16, 0, sizeof(v16));
    *v17 = OSAddAtomic64(1, &lifs_request_id);
    *&v18 = a1;
    v17[2] = 1507328;
    DWORD2(v18) = 24;
    v20 = 0;
    v21 = 0;
    *&v19 = a4;
    if (*a3 == 95)
    {
      v9 = *(a3 + 1);
      if (v9 == 83 || v9 == 79)
      {
        *(&v19 + 1) = *(a4 + 16);
        v10 = *(a4 + 8);
        v17[2] = 1507330;
        HIDWORD(v18) = v10;
      }
    }

    lifs_add_req(v16);
    v11 = *(a1 + 592);
    v12 = *(a1 + 808);
    throttle_info_update_with_type();
    v13 = lifs_getfsattr_send(*v15, *v17, a2, a3);
    if (v13)
    {
      lifs_port = 4;
      if (v13 != 268435463 && v13 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_getfsattr_send() failed, err: %d\n", "lifs_getfsattr_request", lifs_port);
      v17[2] |= 1u;
      release_lifs_port();
      lifs_remove_req(v16);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v16);
      return v17[3];
    }
  }

  return lifs_port;
}

uint64_t lifs_setfsattr_request(uint64_t a1, __int128 *a2, char *a3, _OWORD *a4, int a5, uint64_t a6)
{
  *v22 = 0;
  lifs_port = get_lifs_port(v22);
  if (lifs_port)
  {
    v13 = lifs_port;
    if (lifs_port == 5 && !*v22)
    {
      if (!strcmp(a3, "_N_SYNC"))
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: suppressing error on dead port", "lifs_setfsattr_request");
        return 0;
      }

      else
      {
        return 5;
      }
    }
  }

  else
  {
    v14 = strcmp(a3, "_O_f_preallocate");
    memset(v23, 0, sizeof(v23));
    *v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    *v24 = OSAddAtomic64(1, &lifs_request_id);
    if (v14)
    {
      v15 = 0x20000;
    }

    else
    {
      v15 = 1441792;
    }

    *&v25 = a1;
    v24[2] = v15;
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = 368;
    }

    DWORD2(v25) = v16;
    if (v14)
    {
      v17 = 0;
    }

    else
    {
      v17 = a6;
    }

    v27 = 0;
    v28 = 0;
    *&v26 = v17;
    lifs_add_req(v23);
    v18 = *(a1 + 592);
    v19 = *(a1 + 808);
    throttle_info_update_with_type();
    v20 = lifs_setfsattr_send(*v22, *v24, a2, a3, a4, a5);
    if (v20)
    {
      v13 = 4;
      if (v20 != 268435463 && v20 != 268451845)
      {
        v13 = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_setfsattr_send() failed, err: %d\n", "lifs_setfsattr_request", v13);
      v24[2] |= 1u;
      release_lifs_port();
      lifs_remove_req(v23);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v23);
      return v24[3];
    }
  }

  return v13;
}

uint64_t lifs_setfsattr_request_async(uint64_t a1, __int128 *a2, char *a3, _OWORD *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v28 = 0;
  lifs_port = get_lifs_port(v28);
  if (!lifs_port)
  {
    if (!strcmp(a3, "_O_f_preallocate"))
    {
      v18 = a1;
      v19 = 22;
      v20 = a8;
      v21 = 368;
    }

    else
    {
      v18 = a1;
      v19 = 2;
      v20 = 0;
      v21 = 0;
    }

    v22 = lifs_request_alloc_init(v18, v19, v20, v21, a6, a7);
    lifs_add_req(v22);
    v23 = *(a1 + 592);
    v24 = *(a1 + 808);
    throttle_info_update_with_type();
    v25 = lifs_setfsattr_send(*v28, *(v22 + 32), a2, a3, a4, a5);
    if (v25 == 268451845 || v25 == 268435463)
    {
      v17 = 4;
    }

    else
    {
      if (!v25)
      {
        release_lifs_port();
        return 0;
      }

      v17 = 5;
    }

    *(v22 + 40) |= 1u;
    release_lifs_port();
    lifs_remove_req(v22);
    lifs_request_free(v22);
    return v17;
  }

  v17 = lifs_port;
  if (!*v28 && !strcmp(a3, "_N_SYNC"))
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: suppressing error on dead port", "lifs_setfsattr_request_async");
    return 0;
  }

  return v17;
}

uint64_t lifs_request_alloc_init(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a2 >= 0x100)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "lifs_request for opcode %x outside valid range", a2);
    return 0;
  }

  else
  {
    v12 = kalloc_type_impl();
    lifs_request_init(v12, a1, a2, a3, a4, a5, a6);
    OSAddAtomic(1, (a1 + 828));
  }

  return v12;
}

uint64_t lifs_request_free(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = OSAddAtomic(-1, (v2 + 828));
  lck_mtx_lock((v2 + 96));
  v4 = *(v2 + 32);
  if ((v4 & 0x1000) != 0 && v3 == 1)
  {
    *(v2 + 32) = v4 & 0xFFFFFFFFFFFFEFFFLL;
    wakeup((v2 + 828));
  }

  lck_mtx_unlock((v2 + 96));
  *(a1 + 32) = -1;
  *(a1 + 64) = 3735928559;
  *(a1 + 56) = 0;

  return kfree_type_impl();
}

uint64_t lifs_getattrlistbulk_request(uint64_t a1, uint64_t a2, __int128 *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v22 = 0;
  lifs_port = get_lifs_port(&v22);
  if (!lifs_port)
  {
    v24 = 0u;
    memset(v23, 0, sizeof(v23));
    *&v24 = OSAddAtomic64(1, &lifs_request_id);
    v25 = a1;
    v30 = 0;
    v31 = 0;
    DWORD2(v24) = 1048578;
    v28 = a9;
    v29 = a7;
    v26 = 32;
    v27 = a8;
    lifs_add_req(v23);
    v18 = *(a1 + 592);
    v19 = *(a1 + 808);
    throttle_info_update_with_type();
    v20 = lifs_getattrlistbulk_send(v22, v24, a2, a3, a4, a5, a6);
    if (v20)
    {
      lifs_port = 4;
      if (v20 != 268435463 && v20 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_getattrlistbulk_send() failed, err: %d\n", "lifs_getattrlistbulk_request", lifs_port);
      DWORD2(v24) |= 1u;
      release_lifs_port();
      lifs_remove_req(v23);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v23);
      return HIDWORD(v24);
    }
  }

  return lifs_port;
}

uint64_t lifs_open_request(uint64_t a1, __int128 *a2, int a3)
{
  v11 = 0;
  lifs_port = get_lifs_port(&v11);
  if (!lifs_port)
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    memset(v12, 0, sizeof(v12));
    *&v13 = OSAddAtomic64(1, &lifs_request_id);
    *&v14 = a1;
    DWORD2(v13) = 0x20000;
    DWORD2(v14) = 0;
    v16 = 0;
    v17 = 0;
    *&v15 = 0;
    lifs_add_req(v12);
    v7 = *(a1 + 592);
    v8 = *(a1 + 808);
    throttle_info_update_with_type();
    v9 = lifs_open_send(v11, v13, a2, a3);
    if (v9)
    {
      lifs_port = 4;
      if (v9 != 268435463 && v9 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_open_send() failed, err: %d\n", "lifs_open_request", lifs_port);
      DWORD2(v13) |= 1u;
      release_lifs_port();
      lifs_remove_req(v12);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v12);
      return HIDWORD(v13);
    }
  }

  return lifs_port;
}

uint64_t lifs_close_request(uint64_t a1, __int128 *a2, int a3)
{
  v11 = 0;
  lifs_port = get_lifs_port(&v11);
  if (!lifs_port)
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    memset(v12, 0, sizeof(v12));
    *&v13 = OSAddAtomic64(1, &lifs_request_id);
    *&v14 = a1;
    DWORD2(v13) = 0x20000;
    DWORD2(v14) = 0;
    v16 = 0;
    v17 = 0;
    *&v15 = 0;
    lifs_add_req(v12);
    v7 = *(a1 + 592);
    v8 = *(a1 + 808);
    throttle_info_update_with_type();
    v9 = lifs_close_send(v11, v13, a2, a3);
    if (v9)
    {
      lifs_port = 4;
      if (v9 != 268435463 && v9 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_close_send() failed, err: %d\n", "lifs_close_request", lifs_port);
      DWORD2(v13) |= 1u;
      release_lifs_port();
      lifs_remove_req(v12);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v12);
      return HIDWORD(v13);
    }
  }

  return lifs_port;
}

uint64_t lifs_rename_request(uint64_t a1, const char *a2, _OWORD *a3, _OWORD *a4, const char *a5, _OWORD *a6, __int128 *a7, int a8, uint64_t a9)
{
  v22 = 0;
  lifs_port = get_lifs_port(&v22);
  if (!lifs_port)
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    memset(v23, 0, sizeof(v23));
    *&v24 = OSAddAtomic64(1, &lifs_request_id);
    *&v25 = a1;
    DWORD2(v24) = 458752;
    DWORD2(v25) = 752;
    v27 = 0;
    v28 = 0;
    *&v26 = a9;
    lifs_add_req(v23);
    v18 = *(a1 + 592);
    v19 = *(a1 + 808);
    throttle_info_update_with_type();
    v20 = lifs_rename_send(v22, v24, a2, a3, a4, a5, a6, a7, a8);
    if (v20)
    {
      lifs_port = 4;
      if (v20 != 268435463 && v20 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_rename_send() failed, err: %d\n", "lifs_rename_request", lifs_port);
      DWORD2(v24) |= 1u;
      release_lifs_port();
      lifs_remove_req(v23);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v23);
      return HIDWORD(v24);
    }
  }

  return lifs_port;
}

uint64_t lifs_rmdir_request(uint64_t a1, __int128 *a2, __int128 *a3, const char *a4, uint64_t a5)
{
  v15 = 0;
  lifs_port = get_lifs_port(&v15);
  if (!lifs_port)
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    memset(v16, 0, sizeof(v16));
    *&v17 = OSAddAtomic64(1, &lifs_request_id);
    *&v18 = a1;
    DWORD2(v17) = 0x80000;
    DWORD2(v18) = 200;
    v20 = 0;
    v21 = 0;
    *&v19 = a5;
    lifs_add_req(v16);
    v11 = *(a1 + 592);
    v12 = *(a1 + 808);
    throttle_info_update_with_type();
    v13 = lifs_rmdir_send(v15, v17, a2, a3, a4);
    if (v13)
    {
      lifs_port = 4;
      if (v13 != 268435463 && v13 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_rmdir_send() failed, err: %d\n", "lifs_rmdir_request", lifs_port);
      DWORD2(v17) |= 1u;
      release_lifs_port();
      lifs_remove_req(v16);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v16);
      return HIDWORD(v17);
    }
  }

  return lifs_port;
}

uint64_t lifs_readdir_request(uint64_t a1, int a2, uint64_t a3, __int128 *a4, int a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v22 = 0;
  lifs_port = get_lifs_port(&v22);
  if (!lifs_port)
  {
    v24 = 0u;
    memset(v23, 0, sizeof(v23));
    *&v24 = OSAddAtomic64(1, &lifs_request_id);
    v25 = a1;
    v30 = 0;
    v31 = 0;
    DWORD2(v24) = 589826;
    v28 = a9;
    v29 = a7;
    v26 = 24;
    v27 = a8;
    lifs_add_req(v23);
    v18 = *(a1 + 592);
    v19 = *(a1 + 808);
    throttle_info_update_with_type();
    v20 = lifs_readdir_send(v22, v24, a2, a3, a4, a5, a6);
    if (v20)
    {
      lifs_port = 4;
      if (v20 != 268435463 && v20 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_readdir_send() failed, err: %d\n", "lifs_readdir_request", lifs_port);
      DWORD2(v24) |= 1u;
      release_lifs_port();
      lifs_remove_req(v23);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v23);
      return HIDWORD(v24);
    }
  }

  return lifs_port;
}

uint64_t lifs_symlink_request(uint64_t a1, const char *a2, const char *a3, _OWORD *a4, __int128 *a5, uint64_t a6)
{
  v17 = 0;
  lifs_port = get_lifs_port(&v17);
  if (!lifs_port)
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    memset(v18, 0, sizeof(v18));
    *&v19 = OSAddAtomic64(1, &lifs_request_id);
    *&v20 = a1;
    DWORD2(v19) = 655360;
    DWORD2(v20) = 448;
    v22 = 0;
    v23 = 0;
    *&v21 = a6;
    lifs_add_req(v18);
    v13 = *(a1 + 592);
    v14 = *(a1 + 808);
    throttle_info_update_with_type();
    v15 = lifs_symlink_send(v17, v19, a2, a3, a4, a5);
    if (v15)
    {
      lifs_port = 4;
      if (v15 != 268435463 && v15 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_symlink_send() failed, err: %d\n", "lifs_symlink_request", lifs_port);
      DWORD2(v19) |= 1u;
      release_lifs_port();
      lifs_remove_req(v18);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v18);
      return HIDWORD(v19);
    }
  }

  return lifs_port;
}

uint64_t lifs_link_request(uint64_t a1, __int128 *a2, const char *a3, _OWORD *a4, uint64_t a5)
{
  v15 = 0;
  lifs_port = get_lifs_port(&v15);
  if (!lifs_port)
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    memset(v16, 0, sizeof(v16));
    *&v17 = OSAddAtomic64(1, &lifs_request_id);
    *&v18 = a1;
    DWORD2(v17) = 720896;
    DWORD2(v18) = 384;
    v20 = 0;
    v21 = 0;
    *&v19 = a5;
    lifs_add_req(v16);
    v11 = *(a1 + 592);
    v12 = *(a1 + 808);
    throttle_info_update_with_type();
    v13 = lifs_link_send(v15, v17, a2, a3, a4);
    if (v13)
    {
      lifs_port = 4;
      if (v13 != 268435463 && v13 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_link_send() failed, err: %d\n", "lifs_link_request", lifs_port);
      DWORD2(v17) |= 1u;
      release_lifs_port();
      lifs_remove_req(v16);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v16);
      return HIDWORD(v17);
    }
  }

  return lifs_port;
}

uint64_t lifs_readlink_request(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v11 = 0;
  lifs_port = get_lifs_port(&v11);
  if (!lifs_port)
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    memset(v12, 0, sizeof(v12));
    *&v13 = OSAddAtomic64(1, &lifs_request_id);
    *&v14 = a1;
    DWORD2(v13) = 786432;
    DWORD2(v14) = 1024;
    v16 = 0;
    v17 = 0;
    *&v15 = a3;
    lifs_add_req(v12);
    v7 = *(a1 + 592);
    v8 = *(a1 + 808);
    throttle_info_update_with_type();
    v9 = lifs_readlink_send(v11, v13, a2);
    if (v9)
    {
      lifs_port = 4;
      if (v9 != 268435463 && v9 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_readlink_send() failed, err: %d\n", "lifs_readlink_request", lifs_port);
      DWORD2(v13) |= 1u;
      release_lifs_port();
      lifs_remove_req(v12);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v12);
      return HIDWORD(v13);
    }
  }

  return lifs_port;
}

uint64_t lifs_remove_request(uint64_t a1, __int128 *a2, __int128 *a3, const char *a4, int a5, uint64_t a6)
{
  v17 = 0;
  lifs_port = get_lifs_port(&v17);
  if (!lifs_port)
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    memset(v18, 0, sizeof(v18));
    *&v19 = OSAddAtomic64(1, &lifs_request_id);
    *&v20 = a1;
    DWORD2(v19) = 851968;
    DWORD2(v20) = 200;
    v22 = 0;
    v23 = 0;
    *&v21 = a6;
    lifs_add_req(v18);
    v13 = *(a1 + 592);
    v14 = *(a1 + 808);
    throttle_info_update_with_type();
    v15 = lifs_remove_send(v17, v19, a2, a3, a4, a5);
    if (v15)
    {
      lifs_port = 4;
      if (v15 != 268435463 && v15 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_remove_send() failed, err: %d\n", "lifs_remove_request", lifs_port);
      DWORD2(v19) |= 1u;
      release_lifs_port();
      lifs_remove_req(v18);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v18);
      return HIDWORD(v19);
    }
  }

  return lifs_port;
}

uint64_t lifs_pathconf_request(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v11 = 0;
  lifs_port = get_lifs_port(&v11);
  if (!lifs_port)
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    memset(v12, 0, sizeof(v12));
    *&v13 = OSAddAtomic64(1, &lifs_request_id);
    *&v14 = a1;
    DWORD2(v13) = 1376256;
    DWORD2(v14) = 28;
    v16 = 0;
    v17 = 0;
    *&v15 = a3;
    lifs_add_req(v12);
    v7 = *(a1 + 592);
    v8 = *(a1 + 808);
    throttle_info_update_with_type();
    v9 = lifs_pathconf_send(v11, v13, a2);
    if (v9)
    {
      lifs_port = 4;
      if (v9 != 268435463 && v9 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_pathconf_send() failed, err: %d\n", "lifs_pathconf_request", lifs_port);
      DWORD2(v13) |= 1u;
      release_lifs_port();
      lifs_remove_req(v12);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v12);
      return HIDWORD(v13);
    }
  }

  return lifs_port;
}

uint64_t lifs_reclaim_request(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v9 = 0;
  lifs_port = get_lifs_port(&v9);
  if (!lifs_port)
  {
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    memset(v10, 0, sizeof(v10));
    *&v11 = OSAddAtomic64(1, &lifs_request_id);
    *&v12 = a1;
    DWORD2(v11) = 2752512;
    DWORD2(v12) = 16;
    v14 = 0;
    v15 = 0;
    *&v13 = a3;
    lifs_add_req(v10);
    v7 = lifs_reclaim_send(v9, v11, a2);
    if (v7)
    {
      lifs_port = 4;
      if (v7 != 268435463 && v7 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_reclaim_send() failed, err: %d\n", "lifs_reclaim_request", lifs_port);
      DWORD2(v11) |= 1u;
      release_lifs_port();
      lifs_remove_req(v10);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v10);
      return HIDWORD(v11);
    }
  }

  return lifs_port;
}

uint64_t lifs_reclaim_request_async(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = 0;
  lifs_port = get_lifs_port(&v15);
  if (!lifs_port)
  {
    v11 = lifs_request_alloc_init(a1, 0x2Au, a5, 16, a3, a4);
    lifs_add_req(v11);
    v12 = lifs_reclaim_send(v15, *(v11 + 32), a2);
    if (v12 == 268451845 || v12 == 268435463)
    {
      lifs_port = 4;
    }

    else
    {
      if (!v12)
      {
        release_lifs_port();
        return 0;
      }

      lifs_port = 5;
    }

    *(v11 + 40) |= 1u;
    release_lifs_port();
    lifs_remove_req(v11);
    lifs_request_free(v11);
  }

  return lifs_port;
}

uint64_t lifs_access_request(uint64_t a1, __int128 *a2, int a3)
{
  v11 = 0;
  lifs_port = get_lifs_port(&v11);
  if (!lifs_port)
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    memset(v12, 0, sizeof(v12));
    *&v13 = OSAddAtomic64(1, &lifs_request_id);
    *&v14 = a1;
    DWORD2(v13) = 0x20000;
    DWORD2(v14) = 0;
    v16 = 0;
    v17 = 0;
    *&v15 = 0;
    lifs_add_req(v12);
    v7 = *(a1 + 592);
    v8 = *(a1 + 808);
    throttle_info_update_with_type();
    v9 = lifs_access_send(v11, v13, a2, a3);
    if (v9)
    {
      lifs_port = 4;
      if (v9 != 268435463 && v9 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_access_send() failed, err: %d\n", "lifs_access_request", lifs_port);
      DWORD2(v13) |= 1u;
      release_lifs_port();
      lifs_remove_req(v12);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v12);
      return HIDWORD(v13);
    }
  }

  return lifs_port;
}

uint64_t lifs_write_request_async(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = 0;
  lifs_port = get_lifs_port(&v21);
  if (!lifs_port)
  {
    v17 = lifs_request_alloc_init(a1, 0x11u, a8, 112, a6, a7);
    lifs_add_req(v17);
    v18 = lifs_write_send(v21, *(v17 + 32), a2, a3, a4, a5);
    if (v18 == 268451845 || v18 == 268435463)
    {
      lifs_port = 4;
    }

    else
    {
      if (!v18)
      {
        release_lifs_port();
        return 0;
      }

      lifs_port = 5;
    }

    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_write_send() failed, err: %d\n", "lifs_write_request_async", lifs_port);
    *(v17 + 40) |= 1u;
    release_lifs_port();
    lifs_remove_req(v17);
    lifs_request_free(v17);
  }

  return lifs_port;
}

uint64_t lifs_read_request_async(uint64_t a1, __int128 *a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = 0;
  lifs_port = get_lifs_port(&v21);
  if (!lifs_port)
  {
    v17 = lifs_request_alloc_init(a1, 0x13u, a8, 104, a6, a7);
    *(v17 + 40) |= 8u;
    *(v17 + 60) = a5;
    lifs_add_req(v17);
    send = lifs_read_send(v21, *(v17 + 32), a2, a3, a4);
    if (send == 268451845 || send == 268435463)
    {
      lifs_port = 4;
    }

    else
    {
      if (!send)
      {
        release_lifs_port();
        return 0;
      }

      lifs_port = 5;
    }

    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_read_send() failed, err: %d\n", "lifs_read_request_async", lifs_port);
    *(v17 + 40) |= 1u;
    release_lifs_port();
    lifs_remove_req(v17);
    lifs_request_free(v17);
  }

  return lifs_port;
}

uint64_t lifs_get_volume_port_request(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v9 = 0;
  lifs_port = get_lifs_port(&v9);
  if (!lifs_port)
  {
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    memset(v10, 0, sizeof(v10));
    *&v11 = OSAddAtomic64(1, &lifs_request_id);
    *&v12 = a1;
    DWORD2(v11) = 1966080;
    DWORD2(v12) = 16;
    v14 = 0;
    v15 = 0;
    *&v13 = a3;
    lifs_add_req(v10);
    volume_port_send = lifs_get_volume_port_send(v9, v11, a2);
    if (volume_port_send)
    {
      lifs_port = 4;
      if (volume_port_send != 268435463 && volume_port_send != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_get_volume_port_send() failed, err: %d\n", "lifs_get_volume_port_request", lifs_port);
      DWORD2(v11) |= 1u;
      release_lifs_port();
      lifs_remove_req(v10);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v10);
      return HIDWORD(v11);
    }
  }

  return lifs_port;
}

uint64_t lifs_blockmap_file_request(uint64_t a1, __int128 *a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v17 = 0;
  lifs_port = get_lifs_port(&v17);
  if (!lifs_port)
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    memset(v18, 0, sizeof(v18));
    *&v19 = OSAddAtomic64(1, &lifs_request_id);
    *&v20 = a1;
    DWORD2(v19) = 2031616;
    DWORD2(v20) = 408;
    v22 = 0;
    v23 = 0;
    *&v21 = a7;
    lifs_add_req(v18);
    v15 = lifs_blockmap_file_send(v17, v19, a2, a3, a4, a5, a6);
    if (v15)
    {
      lifs_port = 4;
      if (v15 != 268435463 && v15 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_blockmap_file_send() failed, err: %d\n", "lifs_blockmap_file_request", lifs_port);
      DWORD2(v19) |= 1u;
      release_lifs_port();
      lifs_remove_req(v18);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v18);
      return HIDWORD(v19);
    }
  }

  return lifs_port;
}

uint64_t lifs_endio_request(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v19 = 0;
  lifs_port = get_lifs_port(&v19);
  if (!lifs_port)
  {
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    memset(v20, 0, sizeof(v20));
    *&v21 = OSAddAtomic64(1, &lifs_request_id);
    *&v22 = a1;
    DWORD2(v21) = 2883584;
    DWORD2(v22) = 88;
    v24 = 0;
    v25 = 0;
    *&v23 = a8;
    lifs_add_req(v20);
    v17 = lifs_endio_send(v19, v21, a2, a3, a4, a5, a6, a7);
    if (v17)
    {
      lifs_port = 4;
      if (v17 != 268435463 && v17 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_endio_send() failed, err: %d\n", "lifs_endio_request", lifs_port);
      DWORD2(v21) |= 1u;
      release_lifs_port();
      lifs_remove_req(v20);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v20);
      return HIDWORD(v21);
    }
  }

  return lifs_port;
}

uint64_t lifs_endio_request_async(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v23 = 0;
  lifs_port = get_lifs_port(&v23);
  if (!lifs_port)
  {
    v19 = lifs_request_alloc_init(a1, 0x2Cu, a10, 88, a8, a9);
    lifs_add_req(v19);
    v20 = lifs_endio_send(v23, *(v19 + 32), a2, a3, a4, a5, a6, a7);
    if (v20 == 268451845 || v20 == 268435463)
    {
      lifs_port = 4;
    }

    else
    {
      if (!v20)
      {
        release_lifs_port();
        return 0;
      }

      lifs_port = 5;
    }

    *(v19 + 40) |= 1u;
    release_lifs_port();
    lifs_remove_req(v19);
    lifs_request_free(v19);
  }

  return lifs_port;
}

uint64_t lifs_req_thread_start(uint64_t a1)
{
  new_thread = 0;
  v2 = (a1 + 680);
  lck_mtx_lock((a1 + 680));
  *(a1 + 664) = 0;
  v3 = kernel_thread_start(lifs_req_callback_thread, a1, &new_thread);
  if (v3)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to start lifs request thread for mount %p kern_return %d", a1, v3);
    lck_mtx_unlock(v2);
    return 12;
  }

  else
  {
    msleep(new_thread, v2, 32, "lifs_req_thread_start", 0);
    lck_mtx_unlock(v2);
    thread_deallocate(new_thread);
    return 0;
  }
}

void lifs_req_callback_thread(uint64_t a1)
{
  v2 = current_thread();
  _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: thread %p starting for mount %p\n", "lifs_req_callback_thread", v2, a1);
  thread_set_thread_name(v2, "lifs_req_callback");
  lck_mtx_lock((a1 + 680));
  *(a1 + 664) = 1;
  wakeup(v2);
  if (*(a1 + 664) == 1)
  {
    v3 = (a1 + 600);
    do
    {
      v4 = *v3;
      if (*v3)
      {
        do
        {
          v5 = *(v4 + 16);
          if (v5)
          {
            if (*(v5 + 24) != v4 + 16)
            {
              goto LABEL_17;
            }

            v6 = *(v4 + 24);
            if (*v6 != v4)
            {
LABEL_16:
              __break(0xBFFDu);
LABEL_17:
              __break(0xBFFDu);
              return;
            }

            *(v5 + 24) = v6;
            v7 = *(v4 + 24);
          }

          else
          {
            v7 = *(v4 + 24);
            if (*v7 != v4)
            {
              goto LABEL_16;
            }

            *(a1 + 608) = v7;
          }

          *v7 = v5;
          lck_mtx_unlock((a1 + 680));
          (*(v4 + 80))(*(v4 + 88), *(v4 + 44));
          lifs_request_free(v4);
          lck_mtx_lock((a1 + 680));
          v4 = *v3;
        }

        while (*v3);
        if (*(a1 + 664) == 2)
        {
          break;
        }
      }

      msleep((a1 + 600), (a1 + 680), 16, "lifs_req_callback_thread", 0);
    }

    while (*(a1 + 664) == 1);
  }

  *(a1 + 664) = 3;
  wakeup(a1);
  lck_mtx_unlock((a1 + 680));
  _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: thread %p exiting for mount %p\n", "lifs_req_callback_thread", v2, a1);

  thread_terminate(v2);
}

void lifs_req_thread_stop(uint64_t a1)
{
  v2 = (a1 + 96);
  lck_mtx_lock((a1 + 96));
  if (*(a1 + 828) >= 1)
  {
    do
    {
      *(a1 + 32) |= 0x1000uLL;
      msleep((a1 + 828), v2, 16, "lifs_req_thread_stop", 0);
    }

    while (*(a1 + 828) > 0);
  }

  lck_mtx_unlock(v2);
  lck_mtx_lock((a1 + 680));
  *(a1 + 664) = 2;
  wakeup((a1 + 600));
  while (*(a1 + 664) != 3)
  {
    msleep(a1, (a1 + 680), 32, "lifs_req_thread_stop", 0);
  }

  lck_mtx_unlock((a1 + 680));
}

uint64_t lifs_request_done(unint64_t a1, int a2, int a3, const void *a4, unsigned int a5, user_addr_t a6, unsigned int a7)
{
  v7 = 3758097088;
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 3758097090;
  }

  lifs_find_and_remove_req_byid(a1);
  if (!v15)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: failed to find request for op %u with id %llu", "lifs_request_done", a3, a1);
    return v7;
  }

  v16 = v15;
  if (!a2)
  {
    v17 = *(v15 + 40);
    if (BYTE2(v17) == a3)
    {
      if (a4)
      {
        v18 = *(v15 + 56);
        if (v18 >= a5)
        {
          v19 = a5;
        }

        else
        {
          v19 = v18;
        }

        memmove(*(v15 + 64), a4, v19);
        v17 = *(v16 + 40);
      }

      a2 = 0;
      if (!a6 || (v17 & 0xA) == 0)
      {
        goto LABEL_18;
      }

      v20 = *(v16 + 60);
      if (v20 >= a7)
      {
        if ((v17 & 2) != 0)
        {
          v27 = copyin(a6, *(v16 + 72), a7);
        }

        else
        {
          v27 = lifs_copyin_to_upl(*(v16 + 88), a6, a7);
        }

        a2 = v27;
        goto LABEL_18;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "Request ID %llx returned %u bytes for buffer sized %u", a1, a7, v20);
    }

    else
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "Request ID %llx expected response via op %u but received it via %u", a1, BYTE2(v17), a3);
    }

    a2 = 5;
  }

LABEL_18:
  *(v16 + 44) = a2;
  if (*(v16 + 80))
  {
    v21 = *(v16 + 48);
    v22 = (v21 + 680);
    lck_mtx_lock((v21 + 680));
    *(v16 + 40) |= 1u;
    v23 = (v21 + 600);
    v24 = *(v21 + 608);
    *(v16 + 16) = 0;
    *(v16 + 24) = v24;
    *v24 = v16;
    *(v21 + 608) = v16 + 16;
  }

  else
  {
    v25 = 16 * (a1 % lifs_req_num_locks);
    v22 = (lifs_req_locks + v25);
    if (v25 != v25)
    {
      v22 = ((lifs_req_locks + v25) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    lck_mtx_lock(v22);
    *(v16 + 40) |= 1u;
    v23 = v16;
  }

  wakeup(v23);
  lck_mtx_unlock(v22);
  return 0;
}

void lifs_find_and_remove_req_byid(uint64_t a1)
{
  v2 = 8 * (lifs_req_hashtbl_mask & a1);
  v3 = lifs_req_hashtbl + v2;
  if (v2 != v2)
  {
    v3 = (lifs_req_hashtbl + v2) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
  }

  v4 = 16 * (a1 % lifs_req_hashtbl_num_locks);
  v5 = (lifs_req_hashtbl_locks + v4);
  if (v4 != v4)
  {
    v5 = ((lifs_req_hashtbl_locks + v4) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  lck_rw_lock_exclusive(v5);
  do
  {
    v3 = *v3;
    if (!v3)
    {
      lck_rw_unlock_exclusive(v5);
      return;
    }
  }

  while (*(v3 + 32) != a1);
  v6 = *v3;
  if (*v3)
  {
    if (*(v6 + 8) != v3)
    {
LABEL_25:
      __break(0xBFFDu);
      goto LABEL_26;
    }

    v7 = *(v3 + 8);
    if (*v7 == v3)
    {
      *(v6 + 8) = v7;
      v8 = *(v3 + 8);
      goto LABEL_14;
    }

LABEL_23:
    __break(0xBFFDu);
LABEL_24:
    __break(0xBFFDu);
    goto LABEL_25;
  }

  v8 = *(v3 + 8);
  if (*v8 != v3)
  {
    goto LABEL_23;
  }

LABEL_14:
  *v8 = v6;
  lck_rw_unlock_exclusive(v5);
  v9 = *(v3 + 48);
  lck_mtx_lock((v9 + 696));
  if ((*(v3 + 40) & 4) != 0)
  {
LABEL_22:
    lck_mtx_unlock((v9 + 696));
    return;
  }

  v10 = *(v3 + 16);
  if (!v10)
  {
    v12 = *(v3 + 24);
    if (*v12 == v3)
    {
      *(v9 + 624) = v12;
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (*(v10 + 24) == v3 + 16)
  {
    v11 = *(v3 + 24);
    if (*v11 == v3)
    {
      *(v10 + 24) = v11;
      v12 = *(v3 + 24);
LABEL_21:
      *v12 = v10;
      goto LABEL_22;
    }

    goto LABEL_24;
  }

LABEL_26:
  __break(0xBFFDu);
}

uint64_t lifs_getxattr_request(uint64_t a1, __int128 *a2, char *a3, int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  *v19 = 0;
  lifs_port = get_lifs_port(v19);
  if (!lifs_port)
  {
    v22 = 0u;
    v23 = 0u;
    *v21 = 0u;
    memset(v20, 0, sizeof(v20));
    *v21 = OSAddAtomic64(1, &lifs_request_id);
    *&v22 = a1;
    v21[2] = 1572864;
    DWORD2(v22) = 24;
    v24 = 0;
    v25 = 0;
    *&v23 = a7;
    if (a6)
    {
      *(&v23 + 1) = a5;
      v21[2] = 1572866;
      HIDWORD(v22) = a6;
    }

    lifs_add_req(v20);
    v15 = *(a1 + 592);
    v16 = *(a1 + 808);
    throttle_info_update_with_type();
    v17 = lifs_getxattr_send(*v19, *v21, a2, a3, a6, a4);
    if (v17)
    {
      lifs_port = 4;
      if (v17 != 268435463 && v17 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_getxattr_send() failed, err: %d\n", "lifs_getxattr_request", lifs_port);
      v21[2] |= 1u;
      release_lifs_port();
      lifs_remove_req(v20);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v20);
      return v21[3];
    }
  }

  return lifs_port;
}

uint64_t lifs_setxattr_request(uint64_t a1, __int128 *a2, char *a3, uio_t a_uio, int a5)
{
  v27 = 0u;
  v28 = 0u;
  *v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v22 = 0;
  v10 = uio_resid(a_uio);
  v11 = uio_offset(a_uio);
  if (v10 >= 0x400)
  {
    if (v10 >> 18)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: xattr size %zu (%s) too large", "lifs_setxattr_request", v10, a3);
      return 27;
    }

    v13 = kalloc_data();
    v12 = v10;
  }

  else
  {
    v12 = 1024;
    v13 = kalloc_data();
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  lifs_port = uiomove(v13, v10, a_uio);
  if (lifs_port)
  {
    goto LABEL_16;
  }

LABEL_7:
  if (v12 > v10)
  {
    v15 = &v13[v10];
    if (v10 != v10)
    {
      v15 = (&v13[v10] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    bzero(v15, v12 - v10);
  }

  if (v12 >= 0x401 && vm_map_copyin())
  {
    v16 = 12;
    if (!v13)
    {
      return v16;
    }

    goto LABEL_17;
  }

  lifs_port = get_lifs_port(v22);
  if (!lifs_port)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    *v25 = 0u;
    v23 = 0u;
    *v25 = OSAddAtomic64(1, &lifs_request_id);
    *&v26 = a1;
    v25[2] = 0x20000;
    DWORD2(v26) = 0;
    v28 = 0uLL;
    *&v27 = 0;
    lifs_add_req(&v23);
    v18 = *(a1 + 592);
    v19 = *(a1 + 808);
    throttle_info_update_with_type();
    if (v12 == 1024)
    {
      v20 = lifs_setxattr_small_send(*v22, *v25, a2, a3, v13, v10, v11, a5);
      v21 = "small";
      if (v20)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v20 = lifs_setxattr_large_send(*v22, *v25, a2, a3, 0, v10, v11, a5);
      v21 = "large";
      if (v20)
      {
LABEL_22:
        v16 = 4;
        if (v20 != 268435463 && v20 != 268451845)
        {
          v16 = 5;
        }

        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_setxattr_%s_send() failed, err: %d\n", "lifs_setxattr_request", v21, v16);
        v25[2] |= 1u;
        release_lifs_port();
        lifs_remove_req(&v23);
LABEL_28:
        *v25 = -1;
        *&v27 = 3735928559;
        DWORD2(v26) = 0;
        if (!v13)
        {
          return v16;
        }

        goto LABEL_17;
      }
    }

    release_lifs_port();
    lifs_wait_req_completion(&v23);
    v16 = v25[3];
    goto LABEL_28;
  }

LABEL_16:
  v16 = lifs_port;
  if (v13)
  {
LABEL_17:
    kfree_data();
  }

  return v16;
}

uint64_t lifs_removexattr_request(uint64_t a1, __int128 *a2, char *a3)
{
  *v11 = 0;
  lifs_port = get_lifs_port(v11);
  if (!lifs_port)
  {
    v14 = 0u;
    v15 = 0u;
    *v13 = 0u;
    memset(v12, 0, sizeof(v12));
    *v13 = OSAddAtomic64(1, &lifs_request_id);
    *&v14 = a1;
    v13[2] = 0x20000;
    DWORD2(v14) = 0;
    v16 = 0;
    v17 = 0;
    *&v15 = 0;
    lifs_add_req(v12);
    v7 = *(a1 + 592);
    v8 = *(a1 + 808);
    throttle_info_update_with_type();
    v9 = lifs_removexattr_send(*v11, *v13, a2, a3);
    if (v9)
    {
      lifs_port = 4;
      if (v9 != 268435463 && v9 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_removexattr_send() failed, err: %d\n", "lifs_removexattr_request", lifs_port);
      v13[2] |= 1u;
      release_lifs_port();
      lifs_remove_req(v12);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v12);
      return v13[3];
    }
  }

  return lifs_port;
}

uint64_t lifs_listxattr_request(uint64_t a1, __int128 *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v15 = 0;
  lifs_port = get_lifs_port(&v15);
  if (!lifs_port)
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    memset(v16, 0, sizeof(v16));
    *&v17 = OSAddAtomic64(1, &lifs_request_id);
    *&v18 = a1;
    DWORD2(v17) = 1572864;
    DWORD2(v18) = 24;
    v20 = 0;
    v21 = 0;
    *&v19 = a5;
    if (a4)
    {
      *(&v19 + 1) = a3;
      DWORD2(v17) = 1572866;
      HIDWORD(v18) = a4;
    }

    lifs_add_req(v16);
    v11 = *(a1 + 592);
    v12 = *(a1 + 808);
    throttle_info_update_with_type();
    v13 = lifs_listxattr_send(v15, v17, a2, a4);
    if (v13)
    {
      lifs_port = 4;
      if (v13 != 268435463 && v13 != 268451845)
      {
        lifs_port = 5;
      }

      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_listxattr_send() failed, err: %d\n", "lifs_listxattr_request", lifs_port);
      DWORD2(v17) |= 1u;
      release_lifs_port();
      lifs_remove_req(v16);
    }

    else
    {
      release_lifs_port();
      lifs_wait_req_completion(v16);
      return HIDWORD(v17);
    }
  }

  return lifs_port;
}

void lifs_request_abort_all()
{
  v12 = 0;
  v13 = 0;
  lck_mtx_lock(&lifs_mount_list_lock);
  v0 = lifs_mount_list;
  if (!lifs_mount_list)
  {
LABEL_21:
    lck_mtx_unlock(&lifs_mount_list_lock);
    return;
  }

  while (1)
  {
    v12 = 0;
    v13 = &v12;
    lck_mtx_lock((v0 + 696));
    v1 = *(v0 + 77);
    if (v1)
    {
      do
      {
        v2 = *(v1 + 16);
        v3 = *(v1 + 40);
        if ((v3 & 1) == 0)
        {
          if (v2)
          {
            if (*(v2 + 24) != v1 + 16)
            {
              goto LABEL_25;
            }

            v4 = *(v1 + 24);
            if (*v4 != v1)
            {
              goto LABEL_24;
            }

            *(v2 + 24) = v4;
            v5 = *(v1 + 24);
          }

          else
          {
            v5 = *(v1 + 24);
            if (*v5 != v1)
            {
              goto LABEL_24;
            }

            *(v0 + 78) = v5;
          }

          *v5 = v2;
          *(v1 + 40) = v3 | 4;
          v6 = v13;
          *(v1 + 16) = 0;
          *(v1 + 24) = v6;
          *v6 = v1;
          v13 = (v1 + 16);
        }

        v1 = v2;
      }

      while (v2);
    }

    lck_mtx_unlock((v0 + 696));
    v7 = v12;
    if (v12)
    {
      break;
    }

LABEL_20:
    v0 = *v0;
    if (!v0)
    {
      goto LABEL_21;
    }
  }

  while (1)
  {
    v8 = v7[2];
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lmp %p req %p reqid %llu\n", "lifs_request_abort_all", v0, v7, v7[4]);
    v9 = v7[2];
    if (v9)
    {
      break;
    }

    v11 = v7[3];
    if (*v11 != v7)
    {
      goto LABEL_22;
    }

    v13 = v7[3];
LABEL_19:
    *v11 = v9;
    lifs_request_done(v7[4], 5, 0, 0, 0, 0, 0);
    v7 = v8;
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  if (*(v9 + 24) != v7 + 2)
  {
    goto LABEL_23;
  }

  v10 = v7[3];
  if (*v10 == v7)
  {
    *(v9 + 24) = v10;
    v11 = v7[3];
    goto LABEL_19;
  }

LABEL_22:
  __break(0xBFFDu);
LABEL_23:
  __break(0xBFFDu);
LABEL_24:
  __break(0xBFFDu);
LABEL_25:
  __break(0xBFFDu);
}

uint64_t lifs_vnop_write(uint64_t a1)
{
  v37 = 0;
  v2 = *(a1 + 8);
  v3 = vnode_fsnode(v2);
  v4 = *(a1 + 16);
  v5 = uio_resid(v4);
  v6 = uio_offset(v4);
  v7 = *(a1 + 24);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140041u, v2, v6, v5, *(a1 + 24));
  }

  lifs_mount_from_node = get_lifs_mount_from_node(v3, &v37);
  if (!lifs_mount_from_node)
  {
    if (!vnode_isreg(v2))
    {
      if (vnode_isdir(v2))
      {
        lifs_mount_from_node = 21;
      }

      else
      {
        lifs_mount_from_node = 1;
      }

      goto LABEL_4;
    }

    if (v5 <= 0)
    {
      if (v5)
      {
        lifs_mount_from_node = 22;
      }

      else
      {
        lifs_mount_from_node = 0;
      }

      goto LABEL_4;
    }

    v10 = v7 & 0xFFFFFC3F;
    lck_mtx_lock((v37 + 96));
    if ((vfs_flags(*(v37 + 448)) & 0x1000) != 0 && (*(a1 + 24) & 4) == 0 && !(*(v37 + 872) >> 30))
    {
      lifs_enable_lowspace_sync_write(v37);
      v10 = v7 & 0xFFFFFC3B | 4;
    }

    lck_mtx_unlock((v37 + 96));
    v11 = (v3 + 624);
    lck_rw_lock_shared((v3 + 624));
    v12 = *(v3 + 76);
    if ((*(v37 + 32) & 0x40) != 0 || (v13 = *(v3 + 77), v12 == v13))
    {
      if (v6 + v5 > v12 || v6 > *(v3 + 77) || (*(a1 + 24) & 2) != 0)
      {
        if (!lck_rw_lock_shared_to_exclusive((v3 + 624)))
        {
          lck_rw_lock_exclusive((v3 + 624));
        }

        v14 = v10;
        lifs_set_io_lock_override(v3);
        v34 = 1;
      }

      else
      {
        v14 = v10;
        v34 = 0;
      }

      lck_mtx_lock(v3);
      v15 = *(v3 + 76);
      v16 = *(v3 + 88);
      arg1 = v15;
      if ((*(a1 + 24) & 2) != 0)
      {
        uio_setoffset(v4, v15);
        v15 = arg1;
        v6 = arg1;
      }

      v17 = v6 + v5;
      if (__OFADD__(v6, v5) || (v18 = *(v37 + 840), v17 > v18) || v6 >= v18)
      {
        v35 = v6 + v5;
        lck_mtx_unlock(v3);
        lifs_mount_from_node = 27;
        v11 = (v3 + 624);
        if (v34)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v19 = (8 * v16) & 0x800 | v14;
        if (v17 <= v15)
        {
          arg4 = 0;
          v35 = *(v3 + 76);
        }

        else
        {
          v20 = (v17 + (1 << PAGE_SHIFT_CONST) - 1) & -(1 << PAGE_SHIFT_CONST);
          v21 = v20 <= v17;
          if (v20 >= v17)
          {
            v20 = v6 + v5;
          }

          arg4 = v20;
          if (!v21)
          {
            v19 |= 0x340u;
          }

          v35 = v6 + v5;
          *(v3 + 76) = v6 + v5;
        }

        v22 = *(v3 + 77);
        v23 = v6 > v22;
        if (v6 <= v22)
        {
          v24 = 0;
        }

        else
        {
          v24 = *(v3 + 77);
        }

        if (v23)
        {
          v19 |= 0x380u;
        }

        v33 = v19;
        lck_mtx_unlock(v3);
        atomic_store(v5, v3 + 244);
        v25 = arg1;
        v11 = (v3 + 624);
        if (v17 > arg1)
        {
          ubc_setsize(v2, v35);
          v25 = arg1;
        }

        v26 = v35;
        if ((kdebug_enable & 0xFFFFFFF7) != 0)
        {
          kernel_debug_filtered(0x3140040u, v25, v35, v24, arg4);
          v26 = v35;
          v25 = arg1;
        }

        v27 = cluster_write(v2, v4, v25, v26, v24, arg4, v33);
        if (v27)
        {
          if (v17 > v25 && ubc_getsize(v2) > v25)
          {
            ubc_setsize(v2, v25);
          }

          lck_mtx_lock(v3);
          if (*(v3 + 76) > v25)
          {
            *(v3 + 76) = arg1;
          }
        }

        else
        {
          lck_mtx_lock(v3);
          v28 = uio_offset(v4);
          if (v28 > *(v3 + 77))
          {
            *(v3 + 77) = v28;
          }
        }

        lck_mtx_unlock(v3);
        atomic_store(0, v3 + 244);
        lifs_issue_endio(v3, v27, (v33 & 4) == 0);
        if (v29)
        {
          v30 = 1;
        }

        else
        {
          v30 = v27 == 0;
        }

        if (v30)
        {
          lifs_mount_from_node = v29;
        }

        else
        {
          lifs_mount_from_node = v27;
        }

        if (v34)
        {
LABEL_68:
          if (!*(v3 + 80))
          {
            panic("%s: override is not set for lnode %p io_lock @%s:%d", "lifs_clear_io_lock_override", v3, "lifs_vnops.c", 201);
          }

          *(v3 + 80) = 0;
          lck_rw_unlock_exclusive(v11);
          if (lifs_mount_from_node)
          {
            goto LABEL_4;
          }

LABEL_72:
          lck_mtx_lock(v3);
          v31 = *(v3 + 88);
          *(v3 + 88) = v31 | 0x10000;
          if ((*(v37 + 40) & 1) == 0 && (*(v37 + 34) & 2) == 0 && !arg1 && v35 >= 1)
          {
            *(v3 + 88) = v31 & 0xFFFCFFFF | 0x20000;
          }

          lck_mtx_unlock(v3);
          lifs_mount_from_node = 0;
          goto LABEL_4;
        }
      }
    }

    else
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: lnode %p file_size(0x%llx) != valid_data_size(0x%llx) in non-VDL mode", "lifs_vnop_write", v3, *(v3 + 76), v13);
      v35 = 0;
      arg1 = 0;
      lifs_mount_from_node = 5;
    }

    lck_rw_unlock_shared(v11);
    if (lifs_mount_from_node)
    {
      goto LABEL_4;
    }

    goto LABEL_72;
  }

LABEL_4:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140042u, v2, *(v3 + 77), *(v3 + 76), lifs_mount_from_node);
  }

  return lifs_mount_from_node;
}

uint64_t lifs_vnop_read(uint64_t a1)
{
  v19 = 0;
  v2 = *(a1 + 8);
  v3 = vnode_fsnode(v2);
  v4 = *(a1 + 16);
  v5 = uio_resid(v4);
  v6 = *(a1 + 24);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    v7 = uio_offset(v4);
    kernel_debug_filtered(0x3140045u, v2, v7, v5, v6);
  }

  lifs_mount_from_node = get_lifs_mount_from_node(v3, &v19);
  if (lifs_mount_from_node)
  {
    v9 = lifs_mount_from_node;
LABEL_5:
    v10 = -1;
    goto LABEL_6;
  }

  if (!vnode_isreg(v2))
  {
    if (vnode_isdir(v2))
    {
      v9 = 21;
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_5;
  }

  if (v5 <= 0)
  {
    if (v5)
    {
      v9 = 22;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_5;
  }

  v13 = uio_offset(v4);
  if (v13 >= *(v19 + 840))
  {
    v9 = 0;
    goto LABEL_5;
  }

  lck_rw_lock_shared((v3 + 624));
  lck_mtx_lock(v3);
  v10 = *(v3 + 76);
  v14 = (8 * *(v3 + 88)) & 0x800;
  lck_mtx_unlock(v3);
  v15 = cluster_read(v2, v4, v10, v14 | v6);
  lifs_issue_endio(v3, v15, 1uLL);
  v17 = v16;
  lck_rw_unlock_shared((v3 + 624));
  if (v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = v15 == 0;
  }

  if (v18)
  {
    v9 = v17;
  }

  else
  {
    v9 = v15;
  }

  if (!(v15 | v17))
  {
    lck_mtx_lock(v3);
    *(v3 + 88) |= 0x8000u;
    lck_mtx_unlock(v3);
    v9 = 0;
  }

LABEL_6:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    v11 = uio_resid(v4);
    kernel_debug_filtered(0x3140046u, v2, v10, v11, v9);
  }

  return v9;
}

uint64_t lifs_vnop_readdir(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = vnode_fsnode(v2);
  v44 = 0;
  v4 = uio_offset(*(a1 + 16));
  v5 = uio_resid(*(a1 + 16));
  v6 = v5;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x314004Du, v2, v4, v5, *(a1 + 24));
  }

  v41 = 0;
  v42 = 0;
  v43 = 0;
  _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "readdir:start:vp:%p:lnode:%p:cookie:0x%llx:verifier:0x%llx\n", v2, v3, v4, *(v3 + 71));
  if (vnode_vtype(v2) != VDIR)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v8 = 20;
    goto LABEL_7;
  }

  lifs_mount_from_node = get_lifs_mount_from_node(v3, &v44);
  if (lifs_mount_from_node)
  {
    v8 = lifs_mount_from_node;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_7;
  }

  v40 = v2;
  if (v6 >= 0x10000)
  {
    v16 = 0x10000;
  }

  else
  {
    v16 = v6;
  }

  if ((v6 & 0xFFFFFFF8) >= 0x18uLL)
  {
    v17 = v16;
  }

  else
  {
    v17 = 24;
  }

  v18 = kalloc_data();
  v19 = 0;
  v20 = -5;
  if (v4)
  {
LABEL_23:
    v19 = *(v3 + 71);
  }

  while (1)
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v21 = v18;
    v8 = lifs_readdir_request(v44, 0, v4, (v3 + 360), v17, v19, v18, v17, &v41);
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "readdir:vp:%p:lifs_readdir_request:error:%d:bytesRead:%d\n", v40, v8, v42);
    if (!v8)
    {
      break;
    }

    if ((v8 & 0xFFFFFFFE) == 0xFFFFFC16)
    {
      goto LABEL_63;
    }

    v22 = v8 == -1000 && v20 == 0;
    v9 = v21;
    if (v22)
    {
      v10 = 0;
      v8 = 0;
      v11 = 1;
LABEL_67:
      v2 = v40;
      goto LABEL_7;
    }

    if (v8 != -1000 || !v20)
    {
      v10 = 0;
      v11 = 0;
      goto LABEL_67;
    }

    *(v3 + 71) = 0;
    v23 = lifs_readdir_request(v44, 0, 0, (v3 + 360), v17, 0, v21, v17, &v41);
    if (v23)
    {
      v8 = v23;
      v2 = v40;
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "readdir:vp:%p:error on retry:%d", v40, v23);
      v10 = 0;
      v11 = 0;
      goto LABEL_69;
    }

    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "readdir:vp:%p:retrying with new verifier:%llx\n", v40, v41);
    v19 = v41;
    *(v3 + 71) = v41;
    ++v20;
    v18 = v21;
    if (v4)
    {
      goto LABEL_23;
    }
  }

  v24 = v42;
  if (!v42)
  {
LABEL_63:
    v10 = 0;
    v8 = 0;
    v11 = 1;
LABEL_64:
    v2 = v40;
    goto LABEL_69;
  }

  if (v42 < 0x18 || v42 > v17)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "readdir:bytesRead:%d", v42);
    v10 = 0;
    v11 = 0;
    v8 = 22;
    goto LABEL_64;
  }

  v25 = v41;
  if (v19 && *(v3 + 71) != v41)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "readdir:verifier changed without error:cookie:0x%llx:cookie_verifier:0x%llx:lnode->dir_verifier:0x%llx:reply_data.verifier:0x%llx\n", v4, v19, *(v3 + 71), v41);
    v25 = v41;
  }

  *(v3 + 71) = v25;
  *(a1 + 24);
  v26 = kalloc_type_impl();
  v27 = v26;
  if (!v21)
  {
    v10 = 0;
LABEL_72:
    v11 = 0;
    v8 = 0;
    goto LABEL_73;
  }

  v28 = v21;
  v10 = 0;
  __dst = (v26 + 8);
  v29 = v26 + 21;
  while (1)
  {
    v30 = *v28;
    if (*(a1 + 24))
    {
      *v27 = v30;
      *(v27 + 8) = *(v28 + 8);
      *(v27 + 20) = lifatype_to_dtype(*(v28 + 20));
      v35 = *(v28 + 18);
      if (v35 > 0x3FF || ((v35 + 29) & 0x7F8u) > v24)
      {
        v2 = v40;
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "readdir:vp:%p:invalid:entry:length:%d", v40, v35);
        v11 = 0;
        goto LABEL_76;
      }

      *(v27 + 18) = v35;
      memmove((v27 + 21), (v28 + 21), v35);
      *(v29 + v35) = 0;
      v36 = v35 & 0x3F8;
      v34 = (v35 & 0x3F8) + 32;
      *(v27 + 16) = v36 + 32;
    }

    else
    {
      *v27 = v30;
      *(v27 + 6) = lifatype_to_dtype(*(v28 + 20));
      v31 = *(v28 + 18);
      if (v31 > 0xFF || v24 < ((v31 + 29) & 0x1F8u))
      {
        v2 = v40;
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "readdir:vp:%p:invalid:entry:length:%d", v40, v31);
        v11 = 0;
LABEL_76:
        v8 = 22;
        goto LABEL_74;
      }

      *(v27 + 7) = v31;
      memmove(__dst, (v28 + 21), v31);
      *(__dst + v31) = 0;
      v33 = (v31 + 4) & 0x1FC;
      v34 = v33 + 8;
      *(v27 + 4) = v33 + 8;
    }

    if (uio_resid(*(a1 + 16)) < v34)
    {
      goto LABEL_72;
    }

    v37 = uiomove(v27, v34, *(a1 + 16));
    if (v37)
    {
      break;
    }

    uio_setoffset(*(a1 + 16), *(v28 + 8));
    if (__OFADD__(v10, 1))
    {
      lifs_vnop_readdir_cold_1();
    }

    if (*(a1 + 24))
    {
      bzero(v27, 0x418uLL);
    }

    else
    {
      *(v27 + 256) = 0;
      *(v27 + 224) = 0u;
      *(v27 + 240) = 0u;
      *(v27 + 192) = 0u;
      *(v27 + 208) = 0u;
      *(v27 + 160) = 0u;
      *(v27 + 176) = 0u;
      *(v27 + 128) = 0u;
      *(v27 + 144) = 0u;
      *(v27 + 96) = 0u;
      *(v27 + 112) = 0u;
      *(v27 + 64) = 0u;
      *(v27 + 80) = 0u;
      *(v27 + 32) = 0u;
      *(v27 + 48) = 0u;
      *v27 = 0u;
      *(v27 + 16) = 0u;
    }

    ++v10;
    if (*(v28 + 8) == -1)
    {
      v8 = 0;
      v11 = 1;
      goto LABEL_73;
    }

    v38 = *(v28 + 16);
    if (!*(v28 + 16))
    {
      goto LABEL_72;
    }

    if (v38 + 24 > v24)
    {
      v8 = 22;
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "readdir:bytes_left:%d:de_nextrec:%d:error:%d", v24, v38, 22);
      v11 = 0;
      goto LABEL_73;
    }

    v24 -= v38;
    v28 += v38;
  }

  v8 = v37;
  v11 = 0;
LABEL_73:
  v2 = v40;
LABEL_74:
  *(a1 + 24);
  kfree_type_impl();
LABEL_69:
  v9 = v21;
LABEL_7:
  v12 = *(a1 + 40);
  if (v12)
  {
    *v12 = v10;
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    *v13 = v11;
  }

  if (v9)
  {
    kfree_data();
  }

  v14 = uio_offset(*(a1 + 16));
  _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "readdir:finish:offset:%llx:numdirentries:%d:eof:%d:error:%d\n", v14, v10, v11, v8);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x314004Eu, v2, v10, v11, v8);
  }

  return v8;
}

char *lifs_vnop_mkdir(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = vnode_fsnode(v2);
  arg1 = 0;
  v5 = a1[3];
  v37 = 0u;
  *v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  memset(v14, 0, sizeof(v14));
  lifs_mount_from_node = get_lifs_mount_from_node(v4, &arg1);
  if (lifs_mount_from_node)
  {
    return lifs_mount_from_node;
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140051u, arg1, v2, v4, 0);
  }

  if (v5->cn_namelen > 1023)
  {
    lifs_mount_from_node = 63;
LABEL_17:
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug_filtered(0x3140052u, arg1, v2, v4, lifs_mount_from_node);
    }

    return lifs_mount_from_node;
  }

  convert_vnode_attr(&v15, a1[4]);
  *a1[4] |= 0x380uLL;
  result = kalloc_data();
  v8 = (v5->cn_namelen + 1);
  if (v8 < 0x401)
  {
    v9 = result;
    strlcpy(result, v5->cn_nameptr, v8);
    lck_rw_lock_exclusive((arg1 + 128));
    lifs_mount_from_node = lifs_mkdir_request(arg1, v9, v4 + 360, &v15, v14);
    if (!lifs_mount_from_node)
    {
      lifs_update_freespace(arg1, v38);
      if ((BYTE8(v15) & 1) == 0)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to retrieve updated attrs from created directory");
        convert_vnode_attr(&v15, a1[4]);
        DWORD2(v16) = 2;
        *(&v15 + 1) |= 1uLL;
      }

      lifs_create_node(*(arg1 + 448), v14, v2, v5, &v15, v3);
      if (v10)
      {
        lifs_mount_from_node = v10;
        v13 = 0;
        memset(v12, 0, sizeof(v12));
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: fail to create node [%d]", "lifs_vnop_mkdir", v10);
        lifs_rmdir_request(arg1, (v4 + 360), v14, v9, v12);
      }

      else
      {
        vnode_fsnode(*v3);
        if (v27)
        {
          update_lnode_attr(v4, &v26 + 8);
        }

        cache_purge_negatives(v2);
        cache_enter(v2, *v3, v5);
        lifs_invalidate_dirattrcache_ext(v4, 1);
        lifs_mount_from_node = 0;
      }
    }

    lck_rw_unlock_exclusive((arg1 + 128));
    if (v9)
    {
      kfree_data();
    }

    goto LABEL_17;
  }

  __break(0xBFFEu);
  return result;
}

void lifs_vnop_rmdir(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = vnode_fsnode(v1);
  v5 = vnode_fsnode(v2);
  bzero(__dst, 0x400uLL);
  arg1 = 0;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  bzero(v11, 0x268uLL);
  if (!get_lifs_mount_from_node(v4, &arg1))
  {
    if (!v2)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Missing lifs node to remove");
      return;
    }

    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug_filtered(0x3140055u, arg1, v1, v4, v2);
    }

    v6 = *(v3 + 48);
    if (v6 > 1023)
    {
      v7 = 63;
      goto LABEL_13;
    }

    v8 = (v6 + 1);
    if (v8 >= 0x401)
    {
      __break(0xBFFEu);
      return;
    }

    strlcpy(__dst, *(v3 + 40), v8);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    *&v24 = 0;
    lck_rw_lock_exclusive((arg1 + 128));
    if (!lifs_lookup(arg1, v4, v3, __dst, v11))
    {
      v9 = lifs_lookup_node(arg1, &v12);
      if (v9)
      {
        if (*(v9 + 552) == v2)
        {
          move_sillyrename_entries(v5, v4);
          v7 = lifs_rmdir_request(arg1, (v4 + 360), (v5 + 360), __dst, &v13);
          if (v7)
          {
            goto LABEL_12;
          }

          lifs_update_freespace(arg1, &v24 + 1);
          update_lnode_attr(v4, &v13);
          cache_purge(v2);
          lifs_invalidate_dirattrcache_ext(v4, 1);
          if (!vnode_isrecycled(v2))
          {
            vnode_recycle(v2);
          }
        }
      }
    }

    v7 = 0;
LABEL_12:
    lck_rw_unlock_exclusive((arg1 + 128));
LABEL_13:
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug_filtered(0x3140056u, arg1, v1, v4, v7);
    }
  }
}

uint64_t lifs_vnop_mmap(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = vnode_fsnode(v1);
  if (!v3)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Missing lifs node");
    return 22;
  }

  if (!v2)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Invalid mmap flags");
    return 22;
  }

  v4 = v3;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140059u, v1, v3, v3[88], v2);
  }

  lck_mtx_lock(v4);
  if (v2)
  {
    *(v4 + 352) |= 1u;
  }

  if ((v2 & 2) != 0)
  {
    *(v4 + 352) |= 3u;
  }

  lck_mtx_unlock(v4);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x314005Au, v1, v4, *(v4 + 352), 0);
  }

  return 0;
}

uint64_t lifs_vnop_mnomap(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = vnode_fsnode(v1);
  v9 = 0;
  lifs_mount_from_node = get_lifs_mount_from_node(v2, &v9);
  if (lifs_mount_from_node)
  {
    return lifs_mount_from_node;
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x314005Du, v1, v2, v2[88], 0);
  }

  lck_rw_lock_exclusive((v2 + 128));
  lck_mtx_lock(v2);
  v2[88] &= 0xFFFFFFFC;
  if (v2[126])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 | (v2[124] != 0);
  if (v2[125])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x314005Cu, v2, v2[127], v2[123], v6);
  }

  if (v2[127] && v2[123] == v6)
  {
    lck_mtx_unlock(v2);
  }

  else
  {
    v2[123] = v6;
    lck_mtx_unlock(v2);
    if ((*(v9 + 32) & 0x20) == 0)
    {
      v7 = lifs_close_request(v9, (v2 + 90), v6);
      goto LABEL_18;
    }
  }

  v7 = 0;
LABEL_18:
  lck_rw_unlock_exclusive((v2 + 128));
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x314005Eu, v1, v2, v2[88], v7);
  }

  return lifs_mount_from_node;
}

uint64_t lifs_vnop_remove(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = vnode_fsnode(v2);
  v5 = *(a1 + 8);
  v6 = *(a1 + 32);
  v7 = vnode_fsnode(v5);
  arg1 = 0;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140061u, v5, v2, v6, 0);
  }

  v21 = 0;
  v20 = 0u;
  memset(v19, 0, sizeof(v19));
  bzero(__dst, 0x400uLL);
  bzero(v16, 0x268uLL);
  result = get_lifs_mount_from_node(v7, &arg1);
  v9 = result;
  if (result)
  {
    goto LABEL_10;
  }

  v10 = *(v3 + 48);
  if (v10 <= 1023)
  {
    v11 = (v10 + 1);
    if (v11 >= 0x401)
    {
      __break(0xBFFEu);
      return result;
    }

    strlcpy(__dst, *(v3 + 40), v11);
    lck_rw_lock_exclusive((arg1 + 128));
    if (!lifs_lookup(arg1, v7, v3, __dst, v16))
    {
      v12 = lifs_lookup_node(arg1, &v17);
      if (v12)
      {
        if (*(v12 + 552) == v2)
        {
          v13 = vnode_isinuse(v2, 0);
          if (v13)
          {
            if (v6)
            {
              v9 = 16;
              goto LABEL_9;
            }

            v14 = arg1;
            if ((*(arg1 + 32) & 4) == 0)
            {
              v9 = lifs_sillyrename(v7, v4, __dst, *(a1 + 40));
              goto LABEL_9;
            }

            v6 |= 0x8000u;
          }

          else
          {
            v14 = arg1;
          }

          v9 = lifs_remove_request(v14, (v7 + 360), (v4 + 360), __dst, v6, v19);
          if (v9)
          {
            goto LABEL_9;
          }

          lifs_update_freespace(arg1, &v20 + 1);
          *(v4 + 26) = 0;
          *(v4 + 25) = 0;
          update_lnode_attr(v7, v19);
          cache_purge(v2);
          lifs_invalidate_dirattrcache_ext(v7, 1);
          if (v13)
          {
            *(v4 + 88) |= 0x80000u;
          }

          if (*(v4 + 12) == 1)
          {
            vnode_recycle(v2);
          }
        }
      }
    }

    v9 = 0;
LABEL_9:
    lck_rw_unlock_exclusive((arg1 + 128));
    goto LABEL_10;
  }

  v9 = 63;
LABEL_10:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140062u, arg1, v5, v7, v9);
  }

  return v9;
}

void lifs_vnop_link(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  bzero(__dst, 0x400uLL);
  v4 = vnode_fsnode(v2);
  v5 = vnode_fsnode(v1);
  arg1 = 0;
  *v11 = 0u;
  memset(v10, 0, sizeof(v10));
  if (!get_lifs_mount_from_node(v4, &arg1))
  {
    if (!v5)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Missing target node");
      return;
    }

    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug_filtered(0x3140069u, arg1, v2, v4, v5);
    }

    v6 = *(v3 + 48);
    if (v6 <= 1023)
    {
      v8 = (v6 + 1);
      if (v8 >= 0x401)
      {
        __break(0xBFFEu);
        return;
      }

      strlcpy(__dst, *(v3 + 40), v8);
      lck_rw_lock_exclusive((arg1 + 128));
      v7 = lifs_link_request(arg1, (v5 + 360), __dst, (v4 + 360), v10);
      if (!v7)
      {
        lifs_update_freespace(arg1, v11);
        update_lnode_attr(v5, v10);
        update_lnode_attr(v4, &v10[11] + 8);
        lifs_invalidate_dirattrcache_ext(v4, 1);
      }

      lck_rw_unlock_exclusive((arg1 + 128));
    }

    else
    {
      v7 = 63;
    }

    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug_filtered(0x314006Au, arg1, v4, v5, v7);
    }
  }
}

char *lifs_vnop_lookup(uintptr_t *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = vnode_fsnode(v3);
  arg1 = 0;
  v5 = a1[3];
  bzero(v20, 0x268uLL);
  v6 = *(v5 + 4);
  *v2 = 0;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x314006Du, a1[1], a1[3], 0, 0);
  }

  lifs_mount_from_node = get_lifs_mount_from_node(v4, &arg1);
  if (lifs_mount_from_node)
  {
    goto LABEL_35;
  }

  if (*(v5 + 48) <= 1023)
  {
    result = kalloc_data();
    v9 = (*(v5 + 48) + 1);
    if (v9 >= 0x401)
    {
      __break(0xBFFEu);
      return result;
    }

    v10 = result;
    strlcpy(result, *(v5 + 40), v9);
    if (*v10 == 46 && *(v5 + 48) == 1)
    {
      *v2 = v3;
      vnode_get(v3);
    }

    else if ((*(v5 + 5) & 0x20) != 0)
    {
      v15 = vnode_getparent(v3);
      *v2 = v15;
      if (!v15)
      {
        kfree_data();
        lifs_mount_from_node = 2;
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (!*v2)
    {
      lck_rw_lock_shared((arg1 + 128));
      while (1)
      {
        v11 = cache_lookup_ext();
        v12 = v11;
        if ((kdebug_enable & 0xFFFFFFF7) != 0)
        {
          kernel_debug_filtered(0x314006Cu, arg1, v3, *v2, v11);
        }

        if (v12 == -1)
        {
          lifs_mount_from_node = 2 * (*v2 == 0);
LABEL_52:
          lck_rw_unlock_shared((arg1 + 128));
          kfree_data();
          goto LABEL_35;
        }

        if (v12 == 2)
        {
          lifs_mount_from_node = 2;
          if ((*v5 | 2) == 3)
          {
            if ((*(v5 + 5) & 0x80) != 0)
            {
              lifs_mount_from_node = 4294967294;
            }

            else
            {
              lifs_mount_from_node = 2;
            }
          }

          goto LABEL_52;
        }

        v13 = lifs_lookup(arg1, v4, v5, v10, v20);
        lifs_mount_from_node = v13;
        if ((kdebug_enable & 0xFFFFFFF7) != 0)
        {
          kernel_debug_filtered(0x314006Cu, arg1, v4, *(v5 + 48), v13);
        }

        if (lifs_mount_from_node)
        {
          if (lifs_mount_from_node == 2)
          {
            v17 = (v6 >> 14) & 1;
            if (!*v5 && (*(arg1 + 41) & 0x40) == 0)
            {
              v18 = *(v5 + 40);
              if (v18)
              {
                if (*(v5 + 48) >= 3 && *v18 == 46 && v18[1] == 95)
                {
                  v17 = 0;
                }
              }
            }

            lifs_mount_from_node = handle_enoent_from_lookup(v3, v5, v17);
          }

          goto LABEL_52;
        }

        lifs_create_node(*(arg1 + 448), v21, v3, v5, v22, v2);
        if (!v14)
        {
          break;
        }

        lifs_mount_from_node = v14;
        if (v14 != 2)
        {
          goto LABEL_52;
        }

        *v2 = 0;
      }

      vnode_fsnode(*v2);
      v16 = v22[6] != 1 || v22[8] < 2u;
      if ((v6 & 0x4000) != 0)
      {
        cache_enter(v3, *v2, v5);
      }

      lck_rw_unlock_shared((arg1 + 128));
      goto LABEL_32;
    }

LABEL_24:
    v16 = 1;
LABEL_32:
    kfree_data();
    lifs_mount_from_node = 0;
    if (!v16 && *v2)
    {
      vnode_update_identity(*v2, v3, *(v5 + 40), *(v5 + 48), 0, 3);
      lifs_mount_from_node = 0;
    }

    goto LABEL_35;
  }

  lifs_mount_from_node = 63;
LABEL_35:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x314006Eu, a1[1], a1[3], *v2, lifs_mount_from_node);
  }

  return lifs_mount_from_node;
}

uint64_t lifs_vnop_symlink(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[5];
  v6 = vnode_fsnode(v2);
  arg1 = 0;
  *v18 = 0u;
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  lifs_mount_from_node = get_lifs_mount_from_node(v6, &arg1);
  if (lifs_mount_from_node)
  {
    return lifs_mount_from_node;
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140075u, arg1, v2, v6, 0);
  }

  if (v4->cn_namelen > 1023)
  {
    lifs_mount_from_node = 63;
LABEL_12:
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug_filtered(0x3140076u, arg1, v2, v6, lifs_mount_from_node);
    }

    return lifs_mount_from_node;
  }

  v8 = kalloc_data();
  v9 = kalloc_data();
  result = convert_vnode_attr(v17, a1[4]);
  *a1[4] |= 0x380uLL;
  v11 = (v4->cn_namelen + 1);
  if (v11 < 0x401)
  {
    strlcpy(v9, v4->cn_nameptr, v11);
    strlcpy(v8, v5, 0x400uLL);
    lck_rw_lock_exclusive((arg1 + 128));
    lifs_mount_from_node = lifs_symlink_request(arg1, v9, v8, v6 + 360, v17, v16);
    if (!lifs_mount_from_node)
    {
      lifs_update_freespace(arg1, v18);
      lifs_create_node(*(arg1 + 448), v16, v2, v4, v17, v3);
      lifs_mount_from_node = v12;
      if (v12)
      {
        v15 = 0;
        memset(v14, 0, sizeof(v14));
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: fail to create node [%d]", "lifs_vnop_symlink", v12);
        lifs_remove_request(arg1, (v6 + 360), v16, v9, 0, v14);
      }

      else
      {
        vnode_fsnode(*v3);
        update_lnode_attr(v6, &v17[11] + 8);
        cache_enter(v2, *v3, v4);
        lifs_invalidate_dirattrcache_ext(v6, 1);
      }
    }

    lck_rw_unlock_exclusive((arg1 + 128));
    kfree_data();
    kfree_data();
    goto LABEL_12;
  }

  __break(0xBFFEu);
  return result;
}

uint64_t lifs_vnop_pathconf(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = vnode_fsnode(v2);
  v10 = 0;
  arg1 = 0;
  lifs_mount_from_node = get_lifs_mount_from_node(v3, &arg1);
  if (lifs_mount_from_node)
  {
    return lifs_mount_from_node;
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140079u, arg1, v2, v3, 0);
  }

  lck_mtx_lock((arg1 + 96));
  if ((*(arg1 + 32) & 1) == 0)
  {
    lifs_pathconf(arg1, v3);
    if (v5)
    {
      goto LABEL_6;
    }
  }

  v6 = *(a1 + 16);
  lifs_mount_from_node = 22;
  if (v6 <= 10)
  {
    if (v6 > 6)
    {
      if (v6 == 7)
      {
        v7 = *(arg1 + 464);
      }

      else
      {
        if (v6 != 8)
        {
          goto LABEL_34;
        }

        v7 = *(arg1 + 468);
      }
    }

    else if (v6 == 1)
    {
      v7 = *(arg1 + 456);
    }

    else
    {
      if (v6 != 4)
      {
        goto LABEL_34;
      }

      v7 = *(arg1 + 460);
    }
  }

  else if (v6 <= 17)
  {
    if (v6 == 11)
    {
      v7 = *(arg1 + 472);
    }

    else
    {
      if (v6 != 12)
      {
        goto LABEL_34;
      }

      v7 = *(arg1 + 476);
    }
  }

  else
  {
    switch(v6)
    {
      case 18:
        v7 = *(arg1 + 480);
        break;
      case 26:
        v5 = lifs_getfsattr_call(v3, "_N_PC_XATTR_SIZE_BITS", &v10, 8);
        if (v5)
        {
LABEL_6:
          lifs_mount_from_node = v5;
          goto LABEL_34;
        }

        if (v10 >= 0x12)
        {
          v7 = 18;
        }

        else
        {
          v7 = v10;
        }

        break;
      case 27:
        if ((v3[353] & 8) == 0)
        {
          lifs_mount_from_node = 22;
          goto LABEL_34;
        }

        v8 = vnode_mount(v2);
        v7 = vfs_devblocksize(v8);
        break;
      default:
        goto LABEL_34;
    }
  }

  lifs_mount_from_node = 0;
  **(a1 + 24) = v7;
LABEL_34:
  lck_mtx_unlock((arg1 + 96));
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x314007Au, arg1, v2, v3, lifs_mount_from_node);
  }

  return lifs_mount_from_node;
}

uint64_t lifs_vnop_reclaim(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 22;
  }

  v17 = 0;
  cache_purge(v1);
  v2 = vnode_fsnode(v1);
  lifs_mount_from_node = get_lifs_mount_from_node(v2, &v17);
  v4 = lifs_mount_from_node;
  if (lifs_mount_from_node == 6 || lifs_mount_from_node == 0)
  {
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      v6 = v17;
      v7 = vnode_usecount();
      kernel_debug_filtered(0x314007Du, v6, v1, v2, v7);
    }

    vnode_removefsref(v1);
    v8 = *(v17 + 448);
    if (v8 && !vfs_isforce(*(v17 + 448)) && !vnode_isvroot(v1))
    {
      if (vfs_isunmount(v8))
      {
        v16[0] = 0;
        v16[1] = 0;
        LODWORD(v4) = lifs_reclaim_request(v17, (v2 + 360), v16);
        if (!v4)
        {
          lifs_update_freespace(v17, v16);
        }
      }

      else
      {
        v14 = kalloc_type_impl();
        v15 = v17;
        *v14 = v17;
        LODWORD(v4) = lifs_reclaim_request_async(v15, (v2 + 360), lifs_reclaim_done, v14, (v14 + 1));
      }
    }

    cleanup_sillyrename_entries(v2);
    lck_mtx_lock(v2);
    *(v2 + 88) |= 4u;
    lck_mtx_unlock(v2);
    lck_mtx_lock((v17 + 96));
    v9 = v17;
    if (v1 == *(v17 + 16))
    {
      *(v17 + 16) = 0;
    }

    else
    {
      lifs_hashremove(v2);
      v9 = v17;
    }

    lck_mtx_unlock((v9 + 96));
    if ((v2[353] & 8) != 0)
    {
      lck_rw_lock_exclusive((v2 + 944));
      lifs_purge_extents(*(v2 + 117));
      v10 = *(v2 + 117);
      lifs_deinit_extent_tree();
      lck_rw_unlock_exclusive((v2 + 944));
    }

    lck_rw_destroy((v2 + 624), lifs_node_grp);
    lck_mtx_destroy(v2, lifs_node_grp);
    lck_rw_destroy((v2 + 696), lifs_node_grp);
    lck_rw_destroy((v2 + 944), lifs_node_grp);
    lck_rw_destroy((v2 + 512), lifs_node_grp);
    vnode_clearfsnode(v1);
    lifs_free_supported_xattrs(v2);
    kfree_type_impl();
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      v11 = v17;
      v12 = vnode_usecount();
      kernel_debug_filtered(0x314007Eu, v11, v1, v12, v4);
    }

    return 0;
  }

  return v4;
}

uint64_t lifs_vnop_getattrlistbulk(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = vnode_fsnode(v2);
  v48 = 0;
  v5 = *(a1 + 32);
  v6 = uio_offset(v5);
  v7 = uio_resid(v5);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140081u, 0, v2, v6, v7);
  }

  *arg1 = 0u;
  *arg4 = 0u;
  if (vnode_vtype(v2) != VDIR)
  {
    v10 = 0;
    v9 = 20;
    goto LABEL_8;
  }

  lifs_mount_from_node = get_lifs_mount_from_node(v4, &v48);
  if (lifs_mount_from_node)
  {
    v9 = lifs_mount_from_node;
LABEL_6:
    v10 = 0;
    goto LABEL_8;
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    *v16 = 0;
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    *v17 = 0;
  }

  if (v6)
  {
    lck_rw_lock_shared((v4 + 696));
    v18 = *(v4 + 83);
    arg1[0] = *(v4 + 84);
    arg1[1] = v18;
    lck_rw_unlock_shared((v4 + 696));
  }

  else
  {
    arg1[0] = 0;
    arg1[1] = 0;
  }

  v19 = lifs_readdir_cached(v4, v48, v6, arg1, &arg1[1], a1, v3);
  v9 = v19;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140080u, arg1[0], **(a1 + 64), **(a1 + 56), v19);
  }

  if (v9 == -1000)
  {
    v10 = 0;
    v9 = 4294966296;
    goto LABEL_8;
  }

  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v45 = uio_offset(*(a1 + 32));
  v20 = uio_resid(*(a1 + 32));
  if (v20 >= 0x10000)
  {
    v21 = 0x10000;
  }

  else
  {
    v21 = v20;
  }

  v43 = arg1[1];
  v10 = kalloc_data();
  v22 = convert_va_active_to_requested_attributes(v3);
  v23 = lifs_getattrlistbulk_request(v48, arg1[0], (v4 + 360), v21, arg1[1], v22, v10, v21, arg1);
  if (v23)
  {
    v9 = v23;
    goto LABEL_8;
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140080u, v48, v2, arg1[1], SLODWORD(arg4[0]));
  }

  v24 = arg4[0];
  if ((arg4[0] & 0x80000000) != 0)
  {
    v9 = 22;
    goto LABEL_8;
  }

  if (LODWORD(arg4[0]))
  {
    v25 = v45;
    if (v45 && arg1[1] != v43)
    {
      v9 = 5;
      goto LABEL_8;
    }

    v40 = 0;
    v27 = v10;
    v28 = v45;
    while (1)
    {
      v42 = v28;
      v44 = v27;
      v41 = v24;
      v29 = lifs_pack_attrlist_entry(v3, v27, v24, a1, v48, v25, v28);
      if (v29 == -2)
      {
        v30 = v44;
        v33 = *v44;
        arg1[0] = *v44;
        v31 = *(v44 + 8);
        if (*(v44 + 8))
        {
          v34 = v33 == -1;
        }

        else
        {
          v34 = 1;
        }

        if (v34)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v9 = v29;
        v30 = v44;
        if (v29)
        {
          if (v29 != -1)
          {
            goto LABEL_8;
          }

          v28 = v42;
LABEL_61:
          uio_setoffset(v5, v28);
          v35 = *(a1 + 64);
          if (v35)
          {
            *v35 += v40;
          }

          v36 = *(a1 + 56);
          if (v36)
          {
            *v36 = arg1[0] == -1;
          }

          *(v4 + 71) = arg1[1];
          lck_rw_lock_exclusive((v4 + 696));
          v37 = (v4 + 712);
          v38 = 8;
          while (*v37 != v6)
          {
            v37 += 3;
            if (!--v38)
            {
              goto LABEL_72;
            }
          }

          v39 = arg1[0];
          if (arg1[0] == -1)
          {
            *v37 = 0;
            v37[1] = 0;
            v37[2] = 0;
          }

          else
          {
            *v37 = v28;
            v37[1] = v39;
            v37[2] = arg1[1];
          }

LABEL_72:
          lck_rw_unlock_exclusive((v4 + 696));
LABEL_73:
          v9 = 0;
          goto LABEL_8;
        }

        v28 = v42;
        if (__OFADD__(v40, 1))
        {
          lifs_vnop_getattrlistbulk_cold_1();
        }

        v31 = *(v44 + 8);
        v32 = *v44;
        arg1[0] = *v44;
        ++v40;
        if (!v31 || v32 == -1)
        {
          v28 = v42 + 1;
          goto LABEL_61;
        }
      }

      v27 = v30 + v31;
      ++v28;
      v24 = v41 - v31;
      v25 = v45;
      if (v41 <= v31)
      {
        goto LABEL_61;
      }
    }
  }

  v26 = *(a1 + 56);
  if (!v26)
  {
    goto LABEL_73;
  }

  v9 = 0;
  *v26 = 1;
LABEL_8:
  v11 = *(a1 + 56);
  if (v11 && *v11)
  {
    lifs_invalidate_dirattrcache(v4);
  }

  if (v9 == -1000)
  {
    v9 = 0;
    v12 = *(a1 + 56);
    **(a1 + 64) = 0;
    *v12 = 1;
  }

  if (v10)
  {
    kfree_data();
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    v13 = v48;
    v14 = uio_offset(v5);
    kernel_debug_filtered(0x3140082u, v13, v2, v9, v14);
  }

  return v9;
}

uint64_t lifs_vnop_readlink(uint64_t a1)
{
  v18 = 0;
  v2 = vnode_fsnode(*(a1 + 8));
  v3 = uio_offset(*(a1 + 16));
  v6 = a1 + 8;
  v4 = *(a1 + 8);
  v5 = *(v6 + 8);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    v7 = uio_offset(v5);
    v8 = uio_resid(v5);
    kernel_debug_filtered(0x3140085u, v4, v7, v8, 0);
  }

  if (vnode_vtype(v4) == VDIR)
  {
    lifs_mount_from_node = 21;
    goto LABEL_19;
  }

  lifs_mount_from_node = get_lifs_mount_from_node(v2, &v18);
  if (!lifs_mount_from_node)
  {
    lck_mtx_lock(v2);
    if (v3 >= *(v2 + 8))
    {
      goto LABEL_17;
    }

    v10 = *(v2 + 113);
    if (!v10)
    {
      bzero(__s, 0x400uLL);
      lck_mtx_unlock(v2);
      v11 = lifs_readlink_request(v18, (v2 + 360), __s);
      if (v11)
      {
        lifs_mount_from_node = v11;
        lck_mtx_lock(v2);
        goto LABEL_18;
      }

      v12 = strlen(__s);
      if (v12 >= 0x400)
      {
        lck_mtx_lock(v2);
      }

      else
      {
        v13 = v12 + 1;
        v14 = kalloc_data();
        strlcpy(v14, __s, v13);
        lck_mtx_lock(v2);
        if (v14)
        {
          if (*(v2 + 113))
          {
            kfree_data();
          }

          else
          {
            *(v2 + 113) = v14;
            *(v2 + 228) = v13;
          }
        }
      }

      v10 = *(v2 + 113);
      if (!v10)
      {
LABEL_17:
        lifs_mount_from_node = 0;
        goto LABEL_18;
      }
    }

    lifs_mount_from_node = uiomove(v10, *(v2 + 228) - 1, v5);
LABEL_18:
    lck_mtx_unlock(v2);
  }

LABEL_19:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    v15 = uio_offset(v5);
    v16 = uio_resid(v5);
    kernel_debug_filtered(0x3140086u, v4, v15, v16, lifs_mount_from_node);
  }

  return lifs_mount_from_node;
}

uint64_t lifs_vnop_access(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = vnode_mount(v2);
  v4 = vnode_fsnode(v2);
  arg1 = 0;
  lifs_mount_from_node = get_lifs_mount_from_node(v4, &arg1);
  if (!lifs_mount_from_node)
  {
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug_filtered(0x31400D1u, arg1, v2, v4, 0);
    }

    if (vfs_authopaqueaccess(v3))
    {
      lifs_mount_from_node = lifs_access_request(arg1, (v4 + 360), *(a1 + 16));
    }

    else
    {
      lifs_mount_from_node = 0;
    }

    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug_filtered(0x31400D2u, arg1, v2, v4, lifs_mount_from_node);
    }
  }

  return lifs_mount_from_node;
}

uint64_t lifs_vnop_open(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = vnode_fsnode(v2);
  arg1 = 0;
  lifs_mount_from_node = get_lifs_mount_from_node(v3, &arg1);
  if (lifs_mount_from_node)
  {
    return lifs_mount_from_node;
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140089u, arg1, v2, v3, *(a1 + 16));
  }

  lck_rw_lock_shared((v3 + 512));
  v5 = *(a1 + 16);
  v6 = v5 & 3;
  if ((*(arg1 + 32) & 0x20) != 0 || (lifs_mount_from_node = lifs_open_request(arg1, (v3 + 360), v5 & 3), !lifs_mount_from_node))
  {
    lck_mtx_lock(v3);
    if ((v3[353] & 0x20) != 0)
    {
      arg3 = 0;
      v17 = 0;
      lifs_mount_from_node = get_lifs_mount_from_node(v3, &v17);
      if (lifs_mount_from_node)
      {
        goto LABEL_33;
      }

      lck_mtx_unlock(v3);
      lifs_mount_from_node = lifs_getfsattr_call(v3, "_N_f_vdl", &arg3, 8);
      lck_mtx_lock(v3);
      if ((kdebug_enable & 0xFFFFFFF7) != 0)
      {
        kernel_debug_filtered(0x3140088u, v3, *(v3 + 76), arg3, lifs_mount_from_node);
      }

      if (lifs_mount_from_node)
      {
        goto LABEL_33;
      }

      v11 = *(v3 + 88);
      if ((v11 & 0x2000) != 0)
      {
        *(v3 + 77) = arg3;
        *(v3 + 88) = v11 & 0xFFFF9FFF | 0x4000;
      }
    }

    v7 = *(v3 + 127);
    *(v3 + 127) = v7 + 1;
    *(v3 + 123) |= v6;
    if (!v7 && (vfs_flags(*(arg1 + 448)) & 0x1000) == 0)
    {
      v8 = *(v3 + 124);
      if ((v8 || *(v3 + 125)) && (v8 != *(v3 + 14) || *(v3 + 125) != *(v3 + 15) || *(v3 + 126) != *(v3 + 8)))
      {
        v9 = ubc_getsize(v2);
        ubc_msync(v2, 0, v9, 0, 4);
      }
    }

    if (v6 == 3)
    {
      v10 = *(v3 + 126);
      *(v3 + 126) = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        lifs_vnop_open_cold_3();
      }
    }

    else if (v5)
    {
      v13 = *(v3 + 124);
      *(v3 + 124) = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        lifs_vnop_open_cold_1();
      }
    }

    else
    {
      v12 = *(v3 + 125);
      *(v3 + 125) = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        lifs_vnop_open_cold_2();
      }
    }

    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug_filtered(0x3140088u, *(v3 + 123), *(v3 + 124), *(v3 + 125), *(v3 + 126));
    }

    lifs_mount_from_node = 0;
LABEL_33:
    lck_mtx_unlock(v3);
  }

  lck_rw_unlock_shared((v3 + 512));
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x314008Au, arg1, v2, v3, lifs_mount_from_node);
  }

  return lifs_mount_from_node;
}

char *lifs_vnop_create(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = vnode_fsnode(v3);
  arg1 = 0;
  v5 = a1[3];
  *v19 = 0u;
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  lifs_mount_from_node = get_lifs_mount_from_node(v4, &arg1);
  if (lifs_mount_from_node)
  {
    return lifs_mount_from_node;
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x314008Du, arg1, v3, v4, 0);
  }

  if (v5->cn_namelen > 1023)
  {
    lifs_mount_from_node = 63;
LABEL_13:
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      v11 = arg1;
      v12 = *v2;
      if (v12)
      {
        v13 = vnode_fsnode(v12);
      }

      else
      {
        v13 = 0;
      }

      kernel_debug_filtered(0x314008Eu, v11, v12, v13, lifs_mount_from_node);
    }

    return lifs_mount_from_node;
  }

  convert_vnode_attr(v18, a1[4]);
  *a1[4] |= 0x380uLL;
  result = kalloc_data();
  v8 = (v5->cn_namelen + 1);
  if (v8 < 0x401)
  {
    v9 = result;
    strlcpy(result, v5->cn_nameptr, v8);
    lck_rw_lock_exclusive((arg1 + 128));
    lifs_mount_from_node = lifs_create_request(arg1, v9, v4 + 360, v18, v17);
    if (!lifs_mount_from_node)
    {
      lifs_update_freespace(arg1, v19);
      lifs_create_node(*(arg1 + 448), v17, v3, v5, v18, v2);
      lifs_mount_from_node = v10;
      if (v10)
      {
        v16 = 0;
        memset(v15, 0, sizeof(v15));
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: fail to create node [%d]", "lifs_vnop_create", v10);
        lifs_remove_request(arg1, (v4 + 360), v17, v9, 0, v15);
      }

      else
      {
        vnode_fsnode(*v2);
        update_lnode_attr(v4, &v18[11] + 8);
        cache_purge_negatives(v3);
        lifs_invalidate_dirattrcache_ext(v4, 1);
        cache_enter(v3, *v2, v5);
      }
    }

    lck_rw_unlock_exclusive((arg1 + 128));
    if (v9)
    {
      kfree_data();
    }

    goto LABEL_13;
  }

  __break(0xBFFEu);
  return result;
}

uint64_t lifs_vnop_close(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = vnode_fsnode(v2);
  arg1 = 0;
  v4 = *(a1 + 16);
  v30 = 0;
  lifs_mount_from_node = get_lifs_mount_from_node(v3, &arg1);
  if (lifs_mount_from_node)
  {
    return lifs_mount_from_node;
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140091u, arg1, v2, v3, v4);
  }

  if (vnode_vtype(v2) == VREG)
  {
    lck_rw_lock_shared((v3 + 624));
    cluster_push_err(v2, 1028, 0, 0, &v30);
    lifs_issue_endio(v3, v30, 0);
    lck_rw_unlock_shared((v3 + 624));
  }

  lck_rw_lock_exclusive((v3 + 512));
  v6 = v4 & 3;
  lck_mtx_lock(v3);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v8 = *(v3 + 125);
      v9 = __OFSUB__(v8, 1);
      v10 = v8 - 1;
      if (v10 < 0 == v9)
      {
        v7 = 0;
        v11 = 0;
        *(v3 + 125) = v10;
        v6 = 2;
        goto LABEL_18;
      }
    }

    else
    {
      v14 = *(v3 + 126);
      v9 = __OFSUB__(v14, 1);
      v15 = v14 - 1;
      if (v15 < 0 == v9)
      {
        v11 = 0;
        *(v3 + 126) = v15;
        v6 = 3;
        v7 = 1;
        goto LABEL_18;
      }
    }

    goto LABEL_16;
  }

  if ((v4 & 3) != 0)
  {
    v12 = *(v3 + 124);
    v9 = __OFSUB__(v12, 1);
    v13 = v12 - 1;
    if (v13 < 0 == v9)
    {
      v7 = 0;
      v11 = 0;
      *(v3 + 124) = v13;
      v6 = 1;
      goto LABEL_18;
    }

LABEL_16:
    v7 = 0;
    v6 = 0;
    goto LABEL_17;
  }

  v7 = 0;
LABEL_17:
  v11 = 1;
LABEL_18:
  if (*(v3 + 126))
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 | (*(v3 + 124) != 0);
  if (*(v3 + 88) & 2 | *(v3 + 125))
  {
    v17 |= 2u;
  }

  v18 = v17 | *(v3 + 88) & 1u;
  v19 = v3 + 492;
  *(v3 + 123) = v18;
  lck_mtx_unlock(v3);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140090u, v18, *(v3 + 124), *(v3 + 125), *(v3 + 126));
  }

  if ((*(arg1 + 32) & 0x20) == 0)
  {
    v20 = lifs_close_request(arg1, (v3 + 360), v18);
    if (v20)
    {
      v21 = v20;
      lck_mtx_lock(v3);
      if (v7)
      {
        v22 = *(v3 + 126);
        *(v3 + 126) = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          lifs_vnop_close_cold_3();
        }
      }

      else if (v6)
      {
        v28 = *(v3 + 124);
        *(v3 + 124) = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          lifs_vnop_close_cold_1();
        }
      }

      else if ((v11 & 1) == 0)
      {
        v24 = *(v3 + 125);
        *(v3 + 125) = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          lifs_vnop_close_cold_2();
        }
      }

      *v19 |= v6;
      goto LABEL_48;
    }
  }

  lck_mtx_lock(v3);
  v23 = *(v3 + 127) - 1;
  *(v3 + 127) = v23;
  if (v23)
  {
    goto LABEL_45;
  }

  *v19 = 0;
  *(v3 + 500) = 0;
  if ((vfs_flags(*(arg1 + 448)) & 0x1000) == 0)
  {
    *(v3 + 62) = *(v3 + 7);
    *(v3 + 126) = *(v3 + 8);
    invalidate_lnode_attr_locked(v3);
LABEL_45:
    v21 = 0;
    goto LABEL_48;
  }

  if (vnode_vtype(v2) != VREG)
  {
    goto LABEL_45;
  }

  v25 = *(v3 + 88);
  if ((v25 & 0x8000) == 0 || (v26 = vfs_flags(*(arg1 + 448)), v25 = *(v3 + 88), (v26 & 0x10000001) != 0))
  {
    if ((v25 & 0x10000) == 0)
    {
      goto LABEL_45;
    }
  }

  v27 = v25 & 0xFFFE7FFF;
  *(v3 + 88) = v27;
  if ((*(arg1 + 34) & 2) != 0)
  {
    goto LABEL_45;
  }

  v21 = 0;
  *(v3 + 88) = v27 | 0x20000;
LABEL_48:
  lck_mtx_unlock(v3);
  lck_rw_unlock_exclusive((v3 + 512));
  if (v30)
  {
    lifs_mount_from_node = v30;
  }

  else
  {
    lifs_mount_from_node = v21;
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140092u, arg1, v2, v3, lifs_mount_from_node);
  }

  return lifs_mount_from_node;
}

uint64_t lifs_vnop_getattr(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = vnode_fsnode(v2);
  arg1 = 0;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *arg3 = 0u;
  v29 = 0u;
  memset(v27, 0, sizeof(v27));
  lifs_mount_from_node = get_lifs_mount_from_node(v4, &arg1);
  if (lifs_mount_from_node)
  {
    return lifs_mount_from_node;
  }

  v6 = v3[1] & 0x14;
  v7 = v6 != 0;
  if (v6)
  {
    lck_rw_lock_shared((v4 + 624));
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140095u, arg1, v2, v4, v6 != 0);
  }

  lck_mtx_lock(v4);
  if (*(arg1 + 568) && *(v4 + 25))
  {
    tv.tv_sec = 0;
    *&tv.tv_usec = 0;
    if ((vfs_flags(*(arg1 + 448)) & 0x1000) != 0 && (*(arg1 + 34) & 2) != 0)
    {
      v8 = 0x7FFFFFFFLL;
    }

    else
    {
      v8 = *(arg1 + 568);
    }

    microuptime(&tv);
    timevalsub(&tv, (v4 + 200));
    if ((v4[354] & 2) == 0)
    {
      goto LABEL_18;
    }

    v9 = v3[1];
    v10 = (v9 >> 3) & 1;
    if ((v9 & 0x20) != 0)
    {
      LOBYTE(v10) = 1;
    }

    v11 = (v9 >> 15) & 1;
    if ((v9 & 0x6000) != 0)
    {
      LOBYTE(v11) = 1;
    }

    if (!(v10 & 1 | (v9 >> 17) & 1 | v11 & 1))
    {
LABEL_18:
      if (tv.tv_sec < v8)
      {
        goto LABEL_20;
      }
    }

    if (vfs_isrdonly(*(arg1 + 448)))
    {
LABEL_20:
      lifs_pack_vap(v3, (v4 + 16), *(arg1 + 448));
      v12 = v3[1];
      if ((v12 & 0x10) != 0)
      {
        v13 = *(v4 + 76);
        if (v13 > v3[6])
        {
          v3[6] = v13;
          *v3 |= 0x10uLL;
        }
      }

      if ((v12 & 4) != 0)
      {
        v14 = *(v4 + 76);
        if (v14 > v3[4])
        {
          v3[4] = v14;
          *v3 |= 4uLL;
        }
      }

      lck_mtx_unlock(v4);
      if ((kdebug_enable & 0xFFFFFFF7) != 0)
      {
        kernel_debug_filtered(0x3140094u, arg1, v4, v8, tv.tv_sec);
      }

      v15 = 0;
      v16 = 0;
      v7 = 0;
LABEL_47:
      lifs_mount_from_node = 0;
      if (v6)
      {
        goto LABEL_48;
      }

      goto LABEL_54;
    }
  }

  lck_mtx_unlock(v4);
  if (v6 && !lck_rw_lock_shared_to_exclusive((v4 + 624)))
  {
    lck_rw_lock_exclusive((v4 + 624));
  }

  v17 = lifs_getattr_request(arg1, (v4 + 360), v27);
  if (!v17)
  {
    lck_mtx_lock(v4);
    if (update_lnode_attr_locked(v4, v27))
    {
      v18 = *(v4 + 88);
      if ((v18 & 0x20000) != 0)
      {
        *(v4 + 88) = v18 & 0xFFFDFFFF;
      }

      lifs_pack_vap(v3, (v4 + 16), *(arg1 + 448));
      if (v6 && (BYTE8(v27[0]) & 0x40) != 0)
      {
        v19 = *(v4 + 76);
        v15 = v19;
        if (!*(v4 + 127))
        {
          v15 = 0;
          *(v4 + 76) = 0;
        }

        v20 = arg3[0];
        if (arg3[0] <= v15)
        {
          if (arg3[0] < v15)
          {
            v23 = *(a1 + 16);
            v24 = v23[1];
            if ((v24 & 0x10) != 0)
            {
              v23[6] = v15;
              *v23 |= 0x10uLL;
            }

            if ((v24 & 4) != 0)
            {
              v23[4] = v15;
              *v23 |= 4uLL;
            }
          }
        }

        else
        {
          *(v4 + 76) = arg3[0];
          v15 = v20;
        }

        v16 = v19 != v15;
        if ((*(arg1 + 32) & 0x40) == 0)
        {
          *(v4 + 77) = v15;
        }

        if ((kdebug_enable & 0xFFFFFFF7) != 0)
        {
          kernel_debug_filtered(0x3140094u, v2, v19, v15, *(v4 + 77));
        }

        goto LABEL_46;
      }
    }

    else
    {
      lifs_pack_vap(v3, (v4 + 16), *(arg1 + 448));
    }

    v15 = 0;
    v16 = 0;
LABEL_46:
    lck_mtx_unlock(v4);
    goto LABEL_47;
  }

  lifs_mount_from_node = v17;
  v15 = 0;
  v16 = 0;
  if (v6)
  {
LABEL_48:
    if (v16)
    {
      lifs_set_io_lock_override(v4);
      ubc_setsize(v2, v15);
      if (!*(v4 + 80))
      {
        panic("%s: override is not set for lnode %p io_lock @%s:%d", "lifs_clear_io_lock_override", v4, "lifs_vnops.c", 201);
      }

      *(v4 + 80) = 0;
    }

    v21 = (v4 + 624);
    if (v7)
    {
      lck_rw_unlock_exclusive(v21);
    }

    else
    {
      lck_rw_unlock_shared(v21);
    }
  }

LABEL_54:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140096u, arg1, v2, v4, lifs_mount_from_node);
  }

  return lifs_mount_from_node;
}

uint64_t lifs_vnop_setattr(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = vnode_fsnode(v2);
  arg1 = 0;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  memset(v52, 0, sizeof(v52));
  v5 = *(v3 + 8);
  lifs_mount_from_node = get_lifs_mount_from_node(v4, &arg1);
  if (lifs_mount_from_node)
  {
    return lifs_mount_from_node;
  }

  v7 = v5 & 0x10;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140099u, arg1, v2, v4, (v5 & 0x10) >> 4);
  }

  convert_vnode_attr(v52, v3);
  v20 = v5 & 0x4010;
  if ((v5 & 0x4010) == 0)
  {
    v11 = 0;
    v12 = 0;
    v10 = arg1;
    goto LABEL_13;
  }

  v22 = 0;
  v23 = v2;
  *(&v24 + 1) = a1[3];
  *&v24 = 1;
  lck_rw_lock_exclusive((v4 + 78));
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140098u, v2, v4, (v5 & 0x10) >> 4, (v5 >> 14) & 1);
  }

  lifs_set_io_lock_override(v4);
  v8 = vnode_hasdirtyblks(v2) != 0;
  v9 = lifs_fsync_internal(&v22, v8);
  if (!v4[80])
  {
    goto LABEL_50;
  }

  lifs_mount_from_node = v9;
  v4[80] = 0;
  if (!v9)
  {
    v10 = arg1;
    if (*(v3 + 48) > *(arg1 + 840))
    {
      lifs_mount_from_node = 27;
      goto LABEL_15;
    }

    v11 = *(v3 + 48);
    v12 = v4[76];
LABEL_13:
    lifs_mount_from_node = lifs_setattr_request(v10, v4 + 45, v52, v52);
    if (lifs_mount_from_node)
    {
      goto LABEL_14;
    }

    lifs_update_freespace(arg1, &v61 + 1);
    lck_mtx_lock(v4);
    update_lnode_attr_locked(v4, v52);
    lifs_pack_vap(v3, v52, *(arg1 + 448));
    lck_mtx_unlock(v4);
    if (!v7 || v11 == v12)
    {
      goto LABEL_14;
    }

    v4[76] = v11;
    if ((*(v4 + 353) & 8) != 0)
    {
      if ((kdebug_enable & 0xFFFFFFF7) != 0)
      {
        kernel_debug_filtered(0x3140098u, v4, v12, v11, v4[77]);
      }

      if (v11 >= v12)
      {
        if ((*(arg1 + 40) & 0x40) == 0 && (*(arg1 + 32) & 0x40) == 0 && (*(v3 + 16) & 0x20) == 0)
        {
          lifs_mount_from_node = cluster_write(v2, 0, v12, v11, v12, 0, 132);
          lifs_issue_endio(v4, lifs_mount_from_node, 0);
          if ((kdebug_enable & 0xFFFFFFF7) != 0)
          {
            kernel_debug_filtered(0x3140098u, v4, v12, v11, lifs_mount_from_node);
          }

          if (lifs_mount_from_node)
          {
            v51 = 0;
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v22 = 0;
            v24 = 0u;
            v26 = v12;
            v23 = 16;
            convert_vnode_attr(v52, &v22);
            if (!lifs_setattr_request(arg1, v4 + 45, v52, v52))
            {
              lifs_update_freespace(arg1, &v61 + 1);
              lck_mtx_lock(v4);
              update_lnode_attr_locked(v4, v52);
              v4[76] = v53;
              lck_mtx_unlock(v4);
            }

LABEL_14:
            if (!v20)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }
        }
      }

      else
      {
        lck_rw_lock_exclusive((v4 + 118));
        lifs_purge_extents(v4[117]);
        lck_rw_unlock_exclusive((v4 + 118));
      }
    }

    lck_mtx_lock(v4);
    if (v11 <= v12)
    {
      if (v11 < v12 && v4[77] > v11)
      {
        v4[77] = v11;
        if ((*(arg1 + 32) & 0x40) != 0)
        {
          v15 = vfs_devblocksize(*(arg1 + 448));
          v16 = v4[77];
          if (v11 % v15)
          {
            v17 = vfs_devblocksize(*(arg1 + 448));
            v18 = v4[77];
            v19 = vfs_devblocksize(*(arg1 + 448));
            v14 = v16 + v17 + v18 / v19 * v19 - v18;
            v16 = v4[77];
          }

          else
          {
            v14 = v4[77];
          }

          lifs_mount_from_node = v14 > v16;
LABEL_41:
          lck_mtx_unlock(v4);
          lifs_set_io_lock_override(v4);
          ubc_setsize(v2, v11);
          if (v4[80])
          {
            v4[80] = 0;
            if (lifs_mount_from_node)
            {
              lifs_mount_from_node = cluster_write(v2, 0, v4[77], v14, v4[77], 0, 132);
              lifs_issue_endio(v4, lifs_mount_from_node, 0);
              if ((kdebug_enable & 0xFFFFFFF7) != 0)
              {
                kernel_debug_filtered(0x3140098u, v4, v4[77], v14, lifs_mount_from_node);
              }
            }

            goto LABEL_14;
          }

LABEL_50:
          panic("%s: override is not set for lnode %p io_lock @%s:%d", "lifs_clear_io_lock_override", v4, "lifs_vnops.c", 201);
        }
      }
    }

    else if ((*(arg1 + 32) & 0x40) == 0)
    {
      v14 = 0;
      lifs_mount_from_node = 0;
      v4[77] = v11;
      goto LABEL_41;
    }

    v14 = 0;
    lifs_mount_from_node = 0;
    goto LABEL_41;
  }

LABEL_15:
  lck_rw_unlock_exclusive((v4 + 78));
LABEL_16:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x314009Au, arg1, v2, v4, lifs_mount_from_node);
  }

  return lifs_mount_from_node;
}

void lifs_vnop_blockmap(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = vnode_fsnode(v2);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 56);
  LOBYTE(v7) = v6;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x314009Du, v2, *(a1 + 16), *(a1 + 24), v6);
    v7 = *(a1 + 56);
  }

  v60 = 0;
  if ((v7 & 3) != 0)
  {
    lifs_mount_from_node = get_lifs_mount_from_node(v3, &v60);
    if (!lifs_mount_from_node)
    {
      v9 = vfs_devblocksize(*(v60 + 448));
      lck_mtx_lock_spin();
      if ((kdebug_enable & 0xFFFFFFF7) != 0)
      {
        kernel_debug_filtered(0x314009Cu, v2, v9, *(v3 + 76), *(v3 + 77));
      }

      v10 = 616;
      if ((v6 & 1) == 0)
      {
        v10 = 608;
      }

      v11 = *&v3[v10];
      if (v11 % v9)
      {
        v12 = v9 - v11 % v9;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12 + v11;
      lck_mtx_unlock(v3);
      if (v13 <= v5)
      {
        if (v6)
        {
          v17 = -1;
LABEL_103:
          v46 = *(a1 + 32);
          if (v46)
          {
            *v46 = v17;
          }

          v47 = *(a1 + 40);
          if (v47)
          {
            v48 = *(a1 + 24);
            if (v4 < v48)
            {
              v48 = v4;
            }

            *v47 = v48;
          }

          v49 = *(a1 + 48);
          lifs_mount_from_node = 0;
          if (v49)
          {
            *v49 = 0;
          }

          goto LABEL_111;
        }

        if ((v3[353] & 8) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v4 + v5 > v13)
        {
          v4 = v13 - v5;
        }

        if ((v3[353] & 8) == 0)
        {
          if (v6)
          {
            v14 = &lifs_max_read_blockmap_size;
            v15 = &lifs_max_ssd_read_blockmap_size;
LABEL_22:
            if (*(v60 + 808))
            {
              v14 = v15;
            }

            v16 = *v14;
            if (v4 >= v16)
            {
              v4 = v16;
            }

            v17 = v5 / v9;
            goto LABEL_103;
          }

LABEL_21:
          v14 = &lifs_max_write_blockmap_size;
          v15 = &lifs_max_ssd_write_blockmap_size;
          goto LABEL_22;
        }
      }

      v18 = *(a1 + 56);
      v57 = v60;
      v56 = vfs_devblocksize(*(v60 + 448));
      if ((kdebug_enable & 0xFFFFFFF7) != 0)
      {
        kernel_debug_filtered(0x31400E1u, v3, v18, v5, v4);
      }

      lck_mtx_lock(v3);
      if (v5 + v4 <= v11)
      {
        v19 = v4;
      }

      else
      {
        v19 = v11 - v5;
      }

      if (v11 <= v5)
      {
        v19 = v4;
      }

      v59 = v19;
      lck_mtx_unlock(v3);
      endio_context = lifs_get_endio_context(v3);
      if (!endio_context)
      {
        goto LABEL_50;
      }

      v21 = endio_context;
      if ((v18 & 2) == 0 || (endio_context[7] & 0x100) == 0)
      {
        v25 = endio_context[5];
        v26 = endio_context[6];
        if (v26 + v25 <= v5)
        {
          endio_context[6] = v5 + v59 - v25;
        }

        else
        {
          v36 = v25 > v5;
          v27 = v25 - v5;
          if (v36)
          {
            endio_context[5] = v5;
            endio_context[6] = v27 + v26;
          }
        }

LABEL_54:
        if ((kdebug_enable & 0xFFFFFFF7) != 0)
        {
          kernel_debug_filtered(0x31400E0u, v21, *(v21 + 40), *(v21 + 48), *(v21 + 32));
        }

        lck = (v3 + 944);
        lck_rw_lock_exclusive((v3 + 944));
        extent = lifs_get_extent(*(v3 + 117), v5, v59);
        if (extent)
        {
          v31 = extent;
          if ((v18 & 2) == 0 || *(extent + 59) << 24 != 0x2000000 || (*(v57 + 40) & 0x40) == 0)
          {
            v32 = extent[5];
            if (v32 <= v5 || v32 >= v5 + v59)
            {
              goto LABEL_81;
            }

            v54 = v18 & 2;
            v55 = v18;
LABEL_68:
            v35 = atomic_load(v3 + 244);
            lck_rw_unlock_exclusive(lck);
            v36 = v5 + v35 <= v11 && v35 > v59;
            if (!v36 || v54 == 0)
            {
              v38 = v59;
            }

            else
            {
              v38 = v35;
            }

            extent_layout = lifs_get_extent_layout(v57, v3, v21, v5, v38, v55);
            if (extent_layout)
            {
              lifs_mount_from_node = extent_layout;
LABEL_79:
              v17 = -1;
LABEL_96:
              if ((kdebug_enable & 0xFFFFFFF7) != 0)
              {
                kernel_debug_filtered(0x31400E2u, v3, v17, v4, lifs_mount_from_node);
              }

              if (lifs_mount_from_node)
              {
                goto LABEL_111;
              }

              v45 = 800;
              if ((v6 & 1) == 0)
              {
                v45 = 804;
              }

              if (v4 >= *(v60 + v45))
              {
                v4 = *(v60 + v45);
              }

              goto LABEL_103;
            }

            lck_rw_lock_exclusive(lck);
            v31 = lifs_get_extent(*(v3 + 117), v5, v59);
            if (v31)
            {
LABEL_81:
              if ((kdebug_enable & 0xFFFFFFF7) != 0)
              {
                kernel_debug_filtered(0x31400E0u, v31[5], v31[6], v31[4], *(v31 + 59));
              }

              v40 = v31[5];
              v41 = v31[6];
              v42 = v41 + v40;
              if (v41 + v40 >= v5 + v59)
              {
                if (v59 % v56)
                {
                  v44 = v56 - v59 % v56;
                }

                else
                {
                  v44 = 0;
                }

                v4 = v44 + v59;
              }

              else
              {
                v36 = v42 > v5;
                v43 = v42 - v5;
                if (!v36)
                {
                  _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: extent range [%llu:%llu] doesn't overlap with range [%llu:%u]", "lifs_koio_blockmap", v40, v41, v5, v59);
                  lifs_mount_from_node = 5;
                  goto LABEL_94;
                }

                v4 = v43;
              }

              if (*(v31 + 59) == 1)
              {
                lifs_mount_from_node = 0;
                v17 = (v5 - v40 + v31[4]) / v56;
LABEL_95:
                lck_rw_unlock_exclusive(lck);
                goto LABEL_96;
              }

              lifs_mount_from_node = 0;
LABEL_94:
              v17 = -1;
              goto LABEL_95;
            }

LABEL_121:
            lck_rw_unlock_exclusive(lck);
            _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: no extent found for lnode %p offset %lld size %u", "lifs_koio_blockmap", v3, v5, v59);
            lifs_mount_from_node = 5;
            goto LABEL_79;
          }

          v55 = v18;
          lifs_remove_extent(*(v3 + 117), v5, v59);
          v34 = 1;
        }

        else
        {
          v55 = v18;
          v34 = v18 & 2;
        }

        v54 = v34;
        goto LABEL_68;
      }

      lck_mtx_lock(v3);
      v22 = *v21;
      if (*v21)
      {
        if (*(v22 + 8) != v21)
        {
          __break(0xBFFDu);
          return;
        }

        v23 = *(v21 + 8);
        if (*v23 == v21)
        {
          *(v22 + 8) = v23;
          v24 = *(v21 + 8);
LABEL_49:
          *v24 = v22;
          lck_mtx_unlock(v3);
          kfree_type_impl();
LABEL_50:
          if (v18)
          {
            v28 = 256;
          }

          else
          {
            v28 = 512;
          }

          v21 = kalloc_type_impl();
          *(v21 + 16) = v3;
          *(v21 + 24) = current_thread();
          *(v21 + 40) = v5;
          *(v21 + 48) = v59;
          *(v21 + 56) = v28;
          *(v21 + 32) = OSAddAtomic64(1, &koio_operation_id);
          lck_mtx_lock(v3);
          v29 = *(v3 + 121);
          *v21 = 0;
          *(v21 + 8) = v29;
          *v29 = v21;
          *(v3 + 121) = v21;
          lck_mtx_unlock(v3);
          goto LABEL_54;
        }
      }

      else
      {
        v24 = *(v21 + 8);
        if (*v24 == v21)
        {
          *(v3 + 121) = v24;
          goto LABEL_49;
        }
      }

      __break(0xBFFDu);
      goto LABEL_121;
    }
  }

  else
  {
    lifs_mount_from_node = 45;
  }

LABEL_111:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    v50 = *(a1 + 32);
    if (v50)
    {
      v51 = *v50;
    }

    else
    {
      v51 = -2;
    }

    v52 = *(a1 + 40);
    if (v52)
    {
      v53 = *v52;
    }

    else
    {
      v53 = -2;
    }

    kernel_debug_filtered(0x314009Eu, v2, v51, v53, lifs_mount_from_node);
  }
}

uint64_t lifs_vnop_strategy(void *a1)
{
  v2 = a1[1];
  v3 = buf_vnode(v2);
  v4 = vnode_fsnode(v3);
  v62 = 0;
  v5 = buf_count(v2);
  v6 = buf_flags(v2);
  v7 = buf_kernel_addrperm_addr();
  if (use_new_strategy && v5 >= 0x4000)
  {
    v8 = a1[1];
    v9 = buf_vnode(v8);
    v10 = vnode_fsnode(v9);
    v11 = buf_flags(v8);
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      v12 = buf_blkno(v8);
      v13 = buf_count(v8);
      kernel_debug_filtered(0x31400B5u, v9, v12, v13, v11);
    }

    v63 = 0;
    v64 = 0;
    lifs_port = get_lifs_port(&v64);
    LODWORD(arg4) = lifs_port;
    if (lifs_port)
    {
      goto LABEL_50;
    }

    v15 = buf_blkno(v8) << 20;
    LODWORD(v16) = buf_count(v8);
    lck_mtx_lock(v10);
    v17 = *(v10 + 76);
    lck_mtx_unlock(v10);
    if (v15 + v16 > v17 && v17 > v15)
    {
      v16 = (v17 - v15);
    }

    else
    {
      v16 = v16;
    }

    if (wrapperObjectForBuf(v8))
    {
      ident_port = iokit_make_ident_port();
      v20 = (v10 + 360);
      if (v11)
      {
        v21 = (&v63 + 4);
        v22 = lifs_read_wrapped_send(v64, v20, v15, v16, ident_port, &v63 + 1, &arg4);
      }

      else
      {
        v21 = &v63;
        v22 = lifs_write_wrapped_send(v64, v20, v15, v16, ident_port, &v63, &arg4);
      }

      v53 = v22;
      buf_setresid(v8, v16 - *v21);
      release_lifs_port();
      lifs_port = arg4;
      if (arg4 || !v53)
      {
LABEL_50:
        buf_seterror(v8, lifs_port);
        if ((kdebug_enable & 0xFFFFFFF7) != 0)
        {
          v54 = buf_blkno(v8);
          v55 = buf_count(v8);
          kernel_debug_filtered(0x31400B6u, v9, v54, v55, arg4);
        }

        buf_biodone(v8);
        return arg4;
      }

      lifs_port = 5;
    }

    else
    {
      lifs_port = 12;
    }

    LODWORD(arg4) = lifs_port;
    goto LABEL_50;
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    v23 = buf_blkno(v2);
    kernel_debug_filtered(0x31400A1u, v3, v7, v23, v6 | (v5 << 32));
  }

  lifs_mount_from_node = get_lifs_mount_from_node(v4, &v62);
  if (lifs_mount_from_node)
  {
    v25 = lifs_mount_from_node;
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      v26 = buf_blkno(v2);
      kernel_debug_filtered(0x31400A2u, v3, v7, v26, v25 | (v5 << 32));
    }

    buf_seterror(v2, v25);
    buf_biodone(v2);
  }

  else
  {
    if ((*(v4 + 353) & 8) != 0)
    {
      v49 = v62;
      v50 = a1[1];
      explicit = atomic_load_explicit((v62 + 792), memory_order_acquire);
      if (explicit)
      {
        lifs_dev_ref(v49);
        v52 = kalloc_type_impl();
        *v52 = v49;
        v52[1] = v50;
        buf_setfilter();
        v25 = buf_strategy(explicit, a1);
        v36 = 0;
      }

      else
      {
        lifs_vnop_strategy_cold_1(v50);
        v36 = 0;
        v25 = 6;
      }
    }

    else
    {
      if (kdebug_enable)
      {
        buf_attr(v2);
        v27 = buf_flags(v2);
        v28 = bufattr_nocache();
        thread_effective_io_policy = throttle_get_thread_effective_io_policy();
        if ((kdebug_enable & 9) != 0)
        {
          v30 = (v27 >> 3) & 0x10 | (2 * (v27 & 3)) | (v27 >> 5) & 0x40;
          if (v28)
          {
            LOWORD(v30) = v30 | 0x80;
          }

          v31 = ((thread_effective_io_policy & 0xF) << 8) | 0x20;
          if (!thread_effective_io_policy)
          {
            v31 = 0;
          }

          v32 = (4 * ((v30 | v31) & 0x3FFF)) | 0x3020000;
          arg1 = buf_kernel_addrperm_addr();
          v33 = buf_device(v2);
          v34 = buf_blkno(v2);
          v35 = buf_count(v2);
          kernel_debug(v32, arg1, v33, v34, v35, 0);
        }
      }

      v36 = kalloc_type_impl();
      *(v36 + 24) = v4;
      *(v36 + 32) = v2;
      *(v36 + 16) = v6 & 1;
      v37 = buf_blkno(v2);
      v38 = v37 * vfs_devblocksize(*(v62 + 448));
      lck_mtx_lock_spin();
      v39 = 608;
      if (*(v36 + 16))
      {
        v39 = 616;
      }

      v40 = *(v4 + v39);
      lck_mtx_unlock(v4);
      if (v40 > v38 && v38 + v5 > v40)
      {
        v42 = v40 - v38;
        if (*(v36 + 16))
        {
          v43 = vfs_devblocksize(*(v62 + 448));
          v44 = v40 - v38;
          if (v42 % v43)
          {
            v45 = vfs_devblocksize(*(v62 + 448));
            v46 = vfs_devblocksize(*(v62 + 448));
            v44 = v45 + v42 / v46 * v46;
          }

          if (v44 < v5)
          {
            LODWORD(v5) = v42;
            if (v42 % vfs_devblocksize(*(v62 + 448)))
            {
              v47 = vfs_devblocksize(*(v62 + 448));
              v48 = vfs_devblocksize(*(v62 + 448));
              LODWORD(v5) = v47 + v42 / v48 * v48;
            }
          }
        }

        else
        {
          LODWORD(v5) = v40 - v38;
        }
      }

      *(v36 + 40) = v5;
      *(v36 + 17) = 0;
      v57 = *(v62 + 592);
      v58 = *(v62 + 808);
      throttle_info_update_with_type();
      if ((*(v36 + 16) & 1) != 0 || v5 < lifs_max_inline_io_size || vnode_isrecycled(v3) || vnode_ref(v3))
      {
        lifs_submit_io(v62, v36);
      }

      else
      {
        *(v36 + 17) = 1;
        lck_mtx_lock((v62 + 712));
        *v36 = 0;
        v59 = *(v62 + 640);
        *(v36 + 8) = v59;
        *v59 = v36;
        v60 = v62;
        *(v62 + 640) = v36;
        wakeup_one((v60 + 632));
        lck_mtx_unlock((v62 + 712));
      }

      v25 = 0;
    }

    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug_filtered(0x31400A2u, v3, v7, v36, v25);
    }
  }

  return v25;
}

uint64_t lifs_vnop_inactive(uint64_t a1)
{
  v2 = vnode_fsnode(*(a1 + 8));
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400A5u, *(a1 + 8), 0, 0, 0);
  }

  v22 = 0;
  lifs_mount_from_node = get_lifs_mount_from_node(v2, &v22);
  if (lifs_mount_from_node)
  {
    v4 = lifs_mount_from_node;
    if (lifs_mount_from_node == 6)
    {
      lck_mtx_lock(v2);
      v5 = v2[88];
      if ((v5 & 0x40) != 0)
      {
        v2[88] = v5 & 0xFFFFFFBF;
        v6 = *(v2 + 73);
        *(v2 + 73) = 0;
      }

      else
      {
        v6 = 0;
      }

      v10 = *(v2 + 113);
      if (v10)
      {
        v11 = v2[228];
        *(v2 + 113) = 0;
        v2[228] = 0;
      }

      lck_mtx_unlock(v2);
      lifs_invalidate_dirattrcache(v2);
      if (v6)
      {
        kfree_data();
      }

      if (v10)
      {
        kfree_data();
      }
    }

    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      v12 = -1;
LABEL_37:
      kernel_debug_filtered(0x31400A6u, *(a1 + 8), v4, v12, 0);
      return 0;
    }

    return 0;
  }

  lck_mtx_lock(v2);
  v7 = v2[88];
  v8 = *(v2 + 113);
  if (v8)
  {
    v9 = v2[228];
    *(v2 + 113) = 0;
    v2[228] = 0;
  }

  v13 = v2[145];
  lck_mtx_unlock(v2);
  lifs_invalidate_dirattrcache(v2);
  lck_mtx_lock(v2);
  *(v2 + 218) = 0u;
  *(v2 + 222) = 0u;
  *(v2 + 210) = 0u;
  *(v2 + 214) = 0u;
  *(v2 + 202) = 0u;
  *(v2 + 206) = 0u;
  *(v2 + 194) = 0u;
  *(v2 + 198) = 0u;
  *(v2 + 186) = 0u;
  *(v2 + 190) = 0u;
  *(v2 + 178) = 0u;
  *(v2 + 182) = 0u;
  lck_mtx_unlock(v2);
  if (v8)
  {
    kfree_data();
  }

  if ((v7 & 0x40) != 0)
  {
    v15 = vnode_getparent(*(a1 + 8));
    if (v15)
    {
      v16 = v15;
      if (v13 == vnode_vid(v15))
      {
        v17 = vnode_fsnode(v16);
        lck_rw_lock_exclusive((v22 + 128));
        lck_mtx_lock(v2);
        if ((v2[88] & 0x40) != 0)
        {
          *&v37 = 0;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v30 = 0u;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v25 = 0u;
          lck_mtx_unlock(v2);
          v4 = lifs_remove_request(v22, (v17 + 360), (v2 + 90), *(v2 + 73), 0, &v25);
          if (!v4)
          {
            lifs_update_freespace(v22, &v36 + 1);
            cache_purge(*(a1 + 8));
          }

          lck_mtx_lock(v2);
          v2[88] &= ~0x40u;
          v18 = *(v2 + 73);
          *(v2 + 73) = 0;
          lck_mtx_unlock(v2);
        }

        else
        {
          lck_mtx_unlock(v2);
          v18 = 0;
          v4 = 0;
        }

        lck_rw_unlock_exclusive((v22 + 128));
        vnode_put(v16);
        if (v18)
        {
          kfree_data();
        }

        goto LABEL_22;
      }

      lck_mtx_lock(v2);
      v2[88] &= ~0x40u;
      v20 = *(v2 + 73);
      *(v2 + 73) = 0;
      lck_mtx_unlock(v2);
      kfree_data();
      vnode_put(v16);
    }

    else
    {
      lck_mtx_lock(v2);
      v2[88] &= ~0x40u;
      v19 = *(v2 + 73);
      *(v2 + 73) = 0;
      lck_mtx_unlock(v2);
      kfree_data();
    }

    v4 = 0;
    goto LABEL_35;
  }

  v4 = 0;
LABEL_22:
  v14 = *(v22 + 32);
  if ((v14 & 0x2000) != 0 || (v14 & 0x4000) != 0 && (v7 & 0x80000) != 0 || (v14 & 0x8000) != 0 && (v7 & 0x40000) != 0)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
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
    v25 = 0u;
    v23[0] = *"_N_INACTIVE";
    v23[1] = unk_3D90;
    v24 = 0;
    lifs_setfsattr_request(v22, (v2 + 90), v23, &v25, 8, &v25);
  }

  else if ((*&v7 & 0x40400) != 0 && !vnode_isrecycled(*(a1 + 8)))
  {
    vnode_recycle(*(a1 + 8));
  }

LABEL_35:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    v12 = 0;
    goto LABEL_37;
  }

  return 0;
}

uint64_t lifs_vnop_ioctl(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400A9u, v2, *(a1 + 16), *(a1 + 32), 0);
  }

  v40 = 0;
  if (!v2)
  {
    goto LABEL_20;
  }

  v4 = vnode_fsnode(v2);
  lifs_mount_from_node = get_lifs_mount_from_node(v4, &v40);
  if (lifs_mount_from_node)
  {
    goto LABEL_21;
  }

  v6 = *(a1 + 16);
  lifs_mount_from_node = 25;
  if (v6 > 3221766415)
  {
    if ((v6 - 3221766416) >= 2)
    {
      goto LABEL_21;
    }

    if ((*(v4 + 353) & 8) == 0)
    {
      lifs_mount_from_node = 25;
      goto LABEL_21;
    }

    v12 = v40;
    v13 = v4[69];
    v38 = *(a1 + 24);
    v14 = *v38;
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug_filtered(0x3140115u, v13, v4, *v38, v6 == 3221766416);
    }

    if ((v14 & 0x8000000000000000) != 0)
    {
      lifs_mount_from_node = 22;
LABEL_83:
      v24 = v38;
      goto LABEL_84;
    }

    lck = (v4 + 78);
    v36 = v12;
    lck_rw_lock_exclusive((v4 + 78));
    if (vnode_hasdirtyblks(v13))
    {
      lifs_set_io_lock_override(v4);
      v15 = VNOP_FSYNC(v13, 1, v3);
      if (!v4[80])
      {
        goto LABEL_88;
      }

      lifs_mount_from_node = v15;
      v4[80] = 0;
      if (v15)
      {
        goto LABEL_82;
      }
    }

    if (!ubc_is_mapped_writable())
    {
      goto LABEL_35;
    }

    lifs_set_io_lock_override(v4);
    v16 = (-1 << PAGE_SHIFT_CONST) | 0x7FFFFFFF00000000;
    v17 = ubc_getsize(v13);
    v18 = ubc_msync(v13, v16 & v14, v17, 0, 10);
    if (v4[80])
    {
      lifs_mount_from_node = v18;
      v4[80] = 0;
      if (!v18)
      {
LABEL_35:
        lck_mtx_lock(v4);
        v19 = v4[76];
        v20 = v4[77];
        lck_mtx_unlock(v4);
        if ((kdebug_enable & 0xFFFFFFF7) != 0)
        {
          kernel_debug_filtered(0x3140114u, v4, v20, v19, 0);
        }

        v22 = v6 == 3221766416 || v14 <= v20;
        v23 = v19;
        lifs_mount_from_node = 6;
        v37 = v23;
        if (v14 < v23 && v22)
        {
          if (v6 == 3221766416)
          {
            if ((*(v36 + 40) & 0x40) == 0)
            {
              v25 = v23;
              v24 = v38;
              v26 = lck;
LABEL_78:
              *v24 = v25;
              lck_rw_unlock_exclusive(v26);
              goto LABEL_79;
            }

            if (v14 % vfs_devblocksize(*(v36 + 448)))
            {
              v28 = vfs_devblocksize(*(v36 + 448));
              v29 = vfs_devblocksize(*(v36 + 448));
              v14 = v28 + v14 / v29 * v29;
            }
          }

          arg1 = v13;
          v25 = v37;
          if (v14 < v37)
          {
            LODWORD(v30) = -1;
            while (1)
            {
              v30 = v25 - v14 >= v30 ? v30 : (v25 - v14);
              lck_rw_lock_exclusive((v4 + 118));
              extent = lifs_get_extent(v4[117], v14, v30);
              lck_rw_unlock_exclusive((v4 + 118));
              if (extent)
              {
                break;
              }

              extent_layout = lifs_get_extent_layout(v36, v4, 0, v14, v30, 0);
              if (extent_layout)
              {
                lifs_mount_from_node = extent_layout;
                goto LABEL_81;
              }

              lck_rw_lock_exclusive((v4 + 118));
              extent = lifs_get_extent(v4[117], v14, v30);
              lck_rw_unlock_exclusive((v4 + 118));
              if (!extent)
              {
                lifs_mount_from_node = 2;
LABEL_81:
                v13 = arg1;
                goto LABEL_82;
              }

              if (v6 == 3221766416)
              {
                v33 = 0x1000000;
              }

              else
              {
                v33 = 0x2000000;
              }

              if (*(extent + 59) << 24 != v33)
              {
                break;
              }

              v14 += v30;
              v25 = v37;
              if (v14 >= v37)
              {
                goto LABEL_67;
              }
            }

            if ((kdebug_enable & 0xFFFFFFF7) != 0)
            {
              kernel_debug_filtered(0x3140114u, v14, v30, extent[5], extent[6]);
            }

            if (extent[5] <= v14)
            {
              v25 = v14;
            }

            else
            {
              v25 = extent[5];
            }

            goto LABEL_77;
          }

LABEL_67:
          if (v6 == 3221766416 && v14 == v25)
          {
            v14 = v25;
LABEL_77:
            v13 = arg1;
            v26 = (v4 + 78);
            v24 = v38;
            goto LABEL_78;
          }

          lck_rw_unlock_exclusive(lck);
          v13 = arg1;
          v24 = v38;
          if (v14 != v25)
          {
LABEL_79:
            lifs_mount_from_node = 0;
            goto LABEL_85;
          }

          v14 = v25;
          lifs_mount_from_node = 6;
LABEL_84:
          *v24 = -1;
LABEL_85:
          if ((kdebug_enable & 0xFFFFFFF7) != 0)
          {
            kernel_debug_filtered(0x3140116u, v13, v14, *v24, lifs_mount_from_node);
          }

          goto LABEL_21;
        }
      }

LABEL_82:
      lck_rw_unlock_exclusive(lck);
      goto LABEL_83;
    }

LABEL_88:
    panic("%s: override is not set for lnode %p io_lock @%s:%d", "lifs_clear_io_lock_override", v4, "lifs_vnops.c", 201);
  }

  if (v6 == 44)
  {
    v7 = *(a1 + 24);
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug_filtered(0x31400A8u, v2, v4, *v7, *(v7 + 8));
    }

    if (vnode_vtype(v2) == VREG)
    {
      lck_rw_lock_shared((v4 + 78));
      lck_mtx_lock(v4);
      v8 = v4[76];
      lck_mtx_unlock(v4);
      if (*v7 >= v8)
      {
        lifs_mount_from_node = 27;
      }

      else
      {
        v9 = advisory_read(v2, v8, *v7, *(v7 + 8));
        lifs_issue_endio(v4, v9, 1uLL);
        lifs_mount_from_node = v10;
      }

      lck_rw_unlock_shared((v4 + 78));
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v6 != 51)
  {
    if (v6 != 536899076)
    {
      goto LABEL_21;
    }

    if (vnode_vtype(v2) == VDIR)
    {
      if (v2 == *(v40 + 16))
      {
        vnode_mount(v2);
        v27 = vfs_vnodecovered();
        lifs_mount_from_node = VNOP_IOCTL(v27, 0x20006E04uLL, 0, 0, v3);
        vnode_put(v27);
      }

      else
      {
        lck_mtx_lock(v4);
        *(v4 + 88) |= 0x10u;
        lck_mtx_unlock(v4);
        lifs_mount_from_node = 0;
      }

      goto LABEL_21;
    }

LABEL_20:
    lifs_mount_from_node = 22;
    goto LABEL_21;
  }

  v39[0] = 0;
  v39[1] = v2;
  v39[3] = *(a1 + 40);
  v39[2] = 1;
  lifs_mount_from_node = lifs_fsync_internal(v39, 1u);
  if (!lifs_mount_from_node)
  {
    lifs_vnop_ioctl_cold_1(&v40, (a1 + 40), &v41);
    lifs_mount_from_node = v41;
  }

LABEL_21:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400AAu, v2, *(a1 + 16), *(a1 + 32), lifs_mount_from_node);
  }

  return lifs_mount_from_node;
}

uint64_t lifs_vnop_pagein(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = vnode_fsnode(v2);
  v36 = 0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400ADu, v2, *(a1 + 24), *(a1 + 32), *(a1 + 40));
  }

  upl = 0;
  if (*(a1 + 16))
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: pagein called with UPL created", "lifs_vnop_pagein");
    v6 = 5;
  }

  else
  {
    v7 = current_thread();
    if (v7 != *(v3 + 80))
    {
      lck_rw_lock_shared((v3 + 624));
    }

    v33 = v7;
    v34 = v2;
    if ((v4 & 0x8000000000000000) != 0 || (v32 = *(v3 + 76), v4 >= v32) || (v8 = 1 << PAGE_SHIFT_CONST, ((v4 | v5) & ((1 << PAGE_SHIFT_CONST) - 1)) != 0))
    {
      if (!ubc_create_upl(v2, v4, v5, &v36, &upl, 134217984))
      {
        ubc_upl_range_needed(v36, *(a1 + 24) >> PAGE_SHIFT_CONST, 1);
        ubc_upl_abort_range(v36, 0, v5, 12);
      }

      v6 = 22;
    }

    else
    {
      v9 = *(v3 + 77);
      v10 = v5 + v4;
      if (v4 < v9 && v10 > v9)
      {
        v12 = v9 % v8;
        v13 = v8 - v12;
        if (!v12)
        {
          v13 = 0;
        }

        v14 = v13 + v9;
        v15 = v4 + *(a1 + 24);
        v16 = v10 - v14;
        if (v15 >= v14)
        {
          LODWORD(v5) = v16;
        }

        else
        {
          LODWORD(v5) = v14 - v4;
        }

        v17 = *(v3 + 76);
        if (v15 < v14)
        {
          v17 = *(v3 + 77);
        }

        v32 = v17;
        if (v15 >= v14)
        {
          v4 = v14;
        }
      }

      v6 = 22;
      if (!ubc_create_upl(v2, v4, v5, &v36, &upl, 134217984) && v36)
      {
        ubc_upl_range_needed(v36, *(a1 + 24) >> PAGE_SHIFT_CONST, 1);
        v18 = v5 / (1 << PAGE_SHIFT_CONST);
        while (1)
        {
          v6 = (v18 - 1);
          if (v18 < 1)
          {
            break;
          }

          if (upl_page_present(upl, v18 - 1))
          {
            v18 = v6;
            break;
          }

          v18 = v6;
          if (!v6)
          {
            ubc_upl_abort_range(v36, 0, v5, 8);
            goto LABEL_34;
          }
        }

        v20 = (v18 + 1) << PAGE_SHIFT_CONST;
        if (v20)
        {
          v21 = 0;
          v6 = 0;
          v22 = 0;
          v23 = v20;
          do
          {
            v24 = upl_page_present(upl, v22);
            v25 = 1 << PAGE_SHIFT_CONST;
            v26 = 1;
            if (v24)
            {
              v27 = v23 - v25;
              if (v23 != v25)
              {
                do
                {
                  if (!upl_page_present(upl, v22 + v26))
                  {
                    break;
                  }

                  ++v26;
                  v27 -= 1 << PAGE_SHIFT_CONST;
                }

                while (v27);
                v25 = v26 << PAGE_SHIFT_CONST;
              }

              v28 = cluster_pagein(v34, v36, v21, v4, v25, v32, *(a1 + 48));
              lifs_issue_endio(v3, v28, 1uLL);
              if (v29)
              {
                v30 = v29;
              }

              else
              {
                v30 = v28;
              }

              if (v6)
              {
                v31 = 1;
              }

              else
              {
                v31 = v30 == 0;
              }

              if (v31)
              {
                v6 = v6;
              }

              else
              {
                v6 = v30;
              }
            }

            v21 += v25;
            v22 += v26;
            v4 += v25;
            v23 -= v25;
          }

          while (v23);
        }

        else
        {
          v6 = 0;
        }
      }
    }

LABEL_34:
    if (v33 != *(v3 + 80))
    {
      lck_rw_unlock_shared((v3 + 624));
    }

    v2 = v34;
    if (!v6)
    {
      lck_mtx_lock(v3);
      *(v3 + 88) |= 0x8000u;
      lck_mtx_unlock(v3);
    }
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400AEu, v2, *(v3 + 76), *(v3 + 77), v6);
  }

  return v6;
}

uint64_t lifs_vnop_pageout(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = vnode_fsnode(v2);
  v32 = 0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400B1u, v2, *(a1 + 24), *(a1 + 32), *(a1 + 40));
  }

  upl = 0;
  if (*(a1 + 16))
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: pageout called with UPL created", "lifs_vnop_pageout");
    v6 = 5;
    goto LABEL_31;
  }

  if ((*(a1 + 48) & 0x10) != 0)
  {
    v7 = 33554464;
  }

  else
  {
    v7 = 67108896;
  }

  v8 = current_thread();
  if (v8 != *(v3 + 80))
  {
    lck_rw_lock_shared((v3 + 624));
  }

  if ((v4 & 0x8000000000000000) == 0 && v4 < *(v3 + 76) && ((v4 | v5) & ~(-1 << PAGE_SHIFT_CONST)) == 0)
  {
    v28 = v4 > *(v3 + 77);
    if (v4 > *(v3 + 77) && v8 != *(v3 + 80) && !lck_rw_lock_shared_to_exclusive((v3 + 624)))
    {
      lck_rw_lock_exclusive((v3 + 624));
    }

    v9 = *(v3 + 77);
    if (v4 > v9)
    {
      v10 = cluster_write(v2, 0, v9, v4, *(v3 + 77), 0, 900);
      v6 = v10;
      if ((kdebug_enable & 0xFFFFFFF7) != 0)
      {
        kernel_debug_filtered(0x31400B0u, v2, *(v3 + 77), v4, v10);
      }

      if (v6)
      {
        if (!ubc_create_upl(v2, v4, v5, &v32, &upl, v7))
        {
LABEL_45:
          ubc_upl_abort_range(v32, 0, v5, 8);
        }

LABEL_72:
        v11 = v28;
        goto LABEL_26;
      }

      v14 = *(v3 + 76);
      if (v14 >= v4)
      {
        v14 = v4;
      }

      *(v3 + 77) = v14;
    }

    v6 = 22;
    if (!ubc_create_upl(v2, v4, v5, &v32, &upl, v7) && v32)
    {
      v15 = v5 / (1 << PAGE_SHIFT_CONST);
      while (1)
      {
        v6 = (v15 - 1);
        if (v15 < 1)
        {
          break;
        }

        if (upl_page_present(upl, v15 - 1))
        {
          v15 = v6;
          break;
        }

        v15 = v6;
        if (!v6)
        {
          goto LABEL_45;
        }
      }

      v16 = (v15 + 1) << PAGE_SHIFT_CONST;
      if (!v16)
      {
        goto LABEL_67;
      }

      v29 = v2;
      v30 = v8;
      v6 = 0;
      v17 = 0;
      v18 = 0;
      v19 = v16;
      do
      {
        if (upl_page_present(upl, v17))
        {
          if (!upl_dirty_page(upl, v17))
          {
            panic("%s: page %d is NOT dirty! @%s:%d", "lifs_vnop_pageout", v17, "lifs_vnops.c", 550);
          }

          v20 = 1;
          v21 = 1 << PAGE_SHIFT_CONST;
          v22 = v19 - (1 << PAGE_SHIFT_CONST);
          if (v19 != 1 << PAGE_SHIFT_CONST)
          {
            do
            {
              if (!upl_dirty_page(upl, v17 + v20))
              {
                break;
              }

              ++v20;
              v22 -= 1 << PAGE_SHIFT_CONST;
            }

            while (v22);
            v21 = v20 << PAGE_SHIFT_CONST;
          }

          v23 = cluster_pageout(v29, v32, v18, v4, v21, *(v3 + 76), *(a1 + 48));
          lifs_issue_endio(v3, v23, (*(a1 + 48) & 1) == 0);
          if (v24)
          {
            v25 = v24;
          }

          else
          {
            v25 = v23;
          }

          if (v6)
          {
            v26 = 1;
          }

          else
          {
            v26 = v25 == 0;
          }

          if (v26)
          {
            v6 = v6;
          }

          else
          {
            v6 = v25;
          }
        }

        else
        {
          v20 = 1;
          v21 = 1 << PAGE_SHIFT_CONST;
        }

        v17 += v20;
        v19 -= v21;
        v18 += v21;
        v4 += v21;
        v8 = v30;
      }

      while (v19);
      v2 = v29;
      if (!v6)
      {
LABEL_67:
        if (v4 <= *(v3 + 77))
        {
          v6 = 0;
        }

        else
        {
          v6 = 0;
          v27 = *(v3 + 76);
          if (v27 >= v4)
          {
            v27 = v4;
          }

          *(v3 + 77) = v27;
        }
      }
    }

    goto LABEL_72;
  }

  if (!ubc_create_upl(v2, v4, v5, &v32, &upl, v7))
  {
    ubc_upl_abort_range(v32, 0, v5, 8);
  }

  v11 = 0;
  v6 = 22;
LABEL_26:
  if (v8 == *(v3 + 80))
  {
    goto LABEL_29;
  }

  v12 = (v3 + 624);
  if (v11)
  {
    lck_rw_unlock_exclusive(v12);
LABEL_29:
    if (v6)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  lck_rw_unlock_shared(v12);
  if (!v6)
  {
LABEL_30:
    lck_mtx_lock(v3);
    *(v3 + 88) |= 0x10000u;
    lck_mtx_unlock(v3);
  }

LABEL_31:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400B2u, v2, *(v3 + 76), *(v3 + 77), v6);
  }

  return v6;
}

uint64_t lifs_vnop_blktooff(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 22;
  }

  v3 = *(a1 + 16);
  v4 = vnode_mount(v2);
  v5 = vfs_devblocksize(v4);
  result = 0;
  **(a1 + 24) = v3 * v5;
  return result;
}

uint64_t lifs_vnop_offtoblk(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 22;
  }

  v3 = *(a1 + 16);
  v4 = vnode_mount(v2);
  v5 = vfs_devblocksize(v4);
  result = 0;
  **(a1 + 24) = v3 / v5;
  return result;
}

uint64_t lifs_vnop_allocate(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = vnode_fsnode(v2);
  v12 = 0;
  strcpy(v20, "_O_f_preallocate");
  BYTE1(v20[4]) = unk_3DB2;
  HIWORD(v20[4]) = unk_3DB3;
  v20[5] = unk_3DB5;
  v21 = unk_3DB9;
  v22 = 0;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400BDu, v3, *(a1 + 24), *(a1 + 40), *(a1 + 16));
  }

  v19 = 0u;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  v13 = 0u;
  arg4[0] = 0;
  arg4[1] = 0;
  lifs_mount_from_node = get_lifs_mount_from_node(v3, &v12);
  if (lifs_mount_from_node)
  {
    goto LABEL_4;
  }

  v6 = *(a1 + 24);
  if ((v6 & 0x20) != 0 || *(a1 + 40))
  {
    v5 = 45;
    goto LABEL_8;
  }

  v8 = *(a1 + 16);
  *&v13 = 0;
  *(&v13 + 1) = v8;
  LODWORD(arg4[0]) = v6 & 0x16;
  LODWORD(v16) = 0;
  LODWORD(v18[0]) = 232;
  lifs_mount_from_node = lifs_setfsattr_request(v12, (v3 + 360), v20, &v13, 232, &v13);
  if (lifs_mount_from_node)
  {
LABEL_4:
    v5 = lifs_mount_from_node;
    goto LABEL_8;
  }

  lifs_update_freespace(v12, &v19);
  v9 = *(a1 + 32);
  if (v9)
  {
    *v9 = arg4[1];
    if (SLODWORD(v18[0]) >= 1 && (v3[353] & 8) != 0 && v16 >= 1)
    {
      if (v16 > 8)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: preallocate returned invalid extents count %d", "lifs_vnop_allocate", v16);
        v5 = 0;
        goto LABEL_8;
      }

      lck_rw_lock_exclusive((v3 + 944));
      if (v16 >= 1)
      {
        v10 = 0;
        v11 = v15;
        do
        {
          if ((kdebug_enable & 0xFFFFFFF7) != 0)
          {
            kernel_debug_filtered(0x31400BCu, *(v11 + 2), *(v11 + 3), *(v11 + 1), *(v11 + 1));
          }

          lifs_add_extent(*(v3 + 117), *(v11 + 2), *(v11 + 1), v11);
          ++v10;
          v11 = (v11 + 24);
        }

        while (v10 < v16);
      }

      lck_rw_unlock_exclusive((v3 + 944));
    }

    lck_mtx_lock(v3);
    *(v3 + 88) |= 0x10000u;
    if ((vfs_flags(*(v12 + 448)) & 0x1000) != 0)
    {
      *(v3 + 88) |= 0x40000u;
    }

    update_lnode_attr_subset_locked(v3, &v18[1]);
    lck_mtx_unlock(v3);
  }

  v5 = 0;
LABEL_8:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400BEu, v2, v3, v5, arg4[1]);
  }

  return v5;
}

uint64_t lifs_vnop_getxattr(uint64_t a1)
{
  v2 = vnode_fsnode(*(a1 + 8));
  v21 = 0;
  v3 = *(a1 + 24);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    v4 = *(a1 + 8);
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = -1;
    }

    if (v3)
    {
      v6 = uio_offset(*(a1 + 24));
      v7 = uio_resid(v3);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    kernel_debug_filtered(0x31400C1u, v4, v5, v6, v7);
  }

  v18 = 0;
  *n = 0;
  v20 = 0;
  lifs_mount_from_node = get_lifs_mount_from_node(v2, &v21);
  if (!lifs_mount_from_node)
  {
    if (!strcmp(*(a1 + 16), "com.apple.ResourceFork"))
    {
      v15 = vfs_context_proc(*(a1 + 48));
      v16 = proc_pid(v15);
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "LIFS: PID %d getxattr on '%s'", v16, "com.apple.ResourceFork");
      lifs_mount_from_node = 93;
      goto LABEL_10;
    }

    if (v3)
    {
      v10 = uio_resid(v3);
      v11 = uio_offset(*(a1 + 24));
      if (v10 > 0)
      {
        v12 = v10 & ~(v10 >> 63);
        if (v10 > 0x40000)
        {
          v13 = vfs_context_proc(*(a1 + 48));
          v14 = proc_pid(v13);
          _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "LIFS: PID %d getxattr on '%s' requested size %zd", v14, *(a1 + 16), v10 & ~(v10 >> 63));
          lifs_mount_from_node = 27;
          goto LABEL_10;
        }

LABEL_21:
        v17 = kalloc_data();
        lifs_mount_from_node = lifs_getxattr_request(v21, (v2 + 360), *(a1 + 16), v11, v17, v12, &v18);
        if (lifs_mount_from_node)
        {
          goto LABEL_32;
        }

        if (v18 == 32 && !strcmp(*(a1 + 16), "com.apple.FinderInfo") && !bcmp(v17, &empty_finfo, 0x20uLL))
        {
          lifs_mount_from_node = 93;
          if (!v17)
          {
            goto LABEL_10;
          }

LABEL_33:
          kfree_data();
          goto LABEL_10;
        }

        **(a1 + 32) = v18;
        if (v3)
        {
          lifs_mount_from_node = 34;
          if (uio_resid(v3) < 0 || v12 < v18)
          {
LABEL_32:
            if (!v17)
            {
              goto LABEL_10;
            }

            goto LABEL_33;
          }

          if (*n)
          {
            lifs_mount_from_node = uiomove(v17, n[0], v3);
            if (!v17)
            {
              goto LABEL_10;
            }

            goto LABEL_33;
          }
        }

        lifs_mount_from_node = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = 32 * (strcmp(*(a1 + 16), "com.apple.FinderInfo") == 0);
    goto LABEL_21;
  }

LABEL_10:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400C2u, *(a1 + 8), **(a1 + 32), lifs_mount_from_node, 0);
  }

  return lifs_mount_from_node;
}

uint64_t lifs_vnop_setxattr(uint64_t a1)
{
  v2 = vnode_fsnode(*(a1 + 8));
  *v11 = 0;
  v3 = *(a1 + 24);
  lifs_mount_from_node = get_lifs_mount_from_node(v2, v11);
  if (!lifs_mount_from_node)
  {
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 32);
      v7 = uio_resid(v3);
      kernel_debug_filtered(0x31400CDu, v5, v2, v6, v7);
    }

    v8 = *(a1 + 32) & 6;
    if (v8 > 3)
    {
      if (v8 != 4)
      {
        return 22;
      }

      v9 = 2;
    }

    else
    {
      v9 = v8 != 0;
    }

    if (!strcmp(*(a1 + 16), "com.apple.FinderInfo") && uio_resid(v3) != 32)
    {
      lifs_mount_from_node = 34;
    }

    else
    {
      lifs_mount_from_node = lifs_setxattr_request(*v11, (v2 + 360), *(a1 + 16), v3, v9);
    }

    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug_filtered(0x31400CEu, *(a1 + 8), v2, lifs_mount_from_node, 0);
    }
  }

  return lifs_mount_from_node;
}

uint64_t lifs_vnop_removexattr(uint64_t a1)
{
  v2 = vnode_fsnode(*(a1 + 8));
  v5 = 0;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400C9u, *(a1 + 8), *(a1 + 24), 0, 0);
  }

  lifs_mount_from_node = get_lifs_mount_from_node(v2, &v5);
  if (!lifs_mount_from_node)
  {
    lifs_mount_from_node = lifs_removexattr_request(v5, (v2 + 360), *(a1 + 16));
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400CAu, *(a1 + 8), *(a1 + 24), lifs_mount_from_node, 0);
  }

  return lifs_mount_from_node;
}

uint64_t lifs_vnop_listxattr(uint64_t a1)
{
  v2 = vnode_fsnode(*(a1 + 8));
  v18 = 0;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    v3 = *(a1 + 8);
    v4 = uio_resid(*(a1 + 16));
    kernel_debug_filtered(0x31400C5u, v3, v4, *(a1 + 32), 0);
  }

  v15 = 0;
  *n = 0;
  v17 = 0;
  lifs_mount_from_node = get_lifs_mount_from_node(v2, &v18);
  if (!lifs_mount_from_node)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = uio_resid(v6);
      v8 = v7 & ~(v7 >> 63);
      if (v7 > 0x40000)
      {
        v9 = vfs_context_proc(*(a1 + 40));
        v10 = proc_pid(v9);
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "LIFS: PID %d listxattr on requested size %zd", v10, v8);
        lifs_mount_from_node = 27;
        goto LABEL_20;
      }
    }

    else
    {
      v8 = 0;
    }

    v11 = kalloc_data();
    lifs_mount_from_node = lifs_listxattr_request(v18, (v2 + 360), v11, v8, &v15);
    if (!lifs_mount_from_node)
    {
      v12 = *(a1 + 16);
      **(a1 + 24) = v15;
      if (v12)
      {
        v13 = uio_resid(v12);
        LODWORD(v12) = 34;
        if ((v13 & 0x8000000000000000) == 0 && v8 >= v15)
        {
          if (*n)
          {
            LODWORD(v12) = uiomove(v11, n[0], *(a1 + 16));
          }

          else
          {
            LODWORD(v12) = 0;
          }
        }
      }

      if (*(v2 + 115))
      {
        lifs_mount_from_node = 45;
      }

      else
      {
        lifs_mount_from_node = v12;
      }
    }

    if (v11)
    {
      kfree_data();
    }
  }

LABEL_20:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400C6u, *(a1 + 8), **(a1 + 24), lifs_mount_from_node, 0);
  }

  return lifs_mount_from_node;
}

char *lifs_vnop_clonefile(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = vnode_fsnode(v2);
  v7 = vnode_fsnode(v3);
  arg1 = 0;
  v8 = *(a1 + 32);
  *v22 = 0u;
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  lifs_mount_from_node = get_lifs_mount_from_node(v6, &arg1);
  if (lifs_mount_from_node)
  {
    return lifs_mount_from_node;
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400DDu, arg1, v2, v3, v6);
  }

  if (v8->cn_namelen > 1023)
  {
    lifs_mount_from_node = 63;
    goto LABEL_15;
  }

  if (*(v5 + 224) == 2)
  {
    lifs_mount_from_node = 45;
LABEL_15:
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      v14 = arg1;
      v15 = *v4;
      if (v15)
      {
        v16 = vnode_fsnode(v15);
      }

      else
      {
        v16 = 0;
      }

      kernel_debug_filtered(0x31400DEu, v14, v15, v16, lifs_mount_from_node);
    }

    return lifs_mount_from_node;
  }

  convert_vnode_attr(v21, v5);
  *v5 |= 0x380uLL;
  result = kalloc_data();
  v11 = (v8->cn_namelen + 1);
  if (v11 < 0x401)
  {
    v12 = result;
    strlcpy(result, v8->cn_nameptr, v11);
    lck_rw_lock_exclusive((arg1 + 128));
    lifs_mount_from_node = lifs_clonefile_request(arg1, v12, v6 + 360, v7 + 360, *(a1 + 48), v21, v20);
    if (!lifs_mount_from_node)
    {
      lifs_update_freespace(arg1, v22);
      lifs_create_node(*(arg1 + 448), v20, v2, v8, v21, v4);
      lifs_mount_from_node = v13;
      cache_purge_negatives(v2);
      lifs_invalidate_dirattrcache_ext(v6, 1);
      if (lifs_mount_from_node)
      {
        v19 = 0;
        memset(v18, 0, sizeof(v18));
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: fail to create node [%d]", "lifs_vnop_clonefile", lifs_mount_from_node);
        lifs_remove_request(arg1, (v6 + 360), v20, v12, 0, v18);
      }

      else
      {
        vnode_fsnode(*v4);
        update_lnode_attr(v6, &v21[11] + 8);
        cache_enter(v2, *v4, v8);
      }
    }

    lck_rw_unlock_exclusive((arg1 + 128));
    if (v12)
    {
      kfree_data();
    }

    goto LABEL_15;
  }

  __break(0xBFFEu);
  return result;
}

void lifs_issue_endio(uintptr_t arg1, int a2, uintptr_t arg4)
{
  v3 = arg4;
  v6 = *(arg1 + 528);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400E9u, arg1, *(arg1 + 352), a2, arg4);
  }

  if ((*(arg1 + 353) & 8) == 0)
  {
    v7 = 0;
    v8 = 0;
    endio_context = 0;
    goto LABEL_29;
  }

  endio_context = lifs_get_endio_context(arg1);
  if (!endio_context)
  {
    goto LABEL_28;
  }

  lck_mtx_lock(arg1);
  v10 = *endio_context;
  if (*endio_context)
  {
    if (*(v10 + 8) != endio_context)
    {
LABEL_51:
      __break(0xBFFDu);
      return;
    }

    v11 = endio_context[1];
    if (*v11 == endio_context)
    {
      *(v10 + 8) = v11;
      v12 = endio_context[1];
      goto LABEL_12;
    }

LABEL_50:
    __break(0xBFFDu);
    goto LABEL_51;
  }

  v12 = endio_context[1];
  if (*v12 != endio_context)
  {
    goto LABEL_50;
  }

  *(arg1 + 968) = v12;
LABEL_12:
  *v12 = v10;
  lck_mtx_unlock(arg1);
  if (!v6 || !*(v6 + 448))
  {
    v8 = 0;
    v7 = 6;
    goto LABEL_20;
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400E8u, endio_context[4], *(endio_context + 14), endio_context[5], endio_context[6]);
  }

  if ((*(endio_context + 57) & 1) != 0 && (vfs_flags(*(v6 + 448)) & 0x10000001) != 0)
  {
    v7 = 0;
    v8 = 1;
LABEL_20:
    kfree_type_impl();
    goto LABEL_29;
  }

  if (endio_context[8])
  {
    v13 = endio_context[4];
  }

  else
  {
    v13 = 0;
  }

  endio_context[4] = v13;
  *(endio_context + 15) = a2;
  if ((v3 & 1) == 0)
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    v7 = lifs_endio_request(v6, (arg1 + 360), endio_context[5], endio_context[6], a2, *(endio_context + 14), v13, v23);
    if (!v7)
    {
      update_lnode_attr_subset(arg1, v23);
    }

LABEL_34:
    v8 = 0;
    goto LABEL_20;
  }

  *(endio_context + 14) |= 0x400u;
  lck_mtx_lock((v6 + 728));
  if ((endio_context[8] & 1) == 0 && !*(endio_context + 15))
  {
    v15 = *(v6 + 648);
    if (v15)
    {
      v16 = 11;
      do
      {
        if (!--v16)
        {
          break;
        }

        if (v15[2] == endio_context[2] && !*(v15 + 15))
        {
          v17 = v15[5];
          v18 = v15[6];
          v19 = v18 + v17;
          v20 = endio_context[5];
          v21 = endio_context[6];
          if (v18 + v17 > v21 + v20)
          {
            goto LABEL_49;
          }

          if ((kdebug_enable & 0xFFFFFFF7) != 0)
          {
            kernel_debug_filtered(0x31400E8u, v17, v18, v20, v21);
            v17 = v15[5];
            v18 = v15[6];
            v20 = endio_context[5];
            v19 = v18 + v17;
          }

          v22 = endio_context[6];
          if (v19 == v20)
          {
            goto LABEL_48;
          }

          if (v17 == v22 + v20)
          {
            v15[5] = v20;
LABEL_48:
            v15[6] = v22 + v18;
LABEL_49:
            lck_mtx_unlock((v6 + 728));
            v7 = 0;
            goto LABEL_34;
          }
        }

        v15 = *v15;
      }

      while (v15);
    }
  }

  v14 = *(v6 + 656);
  *endio_context = 0;
  endio_context[1] = v14;
  *v14 = endio_context;
  *(v6 + 656) = endio_context;
  wakeup_one((v6 + 648));
  lck_mtx_unlock((v6 + 728));
LABEL_28:
  v7 = 0;
  v8 = 0;
LABEL_29:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400EAu, arg1, endio_context, v8, v7);
  }
}

uint64_t lifs_fsync_internal(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  v5 = vnode_fsnode(v4);
  v6 = *(v5 + 66);
  arg2[0] = 0;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140071u, v4, *(a1 + 16), a2, 0);
  }

  if (vfs_isrdonly(*(v6 + 448)))
  {
    v7 = 0;
    goto LABEL_91;
  }

  if (vnode_vtype(v4) == VREG)
  {
    v8 = *(a1 + 16) & 5;
    v9 = current_thread();
    if (v9 != *(v5 + 80))
    {
      lck_rw_lock_exclusive((v5 + 624));
    }

    v10 = *(v5 + 88);
    v39 = v8;
    if ((v10 & 0x800) != 0)
    {
      if ((kdebug_enable & 0xFFFFFFF7) != 0)
      {
        kernel_debug_filtered(0x31400EDu, v6, v5, v10, 0);
      }

      *&arg2[1] = 0;
      *&v41 = &arg2[1];
      lck_mtx_lock((v6 + 728));
      v19 = *(v6 + 648);
      if (v19)
      {
        do
        {
          v20 = *v19;
          if (v19[2] == v5)
          {
            if (v20)
            {
              if (*(v20 + 8) != v19)
              {
                goto LABEL_101;
              }

              v21 = v19[1];
              if (*v21 != v19)
              {
                goto LABEL_99;
              }

              *(v20 + 8) = v21;
              v22 = v19[1];
            }

            else
            {
              v22 = v19[1];
              if (*v22 != v19)
              {
                goto LABEL_99;
              }

              *(v6 + 656) = v22;
            }

            *v22 = v20;
            *v19 = 0;
            v23 = v41;
            v19[1] = v41;
            *v23 = v19;
            *&v41 = v19;
          }

          v19 = v20;
        }

        while (v20);
      }

      lck_mtx_unlock((v6 + 728));
      v24 = 0;
      v25 = 0;
      while (1)
      {
        v26 = *&arg2[1];
        if (!*&arg2[1])
        {
          break;
        }

        v27 = **&arg2[1];
        if (**&arg2[1])
        {
          if (*(v27 + 8) != *&arg2[1])
          {
            goto LABEL_96;
          }

          v28 = *(*&arg2[1] + 8);
          if (*v28 != *&arg2[1])
          {
LABEL_94:
            __break(0xBFFDu);
LABEL_95:
            __break(0xBFFDu);
LABEL_96:
            __break(0xBFFDu);
LABEL_97:
            __break(0xBFFDu);
LABEL_98:
            __break(0xBFFDu);
LABEL_99:
            __break(0xBFFDu);
LABEL_100:
            __break(0xBFFDu);
LABEL_101:
            __break(0xBFFDu);
          }

          *(v27 + 8) = v28;
        }

        else
        {
          if (**(*&arg2[1] + 8) != *&arg2[1])
          {
            goto LABEL_94;
          }

          *&v41 = *(*&arg2[1] + 8);
        }

        **(v26 + 8) = v27;
        *(v26 + 56) &= ~0x400u;
        v29 = lifs_dispatch_async_endio(v6, v26, 0);
        if (v25)
        {
          v30 = 1;
        }

        else
        {
          v30 = v29 == 0;
        }

        if (!v30)
        {
          v25 = v29;
        }

        v31 = ++v24;
        if (v31 != v31 << 31 >> 31)
        {
          lifs_fsync_internal_cold_1();
        }
      }

      if (v39)
      {
        lck_mtx_lock(v5);
        if (*(v5 + 245) >= 1)
        {
          do
          {
            *(v5 + 88) |= 0x1000u;
            msleep(v5 + 980, v5, 16, "lifs_flush_async_endio", 0);
          }

          while (*(v5 + 245) > 0);
        }

        lck_mtx_unlock(v5);
      }

      if ((kdebug_enable & 0xFFFFFFF7) != 0)
      {
        kernel_debug_filtered(0x31400EDu, v6, v5, v24, v25);
      }
    }

    else
    {
      *&arg2[1] = 0;
      *&v41 = &arg2[1];
      lck_mtx_lock((v6 + 712));
      v11 = *(v6 + 632);
      if (v11)
      {
        do
        {
          v12 = *v11;
          if (v11[3] == v5)
          {
            if (v12)
            {
              if (*(v12 + 8) != v11)
              {
                goto LABEL_100;
              }

              v13 = v11[1];
              if (*v13 != v11)
              {
                goto LABEL_98;
              }

              *(v12 + 8) = v13;
              v14 = v11[1];
            }

            else
            {
              v14 = v11[1];
              if (*v14 != v11)
              {
                goto LABEL_98;
              }

              *(v6 + 640) = v14;
            }

            *v14 = v12;
            *v11 = 0;
            v15 = v41;
            v11[1] = v41;
            *v15 = v11;
            *&v41 = v11;
          }

          v11 = v12;
        }

        while (v12);
      }

      lck_mtx_unlock((v6 + 712));
      while (1)
      {
        v16 = *&arg2[1];
        if (!*&arg2[1])
        {
          break;
        }

        v17 = **&arg2[1];
        if (**&arg2[1])
        {
          if (*(v17 + 8) != *&arg2[1])
          {
            goto LABEL_97;
          }

          v18 = *(*&arg2[1] + 8);
          if (*v18 != *&arg2[1])
          {
            goto LABEL_95;
          }

          *(v17 + 8) = v18;
        }

        else
        {
          if (**(*&arg2[1] + 8) != *&arg2[1])
          {
            goto LABEL_95;
          }

          *&v41 = *(*&arg2[1] + 8);
        }

        **(v16 + 8) = v17;
        lifs_submit_io(v6, v16);
      }

      if (v8)
      {
        lck_mtx_lock(v5);
        if (*(v5 + 246) >= 1)
        {
          do
          {
            *(v5 + 88) |= 0x1000u;
            msleep(v5 + 984, v5, 16, "lifs_flush_async_io", 0);
          }

          while (*(v5 + 246) > 0);
        }

        lck_mtx_unlock(v5);
      }

      v25 = 0;
    }

    cluster_push_err(v4, 4 * (v39 != 0), 0, 0, arg2);
    if (arg2[0])
    {
      v32 = v25 == 0;
    }

    else
    {
      v32 = 0;
    }

    if (v32)
    {
      v25 = arg2[0];
    }

    lifs_issue_endio(v5, arg2[0], v39 == 0);
    if (v25)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33 == 0;
    }

    if (v34)
    {
      v7 = v25;
    }

    else
    {
      v7 = v33;
    }

    if (v9 != *(v5 + 80))
    {
      lck_rw_unlock_exclusive((v5 + 624));
    }
  }

  else
  {
    v7 = 0;
  }

  if (a2 && (vfs_flags(*(v6 + 448)) & 0x1000) != 0)
  {
    v65 = 0;
    v64[0] = *"_N_SYNC";
    v64[1] = unk_3DF2;
    if (vnode_isrecycled(v4) && !vfs_isunmount(*(v6 + 448)) || (v35 = *(a1 + 16), v35 == 2))
    {
      v36 = kalloc_type_impl();
      *v36 = 2;
      v37 = lifs_setfsattr_request_async(v6, (v5 + 360), v64, v36, 8, lifs_setfsattr_done, v36, v36);
      if (v7)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v63 = 0;
      v56 = 0u;
      v55 = 0u;
      v54 = 0u;
      v53 = 0u;
      v52 = 0u;
      v51 = 0u;
      v50 = 0u;
      v49 = 0u;
      v48 = 0u;
      v47 = 0u;
      v46 = 0u;
      v45 = 0u;
      v44 = 0u;
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
      *&arg2[1] = v35;
      v37 = lifs_setfsattr_request(v6, (v5 + 360), v64, &arg2[1], 8, &arg2[1]);
      if (v7)
      {
        goto LABEL_91;
      }
    }

    if (v37 && v37 != 45)
    {
      v7 = v37;
    }
  }

LABEL_91:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140072u, v4, arg2[0], v7, 0);
  }

  return v7;
}

uint64_t lifs_copyin_to_upl(uint64_t a1, user_addr_t a2, unsigned int a3)
{
  v5 = *(a1 + 32);
  v6 = buf_upl(v5);
  v7 = buf_uploffset(v5);

  return lifs_copy_upl_data(v6, v7, a2, a3, 0);
}

uint64_t lifs_copy_upl_data(ipc_port *a1, int a2, user_addr_t a3, unsigned int a4, int a5)
{
  v14 = a4;
  if (a5)
  {
    v9 = 2;
  }

  else
  {
    v9 = 8;
  }

  v10 = uio_create(1, 0, v9, a5 ^ 1u);
  if (!v10)
  {
    return 12;
  }

  v11 = v10;
  uio_addiov(v10, a3, a4);
  v12 = cluster_copy_upl_data(v11, a1, a2, &v14);
  uio_free(v11);
  return v12;
}

void lifs_submit_io(uint64_t a1, uintptr_t a2)
{
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  v6 = buf_vnode(v4);
  v7 = buf_kernel_addrperm_addr();
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    v8 = *(a2 + 40);
    v9 = buf_flags(v4);
    kernel_debug_filtered(0x31400D9u, v6, v7, a2, v9 | (v8 << 32));
  }

  v10 = buf_blkno(v4);
  v11 = v10 * vfs_devblocksize(*(a1 + 448));
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    v12 = 608;
    if (*(a2 + 16))
    {
      v12 = 616;
    }

    kernel_debug_filtered(0x31400D8u, v6, v11, *(a2 + 40), *(v5 + v12));
  }

  lck_mtx_lock_spin();
  ++*(v5 + 984);
  lck_mtx_unlock(v5);
  if (*(a2 + 17))
  {
    vnode_rele(v6);
    *(a2 + 17) = 0;
  }

  if (*(a2 + 16))
  {
    request_async = lifs_read_request_async(a1, (v5 + 360), *(a2 + 40), v11, *(a2 + 40), lifs_vnop_strategy_done, a2, a2 + 48);
    if (!request_async)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  address = 0;
  v15 = ipc_kernel_map;
  if (vm_allocate(ipc_kernel_map, &address, *(a2 + 40), 1))
  {
LABEL_14:
    request_async = 12;
    goto LABEL_17;
  }

  v16 = buf_upl(v4);
  v17 = buf_uploffset(v4);
  v18 = lifs_copy_upl_data(v16, v17, address, *(a2 + 40), 1);
  if (v18)
  {
    request_async = v18;
    vm_deallocate(v15, address, *(a2 + 40));
    goto LABEL_17;
  }

  if (vm_map_copyin())
  {
    vm_deallocate(v15, address, *(a2 + 40));
    goto LABEL_14;
  }

  v20 = lifs_write_request_async(a1, (v5 + 360), v11, 0, *(a2 + 40), lifs_vnop_strategy_done, a2, a2 + 48);
  if (!v20)
  {
LABEL_11:
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      v14 = buf_blkno(v4);
      kernel_debug_filtered(0x31400DAu, v6, v7, v14, a2);
    }

    return;
  }

  request_async = v20;
  vm_map_copy_discard();
LABEL_17:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    v19 = buf_blkno(v4);
    kernel_debug_filtered(0x31400DAu, v6, v7, v19, request_async | (*(a2 + 40) << 32));
  }

  lck_mtx_lock_spin();
  --*(v5 + 984);
  lck_mtx_unlock(v5);
  kfree_type_impl();
  buf_seterror(v4, request_async);
  buf_biodone(v4);
}

void lifs_enable_lowspace_sync_write(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1 & 0x400) == 0)
  {
    v3 = (a1 + 32);
    if ((v1 & 0x100) == 0)
    {
      thread_call_enter(*(a1 + 856));
      v1 = *(a1 + 32);
    }

    *(a1 + 32) = v1 | 0x200;
    do
    {
      msleep(v3, (a1 + 96), 16, "lifs_enable_lowspace_sync_write", 0);
    }

    while ((*v3 & 0x200) != 0);
    *(a1 + 32) = *v3 | 0x400;
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: lmp %p freespace 0x%llx sync write enabled", "lifs_enable_lowspace_sync_write", a1, *(a1 + 872));
  }
}

thread_t lifs_set_io_lock_override(void *a1)
{
  if (a1[80])
  {
    panic("%s: override is already set for lnode %p io_lock @%s:%d", "lifs_set_io_lock_override", a1, "lifs_vnops.c", 192);
  }

  result = current_thread();
  a1[80] = result;
  return result;
}

uint64_t lifs_lookup(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v5 = *(a3 + 48);
  v6 = (a2 + 360);
  if (v5 >= 65)
  {
    return lifs_lookup_request(a1, a4, v6, 0, a5);
  }

  if (v5 < 33)
  {
    return lifs_lookupsmall_request(a1, a4, v6, 0, a5);
  }

  return lifs_lookupmed_request(a1, a4, v6, 0, a5);
}

uint64_t lifs_sillyrename(uint64_t a1, uint64_t a2, const char *a3, vfs_context_t ctx)
{
  v7 = *(a2 + 528);
  v8 = vfs_context_pid(ctx);
  v9 = OSAddAtomic(1, lifs_sillyrename_number);
  bzero(v21, 0x268uLL);
  bzero(v18, 0x2F0uLL);
  v10 = kalloc_data();
  snprintf(v10, 0x400uLL, ".nfs.%08x.%04x", v9, v8);
  while (!lifs_lookupsmall_request(v7, v10, (a1 + 360), 0, v21))
  {
    v11 = OSAddAtomic(1, lifs_sillyrename_number);
    snprintf(v10, 0x400uLL, ".nfs.%08x.%04x", v11, v8);
  }

  cache_purge(*(a2 + 552));
  v12 = lifs_rename_request(v7, a3, (a2 + 360), (a1 + 360), v10, invalidFH, (a1 + 360), 0x8000, v18);
  if (v12)
  {
    if (v12 == 2)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    kfree_data();
  }

  else
  {
    lifs_update_freespace(v7, &v20);
    update_lnode_attr(a1, &v19);
    lifs_invalidate_dirattrcache_ext(a1, 1);
    lck_mtx_lock(a1);
    v14 = *(a1 + 576);
    lck_mtx_unlock(a1);
    lck_mtx_lock(a2);
    v15 = *(a2 + 352);
    if ((v15 & 0x40) != 0)
    {
      v16 = *(a2 + 584);
    }

    else
    {
      v16 = 0;
    }

    *(a2 + 352) = v15 | 0x40;
    *(a2 + 584) = v10;
    *(a2 + 580) = v14;
    lck_mtx_unlock(a2);
    if (v16)
    {
      kfree_data();
    }

    add_sillyrename_entry(a1, (a2 + 360), v10);
    return 0;
  }

  return v13;
}

uint64_t handle_enoent_from_lookup(vnode *a1, componentname *cnp, int a3)
{
  cn_nameiop = cnp->cn_nameiop;
  if (!cnp->cn_nameiop)
  {
    if (!a3)
    {
      return 2;
    }

    goto LABEL_14;
  }

  if (cn_nameiop != 3 && cn_nameiop != 1)
  {
    return 2;
  }

  cn_flags = cnp->cn_flags;
  if ((cn_flags & 0x8000) != 0)
  {
    v6 = 4294967294;
  }

  else
  {
    v6 = 2;
  }

  if (cn_flags & 0x8000) == 0 && (a3)
  {
LABEL_14:
    cache_enter(a1, 0, cnp);
    return 2;
  }

  return v6;
}

size_t lifs_vnop_dorename(vnode *a1, vnode *a2, vnode *a3, vnode *a4, uint64_t a5, uint64_t a6, int a7, vfs_context *a8)
{
  bzero(v49, 0x268uLL);
  v14 = vnode_fsnode(a1);
  v15 = vnode_fsnode(a3);
  v16 = vnode_fsnode(a2);
  arg1 = 0;
  bzero(v45, 0x2F0uLL);
  lifs_mount_from_node = get_lifs_mount_from_node(v14, &arg1);
  if (lifs_mount_from_node)
  {
    return lifs_mount_from_node;
  }

  vp = a2;
  v41 = a6;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140065u, arg1, v14, v16, v15);
  }

  if (*(a5 + 48) > 1023 || *(a6 + 48) > 1023)
  {
    lifs_mount_from_node = 63;
    goto LABEL_49;
  }

  v18 = kalloc_data();
  result = kalloc_data();
  __dst = result;
  v20 = (*(a5 + 48) + 1);
  if (v20 < 0x401)
  {
    result = strlcpy(v18, *(a5 + 40), v20);
    v21 = (*(v41 + 48) + 1);
    if (v21 < 0x401)
    {
      strlcpy(__dst, *(v41 + 40), v21);
      lck_rw_lock_exclusive((arg1 + 128));
      if (lifs_lookup(arg1, v14, a5, v18, v49))
      {
        lifs_mount_from_node = 2;
LABEL_48:
        lck_rw_unlock_exclusive((arg1 + 128));
        kfree_data();
        kfree_data();
LABEL_49:
        if ((kdebug_enable & 0xFFFFFFF7) != 0)
        {
          kernel_debug_filtered(0x3140066u, arg1, v14, v15, lifs_mount_from_node);
        }

        return lifs_mount_from_node;
      }

      v22 = lifs_lookup_node(arg1, v50);
      if (v22 && *(v22 + 552) != a2)
      {
LABEL_13:
        lifs_mount_from_node = 4294967291;
        goto LABEL_48;
      }

      v23 = lifs_lookup(arg1, v15, v41, __dst, v49);
      v24 = v23 == 0;
      if (v23)
      {
        v25 = 0;
      }

      else
      {
        if (!a4)
        {
          goto LABEL_13;
        }

        v29 = lifs_lookup_node(arg1, v50);
        if (!v29)
        {
          goto LABEL_13;
        }

        v25 = a4;
        if (*(v29 + 552) != a4)
        {
          goto LABEL_13;
        }
      }

      v26 = arg1;
      v38 = v24;
      if ((*(arg1 + 32) & 4) != 0 || v25 == vp || !v25)
      {
        v28 = v16;
        if (v25)
        {
          goto LABEL_31;
        }

        v30 = 0;
      }

      else
      {
        v27 = vnode_fsnode(v25);
        v28 = v16;
        if (vnode_vtype(v25) == VDIR)
        {
          move_sillyrename_entries(v27, v15);
LABEL_31:
          v31 = v25;
          v30 = vnode_fsnode(v25);
          lifs_mount_from_node = lifs_rename_request(arg1, v18, (v28 + 360), (v14 + 360), __dst, (v30 + 360), (v15 + 360), a7, v45);
          v32 = 0;
LABEL_32:
          if (!lifs_mount_from_node)
          {
            update_lnode_attr(v14, v45);
            update_lnode_attr(v15, &v47);
            lck_mtx_lock(v28);
            v33 = *(v15 + 360);
            v34 = *(v15 + 376);
            v35 = *(v15 + 408);
            *(v28 + 456) = *(v15 + 392);
            *(v28 + 472) = v35;
            *(v28 + 424) = v33;
            *(v28 + 440) = v34;
            if ((*(arg1 + 34) & 2) != 0)
            {
              update_lnode_attr_locked(v28, &v46);
              lck_mtx_unlock(v28);
              v36 = v41;
              if (v30)
              {
                update_lnode_attr(v30, &v48);
              }
            }

            else
            {
              if ((*v18 == 46) == (*__dst == 46))
              {
                *(v28 + 352) = *(v28 + 352) & 0xFFFC7FFF | 0x20000;
              }

              else
              {
                invalidate_lnode_attr_locked(v28);
              }

              v36 = v41;
              lck_mtx_unlock(v28);
              if (v30)
              {
                lck_mtx_lock(v30);
                invalidate_lnode_attr_locked(v30);
                lck_mtx_unlock(v30);
              }
            }

            cache_purge(vp);
            if ((v32 & 1) == 0)
            {
              cache_purge(v31);
            }

            cache_purge_negatives(a1);
            cache_purge_negatives(a3);
            lifs_invalidate_dirattrcache_ext(v14, 1);
            lifs_invalidate_dirattrcache_ext(v15, 1);
            vnode_update_identity(vp, a3, __dst, *(v36 + 48), *(v36 + 52), 3);
            v37 = !v38;
            if (v31 == vp)
            {
              v37 = 1;
            }

            if ((v37 & 1) == 0)
            {
              vnode_recycle(v31);
            }

            lifs_mount_from_node = 0;
          }

          goto LABEL_48;
        }

        if (!vnode_isinuse(v25, 0))
        {
          goto LABEL_31;
        }

        v30 = v27;
        lifs_mount_from_node = lifs_sillyrename(v15, v27, __dst, a8);
        if (lifs_mount_from_node)
        {
          goto LABEL_48;
        }

        v38 = 0;
        v26 = arg1;
      }

      lifs_mount_from_node = lifs_rename_request(v26, v18, (v28 + 360), (v14 + 360), __dst, invalidFH, (v15 + 360), a7, v45);
      v31 = 0;
      v32 = 1;
      goto LABEL_32;
    }
  }

  __break(0xBFFEu);
  return result;
}

uint64_t lifs_reclaim_done(uint64_t a1, int a2)
{
  if (!a2)
  {
    lifs_update_freespace(*a1, (a1 + 8));
  }

  return kfree_type_impl();
}

uint64_t lifs_io_thread_start(uint64_t a1)
{
  new_thread = 0;
  v2 = (a1 + 712);
  lck_mtx_lock((a1 + 712));
  *(a1 + 668) = 0;
  if (lifs_max_io_threads)
  {
    v3 = 0;
    while (1)
    {
      v4 = kernel_thread_start(lifs_io_strategy_thread, a1, &new_thread);
      if (v4)
      {
        break;
      }

      msleep(new_thread, v2, 32, "lifs_io_thread_start", 0);
      thread_deallocate(new_thread);
      if (++v3 >= lifs_max_io_threads)
      {
        goto LABEL_5;
      }
    }

    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to start lifs IO thread for mount %p kern_return %d", a1, v4);
    lck_mtx_unlock(v2);
    lifs_io_thread_stop(a1);
    return 12;
  }

  else
  {
LABEL_5:
    lck_mtx_unlock(v2);
    return 0;
  }
}

void lifs_io_strategy_thread(uint64_t a1)
{
  v2 = current_thread();
  _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: thread %p starting for mount %p\n", "lifs_io_strategy_thread", v2, a1);
  thread_set_thread_name(v2, "lifs_io_strategy");
  lck_mtx_lock((a1 + 712));
  ++*(a1 + 748);
  wakeup(v2);
  if (*(a1 + 668) != 2)
  {
    v3 = (a1 + 632);
    do
    {
      v4 = *v3;
      if (*v3)
      {
        do
        {
          v5 = *v4;
          if (*v4)
          {
            if (*(v5 + 8) != v4)
            {
              goto LABEL_19;
            }

            v6 = v4[1];
            if (*v6 != v4)
            {
LABEL_18:
              __break(0xBFFDu);
LABEL_19:
              __break(0xBFFDu);
              return;
            }

            *(v5 + 8) = v6;
            v7 = v4[1];
          }

          else
          {
            v7 = v4[1];
            if (*v7 != v4)
            {
              goto LABEL_18;
            }

            *(a1 + 640) = v7;
          }

          *v7 = v5;
          lck_mtx_unlock((a1 + 712));
          lifs_submit_io(a1, v4);
          lck_mtx_lock((a1 + 712));
          v4 = *(a1 + 632);
        }

        while (v4);
        if (*(a1 + 668) == 2)
        {
          break;
        }
      }

      msleep((a1 + 632), (a1 + 712), 16, "lifs_io_strategy_thread", 0);
    }

    while (*(a1 + 668) != 2);
  }

  v8 = *(a1 + 748) - 1;
  *(a1 + 748) = v8;
  if (!v8)
  {
    wakeup(a1);
  }

  lck_mtx_unlock((a1 + 712));
  _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: thread %p exiting for mount %p\n", "lifs_io_strategy_thread", v2, a1);

  thread_terminate(v2);
}

void lifs_io_thread_stop(uint64_t a1)
{
  v2 = (a1 + 712);
  lck_mtx_lock((a1 + 712));
  *(a1 + 668) = 2;
  wakeup((a1 + 632));
  while (*(a1 + 748))
  {
    msleep(a1, v2, 32, "lifs_io_thread_stop", 0);
  }

  lck_mtx_unlock(v2);
}

uint64_t lifs_endio_thread_start(uint64_t a1)
{
  new_thread = 0;
  v2 = (a1 + 728);
  lck_mtx_lock((a1 + 728));
  *(a1 + 672) = 0;
  v3 = kernel_thread_start(lifs_endio_thread, a1, &new_thread);
  if (v3)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to start lifs endio thread for mount %p kern_return %d", a1, v3);
    lck_mtx_unlock(v2);
    return 12;
  }

  else
  {
    msleep(new_thread, v2, 32, "lifs_endio_thread_start", 0);
    lck_mtx_unlock(v2);
    thread_deallocate(new_thread);
    return 0;
  }
}

void lifs_endio_thread(uint64_t a1)
{
  v2 = current_thread();
  _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: thread %p starting for mount %p\n", "lifs_endio_thread", v2, a1);
  thread_set_thread_name(v2, "lifs_endio");
  lck_mtx_lock((a1 + 728));
  *(a1 + 672) = 1;
  wakeup(v2);
  if (*(a1 + 672) == 1)
  {
    v3 = (a1 + 648);
    do
    {
      v4 = *v3;
      if (*v3)
      {
        do
        {
          v5 = *v4;
          if (*v4)
          {
            if (*(v5 + 8) != v4)
            {
              goto LABEL_17;
            }

            v6 = v4[1];
            if (*v6 != v4)
            {
LABEL_16:
              __break(0xBFFDu);
LABEL_17:
              __break(0xBFFDu);
              return;
            }

            *(v5 + 8) = v6;
            v7 = v4[1];
          }

          else
          {
            v7 = v4[1];
            if (*v7 != v4)
            {
              goto LABEL_16;
            }

            *(a1 + 656) = v7;
          }

          *v7 = v5;
          lifs_dispatch_async_endio(a1, v4, 1);
          lck_mtx_lock((a1 + 728));
          v4 = *(a1 + 648);
        }

        while (v4);
        if (*(a1 + 672) == 2)
        {
          break;
        }
      }

      msleep((a1 + 648), (a1 + 728), 16, "lifs_endio_thread", 0);
    }

    while (*(a1 + 672) == 1);
  }

  *(a1 + 672) = 3;
  wakeup(a1);
  lck_mtx_unlock((a1 + 728));
  _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: thread %p exiting for mount %p\n", "lifs_endio_thread", v2, a1);

  thread_terminate(v2);
}

void lifs_endio_thread_stop(uint64_t a1)
{
  v2 = (a1 + 728);
  lck_mtx_lock((a1 + 728));
  *(a1 + 672) = 2;
  wakeup((a1 + 648));
  while (*(a1 + 672) != 3)
  {
    msleep(a1, v2, 32, "lifs_endio_thread_stop", 0);
  }

  lck_mtx_unlock(v2);
}

uint64_t lifs_get_extent_layout(uint64_t a1, uintptr_t arg1, uint64_t a3, uintptr_t arg2, uintptr_t arg3, int a6)
{
  v6 = a6;
  v7 = arg3;
  v12 = a6 & 3;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400E5u, arg1, arg2, arg3, a6);
  }

  v25 = 0;
  *arg3a = 0u;
  v13 = (arg1 + 360);
  memset(v23, 0, sizeof(v23));
  if (!v12)
  {
    v17 = lifs_blockmap_file_request(a1, v13, arg2, v7, 15, 0, v23);
    if (v17)
    {
      v16 = v17;
      if ((kdebug_enable & 0xFFFFFFF7) == 0)
      {
        return v16;
      }

      goto LABEL_27;
    }

LABEL_14:
    lifs_update_freespace(a1, &arg3a[1]);
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      if (v12)
      {
        v18 = *(a3 + 32);
      }

      else
      {
        v18 = 0;
      }

      kernel_debug_filtered(0x31400E4u, arg1, v18, SLODWORD(arg3a[0]), 0);
    }

    lck_rw_lock_exclusive((arg1 + 944));
    if (SLODWORD(arg3a[0]) >= 1)
    {
      v19 = 0;
      v20 = v23;
      do
      {
        if ((kdebug_enable & 0xFFFFFFF7) != 0)
        {
          kernel_debug_filtered(0x31400E4u, *(v20 + 2), *(v20 + 3), *(v20 + 1), *(v20 + 1));
        }

        lifs_add_extent(*(arg1 + 936), *(v20 + 2), *(v20 + 1), v20);
        ++v19;
        v20 = (v20 + 24);
      }

      while (v19 < SLODWORD(arg3a[0]));
    }

    lck_rw_unlock_exclusive((arg1 + 944));
    if ((kdebug_enable & 0xFFFFFFF7) == 0)
    {
      return 0;
    }

    v16 = 0;
    if (v12)
    {
      goto LABEL_26;
    }

LABEL_27:
    v21 = 0;
    goto LABEL_28;
  }

  if (v6)
  {
    v14 = 271;
  }

  else
  {
    v14 = 527;
  }

  v15 = lifs_blockmap_file_request(a1, v13, arg2, v7, v14, *(a3 + 32), v23);
  if (!v15)
  {
    *(a3 + 64) = 1;
    goto LABEL_14;
  }

  v16 = v15;
  if ((kdebug_enable & 0xFFFFFFF7) == 0)
  {
    return v16;
  }

LABEL_26:
  v21 = *(a3 + 32);
LABEL_28:
  kernel_debug_filtered(0x31400E6u, arg1, v21, v16, 0);
  return v16;
}

void *lifs_get_endio_context(lck_mtx_t *a1)
{
  v2 = current_thread();
  lck_mtx_lock(a1);
  v3 = (a1 + 960);
  do
  {
    v3 = *v3;
  }

  while (v3 && v3[3] != v2);
  lck_mtx_unlock(a1);
  return v3;
}

void lifs_koio_done(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  if (v3)
  {
    v3(a1, a2[3]);
  }

  kfree_type_impl();

  lifs_dev_rele(v2);
}

uint64_t lifs_vnop_strategy_done(uint64_t a1, errno_t a2)
{
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = buf_vnode(v4);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    v7 = buf_kernel_addrperm_addr();
    kernel_debug_filtered(0x31400B9u, v6, v7, *(a1 + 16) & 1, *(a1 + 40));
  }

  v8 = *(a1 + 40);
  if ((*(a1 + 16) & 1) == 0)
  {
    if (!a2)
    {
      lifs_update_freespace(*(v5 + 528), (a1 + 56));
      v8 -= *(a1 + 48);
      v17 = (a1 + 72);
      goto LABEL_20;
    }

LABEL_18:
    v17 = 0;
    goto LABEL_20;
  }

  if (a2)
  {
    goto LABEL_18;
  }

  v9 = 0;
  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = v8 - v10;
    if (v8 != v10)
    {
      v12 = vnode_mount(v6);
      v13 = vfs_devblocksize(v12);
      v14 = buf_blkno(v4) * v13;
      if ((kdebug_enable & 0xFFFFFFF7) != 0)
      {
        kernel_debug_filtered(0x31400B8u, v14, *(a1 + 40), *(v5 + 608), *(v5 + 616));
      }

      lck_mtx_lock(v5);
      v15 = *(v5 + 616);
      if (v14 + *(a1 + 40) > v15 || *(v5 + 608) > v15)
      {
        v11 = 0;
      }

      lck_mtx_unlock(v5);
      v9 = v11;
    }
  }

  v16 = vnode_mount(v6);
  if ((vfs_flags(v16) & 0x10000001) != 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = (a1 + 64);
  }

  v8 = v9;
LABEL_20:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400B8u, v5, *(a1 + 48), v8, a2);
  }

  lck_mtx_lock(v5);
  v18 = *(v5 + 984);
  *(v5 + 984) = v18 - 1;
  if (v18 <= 0)
  {
    panic("%s: lnode %p vp %p async_io_inflights (%d) < 0 @%s:%d", "lifs_vnop_strategy_done", v5, v6, *(v5 + 984), "lifs_vnops.c", 1921);
  }

  v19 = *(v5 + 352);
  if ((v19 & 0x1000) != 0)
  {
    *(v5 + 352) = v19 & 0xFFFFEFFF;
    wakeup((v5 + 984));
  }

  if (!a2 && v17)
  {
    update_lnode_attr_subset_locked(v5, v17);
  }

  lck_mtx_unlock(v5);
  buf_seterror(v4, a2);
  buf_setresid(v4, v8);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    v20 = buf_kernel_addrperm_addr();
    v21 = buf_resid(v4);
    kernel_debug_filtered(0x31400BAu, v6, v20, v21, a2);
  }

  buf_biodone(v4);

  return kfree_type_impl();
}

uint64_t lifs_dispatch_async_endio(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 16);
  v7 = (a1 + 832);
  OSAddAtomic(1, (a1 + 832));
  OSAddAtomic(1, (v6 + 980));
  if (a3)
  {
    lck_mtx_unlock((a1 + 728));
  }

  v8 = lifs_endio_request_async(a1, (v6 + 360), *(a2 + 40), *(a2 + 48), *(a2 + 60), *(a2 + 56), *(a2 + 32), lifs_endio_done, a2, a2 + 72);
  v9 = v8;
  if (v8)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lnode %p flags 0x%x offset %llu length %llu status %u ope_id %llu error %d\n", "lifs_dispatch_async_endio", v6, *(a2 + 56), *(a2 + 40), *(a2 + 48), *(a2 + 60), *(a2 + 32), v8);
    lifs_endio_done(a2, v9);
  }

  else
  {
    lck_mtx_lock((a1 + 96));
    if (*(a1 + 832) >= 17)
    {
      do
      {
        *(a1 + 32) |= 0x10uLL;
        msleep(v7, (a1 + 96), 16, "lifs_dispatch_async_endio", 0);
      }

      while (*(a1 + 832) > 16);
    }

    lck_mtx_unlock((a1 + 96));
  }

  return v9;
}

uint64_t lifs_endio_done(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 + 528);
  OSAddAtomic(-1, (v5 + 832));
  lck_mtx_lock((v5 + 96));
  if ((*(v5 + 832) & 0x80000000) != 0)
  {
    panic("%s: lmp %p async_endio_inflights (%d) < 0 @%s:%d", "lifs_endio_done", v5, *(v5 + 832), "lifs_vnops.c", 6133);
  }

  v6 = *(v5 + 32);
  if ((v6 & 0x10) != 0)
  {
    *(v5 + 32) = v6 & 0xFFFFFFFFFFFFFFEFLL;
    wakeup((v5 + 832));
  }

  lck_mtx_unlock((v5 + 96));
  OSAddAtomic(-1, (v4 + 980));
  lck_mtx_lock(v4);
  if ((*(v4 + 980) & 0x80000000) != 0)
  {
    panic("%s: lnode %p async_endio_inflights (%d) < 0 @%s:%d", "lifs_endio_done", v4, *(v4 + 980), "lifs_vnops.c", 6147);
  }

  v7 = *(v4 + 352);
  if ((v7 & 0x1000) != 0)
  {
    *(v4 + 352) = v7 & 0xFFFFEFFF;
    wakeup((v4 + 980));
  }

  if (!a2)
  {
    update_lnode_attr_subset_locked(v4, (a1 + 72));
  }

  lck_mtx_unlock(v4);

  return kfree_type_impl();
}

void com_apple_filesystems_lifs::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void com_apple_filesystems_lifs::~com_apple_filesystems_lifs(IOService *this)
{
  IOService::~IOService(this);
}

{
  IOService::~IOService(this);

  _OSObject_typed_operator_delete(&com_apple_filesystems_lifs_ktv, this, 136);
}

IOService *com_apple_filesystems_lifs::MetaClass::alloc(com_apple_filesystems_lifs::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  IOService::IOService(v1, &com_apple_filesystems_lifs::gMetaClass)->__vftable = off_2CBB0;
  OSMetaClass::instanceConstructed(&com_apple_filesystems_lifs::gMetaClass);
  return v1;
}

uint64_t com_apple_filesystems_lifs::start(com_apple_filesystems_lifs *this, IOService *a2)
{
  if (result)
  {
    if (lifs_add())
    {
      return 0;
    }

    else
    {
      lck_mtx_init(&lifs_containers_list_lock, lifs_kext_grp, 0);
      lifs_containers_list = 0;
      (*(*this + 672))(this, 0);
      return 1;
    }
  }

  return result;
}

uint64_t com_apple_filesystems_lifs::stop(com_apple_filesystems_lifs *this, IOService *a2)
{
  lck_mtx_destroy(&lifs_containers_list_lock, lifs_kext_grp);
  if (lifs_remove())
  {
    com_apple_filesystems_lifs::stop();
  }

  return (stop)(this, a2);
}

void AppleLIFSUserClient::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleLIFSUserClient::~AppleLIFSUserClient(IOUserClient *this)
{
  IOUserClient::~IOUserClient(this);
}

{
  IOUserClient::~IOUserClient(this);

  _OSObject_typed_operator_delete(&AppleLIFSUserClient_ktv, this, 288);
}

IOUserClient *AppleLIFSUserClient::MetaClass::alloc(AppleLIFSUserClient::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  IOUserClient::IOUserClient(v1, &AppleLIFSUserClient::gMetaClass)->__vftable = off_2D190;
  OSMetaClass::instanceConstructed(&AppleLIFSUserClient::gMetaClass);
  return v1;
}