uint64_t AppleLIFSUserClient::methodCreateMapping(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = a3[6];
  v5 = a3[11];
  *(&v14.__vftable + 4) = 0;
  LODWORD(v14.__vftable) = 0;
  v6 = current_task();
  v8 = IOUserClient::copyObjectForPortNameInTask(v6, *v4, &v14.__vftable + 4, v7);
  if (!v8)
  {
    v10 = OSMetaClassBase::safeMetaCast(*(&v14.__vftable + 4), &IOWrappedMemoryDescriptor::gMetaClass);
    if (v10)
    {
      v11 = v10;
      MappingInTask = IOWrappedMemoryDescriptor::createMappingInTask(v10, v6, *(v4 + 1), v4[4], *(v4 + 3), *(v4 + 4));
      (v11->release_0)(v11);
      if (MappingInTask)
      {
        *v5 = (MappingInTask->getVirtualAddress)(MappingInTask);
        v5[1] = (MappingInTask->getLength)(MappingInTask);
        v8 = IOUserClient::copyPortNameForObjectInTask(v6, MappingInTask, &v14, v13);
        if (v8)
        {
          (MappingInTask->release_0)(MappingInTask);
        }

        else
        {
          v5[2] = LODWORD(v14.__vftable);
        }
      }

      else
      {
        return 3758097096;
      }
    }

    else
    {
      (*(**(&v14.__vftable + 4) + 40))(*(&v14.__vftable + 4));
      return 3758096385;
    }
  }

  return v8;
}

uint64_t AppleLIFSUserClient::methodSetClientDomain(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v5 = a3[6];
  IOLog("methodSetClientDomain entered\n", a2);
  if ((*(this + 284) & 1) == 0)
  {
    return 3758097089;
  }

  strlcpy(this + 236, v5, 0x28uLL);
  return 0;
}

uint64_t AppleLIFSUserClient::methodReaddirReply(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = a3[6];
  v5 = *(v4 + 8);
  if (v5 || (v7 = *(v4 + 24), v7 < 1))
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = *(v4 + 32);
  }

  lifs_request_done(*v4, v5, 9, (v4 + 16), 0x18u, v6, v7);
  return 0;
}

uint64_t AppleLIFSUserClient::methodGetattrlistbulkReply(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = a3[6];
  v5 = *(v4 + 8);
  if (v5 || (v7 = *(v4 + 32), v7 < 1))
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = *(v4 + 40);
  }

  lifs_request_done(*v4, v5, 16, (v4 + 16), 0x20u, v6, v7);
  return 0;
}

uint64_t AppleLIFSUserClient::methodReadReply(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = a3[6];
  v5 = *(v4 + 8);
  if (v5 || (v7 = *(v4 + 16), v7 < 1))
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = *(v4 + 24);
  }

  lifs_request_done(*v4, v5, 19, (v4 + 16), 0x68u, v6, v7);
  return 0;
}

uint64_t AppleLIFSUserClient::methodGetFsAttrReply(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = a3[6];
  if ((*(v4 + 16) & 0xFFFFFFFE) == 2)
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 24);
    *(v4 + 32) = 0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  lifs_request_done(*v4, *(v4 + 8), 23, (v4 + 16), 0x18u, v5, v6);
  return 0;
}

uint64_t AppleLIFSUserClient::methodXattrReply(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = a3[6];
  v5 = *(v4 + 8);
  if (v5)
  {
    v6 = 0;
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = *(v4 + 24);
    if (v7)
    {
      v6 = *(v4 + 32);
    }

    else
    {
      v6 = 0;
    }
  }

  lifs_request_done(*v4, v5, 24, (v4 + 16), 0x18u, v6, v7);
  return 0;
}

uint64_t AppleLIFSUserClient::methodOpenKernelFD(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = 3758097084;
  v5 = a3[6];
  vp = 0;
  v6 = v5[1];
  if ((v6 & 0x40000000) != 0)
  {
    v7 = v6 & 0xFFFFFFFC;
  }

  else
  {
    v7 = v6 + 1;
  }

  if ((*(this + 286) & 1) == 0)
  {
    return 3758097089;
  }

  v9 = *v5;
  lck_mtx_lock(&lifs_containers_list_lock);
  v10 = lifs_containers_list;
  if (!lifs_containers_list)
  {
LABEL_9:
    v23 = *(this + 69);
    v24 = *(this + 70);
    IOLog("%s: no container found (pid %d pidversion %d)\n");
LABEL_10:
    lck_mtx_unlock(&lifs_containers_list_lock);
    v11 = 1;
    goto LABEL_11;
  }

  while (v10[6] != *(this + 69) || v10[7] != *(this + 70))
  {
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  v13 = *(v10 + 2);
  if (v13)
  {
    while (v13[2] != this || *(v13 + 19) != v9)
    {
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_20;
      }
    }

    IOLog("%s: duplicate volume found (client %p fd %d) in container %p\n");
    goto LABEL_10;
  }

LABEL_20:
  vfs_context_current();
  v14 = vnode_getfromfd();
  if (v14)
  {
    IOLog("%s: failed to get device vnode for fd %d, err: %d\n", "methodOpenKernelFD", v9, v14);
    v4 = 3758097088;
    goto LABEL_10;
  }

  v15 = vnode_getname(0);
  if (!vnode_ischr(0) || !v15 || strncmp(v15, "rdisk", 5uLL))
  {
    v16 = vnode_vtype(0);
    v17 = "none";
    if (v15)
    {
      v17 = v15;
    }

    IOLog("%s: invalid vnode type %d name %s for fd %d, err: %d\n", "methodOpenKernelFD", v16, v17, v9, 0);
    lck_mtx_unlock(&lifs_containers_list_lock);
    v4 = 3758097090;
    v11 = 1;
    if (!v15)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

  vnode_put(0);
  vp = lifs_open_device(++v15, v7);
  if (!vp)
  {
    v4 = 3758097101;
    goto LABEL_34;
  }

  v18 = IOMallocTypeImpl();
  *(v18 + 16) = this;
  *(v18 + 32) = vp;
  *(v18 + 76) = v9;
  *(v18 + 80) = v7;
  v19 = (v18 + 40);
  strlcpy((v18 + 40), v15, 0x20uLL);
  lck_mtx_init((v18 + 88), lifs_kext_grp, 0);
  os_ref_init_count_external((v18 + 84), 0, 1u);
  v20 = vfs_context_kernel();
  result = VNOP_IOCTL(vp, 0x40046418uLL, (v18 + 72), 0, v20);
  if (result)
  {
    IOLog("%s: failed to get block size for device %s, err: %d\n", "methodOpenKernelFD", v19, result);
LABEL_34:
    v11 = 1;
LABEL_40:
    lck_mtx_unlock(&lifs_containers_list_lock);
LABEL_41:
    vnode_putname(v15);
LABEL_11:
    if (v11)
    {
      if (vp)
      {
        vnode_put(vp);
      }
    }

    return v4;
  }

  v21 = (v10 + 4);
  v22 = *(v10 + 2);
  if (!v22)
  {
    *v18 = 0;
    goto LABEL_39;
  }

  if (*(v22 + 8) == v21)
  {
    *v18 = v22;
    *(v22 + 8) = v18;
LABEL_39:
    *(v10 + 2) = v18;
    *(v18 + 8) = v21;
    IOLog("%s: add volume %p client %p container %p (fd: %d device: %s fmode: 0x%x blocksize: 0x%x)\n", "methodOpenKernelFD", v18, *(v18 + 16), v10, *(v18 + 76), v19, *(v18 + 80), *(v18 + 72));
    v11 = 0;
    v4 = 0;
    vp = 0;
    goto LABEL_40;
  }

  __break(0xBFFDu);
  return result;
}

uint64_t AppleLIFSUserClient::methodCloseKernelFD(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = 3758097084;
  if ((*(this + 286) & 1) == 0)
  {
    return 3758097089;
  }

  v6 = a3[6];
  lck_mtx_lock(&lifs_containers_list_lock);
  v7 = lifs_containers_list;
  if (lifs_containers_list)
  {
    while (*(v7 + 24) != *(this + 69) || *(v7 + 28) != *(this + 70))
    {
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v9 = *(v7 + 16);
    if (v9)
    {
      while (*(v9 + 16) != this || *(v9 + 76) != *v6)
      {
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_14;
        }
      }

      lifs_destroy_iouc_volume(v7, v9);
      v4 = 0;
    }

    else
    {
LABEL_14:
      v10 = *v6;
      IOLog("%s: no volume found for client %p in container %p with fd %d\n");
    }
  }

  else
  {
LABEL_6:
    v11 = *(this + 69);
    v12 = *(this + 70);
    IOLog("%s: no container found for pid %d pidversion %d\n");
  }

  lck_mtx_unlock(&lifs_containers_list_lock);
  return v4;
}

uint64_t AppleLIFSUserClient::methodCreateVolumePort(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v5 = a3[11];
  if ((*(this + 285) & 1) == 0 && (*(this + 286) & 1) == 0)
  {
    return 3758097089;
  }

  LODWORD(v12.__vftable) = 0;
  v6 = current_task();
  v8 = IOUserClient::copyPortNameForObjectInTask(v6, this, &v12, v7);
  v9 = v8;
  v10 = v12.__vftable;
  if (v8)
  {
    v10 = 0;
  }

  *v5 = v10;
  if (v8)
  {
    IOLog("%s: copyPortNameForObjectInTask for task %p object %p port %d error %d\n", "methodCreateVolumePort", v6, this, 0, v8);
  }

  return v9;
}

uint64_t AppleLIFSUserClient::methodGetVolumePortReply(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = a3[6];
  v5 = (v4 + 24);
  *(v4 + 24) = 0;
  v6 = *(v4 + 8);
  if (!v6)
  {
    v7 = current_task();
    v9 = IOUserClient::copyObjectForPortNameInTask(v7, *(v4 + 16), v4 + 24, v8);
    if (v9)
    {
      IOLog("%s: copyObjectForPortNameInTask for port %d returned %d\n", "methodGetVolumePortReply", *(v4 + 16), v9);
      v6 = 5;
      *(v4 + 8) = 5;
    }

    else
    {
      v6 = *(v4 + 8);
    }
  }

  if (lifs_request_done(*v4, v6, 30, (v4 + 16), 0x10u, 0, 0))
  {
    if (!*v5)
    {
      return 0;
    }

    (*(**v5 + 40))(*v5);
  }

  if (*v5)
  {
    *v5 = 0;
  }

  return 0;
}

uint64_t AppleLIFSUserClient::methodWriteMeta(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = 3758097088;
  if ((*(this + 286) & 1) == 0)
  {
    return 3758097089;
  }

  v5 = a3[6];
  volume_by_fd = lifs_get_volume_by_fd(this, *v5);
  if (volume_by_fd)
  {
    v7 = volume_by_fd;
    v8 = lifs_write_meta(volume_by_fd[4], *(volume_by_fd + 18), *(v5 + 8), *(v5 + 16), *(v5 + 24));
    if (v8)
    {
      IOLog("%s: write_meta failed with err %d (device: %s buffer: %p offset: 0x%llx length: 0x%lx)\n", "methodWriteMeta", v8, (v7 + 40), *(v5 + 8), *(v5 + 16), *(v5 + 24));
      v4 = 3758097098;
    }

    else
    {
      v4 = 0;
    }

    lifs_volume_rele(v7);
  }

  return v4;
}

uint64_t AppleLIFSUserClient::methodWriteMetaAsync(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = 3758097088;
  if ((*(this + 286) & 1) == 0)
  {
    return 3758097089;
  }

  v5 = a3[6];
  volume_by_fd = lifs_get_volume_by_fd(this, *v5);
  if (volume_by_fd)
  {
    v7 = volume_by_fd;
    v8 = lifs_write_meta_async(volume_by_fd[4], *(volume_by_fd + 18), *(v5 + 8), *(v5 + 16), *(v5 + 24));
    if (v8)
    {
      IOLog("%s: write_meta_async failed with err %d (device: %s buffer: %p offset: 0x%llx length: 0x%lx)\n", "methodWriteMetaAsync", v8, (v7 + 40), *(v5 + 8), *(v5 + 16), *(v5 + 24));
      v4 = 3758097098;
    }

    else
    {
      v4 = 0;
    }

    lifs_volume_rele(v7);
  }

  return v4;
}

uint64_t AppleLIFSUserClient::methodWriteMetaDelayed(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = 3758097088;
  if ((*(this + 286) & 1) == 0)
  {
    return 3758097089;
  }

  v5 = a3[6];
  volume_by_fd = lifs_get_volume_by_fd(this, *v5);
  if (volume_by_fd)
  {
    v7 = volume_by_fd;
    v8 = lifs_write_meta_delayed(volume_by_fd[4], *(volume_by_fd + 18), *(v5 + 8), *(v5 + 16), *(v5 + 24));
    if (v8)
    {
      IOLog("%s: write_meta_delayed failed with err %d (device: %s buffer: %p offset: 0x%llx length: 0x%lx)\n", "methodWriteMetaDelayed", v8, (v7 + 40), *(v5 + 8), *(v5 + 16), *(v5 + 24));
      v4 = 3758097098;
    }

    else
    {
      v4 = 0;
    }

    lifs_volume_rele(v7);
  }

  return v4;
}

uint64_t AppleLIFSUserClient::methodWriteMetaSubBlock(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = 3758097088;
  if ((*(this + 286) & 1) == 0)
  {
    return 3758097089;
  }

  v5 = a3[6];
  volume_by_fd = lifs_get_volume_by_fd(this, *v5);
  if (volume_by_fd)
  {
    v7 = volume_by_fd;
    v8 = lifs_write_meta_subblock(volume_by_fd[4], *(volume_by_fd + 18), *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40));
    if (v8)
    {
      v9 = *(v5 + 32);
      IOLog("%s: write_meta_subblock failed with err %d (device: %s blockOffset: 0x%llx blockLength: 0x%lx buffer: %p offset: 0x%llx length: 0x%lx)\n", "methodWriteMetaSubBlock", v8, (v7 + 40), *(v5 + 8), *(v5 + 16), *(v5 + 24), v9, *(v5 + 40));
      v4 = 3758097098;
    }

    else
    {
      v4 = 0;
    }

    lifs_volume_rele(v7);
  }

  return v4;
}

uint64_t AppleLIFSUserClient::methodReadMeta(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = 3758097088;
  if ((*(this + 286) & 1) == 0)
  {
    return 3758097089;
  }

  v5 = a3[6];
  volume_by_fd = lifs_get_volume_by_fd(this, *v5);
  if (volume_by_fd)
  {
    v7 = volume_by_fd;
    meta = lifs_read_meta(volume_by_fd[4], *(volume_by_fd + 18), *(v5 + 8), *(v5 + 16), *(v5 + 24));
    if (meta)
    {
      IOLog("%s: read_meta failed with err %d (device: %s buffer %p offset: 0x%llx length: 0x%lx)\n", "methodReadMeta", meta, (v7 + 40), *(v5 + 8), *(v5 + 16), *(v5 + 24));
      v4 = 3758097098;
    }

    else
    {
      v4 = 0;
    }

    lifs_volume_rele(v7);
  }

  return v4;
}

uint64_t AppleLIFSUserClient::methodReadMetaWithRA(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = 3758097088;
  if ((*(this + 286) & 1) == 0)
  {
    return 3758097089;
  }

  v5 = a3[6];
  volume_by_fd = lifs_get_volume_by_fd(this, *v5);
  if (volume_by_fd)
  {
    v7 = volume_by_fd;
    meta_with_ra = lifs_read_meta_with_ra(volume_by_fd[4], *(volume_by_fd + 18), *(v5 + 8), *(v5 + 16), *(v5 + 24), v5 + 32, *(v5 + 160));
    if (meta_with_ra)
    {
      IOLog("%s: read_meta_with_ra failed with err %d (device: %s buffer %p offset: 0x%llx length: 0x%lx ra_list: %p ra_count: %d)\n", "methodReadMetaWithRA", meta_with_ra, (v7 + 40), *(v5 + 8), *(v5 + 16), *(v5 + 24), (v5 + 32), *(v5 + 160));
      v4 = 3758097098;
    }

    else
    {
      v4 = 0;
    }

    lifs_volume_rele(v7);
  }

  return v4;
}

uint64_t AppleLIFSUserClient::methodFlushMeta(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = 3758097088;
  if ((*(this + 286) & 1) == 0)
  {
    return 3758097089;
  }

  v5 = a3[6];
  volume_by_fd = lifs_get_volume_by_fd(this, *v5);
  if (volume_by_fd)
  {
    v7 = volume_by_fd;
    v8 = lifs_flush_meta(volume_by_fd[4], v5[1]);
    if (v8)
    {
      IOLog("%s: flush_meta failed with err %d (device: %s wait: %d)\n", "methodFlushMeta", v8, (v7 + 40), v5[1]);
      v4 = 3758097098;
    }

    else
    {
      v4 = 0;
    }

    lifs_volume_rele(v7);
  }

  return v4;
}

uint64_t AppleLIFSUserClient::methodFlushMetaBlocks(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = 3758097088;
  if ((*(this + 286) & 1) == 0)
  {
    return 3758097089;
  }

  v5 = a3[6];
  volume_by_fd = lifs_get_volume_by_fd(this, *v5);
  if (volume_by_fd)
  {
    v7 = volume_by_fd;
    v8 = lifs_flush_meta_blocks(volume_by_fd[4], *(volume_by_fd + 18), v5 + 8, *(v5 + 136), *(v5 + 140));
    if (v8)
    {
      IOLog("%s: flush_meta_blocks failed with err %d (device: %s wait: %d)\n", "methodFlushMetaBlocks", v8, (v7 + 40), *(v5 + 140));
      v4 = 3758097098;
    }

    else
    {
      v4 = 0;
    }

    lifs_volume_rele(v7);
  }

  return v4;
}

uint64_t AppleLIFSUserClient::methodClearMetaBlocks(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = 3758097088;
  if ((*(this + 286) & 1) == 0)
  {
    return 3758097089;
  }

  v5 = a3[6];
  volume_by_fd = lifs_get_volume_by_fd(this, *v5);
  if (volume_by_fd)
  {
    v7 = volume_by_fd;
    v8 = lifs_clear_meta_blocks(volume_by_fd[4], *(volume_by_fd + 18), v5 + 8, *(v5 + 136), *(v5 + 140));
    if (v8)
    {
      IOLog("%s: clear_meta_blocks failed with err %d (device: %s wait: %d)\n", "methodClearMetaBlocks", v8, (v7 + 40), *(v5 + 140));
      v4 = 3758097098;
    }

    else
    {
      v4 = 0;
    }

    lifs_volume_rele(v7);
  }

  return v4;
}

uint64_t AppleLIFSUserClient::methodPurgeMetaBlocks(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = 3758097088;
  if ((*(this + 286) & 1) == 0)
  {
    return 3758097089;
  }

  v5 = a3[6];
  volume_by_fd = lifs_get_volume_by_fd(this, *v5);
  if (volume_by_fd)
  {
    v7 = volume_by_fd;
    v8 = lifs_purge_meta_blocks(volume_by_fd[4], *(volume_by_fd + 18), v5 + 8, *(v5 + 136));
    if (v8)
    {
      IOLog("%s: purge_meta_blocks failed with err %d (device: %s)\n", "methodPurgeMetaBlocks", v8, (v7 + 40));
      v4 = 3758097098;
    }

    else
    {
      v4 = 0;
    }

    lifs_volume_rele(v7);
  }

  return v4;
}

uint64_t AppleLIFSUserClient::methodConfigureUserClient(AppleLIFSUserClient *this, AppleLIFSUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = a3[6];
  anObject = 0;
  if ((*(this + 284) & 1) == 0)
  {
    return 3758097089;
  }

  v5 = current_task();
  v7 = IOUserClient::copyObjectForPortNameInTask(v5, *v4, &anObject, v6);
  if (v7)
  {
    v8 = v7;
    IOLog("%s: copyObjectForPortNameInTask for port %d returned %d\n", "methodConfigureUserClient", *v4, v7);
  }

  else
  {
    v10 = OSMetaClassBase::safeMetaCast(anObject, &AppleLIFSUserClient::gMetaClass);
    if (v10)
    {
      v11 = v10;
      v12 = HIDWORD(v10[34].__vftable);
      v13 = v11[35].__vftable;
      v14 = v4[2];
      if (v12 == v4[1] && v13 == v14)
      {
        v16 = v4[3];
        BYTE6(v11[35].__vftable) = v16 != 0;
        if (v16)
        {
          lifs_create_iouc_container(v12, v13);
          v12 = HIDWORD(v11[34].__vftable);
          v13 = v11[35].__vftable;
          v16 = BYTE6(v11[35].__vftable) & 1;
        }

        IOLog("%s: client %p pid: %d pidversion: %d supportBlockResource: %d\n", "methodConfigureUserClient", v11, v12, v13, v16);
        v8 = 0;
      }

      else
      {
        IOLog("%s: mismatched pid/pidversion, userClient (pid: %d pidversion: %d) configUC (pid: %d pidversion: %d)\n", "methodConfigureUserClient", v12, v13, v4[1], v14);
        v8 = 3758097090;
      }
    }

    else
    {
      v8 = 3758097084;
    }
  }

  if (anObject)
  {
    (anObject->release_0)(anObject);
  }

  return v8;
}

uint64_t AppleLIFSUserClient::initWithTask(AppleLIFSUserClient *this, task_t task, void *a3, uint64_t a4, OSDictionary *a5)
{
  *(this + 27) = task;
  *(this + 28) = 0;
  *(this + 58) = 0;
  *(this + 286) = 0;
  v10 = IOUserClient::copyClientEntitlement(task, "com.apple.private.LiveFS.setmachport");
  if (v10)
  {
    *(this + 284) = v10 == *kOSBooleanTrue;
    (v10->release_0)(v10);
  }

  else
  {
    *(this + 284) = 0;
  }

  v11 = IOUserClient::copyClientEntitlement(task, "com.apple.developer.fskit.fsmodule");
  if (v11)
  {
    *(this + 285) = v11 == *kOSBooleanTrue;
    (v11->release_0)(v11);
  }

  else
  {
    *(this + 285) = 0;
  }

  v12 = IOUserClient::copyClientEntitlement(task, "com.apple.filesystems.kernelOffloadedIOClient");
  if (v12)
  {
    *(this + 286) = v12 == *kOSBooleanTrue;
    (v12->release_0)(v12);
  }

  else
  {
    *(this + 286) = 0;
  }

  v13 = current_proc();
  *(this + 69) = proc_pid(v13);
  current_proc();
  v14 = proc_pidversion();
  *(this + 70) = v14;
  v15 = *(this + 286);
  if (v15)
  {
    lifs_create_iouc_container(*(this + 69), v14);
    v14 = *(this + 70);
    v15 = *(this + 286);
  }

  IOLog("ALUC:init(pid: %d pidversion: %d), fskitd_entitled %d fsmodule_entitled %d support_block_resource %d\n", *(this + 69), v14, *(this + 284) & 1, *(this + 285) & 1, v15 & 1);

  return (initWithTask)(this, task, a3, a4, a5);
}

void lifs_create_iouc_container(int a1, int a2)
{
  lck_mtx_lock(&lifs_containers_list_lock);
  v4 = lifs_containers_list;
  if (!lifs_containers_list)
  {
    goto LABEL_7;
  }

  v5 = 0;
  do
  {
    if (*(v4 + 24) == a1)
    {
      v5 |= *(v4 + 28) == a2;
    }

    v4 = *v4;
  }

  while (v4);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    v6 = IOMallocTypeImpl();
    v6[6] = a1;
    v6[7] = a2;
    *(v6 + 2) = 0;
    v7 = lifs_containers_list;
    if (lifs_containers_list)
    {
      if (*(lifs_containers_list + 8) != &lifs_containers_list)
      {
        lifs_create_iouc_container();
      }

      *v6 = lifs_containers_list;
      *(v7 + 8) = v6;
    }

    else
    {
      *v6 = 0;
    }

    lifs_containers_list = v6;
    *(v6 + 1) = &lifs_containers_list;
    IOLog("%s: new container %p added (pid %d pidversion %d)\n", "lifs_create_iouc_container", v6, a1, a2);
  }

  lck_mtx_unlock(&lifs_containers_list_lock);
}

OSMetaClassBase *AppleLIFSUserClient::start(AppleLIFSUserClient *this, IOService *anObject)
{
  result = OSMetaClassBase::safeMetaCast(anObject, &com_apple_filesystems_lifs::gMetaClass);
  *(this + 28) = result;
  if (result)
  {
    if (result)
    {
      (*(**(this + 28) + 704))(*(this + 28), this, 0, 0);
      (*(**(this + 28) + 32))();
      return (&dword_0 + 1);
    }
  }

  return result;
}

uint64_t AppleLIFSUserClient::stop(AppleLIFSUserClient *this, IOService *a2)
{
  if ((*(**(this + 28) + 720))(*(this + 28), this))
  {
    (*(**(this + 28) + 712))(*(this + 28), this, 0);
  }

  (*(**(this + 28) + 40))(*(this + 28));
  *(this + 28) = 0;

  return (stop)(this, a2);
}

uint64_t AppleLIFSUserClient::clientClose(AppleLIFSUserClient *this)
{
  v2 = (*(*this + 880))(this);
  if (v2)
  {
    v3 = v2;
    if (v2 != IOService::getResourceService())
    {
      (v3->close)(v3, this, 0);
      (*(*this + 872))(this, v3);
      ResourceService = IOService::getResourceService();
      (*(*this + 864))(this, ResourceService);
    }
  }

  (*(*this + 752))(this, 0);
  return 0;
}

void AppleLIFSUserClient::clientDied(AppleLIFSUserClient *this)
{
  IOLog("ALUC:clientDied(pid: %d pidversion: %d), fskitd_entitled %d fsmodule_entitled %d support_block_resource %d\n", *(this + 69), *(this + 70), *(this + 284) & 1, *(this + 285) & 1, *(this + 286) & 1);
  if ((*(this + 284) & 1) == 0)
  {
    if ((*(this + 286) & 1) == 0)
    {
      goto LABEL_18;
    }

    v2 = *(this + 69);
    v3 = *(this + 70);
    lck_mtx_lock(&lifs_containers_list_lock);
    v4 = lifs_containers_list;
    if (!lifs_containers_list)
    {
LABEL_17:
      lck_mtx_unlock(&lifs_containers_list_lock);
      goto LABEL_18;
    }

    while (*(v4 + 6) != v2 || *(v4 + 7) != v3)
    {
      v4 = *v4;
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    v5 = v4[2];
    if (v5)
    {
      do
      {
        v6 = *v5;
        lifs_destroy_iouc_volume(v4, v5);
        v5 = v6;
      }

      while (v6);
    }

    IOLog("%s: container %p removed (pid %d pidversion %d)\n", "lifs_destroy_iouc_container", v4, v2, v3);
    v7 = *v4;
    if (*v4)
    {
      if (*(v7 + 8) != v4)
      {
LABEL_22:
        __break(0xBFFDu);
        return;
      }

      v8 = v4[1];
      if (*v8 == v4)
      {
        *(v7 + 8) = v8;
        v9 = v4[1];
LABEL_16:
        *v9 = v7;
        IOFreeTypeImpl();
        goto LABEL_17;
      }
    }

    else
    {
      v9 = v4[1];
      if (*v9 == v4)
      {
        goto LABEL_16;
      }
    }

    __break(0xBFFDu);
    goto LABEL_22;
  }

  lifs_set_machport(0, this + 236);
  lifs_request_abort_all();
  lifs_unmount_dangling_all();
LABEL_18:
  v10 = *(*this + 1376);

  v10(this);
}

uint64_t AppleLIFSUserClient::didTerminate(AppleLIFSUserClient *this, IOService *a2, uint64_t a3, BOOL *a4)
{
  if ((*(**(this + 28) + 720))(*(this + 28), this) && !*(this + 58))
  {
    (*(**(this + 28) + 712))(*(this + 28), this, 0);
  }

  return (didTerminate)(this, a2, a3, a4);
}

uint64_t AppleLIFSUserClient::externalMethod(SInt32 *this, uint64_t a2, IOExternalMethodArguments *a3, IOExternalMethodDispatch *a4, OSObject *a5, void *a6)
{
  if (*(this + 28) && !IOService::isInactive(this))
  {
    if (a2 < 0x2D)
    {
      if (this[71] & 1) != 0 || (*(this + 285) & 1) != 0 || !a2 || (*(this + 286))
      {
        OSIncrementAtomic(this + 58);
        v12 = 24 * a2;
        v13 = &AppleLIFSUserClient::uc_methods + v12;
        if (v12 != v12)
        {
          v13 = ((&AppleLIFSUserClient::uc_methods + v12) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
        }

        OSDecrementAtomic(this + 58);
        if (IOService::isInactive(this) && !this[58])
        {
          (*(**(this + 28) + 712))(*(this + 28), this, 0);
        }
      }

      else
      {
        v10 = 3758097089;
        IOLog("ALUC:externalMethod: no entitlement for selector %d\n", a2);
      }
    }

    else
    {
      IOLog("ALUC:externalMethod: selector %d >= count %d\n", a2, 45);
      return 3758097095;
    }
  }

  else
  {
    IOLog("ALUC:externalMethod: no provider or not active\n", a2, a3, a4, a5, a6);
    return 3758097113;
  }

  return v10;
}

uint64_t AppleLIFSUserClient::registerNotificationPort(AppleLIFSUserClient *this, ipc_port *a2)
{
  IOLog("registerNotificationPort entered\n");
  if ((*(this + 284) & 1) == 0)
  {
    return 3758097089;
  }

  return lifs_set_machport(a2, this + 236);
}

void lifs_destroy_iouc_volume(const void *a1, uint64_t *a2)
{
  IOLog("%s: remove volume %p client %p container %p (fd: %d device: %s fmode: 0x%x)\n", "lifs_destroy_iouc_volume", a2, a2[2], a1, *(a2 + 19), a2 + 40, *(a2 + 20));
  lck_mtx_lock((a2 + 11));
  if (*(a2 + 21) >= 2u)
  {
    do
    {
      *(a2 + 26) |= 1u;
      msleep(a2 + 84, (a2 + 11), 16, "lifs_destroy_iouc_volume", 0);
    }

    while (*(a2 + 21) > 1u);
  }

  lck_mtx_unlock((a2 + 11));
  lifs_close_device(a2[4], *(a2 + 20));
  v3 = *a2;
  if (!*a2)
  {
    v5 = a2[1];
    if (*v5 == a2)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (*(v3 + 8) != a2)
  {
LABEL_12:
    __break(0xBFFDu);
    return;
  }

  v4 = a2[1];
  if (*v4 != a2)
  {
LABEL_11:
    __break(0xBFFDu);
    goto LABEL_12;
  }

  *(v3 + 8) = v4;
  v5 = a2[1];
LABEL_8:
  *v5 = v3;
  lck_mtx_destroy((a2 + 11), lifs_kext_grp);

  IOFreeTypeImpl();
}

uint64_t *lifs_get_volume_by_fd(AppleLIFSUserClient *a1, int a2)
{
  lck_mtx_lock(&lifs_containers_list_lock);
  v4 = lifs_containers_list;
  if (!lifs_containers_list)
  {
LABEL_5:
    lck_mtx_unlock(&lifs_containers_list_lock);
    v5 = *(a1 + 69);
    v8 = *(a1 + 70);
    IOLog("%s: no container found for pid %d pidversion %d\n");
    return 0;
  }

  while (*(v4 + 24) != *(a1 + 69) || *(v4 + 28) != *(a1 + 70))
  {
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  v6 = *(v4 + 16);
  if (!v6)
  {
LABEL_12:
    lck_mtx_unlock(&lifs_containers_list_lock);
    IOLog("%s: no volume found for client %p in container %p with fd %d\n");
    return 0;
  }

  while (v6[2] != a1 || *(v6 + 19) != a2)
  {
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  lck_mtx_lock((v6 + 11));
  os_ref_retain_external(v6 + 21, 0);
  lck_mtx_unlock((v6 + 11));
  lck_mtx_unlock(&lifs_containers_list_lock);
  return v6;
}

void lifs_volume_rele(uint64_t a1)
{
  v2 = (a1 + 88);
  lck_mtx_lock((a1 + 88));
  if (os_ref_release_barrier_external((a1 + 84), 0) == 1 && (v3 = *(a1 + 104), (v3 & 1) != 0))
  {
    *(a1 + 104) = v3 & 0xFFFFFFFE;
    lck_mtx_unlock(v2);

    wakeup((a1 + 84));
  }

  else
  {

    lck_mtx_unlock(v2);
  }
}

uint64_t lifs_attach_mount_to_iouc_volume(const void *a1, const OSMetaClassBase *a2, unint64_t *a3)
{
  atomic_store(0, a3);
  lck_mtx_lock(&lifs_containers_list_lock);
  v6 = OSMetaClassBase::safeMetaCast(a2, &AppleLIFSUserClient::gMetaClass);
  if (!v6)
  {
    v8 = 22;
LABEL_13:
    if (!a2)
    {
      goto LABEL_15;
    }

LABEL_14:
    (a2->release_0)(a2);
    goto LABEL_15;
  }

  v7 = lifs_containers_list;
  if (!lifs_containers_list)
  {
    v8 = 2;
    if (!a2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v8 = 2;
LABEL_4:
  v9 = (v7 + 2);
  do
  {
    v9 = *v9;
    if (!v9)
    {
      v7 = *v7;
      if (v7)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  while (*(v9 + 2) != v6);
  IOLog("%s: mount %p volume %p client %p device: %s\n", "lifs_attach_mount_to_iouc_volume", a1, v9, v6, v9 + 40);
  v8 = 0;
  *(v9 + 3) = a1;
  atomic_store(*(v9 + 4), a3);
  if (a2)
  {
    goto LABEL_14;
  }

LABEL_15:
  lck_mtx_unlock(&lifs_containers_list_lock);
  return v8;
}

void lifs_detach_mount_from_iouc_volume(uint64_t a1)
{
  lck_mtx_lock(&lifs_containers_list_lock);
  v2 = lifs_containers_list;
  if (lifs_containers_list)
  {
    do
    {
      v3 = v2 + 2;
      while (1)
      {
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if (v3[3] == a1)
        {
          v3[3] = 0;
          goto LABEL_7;
        }
      }

      v2 = *v2;
    }

    while (v2);
  }

LABEL_7:

  lck_mtx_unlock(&lifs_containers_list_lock);
}

IOWrappedMemoryDescriptor *wrapperObjectForBuf(buf *a1)
{
  v2 = buf_upl(a1);
  v3 = buf_flags(a1);
  v4 = v3;
  if ((v3 & 0x40) != 0 || v2)
  {
    if (v3)
    {
      v9 = 305;
    }

    else
    {
      v9 = 306;
    }

    v10 = buf_upl(a1);
    v11 = buf_count(a1);
    v12 = buf_uploffset(a1);
    v13 = IOMemoryDescriptor::withOptions(v10, v11, v12, 0, v9, 0);
  }

  else
  {
    v5 = buf_dataptr(a1);
    v6 = buf_count(a1);
    if (v4)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if ((v4 & 0x20) != 0)
    {
      aiotask = get_aiotask();
      if (!aiotask)
      {
        aiotask = current_task();
      }
    }

    else
    {
      aiotask = kernel_task;
    }

    v13 = IOMemoryDescriptor::withAddressRange(v5, v6, v7, aiotask);
  }

  v14 = v13;
  if (!v13)
  {
    return 0;
  }

  v15 = IOWrappedMemoryDescriptor::operator new(stru_20.segname);
  IOWrappedMemoryDescriptor::IOWrappedMemoryDescriptor(v15);
  v17 = (*(*v16 + 128))(v16, v14);
  (v14->release_0)(v14);
  if ((v17 & 1) == 0)
  {
    (*(*v15 + 40))(v15);
    return 0;
  }

  return v15;
}

OSMetaClass *_GLOBAL__sub_I_lifs_iokit_cpp()
{
  OSMetaClass::OSMetaClass(&com_apple_filesystems_lifs::gMetaClass, "com_apple_filesystems_lifs", &IOService::gMetaClass, 0x88u)->__vftable = off_2D108;
  result = OSMetaClass::OSMetaClass(&AppleLIFSUserClient::gMetaClass, "AppleLIFSUserClient", &IOUserClient::gMetaClass, 0x120u);
  result->__vftable = off_2D778;
  return result;
}

void global destructor keyed to_a()
{
  OSMetaClass::~OSMetaClass(&AppleLIFSUserClient::gMetaClass);

  OSMetaClass::~OSMetaClass(&com_apple_filesystems_lifs::gMetaClass);
}

uint64_t koio_extent_tree_RB_INSERT_COLOR(uint64_t result, unint64_t a2)
{
  v2 = *(a2 + 16);
  while (1)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
    if ((v2 & 0xFFFFFFFFFFFFFFFELL) == 0)
    {
      break;
    }

    v4 = v3[2];
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = (v4 & 0xFFFFFFFFFFFFFFFELL);
    v6 = *(v4 & 0xFFFFFFFFFFFFFFFELL);
    if (v6 == v3)
    {
      v11 = v5[1];
      if (v11)
      {
        v12 = *(v11 + 16);
        if (v12)
        {
          *(v11 + 16) = v12 & 0xFFFFFFFFFFFFFFFELL;
          goto LABEL_19;
        }
      }

      v13 = v3[1];
      if (v13 == a2)
      {
        v18 = *v13;
        v3[1] = *v13;
        if (v18)
        {
          v19 = v2 | 1;
          if ((*(v18 + 16) & 1) == 0)
          {
            v19 = v3;
          }

          *(v18 + 16) = v19;
          v20 = v3[2];
        }

        else
        {
          v20 = v4;
        }

        v13[2] = v20 & 0xFFFFFFFFFFFFFFFELL | v13[2] & 1;
        if ((v20 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v29 = v3[2];
          v30 = (v29 & 0xFFFFFFFFFFFFFFFELL);
          if (*(v29 & 0xFFFFFFFFFFFFFFFELL) == v3)
          {
            *v30 = v13;
          }

          else
          {
            v30[1] = v13;
          }
        }

        else
        {
          *result = v13;
          v29 = v3[2];
        }

        *v13 = v3;
        if (v29)
        {
          v13 = (a2 | 1);
        }

        v3[2] = v13;
        v6 = *v5;
        v14 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFELL;
        v10 = v3;
      }

      else
      {
        v14 = v4 & 0xFFFFFFFFFFFFFFFELL;
        v10 = a2;
        a2 = v3;
      }

      *(a2 + 16) = v14;
      v31 = v5[2] | 1;
      v5[2] = v31;
      v32 = *(v6 + 8);
      *v5 = v32;
      if (v32)
      {
        if ((*(v32 + 16) & 1) == 0)
        {
          v4 &= ~1uLL;
        }

        *(v32 + 16) = v4;
        v31 = v5[2];
      }

      *(v6 + 16) = v31 & 0xFFFFFFFFFFFFFFFELL | *(v6 + 16) & 1;
      if ((v31 & 0xFFFFFFFFFFFFFFFELL) != 0)
      {
        v33 = v5[2];
        v34 = (v33 & 0xFFFFFFFFFFFFFFFELL);
        if (*(v33 & 0xFFFFFFFFFFFFFFFELL) == v5)
        {
          *v34 = v6;
        }

        else
        {
          v34[1] = v6;
        }
      }

      else
      {
        *result = v6;
        v33 = v5[2];
      }

      *(v6 + 8) = v5;
      if (v33)
      {
        v28 = v6 | 1;
      }

      else
      {
        v28 = v6;
      }
    }

    else
    {
      if (v6)
      {
        v7 = *(v6 + 16);
        if (v7)
        {
          *(v6 + 16) = v7 & 0xFFFFFFFFFFFFFFFELL;
LABEL_19:
          v3[2] &= ~1uLL;
          v5[2] |= 1uLL;
          v10 = v4 & 0xFFFFFFFFFFFFFFFELL;
          goto LABEL_67;
        }
      }

      v8 = *v3;
      if (*v3 == a2)
      {
        v15 = *(v8 + 8);
        *v3 = v15;
        if (v15)
        {
          v16 = v2 | 1;
          if ((*(v15 + 16) & 1) == 0)
          {
            v16 = v3;
          }

          *(v15 + 16) = v16;
          v17 = v3[2];
        }

        else
        {
          v17 = v4;
        }

        *(v8 + 16) = v17 & 0xFFFFFFFFFFFFFFFELL | *(v8 + 16) & 1;
        if ((v17 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v21 = v3[2];
          v22 = (v21 & 0xFFFFFFFFFFFFFFFELL);
          if (*(v21 & 0xFFFFFFFFFFFFFFFELL) == v3)
          {
            *v22 = v8;
          }

          else
          {
            v22[1] = v8;
          }
        }

        else
        {
          *result = v8;
          v21 = v3[2];
        }

        *(v8 + 8) = v3;
        if (v21)
        {
          v8 = a2 | 1;
        }

        v3[2] = v8;
        v9 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFELL;
        v10 = v3;
      }

      else
      {
        v9 = v4 & 0xFFFFFFFFFFFFFFFELL;
        v10 = a2;
        a2 = v2 & 0xFFFFFFFFFFFFFFFELL;
      }

      *(a2 + 16) = v9;
      v23 = v5[1];
      v24 = v5[2] | 1;
      v25 = *v23;
      v5[1] = *v23;
      v5[2] = v24;
      if (v25)
      {
        if ((*(v25 + 16) & 1) == 0)
        {
          v4 &= ~1uLL;
        }

        *(v25 + 16) = v4;
        v24 = v5[2];
      }

      *(v23 + 16) = v24 & 0xFFFFFFFFFFFFFFFELL | *(v23 + 16) & 1;
      if ((v24 & 0xFFFFFFFFFFFFFFFELL) != 0)
      {
        v26 = v5[2];
        v27 = (v26 & 0xFFFFFFFFFFFFFFFELL);
        if (*(v26 & 0xFFFFFFFFFFFFFFFELL) == v5)
        {
          *v27 = v23;
        }

        else
        {
          v27[1] = v23;
        }
      }

      else
      {
        *result = v23;
        v26 = v5[2];
      }

      *v23 = v5;
      if (v26)
      {
        v28 = v23 | 1;
      }

      else
      {
        v28 = v23;
      }
    }

    v5[2] = v28;
LABEL_67:
    v2 = *(v10 + 16);
    a2 = v10;
  }

  *(*result + 16) &= ~1uLL;
  return result;
}

unint64_t *koio_extent_tree_RB_REMOVE_COLOR(unint64_t *result, unint64_t a2, unint64_t a3)
{
  while (1)
  {
    v3 = a3;
    a3 = a2;
    if (v3)
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        break;
      }
    }

    v5 = *result;
    if (v3 == *result)
    {
      goto LABEL_107;
    }

    v6 = *a2;
    if (*a2 == v3)
    {
      v6 = *(a2 + 8);
      v13 = *(v6 + 16);
      if (v13)
      {
        *(v6 + 16) = v13 & 0xFFFFFFFFFFFFFFFELL;
        v14 = *(a2 + 16) | 1;
        v15 = *v6;
        *(a2 + 8) = *v6;
        *(a2 + 16) = v14;
        if (v15)
        {
          if (v15[2])
          {
            v16 = a2 | 1;
          }

          else
          {
            v16 = a2;
          }

          v15[2] = v16;
          v14 = *(a2 + 16);
        }

        *(v6 + 16) = v14 & 0xFFFFFFFFFFFFFFFELL | *(v6 + 16) & 1;
        if ((v14 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v17 = *(a2 + 16);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFELL);
          if (a2 == *(v17 & 0xFFFFFFFFFFFFFFFELL))
          {
            *v18 = v6;
          }

          else
          {
            v18[1] = v6;
            v15 = *(a2 + 8);
          }
        }

        else
        {
          *result = v6;
          v17 = *(a2 + 16);
          v5 = v6;
        }

        *v6 = a2;
        if (v17)
        {
          v6 |= 1uLL;
        }

        *(a2 + 16) = v6;
        v6 = v15;
      }

      v22 = *v6;
      if (*v6 && (*(v22 + 16) & 1) != 0)
      {
        v23 = *(v6 + 8);
        if (!v23)
        {
          goto LABEL_60;
        }

LABEL_58:
        if ((*(v23 + 16) & 1) == 0)
        {
          if (v22)
          {
LABEL_60:
            *(v22 + 16) &= ~1uLL;
          }

          v30 = *(v6 + 16) | 1;
          *(v6 + 16) = v30;
          v31 = *(v22 + 8);
          *v6 = v31;
          if (v31)
          {
            if (*(v31 + 16))
            {
              v32 = v6 | 1;
            }

            else
            {
              v32 = v6;
            }

            *(v31 + 16) = v32;
            v30 = *(v6 + 16);
          }

          *(v22 + 16) = v30 & 0xFFFFFFFFFFFFFFFELL | *(v22 + 16) & 1;
          if ((v30 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v33 = *(v6 + 16);
            v34 = (v33 & 0xFFFFFFFFFFFFFFFELL);
            if (v6 == *(v33 & 0xFFFFFFFFFFFFFFFELL))
            {
              *v34 = v22;
            }

            else
            {
              v34[1] = v22;
            }
          }

          else
          {
            *result = v22;
            v33 = *(v6 + 16);
            v5 = v22;
          }

          *(v22 + 8) = v6;
          if (v33)
          {
            v22 |= 1uLL;
          }

          *(v6 + 16) = v22;
          v6 = *(a2 + 8);
          v23 = *(v6 + 8);
        }

        *(v6 + 16) = *(v6 + 16) & 0xFFFFFFFFFFFFFFFELL | *(a2 + 16) & 1;
        *(a2 + 16) &= ~1uLL;
        if (v23)
        {
          *(v23 + 16) &= ~1uLL;
        }

        v40 = *v6;
        *(a2 + 8) = *v6;
        if (v40)
        {
          if (v40[2])
          {
            v41 = a2 | 1;
          }

          else
          {
            v41 = a2;
          }

          v40[2] = v41;
        }

        v42 = *(a2 + 16);
        *(v6 + 16) = v42 & 0xFFFFFFFFFFFFFFFELL | *(v6 + 16) & 1;
        if ((v42 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v38 = *(a2 + 16);
          v43 = (v38 & 0xFFFFFFFFFFFFFFFELL);
          if (a2 == *(v38 & 0xFFFFFFFFFFFFFFFELL))
          {
            *v43 = v6;
          }

          else
          {
            v43[1] = v6;
          }

          v29 = v6;
        }

        else
        {
          *result = v6;
          v38 = *(a2 + 16);
          v29 = v6;
          v5 = v6;
        }

        goto LABEL_104;
      }

      v23 = *(v6 + 8);
      if (v23 && (*(v23 + 16) & 1) != 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v7 = *(v6 + 16);
      if (v7)
      {
        *(v6 + 16) = v7 & 0xFFFFFFFFFFFFFFFELL;
        v8 = *(a2 + 16) | 1;
        *(a2 + 16) = v8;
        v9 = *(v6 + 8);
        *a2 = v9;
        if (v9)
        {
          if (v9[2])
          {
            v10 = a2 | 1;
          }

          else
          {
            v10 = a2;
          }

          v9[2] = v10;
          v8 = *(a2 + 16);
        }

        *(v6 + 16) = v8 & 0xFFFFFFFFFFFFFFFELL | *(v6 + 16) & 1;
        if ((v8 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v11 = *(a2 + 16);
          v12 = (v11 & 0xFFFFFFFFFFFFFFFELL);
          if (a2 == *(v11 & 0xFFFFFFFFFFFFFFFELL))
          {
            *v12 = v6;
            v9 = *a2;
          }

          else
          {
            v12[1] = v6;
          }
        }

        else
        {
          *result = v6;
          v11 = *(a2 + 16);
          v5 = v6;
        }

        *(v6 + 8) = a2;
        if (v11)
        {
          v6 |= 1uLL;
        }

        *(a2 + 16) = v6;
        v6 = v9;
      }

      v19 = *v6;
      if (*v6)
      {
        v20 = v19[2];
        if (v20)
        {
          goto LABEL_45;
        }
      }

      v21 = *(v6 + 8);
      if (v21 && (*(v21 + 16) & 1) != 0)
      {
        if (!v19)
        {
          goto LABEL_47;
        }

        v20 = v19[2];
LABEL_45:
        if (v20)
        {
          v29 = v6;
        }

        else
        {
          v21 = *(v6 + 8);
          if (v21)
          {
LABEL_47:
            *(v21 + 16) &= ~1uLL;
          }

          v24 = *(v6 + 16) | 1;
          v25 = *v21;
          *(v6 + 8) = *v21;
          *(v6 + 16) = v24;
          if (v25)
          {
            if (*(v25 + 16))
            {
              v26 = v6 | 1;
            }

            else
            {
              v26 = v6;
            }

            *(v25 + 16) = v26;
            v24 = *(v6 + 16);
          }

          *(v21 + 16) = v24 & 0xFFFFFFFFFFFFFFFELL | *(v21 + 16) & 1;
          if ((v24 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v27 = *(v6 + 16);
            v28 = (v27 & 0xFFFFFFFFFFFFFFFELL);
            if (v6 == *(v27 & 0xFFFFFFFFFFFFFFFELL))
            {
              *v28 = v21;
            }

            else
            {
              v28[1] = v21;
            }
          }

          else
          {
            *result = v21;
            v27 = *(v6 + 16);
            v5 = v21;
          }

          *v21 = v6;
          if (v27)
          {
            v21 |= 1uLL;
          }

          *(v6 + 16) = v21;
          v29 = *a2;
          v19 = **a2;
        }

        *(v29 + 16) = *(v29 + 16) & 0xFFFFFFFFFFFFFFFELL | *(a2 + 16) & 1;
        *(a2 + 16) &= ~1uLL;
        if (v19)
        {
          v19[2] &= ~1uLL;
        }

        v6 = v29 + 8;
        v35 = *(v29 + 8);
        *a2 = v35;
        if (v35)
        {
          if (*(v35 + 16))
          {
            v36 = a2 | 1;
          }

          else
          {
            v36 = a2;
          }

          *(v35 + 16) = v36;
        }

        v37 = *(a2 + 16);
        *(v29 + 16) = v37 & 0xFFFFFFFFFFFFFFFELL | *(v29 + 16) & 1;
        if ((v37 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v38 = *(a2 + 16);
          v39 = (v38 & 0xFFFFFFFFFFFFFFFELL);
          if (a2 == *(v38 & 0xFFFFFFFFFFFFFFFELL))
          {
            *v39 = v29;
          }

          else
          {
            v39[1] = v29;
          }
        }

        else
        {
          *result = v29;
          v38 = *(a2 + 16);
          v5 = v29;
        }

LABEL_104:
        *v6 = a2;
        v44 = v29 | 1;
        if ((v38 & 1) == 0)
        {
          v44 = v29;
        }

        *(a2 + 16) = v44;
        v3 = v5;
LABEL_107:
        if (!v3)
        {
          return result;
        }

        v4 = *(v3 + 16);
        break;
      }
    }

    *(v6 + 16) |= 1uLL;
    a2 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFELL;
  }

  *(v3 + 16) = v4 & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void *koio_extent_tree_RB_REMOVE(unint64_t *a1, void *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (!*a2)
  {
    v11 = (a2[2] & 0xFFFFFFFFFFFFFFFELL);
    v17 = a2[2] & 1;
    if (!v3)
    {
      if (!v11)
      {
LABEL_33:
        v18 = a1;
LABEL_34:
        *v18 = v3;
        if (v17)
        {
          return a2;
        }

LABEL_35:
        koio_extent_tree_RB_REMOVE_COLOR(a1, v11, v3);
        return a2;
      }

LABEL_27:
      v18 = &v11[8 * (*v11 != a2)];
      goto LABEL_34;
    }

LABEL_29:
    if (v3[2])
    {
      v19 = v11 + 1;
    }

    else
    {
      v19 = v11;
    }

    v3[2] = v19;
    if (!v11)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if (!v3)
  {
    v11 = (a2[2] & 0xFFFFFFFFFFFFFFFELL);
    v17 = a2[2] & 1;
    v3 = v4;
    goto LABEL_29;
  }

  do
  {
    v5 = v3;
    v3 = *v3;
  }

  while (v3);
  v3 = *(v5 + 8);
  v6 = *(v5 + 16);
  v7 = (v6 & 0xFFFFFFFFFFFFFFFELL);
  if (v3)
  {
    if (v3[2])
    {
      v8 = v6 | 1;
    }

    else
    {
      v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    }

    v3[2] = v8;
  }

  v9 = a1;
  if (v7)
  {
    v9 = &v7[8 * (*v7 != v5)];
  }

  v10 = v6 & 1;
  *v9 = v3;
  if ((*(v5 + 16) & 0xFFFFFFFFFFFFFFFELL) == a2)
  {
    v11 = v5;
  }

  else
  {
    v11 = v7;
  }

  v12 = a2[2];
  *v5 = *a2;
  *(v5 + 16) = v12;
  v13 = a1;
  if ((a2[2] & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v13 = ((a2[2] & 0xFFFFFFFFFFFFFFFELL) + 8 * (*(a2[2] & 0xFFFFFFFFFFFFFFFELL) != a2));
  }

  *v13 = v5;
  v14 = a2[1];
  if (*(*a2 + 16))
  {
    v15 = v5 | 1;
  }

  else
  {
    v15 = v5;
  }

  *(*a2 + 16) = v15;
  if (v14)
  {
    if (*(v14 + 16))
    {
      v5 |= 1uLL;
    }

    *(v14 + 16) = v5;
  }

  if (!v10)
  {
    goto LABEL_35;
  }

  return a2;
}

unint64_t koio_extent_tree_RB_INSERT(void *a1, void *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a2[5];
    while (1)
    {
      v4 = v2;
      v5 = v2[5];
      v6 = v2[6];
      if (v3 < v5 && a2[6] + v3 <= v5)
      {
        v10 = 0;
        v9 = v4;
      }

      else
      {
        v7 = v6 + v5;
        if (v5 >= v3 || v7 > v3)
        {
          return v4;
        }

        v9 = (v4 + 8);
        v10 = 8;
      }

      v2 = *v9;
      if (!v2)
      {
        goto LABEL_14;
      }
    }
  }

  v4 = 0;
  v10 = 8;
LABEL_14:
  *a2 = 0;
  a2[1] = 0;
  a2[2] = v4 | 1;
  if (v4)
  {
    v11 = (v4 + v10);
  }

  else
  {
    v11 = a1;
  }

  *v11 = a2;
  koio_extent_tree_RB_INSERT_COLOR(a1, a2);
  return 0;
}

void *koio_extent_tree_RB_FIND(void *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    v3 = *(a2 + 40);
    do
    {
      v4 = result[5];
      if (v3 >= v4 || *(a2 + 48) + v3 > v4)
      {
        if (v4 >= v3 || result[6] + v4 > v3)
        {
          return result;
        }

        ++result;
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *koio_extent_tree_RB_NEXT(unint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    do
    {
      result = v1;
      v1 = *v1;
    }

    while (v1);
  }

  else
  {
    v3 = a1;
    result = (*(a1 + 16) & 0xFFFFFFFFFFFFFFFELL);
    if (!result || *result != v3)
    {
      do
      {
        result = (*(v3 + 16) & 0xFFFFFFFFFFFFFFFELL);
        if (!result)
        {
          break;
        }

        v4 = v3 == result[1];
        v3 = *(v3 + 16) & 0xFFFFFFFFFFFFFFFELL;
      }

      while (v4);
    }
  }

  return result;
}

void *koio_extent_tree_RB_PREV(void *a1)
{
  v1 = *a1;
  if (*a1)
  {
    do
    {
      result = v1;
      v1 = v1[1];
    }

    while (v1);
  }

  else
  {
    v3 = a1;
    result = (a1[2] & 0xFFFFFFFFFFFFFFFELL);
    if (!result || result[1] != v3)
    {
      do
      {
        result = (*(v3 + 16) & 0xFFFFFFFFFFFFFFFELL);
        if (!result)
        {
          break;
        }

        v4 = v3 == *result;
        v3 = *(v3 + 16) & 0xFFFFFFFFFFFFFFFELL;
      }

      while (v4);
    }
  }

  return result;
}

void *lifs_init_extent_tree(void *a1)
{
  result = kalloc_type_impl();
  *result = 0;
  *a1 = result;
  return result;
}

uint64_t lifs_add_extent(uint64_t a1, unint64_t a2, unsigned int a3, int *a4)
{
  v7 = a3;
  lifs_remove_overlapping_extents(a1, a2, a2 + a3);
  v8 = kalloc_type_impl();
  *(v8 + 40) = a2;
  *(v8 + 48) = v7;
  v9 = *a4;
  *(v8 + 56) = *a4 & 0xFFFFFF | (*(v8 + 59) << 24);
  *(v8 + 56) = v9 & 0xFFFFFF | (*(a4 + 3) << 24);
  *(v8 + 32) = *(a4 + 1);
  result = koio_extent_tree_RB_INSERT(a1, v8);
  v11 = *(a1 + 8) + 1;
  *(a1 + 8) = v11;
  if (v11 != v11 << 31 >> 31)
  {
    lifs_add_extent_cold_1();
  }

  if (v11 >= 2)
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    v24 = a2;
    v25 = v7;
    result = koio_extent_tree_RB_FIND(a1, v22);
    if (result)
    {
      v12 = result;
      v13 = koio_extent_tree_RB_PREV(result);
      v14 = v13;
      v16 = v13 && *(v13 + 14) == *(v12 + 56) && (v15 = v13[6], v15 + v13[5] == *(v12 + 40)) && v13[4] + v15 == *(v12 + 32);
      result = koio_extent_tree_RB_NEXT(v12);
      v17 = result;
      v19 = result && *(result + 56) == *(v12 + 56) && (v18 = *(v12 + 48), *(result + 40) == v18 + *(v12 + 40)) && *(result + 32) == *(v12 + 32) + v18;
      v20 = !v16;
      if (v19 || (v20 & 1) != 0)
      {
        v21 = !v19;
        if ((v16 | v21))
        {
          if ((v20 | v21))
          {
            return result;
          }

          v14[6] += *(result + 48) + *(v12 + 48);
          koio_extent_tree_RB_REMOVE(a1, v12);
          --*(a1 + 8);
          kfree_type_impl();
          koio_extent_tree_RB_REMOVE(a1, v17);
          --*(a1 + 8);
        }

        else
        {
          *(v12 + 48) += *(result + 48);
          koio_extent_tree_RB_REMOVE(a1, result);
          --*(a1 + 8);
        }
      }

      else
      {
        v14[6] += *(v12 + 48);
        koio_extent_tree_RB_REMOVE(a1, v12);
        --*(a1 + 8);
      }

      return kfree_type_impl();
    }
  }

  return result;
}

unint64_t lifs_remove_overlapping_extents(uint64_t a1, unint64_t a2, unint64_t a3)
{
  result = lifs_find_first_overlapping_extent(a1, a2, a3 - a2);
  if (result)
  {
    v7 = 0;
    while (*(result + 40) < a3)
    {
      v8 = result;
      *(result + 24) = v7;
      result = koio_extent_tree_RB_NEXT(result);
      v7 = v8;
      if (!result)
      {
        while (1)
        {
LABEL_7:
          v9 = v8;
          v8 = *(v8 + 24);
          v10 = *(v9 + 40);
          v11 = *(v9 + 48) + v10;
          if (a2 <= v10)
          {
            if (v11 > a3)
            {
              goto LABEL_15;
            }

            koio_extent_tree_RB_REMOVE(a1, v9);
            --*(a1 + 8);
            result = kfree_type_impl();
          }

          else if (v11 <= a3)
          {
            if (v11 <= a2)
            {
LABEL_15:
              if (a2 <= v10 && a3 > v10)
              {
                v18 = a3 - v10;
                koio_extent_tree_RB_REMOVE(a1, v9);
                v19 = *(v9 + 40);
                v20 = *(v9 + 32);
                *(v9 + 48) += v19 - a3;
                *(v9 + 32) = v20 + v18;
                *(v9 + 40) = v19 + v18;
                result = koio_extent_tree_RB_INSERT(a1, v9);
              }

              goto LABEL_21;
            }

            *(v9 + 48) = a2 - v10;
          }

          else
          {
            v12 = kalloc_type_impl();
            *(v12 + 40) = a3;
            v13 = *(v9 + 40) - a3 + *(v9 + 48);
            *(v12 + 48) = v13;
            v14 = *(v9 + 56);
            *(v12 + 56) = v14 & 0xFFFFFF | (*(v12 + 59) << 24);
            *(v12 + 56) = v14 & 0xFFFFFF | (*(v9 + 59) << 24);
            v15 = *(v9 + 40);
            *(v12 + 32) = *(v9 + 32) - v13 + *(v9 + 48);
            *(v9 + 48) = a2 - v15;
            result = koio_extent_tree_RB_INSERT(a1, v12);
            v16 = *(a1 + 8) + 1;
            *(a1 + 8) = v16;
            if (v16 != v16 << 31 >> 31)
            {
              lifs_remove_overlapping_extents_cold_1();
            }
          }

LABEL_21:
          if (!v8)
          {
            return result;
          }
        }
      }
    }

    v8 = v7;
    if (v7)
    {
      goto LABEL_7;
    }
  }

  return result;
}

void *lifs_find_first_overlapping_extent(void *a1, unint64_t a2, unsigned int a3)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v11 = a2;
  v12 = a3;
  v4 = koio_extent_tree_RB_FIND(a1, v9);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (v4[5] <= a2)
  {
    return v5;
  }

  v6 = koio_extent_tree_RB_PREV(v4);
  if (v5[6] + v5[5] <= a2)
  {
    return v5;
  }

  do
  {
    v7 = v5;
    if (!v6)
    {
      break;
    }

    v5 = v6;
    v6 = koio_extent_tree_RB_PREV(v6);
  }

  while (v5[6] + v5[5] > a2);
  return v7;
}

uint64_t lifs_purge_extents(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      do
      {
        v3 = v2;
        v2 = *v2;
      }

      while (v2);
      v4 = 0;
      do
      {
        v5 = v4;
        v4 = v3;
        v3[3] = v5;
        v3 = koio_extent_tree_RB_NEXT(v3);
      }

      while (v3);
      *v1 = 0;
      *(v1 + 8) = 0;
      v6 = v4;
      do
      {
        v7 = v4[3];
        v8 = v6;
        if (v6 == v4)
        {
          v6 = v6[3];
        }

        else
        {
          do
          {
            v9 = v8;
            v8 = v8[3];
          }

          while (v8 != v4);
          v9[3] = v8[3];
        }

        result = kfree_type_impl();
        v4 = v7;
      }

      while (v7);
    }

    else
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t lifs_mount(mount *arg1, uint64_t a2, const void *a3)
{
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140005u, arg1, 0, 0, 0);
  }

  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  data = 0u;
  __dst = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  memset(v50, 0, sizeof(v50));
  v51 = 0;
  if (!arg1)
  {
    v12 = 22;
    goto LABEL_41;
  }

  v5 = kalloc_type_impl();
  if (vfs_iskernelmount())
  {
    memmove(v5, a3, 0x8A8uLL);
  }

  else
  {
    v16 = copyin(a3, v5, 0x8A8uLL);
    if (v16)
    {
      v12 = v16;
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to copy mount arguments");
      if (!v5)
      {
LABEL_41:
        if ((kdebug_enable & 0xFFFFFFF7) != 0)
        {
          kernel_debug_filtered(0x3140006u, arg1, v12, 0, 0);
        }

        return v12;
      }

LABEL_40:
      kfree_type_impl();
      goto LABEL_41;
    }
  }

  *&data = arg1;
  DWORD2(data) = 2;
  *&v41 = "lifs";
  *(&v41 + 1) = 0;
  *(&v42 + 1) = lifs_vnodeop_p;
  *&v43 = 1;
  DWORD2(v43) = 0;
  v44 = 0uLL;
  LODWORD(v45) = 4;
  v6 = kalloc_type_impl();
  v7 = kalloc_type_impl();
  *(v7 + 424) = 0u;
  *(v7 + 440) = 0u;
  *(v7 + 456) = 0u;
  *(v7 + 472) = 0u;
  *(v7 + 528) = v6;
  lck_mtx_init(v7, lifs_node_grp, 0);
  lck_rw_init((v7 + 624), lifs_node_grp, 0);
  lck_rw_init((v7 + 696), lifs_node_grp, 0);
  lck_rw_init((v7 + 944), lifs_node_grp, 0);
  lck_rw_init((v7 + 512), lifs_node_grp, 0);
  *&v42 = v7;
  v6[56] = arg1;
  *(v6 + 6) = *v5;
  v6[4] = 0;
  *(v6 + 142) = *(v5 + 4);
  atomic_store(0, v6 + 186);
  v8 = *(v5 + 551);
  *(v6 + 140) = v8;
  v9 = *(v5 + 552);
  *(v6 + 141) = v9;
  _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s:uid:%u:gid:%u", "lifs_mount", v8, v9);
  v10 = throttle_info_create();
  v6[74] = v10;
  if (!v10)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "throttle_info_create() failed");
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v12 = 12;
    goto LABEL_14;
  }

  v6[75] = 0;
  v6[76] = v6 + 75;
  v6[77] = 0;
  v6[78] = v6 + 77;
  v6[79] = 0;
  v6[80] = v6 + 79;
  v6[81] = 0;
  v6[82] = v6 + 81;
  lck_mtx_init((v6 + 85), lifs_mount_grp, 0);
  lck_mtx_init((v6 + 87), lifs_mount_grp, 0);
  lck_mtx_init((v6 + 89), lifs_mount_grp, 0);
  lck_mtx_init((v6 + 91), lifs_mount_grp, 0);
  v11 = lifs_req_thread_start(v6);
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  v15 = 1;
  v24 = thread_call_allocate_with_options(lifs_sync_call, v6, THREAD_CALL_PRIORITY_KERNEL, 1u);
  v6[107] = v24;
  if (!v24)
  {
    v13 = 0;
    v14 = 0;
    v12 = 0;
    goto LABEL_14;
  }

  v25 = *(v5 + 550);
  if (v25)
  {
    if (v25 >= 0x41)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Invalid file handle size");
      v13 = 0;
      v14 = 0;
      v12 = 22;
      goto LABEL_14;
    }

    memmove(&__dst, v5 + 2136, v25);
  }

  lck_mtx_lock(&lifs_mount_list_lock);
  v27 = qword_28658;
  *v6 = 0;
  v6[1] = v27;
  *v27 = v6;
  qword_28658 = v6;
  lck_mtx_unlock(&lifs_mount_list_lock);
  v28 = lifs_mount_request(v6, v5 + 88, v5 + 1112, *v5, *(v5 + 550), &__dst, &__dst);
  if (v28)
  {
    v12 = v28;
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Got error during mount request: %d", v28);
    v14 = 0;
LABEL_54:
    v13 = 1;
    v15 = 1;
    goto LABEL_14;
  }

  v29 = v47;
  *(v7 + 360) = __dst;
  *(v7 + 376) = v29;
  v30 = v49;
  *(v7 + 392) = v48;
  *(v7 + 408) = v30;
  update_lnode_attr(v7, v50);
  *(v7 + 592) = 0;
  *(v7 + 600) = v7 + 592;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140004u, arg1, v6, __dst, 0);
  }

  v31 = vnode_create(0, 0x58u, &data, v6 + 2);
  if (v31)
  {
    v12 = v31;
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to create root vnode");
    v14 = 0;
    goto LABEL_54;
  }

  v32 = v6[2];
  *(v7 + 552) = v32;
  *(v7 + 576) = vnode_vid(v32);
  lck_mtx_init((v6 + 12), lifs_mount_grp, 0);
  lck_mtx_init((v6 + 14), lifs_mount_grp, 0);
  lck_rw_init((v6 + 16), lifs_rw_grp, 0);
  v6[72] = hashinit(1024, 80, v6 + 73);
  v6[19] = 0;
  v6[18] = 0;
  v33 = *(v6 + 140);
  v34 = *(v6 + 141);
  vfs_setowner();
  v35 = vfs_statfs(arg1);
  init_statfs(v35, v5 + 88, v5 + 1112);
  v35->f_owner = *(v6 + 140);
  lifs_mntfromname(v6, v7);
  vfs_setfsprivate(arg1, v6);
  vfs_setfskit();
  mountpoint = lifs_query_mountpoint(v6, v7);
  if (mountpoint)
  {
    v12 = mountpoint;
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to query mountpoint");
    v14 = 0;
    goto LABEL_54;
  }

  lifs_setup_fsid(v6, v35);
  if ((v6[4] & 8) == 0)
  {
    v37 = lifs_io_thread_start(v6);
    if (!v37)
    {
      if ((*(v6 + 34) & 1) == 0)
      {
        atomic_store(lifs_open_device(v6 + 749, 1), v6 + 99);
      }

      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v37 = lifs_endio_thread_start(v6);
  if (v37)
  {
LABEL_60:
    v12 = v37;
    v14 = 0;
    v13 = 1;
LABEL_61:
    v15 = 1;
LABEL_14:
    v17 = v6[2];
    if (v17)
    {
      vnode_put(v17);
      vnode_recycle(v6[2]);
      v7 = 0;
    }

    v18 = v6[108];
    if (v18)
    {
      thread_call_free(v18);
      v6[108] = 0;
    }

    v19 = v6[107];
    if (v19)
    {
      thread_call_free(v19);
      v6[107] = 0;
    }

    if (v14)
    {
      lifs_endio_thread_stop(v6);
    }

    if (v15)
    {
      lifs_req_thread_stop(v6);
    }

    v20 = v6[74];
    if (v20)
    {
      throttle_info_release(v20);
    }

    if (!v13)
    {
      goto LABEL_38;
    }

    lck_mtx_lock(&lifs_mount_list_lock);
    v21 = *v6;
    if (*v6)
    {
      if (*(v21 + 8) != v6)
      {
        goto LABEL_70;
      }

      v22 = v6[1];
      if (*v22 == v6)
      {
        *(v21 + 8) = v22;
        v23 = v6[1];
LABEL_37:
        *v23 = v21;
        lck_mtx_unlock(&lifs_mount_list_lock);
LABEL_38:
        kfree_type_impl();
        if (v7)
        {
          kfree_type_impl();
        }

        goto LABEL_40;
      }
    }

    else
    {
      v23 = v6[1];
      if (*v23 == v6)
      {
        qword_28658 = v6[1];
        goto LABEL_37;
      }
    }

    __break(0xBFFDu);
LABEL_70:
    __break(0xBFFDu);
  }

  v13 = 1;
  v38 = thread_call_allocate_with_options(lifs_meta_sync_call, v6, THREAD_CALL_PRIORITY_KERNEL, 1u);
  v6[108] = v38;
  if (!v38)
  {
    v12 = 0;
    v14 = 1;
    goto LABEL_61;
  }

LABEL_63:
  os_ref_init_count_external(v6 + 212, 0, 1u);
  lck_mtx_lock(&lifs_mount_list_lock);
  atomic_load(v6 + 99);
  v39 = vfs_setdevvp();
  if (v39)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to set mnt_devvp on the mount point: %d", v39);
  }

  lifs_set_ioattr(v6);
  lck_mtx_unlock(&lifs_mount_list_lock);
  kfree_type_impl();
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140006u, arg1, v6, v7, *(v7 + 552));
  }

  return 0;
}

uint64_t lifs_unmount(mount *a1, int a2, vfs_context *a3)
{
  if (!a1)
  {
    return 22;
  }

  v6 = vfs_fsprivate(a1);
  if (!v6)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "NULL lifs mount");
    return 22;
  }

  v7 = v6;
  _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "lifs_unmount (lmp %p) started", v6);
  v8 = vnode_fsnode(v7[2]);
  v9 = *(v8 + 376);
  *arg4 = *(v8 + 360);
  v27 = v9;
  v10 = *(v8 + 408);
  v28 = *(v8 + 392);
  v29 = v10;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140009u, a1, v7, a2, LODWORD(arg4[0]));
  }

  v11 = vflush(a1, v7[2], (a2 & 0x80000u) >> 18);
  if ((a2 & 0x80000) == 0)
  {
    v12 = v11;
    if (v11)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s (lmp %p) vflush returned err %d", "lifs_unmount", v7, v11);
      return v12;
    }
  }

  v14 = vnode_isinuse(v7[2], 0);
  if ((a2 & 0x80000) == 0 && v14)
  {
    v15 = v7[2];
    v16 = vnode_usecount();
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s (lmp %p) is busy (usecount: %d)", "lifs_unmount", v7, v16);
    return 16;
  }

  v17 = v7[107];
  if (v17)
  {
    thread_call_cancel_wait(v17);
    thread_call_free(v7[107]);
    v7[107] = 0;
  }

  lck_mtx_lock((v7 + 12));
  v18 = v7[108];
  if (v18)
  {
    if ((*(v7 + 33) & 8) != 0)
    {
      lck_mtx_unlock((v7 + 12));
      thread_call_cancel_wait(v7[108]);
      lck_mtx_lock((v7 + 12));
      v18 = v7[108];
    }

    thread_call_free(v18);
    v7[108] = 0;
  }

  lck_mtx_unlock((v7 + 12));
  v19 = lifs_unmount_request(v7, a2, arg4);
  if (v19 == -1)
  {
    vnode_mount(v7[2]);
    v20 = vfs_vnodecovered();
    VNOP_IOCTL(v20, 0x20006E04uLL, 0, 0, a3);
    vnode_put(v20);
    v19 = 0;
  }

  vnode_put(v7[2]);
  vflush(a1, 0, 2);
  if (v19)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "lifs_unmount_request returned err %d", v19);
  }

  else
  {
    lifs_unmount2_request(v7, a2, arg4);
  }

  lifs_req_thread_stop(v7);
  if ((v7[4] & 8) != 0)
  {
    lifs_wait_for_device_idle(v7);
    lifs_endio_thread_stop(v7);
    lifs_detach_mount_from_iouc_volume(v7);
  }

  else
  {
    lifs_io_thread_stop(v7);
    v21 = atomic_load(v7 + 99);
    if (v21 && (*(v7 + 34) & 1) == 0)
    {
      v22 = atomic_load(v7 + 99);
      lifs_close_device(v22, 1);
    }
  }

  lck_mtx_lock(&lifs_mount_list_lock);
  v23 = *v7;
  if (!*v7)
  {
    v25 = v7[1];
    if (*v25 == v7)
    {
      qword_28658 = v7[1];
      goto LABEL_36;
    }

    goto LABEL_39;
  }

  if (*(v23 + 8) != v7)
  {
    goto LABEL_40;
  }

  v24 = v7[1];
  if (*v24 != v7)
  {
LABEL_39:
    __break(0xBFFDu);
LABEL_40:
    __break(0xBFFDu);
  }

  *(v23 + 8) = v24;
  v25 = v7[1];
LABEL_36:
  *v25 = v23;
  lck_mtx_unlock(&lifs_mount_list_lock);
  vfs_setfsprivate(a1, 0);
  hashdestroy(v7[72], 80, v7[73]);
  lck_mtx_destroy((v7 + 14), lifs_mount_grp);
  lck_mtx_destroy((v7 + 12), lifs_mount_grp);
  lck_rw_destroy((v7 + 16), lifs_rw_grp);
  lck_mtx_destroy((v7 + 85), lifs_mount_grp);
  lck_mtx_destroy((v7 + 87), lifs_mount_grp);
  lck_mtx_destroy((v7 + 89), lifs_mount_grp);
  lck_mtx_destroy((v7 + 91), lifs_mount_grp);
  throttle_info_release(v7[74]);
  _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "lifs_unmount (lmp %p) done", v7);
  kfree_type_impl();
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x314000Au, a1, 0, 0, 0);
  }

  return 0;
}

uint64_t lifs_root(mount *a1, uintptr_t *a2)
{
  if (!a1)
  {
    return 22;
  }

  v4 = vfs_fsprivate(a1);
  if (!v4)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "NULL lifs mount");
    return 22;
  }

  v5 = v4;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x314000Du, a1, v4, 0, 0);
  }

  v6 = vnode_get(*(v5 + 16));
  v7 = v6;
  if (!v6)
  {
    *a2 = *(v5 + 16);
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x314000Eu, a1, v5, *a2, v6);
  }

  return v7;
}

uint64_t lifs_getattr(mount *a1, uint64_t *a2)
{
  if (!a1)
  {
    return 22;
  }

  v4 = vfs_fsprivate(a1);
  if (!v4)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "NULL lifs mount");
    return 22;
  }

  v5 = v4;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = vnode_fsnode(v4[2]);
  v7 = v6;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140011u, a1, v5, v6[90], 0);
  }

  v8 = a2[1];
  if ((v8 & 0x2000) != 0)
  {
    *(a2 + 29) = *(v5 + 560);
    *a2 |= 0x2000uLL;
    if ((v8 & 0x1000) == 0)
    {
LABEL_7:
      if ((v8 & 0x100000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  else if ((v8 & 0x1000) == 0)
  {
    goto LABEL_7;
  }

  *(a2 + 108) = vfs_statfs(a1)->f_fsid;
  v8 = a2[1];
  *a2 |= 0x1000uLL;
  if ((v8 & 0x100000) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (*(v5 + 809))
  {
    *(a2 + 64) = vfs_statfs(a1)->f_fssubtype;
    v8 = a2[1];
    *a2 |= 0x100000uLL;
  }

LABEL_15:
  if ((v8 & 0xFF0) == 0)
  {
    v9 = 0;
    goto LABEL_30;
  }

  lck_mtx_lock((v5 + 96));
  if ((*(v5 + 32) & 2) != 0)
  {
    v10 = (v5 + 488);
  }

  else
  {
    lck_mtx_unlock((v5 + 96));
    v9 = lifs_statfs_request(v5, (v7 + 360), &v26);
    lck_mtx_lock((v5 + 96));
    if (v9)
    {
      lck_mtx_unlock((v5 + 96));
      goto LABEL_30;
    }

    if (!vfs_isrdonly(*(v5 + 448)) || (v11 = *(v5 + 32), (v11 & 2) != 0))
    {
      v10 = &v26;
    }

    else
    {
      v12 = v29;
      *(v5 + 520) = v28;
      *(v5 + 536) = v12;
      *(v5 + 552) = v30;
      v13 = v27;
      *(v5 + 488) = v26;
      *(v5 + 504) = v13;
      v10 = &v26;
      *(v5 + 32) = v11 | 2;
    }
  }

  lck_mtx_unlock((v5 + 96));
  if ((vfs_flags(*(v5 + 448)) & 0x1000) == 0)
  {
    goto LABEL_28;
  }

  v14 = *v10;
  if (!*v10)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Got block_size = 0. Using the device's block size instead.", "lifs_getattr");
LABEL_28:
    v14 = vfs_devblocksize(a1);
  }

  v9 = 0;
  *(a2 + 92) = *(v10 + 40);
  v15 = *(v10 + 1);
  *(a2 + 76) = *(v10 + 2) / v14;
  v16 = *(v10 + 4);
  *(a2 + 68) = *(v10 + 3) / v14;
  *(a2 + 84) = v16 / v14;
  v17 = *a2;
  *(a2 + 60) = v15 / v14;
  *(a2 + 52) = 0x100000;
  *(a2 + 12) = v14;
  *a2 = v17 | 0xFF0;
LABEL_30:
  v18 = a2[1];
  if ((v18 & 0x200000) == 0)
  {
    if ((v18 & 0x4000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

  if (!v7 || (v9 = vnode_get(*(v7 + 552)), v9))
  {
    v19 = (a2 + 260);
LABEL_38:
    strlcpy(*v19, "Untitled", 0x400uLL);
    v20 = v9;
    goto LABEL_39;
  }

  v19 = (a2 + 260);
  v25 = lifs_getfsattr_call(v7, "_S_f_vol_name", *(a2 + 260), 1024);
  vnode_put(*(v7 + 552));
  v20 = 0;
  if (v25)
  {
    goto LABEL_38;
  }

LABEL_39:
  v18 = a2[1];
  *a2 |= 0x200000uLL;
  v9 = v20;
  if ((v18 & 0x4000) == 0)
  {
LABEL_32:
    if ((v18 & 0x8000) == 0)
    {
      goto LABEL_33;
    }

LABEL_41:
    v22 = *(v5 + 56);
    v23 = *(v5 + 72);
    a2[23] = *(v5 + 88);
    *(a2 + 21) = v23;
    *(a2 + 19) = v22;
    *a2 |= 0x8000uLL;
    if ((v18 & 0x1000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_42:
    if (memcmp((v5 + 810), &nullUUID, 0x10uLL))
    {
      *(a2 + 17) = *(v5 + 810);
      *a2 |= 0x1000000uLL;
    }

    goto LABEL_44;
  }

LABEL_40:
  v21 = *(v5 + 48) & 0xFFFD48C0 | 0x300;
  *(a2 + 30) = *(v5 + 40) & 0xFFE2AFFF;
  *(a2 + 31) = v21;
  *(a2 + 8) = xmmword_3E10;
  *(a2 + 36) = 0;
  *(a2 + 37) = 0;
  *a2 |= 0x4000uLL;
  if ((v18 & 0x8000) != 0)
  {
    goto LABEL_41;
  }

LABEL_33:
  if ((v18 & 0x1000000) != 0)
  {
    goto LABEL_42;
  }

LABEL_44:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140012u, a1, v5, v9, 0);
  }

  return v9;
}

uint64_t lifs_sync(mount_t mp, int a2, uint64_t a3)
{
  v18[0] = *"_N_SYNC";
  v18[1] = *&algn_3E59[8];
  v19 = 0;
  v6 = a2;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140019u, mp, a2, 0, 0);
  }

  memset(v17, 0, sizeof(v17));
  if (mp && (v7 = vfs_fsprivate(mp)) != 0 && (v8 = v7, (v9 = vnode_fsnode(v7[2])) != 0))
  {
    v10 = v9;
    if (vfs_isrdonly(mp))
    {
      v11 = 0;
      LODWORD(a3) = 0;
    }

    else
    {
      if (vfs_isunmount(mp))
      {
        LODWORD(a3) = 0;
      }

      else
      {
        v14 = a3;
        v15 = a2;
        v16 = 0;
        vnode_iterate(mp, 0, lifs_sync_callback, &v14);
        LODWORD(a3) = v16;
      }

      if ((vfs_flags(*(v8 + 448)) & 0x1000) != 0)
      {
        *&v17[0] = v6;
        v11 = lifs_setfsattr_request(v8, (v10 + 360), v18, v17, 8, v17);
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    LODWORD(a3) = 0;
    v11 = 22;
  }

  if (a3)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11 == 0;
  }

  if (v12)
  {
    a3 = a3;
  }

  else
  {
    a3 = v11;
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x314001Au, mp, v6, v11, a3);
  }

  return a3;
}

uint64_t lifs_init(uintptr_t arg1)
{
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140001u, arg1, 0, 0, 0);
  }

  lifs_kext_grp = lck_grp_alloc_init("lifs_kext", 0);
  lifs_mount_grp = lck_grp_alloc_init("lifs_mount", 0);
  lifs_node_grp = lck_grp_alloc_init("lifs_node", 0);
  lifs_rw_grp = lck_grp_alloc_init("lifs_rw", 0);
  lck_rw_init(&lifs_port_rwlock, lifs_kext_grp, 0);
  lck_mtx_init(&lifs_mount_list_lock, lifs_mount_grp, 0);
  lifs_mount_list = 0;
  qword_28658 = &lifs_mount_list;
  lifs_req_hashtbl_init();
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140002u, 0, 0, 0, 0);
  }

  return 0;
}

uint64_t lifs_setattr(mount_t mp, uint64_t a2)
{
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140015u, mp, *(a2 + 8), 0, 0);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  memset(__dst, 0, sizeof(__dst));
  if (!mp)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "NULL lifs mount");
LABEL_12:
    v7 = 22;
    goto LABEL_13;
  }

  v4 = vfs_fsprivate(mp);
  if (!v4)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "NULL lifs mount");
    goto LABEL_12;
  }

  v5 = v4;
  v6 = vnode_fsnode(v4[2]);
  if ((*(a2 + 10) & 0x20) == 0)
  {
    v7 = 45;
    goto LABEL_13;
  }

  v8 = v6;
  v12 = 0;
  v11[0] = *"_S_f_vol_name";
  v11[1] = unk_3E40;
  v9 = strlen(*(a2 + 260)) + 1;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140014u, mp, *(a2 + 8) & 0x200000, v9, 0);
  }

  if (v9 > 0x100)
  {
    goto LABEL_12;
  }

  memmove(__dst, *(a2 + 260), v9);
  LODWORD(v14) = v9;
  v7 = lifs_setfsattr_request(v5, (v8 + 360), v11, __dst, v9, __dst);
  if (!v7)
  {
    *a2 |= 0x200000uLL;
    lifs_mntfromname(v5, v8);
  }

LABEL_13:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140016u, mp, *(a2 + 8), *a2, v7);
  }

  return v7;
}

vnode_t lifs_open_device(const char *a1, int a2)
{
  v3 = a1;
  *__str = 0u;
  memset(v10, 0, sizeof(v10));
  vpp = 0;
  if (strncmp(a1, "/dev/", 5uLL))
  {
    if (strncmp(v3, "disk", 4uLL))
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "Skipping %s", v3);
      return vpp;
    }

    v7 = v3;
    v3 = __str;
    snprintf(__str, 0x26uLL, "/dev/%s", v7);
  }

  v4 = vfs_context_kernel();
  v5 = vnode_open(v3, a2, 0, 0, &vpp, v4);
  if (v5)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to open block device %s, err: %d", v3, v5);
  }

  else
  {
    vnode_setmountedon(vpp);
    vnode_put(vpp);
  }

  return vpp;
}

uint64_t *lifs_get_mount_with_devvp(uint64_t a1)
{
  result = &lifs_mount_list;
  do
  {
    result = *result;
    if (!result)
    {
      break;
    }

    v3 = atomic_load(result + 99);
  }

  while (v3 != a1);
  return result;
}

void lifs_close_device(vnode *a1, int a2)
{
  lck_mtx_lock(&lifs_mount_list_lock);
  if (vcount(a1))
  {
    v4 = &lifs_mount_list;
    while (1)
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      v5 = atomic_load(v4 + 99);
      if (v5 == a1)
      {
        atomic_store(0, v4 + 99);
        lifs_wait_for_device_idle(v4);
        lck_mtx_lock((v4 + 12));
        if (v4[108] && (*(v4 + 33) & 8) != 0)
        {
          lck_mtx_unlock((v4 + 12));
          thread_call_cancel_wait(v4[108]);
          lck_mtx_lock((v4 + 12));
        }

        lck_mtx_unlock((v4 + 12));
        buf_flushdirtyblks(a1, 1, 0, "lifs_close_device");
        v6 = v4[56];
        vfs_setdevvp();
        break;
      }
    }

    vnode_clearmountedon(a1);
    vnode_getwithref(a1);
    v7 = vfs_context_kernel();
    vnode_close(a1, a2, v7);
  }

  lck_mtx_unlock(&lifs_mount_list_lock);
}

void lifs_wait_for_device_idle(uint64_t a1)
{
  if (*(a1 + 848) >= 2u)
  {
    v2 = (a1 + 848);
    v3 = (a1 + 96);
    do
    {
      lck_mtx_lock(v3);
      *(a1 + 32) |= 0x80uLL;
      msleep(v2, v3, 16, "lifs_wait_for_device_idle", 0);
      lck_mtx_unlock(v3);
    }

    while (*(a1 + 848) > 1u);
  }
}

void lifs_sync_call(uint64_t a1)
{
  v2 = *(a1 + 448);
  v3 = vfs_context_kernel();
  lifs_sync(v2, 1, v3);
  lck_mtx_lock((a1 + 96));
  v4 = *(a1 + 32);
  *(a1 + 32) = v4 & 0xFFFFFFFFFFFFFEFFLL;
  if ((v4 & 0x200) != 0)
  {
    *(a1 + 32) = v4 & 0xFFFFFFFFFFFFFCFFLL;
    wakeup((a1 + 32));
  }

  lck_mtx_unlock((a1 + 96));
}

uint64_t lifs_query_mountpoint(uint64_t a1, uint64_t a2)
{
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v4 = *(a1 + 448);
  v5 = vfs_statfs(v4);
  v35 = 0uLL;
  if (!lifs_getfsattr_call(a2, "_B_has_perm_enforcement", &v32, 4) && v32)
  {
    vfs_setauthopaque(v4);
  }

  if (!lifs_getfsattr_call(a2, "_B_has_access_check", &v32, 4) && v32)
  {
    vfs_setauthopaqueaccess(v4);
  }

  if (!lifs_getfsattr_call(a2, "_N_caps_format", &v31, 8))
  {
    v6 = ~v31;
    *(a1 + 40) = v31;
    if ((v6 & 0x18) == 0)
    {
      vfs_setflags(v4, 0x800000uLL);
    }
  }

  if (!lifs_getfsattr_call(a2, "_N_caps_interfaces", &v31, 8))
  {
    *(a1 + 48) = v31;
    lifs_get_supported_xattrs(a2);
  }

  v7 = 1073881088;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  if (lifs_getfsattr_call(a2, "_O_vol_attributes_attr", &v24, 40))
  {
    v26 = 0;
    v8 = 1073881088;
    v24 = 0u;
    v25 = 0u;
  }

  else
  {
    v8 = DWORD1(v24) | 0x40022000;
    v7 = DWORD2(v25) | 0x40022000;
  }

  DWORD1(v24) = v8;
  DWORD2(v25) = v7;
  *(a1 + 88) = v26;
  v9 = v25;
  *(a1 + 56) = v24;
  *(a1 + 72) = v9;
  if (lifs_getfsattr_call(a2, "_N_mntflags", &v30, 8))
  {
    goto LABEL_16;
  }

  v12 = v30;
  if (v30)
  {
    vfs_setflags(v4, 1uLL);
    v12 = v30;
    if ((v30 & 0x10000000) == 0)
    {
LABEL_22:
      if ((v12 & 0x2000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_43;
    }
  }

  else if ((v30 & 0x10000000) == 0)
  {
    goto LABEL_22;
  }

  vfs_setflags(v4, 0x1000uLL);
  v12 = v30;
  if ((v30 & 0x2000) == 0)
  {
LABEL_23:
    if ((v12 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(a1 + 32) |= 4uLL;
  if ((v12 & 2) == 0)
  {
LABEL_24:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(a1 + 32) |= 0x20uLL;
  if ((v12 & 0x80000000) == 0)
  {
LABEL_25:
    if ((v12 & 0x100000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_46:
    *(a1 + 32) |= 0x4000uLL;
    if ((v12 & 0x200000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_45:
  *(a1 + 32) |= 0x2000uLL;
  if ((v12 & 0x100000000) != 0)
  {
    goto LABEL_46;
  }

LABEL_26:
  if ((v12 & 0x200000000) != 0)
  {
LABEL_27:
    *(a1 + 32) |= 0x8000uLL;
  }

LABEL_28:
  if ((v12 & 0x440000000) != 0)
  {
    v33 = 0;
    v34 = 0;
    volume_port_request = lifs_get_volume_port_request(a1, (a2 + 360), &v33);
    if (volume_port_request)
    {
      v14 = volume_port_request;
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_get_volume_port_request returned err %d\n", "lifs_setup_mount_for_devvp", volume_port_request);
      return v14;
    }

    v20 = lifs_attach_mount_to_iouc_volume(a1, v34, (a1 + 792));
    if (v20)
    {
      v14 = v20;
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lifs_attach_mount_to_iouc_volume returned err %d\n", "lifs_setup_mount_for_devvp", v20);
      return v14;
    }

    v12 = v30;
    if ((v30 & 0x40000000) != 0)
    {
      *(a1 + 32) |= 8uLL;
    }

    if ((v12 & 0x400000000) != 0)
    {
      *(a1 + 32) |= 0x10000uLL;
    }
  }

  v21 = *(a1 + 32);
  v22 = (v12 >> 29) & 1 & (v21 >> 3);
  v23 = v12 & 0x800000000;
  if ((v22 & 1) != 0 || v23)
  {
    if (v22)
    {
      v21 |= 0x40uLL;
    }

    *(a1 + 32) = v21 | (v23 >> 18);
  }

LABEL_16:
  if (!lifs_getfsattr_call(a2, "_N_f_subtype", &v29, 8))
  {
    v5->f_fssubtype = v29;
    *(a1 + 809) = 1;
  }

  v10 = lifs_getfsattr_call(a2, "_O_f_uuid", &v35, 16);
  v11 = (a1 + 810);
  if (v10)
  {
    *v11 = 0;
    *(a1 + 818) = 0;
  }

  else
  {
    *v11 = v35;
  }

  if (!lifs_getfsattr_call(a2, "_N_f_bsize", &v28, 8) && !lifs_getfsattr_call(a2, "_N_f_bavail", &v27, 8))
  {
    v15 = v27 * v28;
    *(a1 + 872) = v27 * v28;
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: lmp %p freespace 0x%llx", "lifs_query_mountpoint", a1, v15);
  }

  vfs_setlocklocal(v4);
  lck_mtx_lock((a1 + 96));
  lifs_pathconf(a1, a2);
  if (v16)
  {
    if ((*(a1 + 41) & 8) != 0)
    {
      v17 = 0x20000000000;
    }

    else
    {
      v17 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v18 = *(a1 + 480);
    if (v18 < 65)
    {
      v17 = ~(-1 << (v18 - 1));
    }

    else
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  *(a1 + 840) = v17;
  _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "lmp %p max_filesize 0x%llx", a1, v17);
  lck_mtx_unlock((a1 + 96));
  return 0;
}

void lifs_setup_fsid(uint64_t a1, uint64_t a2)
{
  if (atomic_load((a1 + 792)))
  {
    v5 = atomic_load((a1 + 792));
    *(a2 + 60) = vnode_specrdev(v5);
    *(a2 + 64) = vfs_typenum(*(a1 + 448));
  }

  else
  {
    v6 = *(a1 + 448);

    vfs_getnewfsid(v6);
  }
}

void lifs_meta_sync_call(uint64_t a1)
{
  explicit = atomic_load_explicit((a1 + 792), memory_order_acquire);
  if (explicit && vnode_hasdirtyblks(explicit))
  {
    lifs_flush_meta(explicit, 0);
  }

  lck_mtx_lock((a1 + 96));
  *(a1 + 32) &= ~0x800uLL;

  lck_mtx_unlock((a1 + 96));
}

void lifs_set_ioattr(uint64_t a1)
{
  v2 = vfs_context_kernel();
  *data = 0;
  ioattrp.io_maxreadcnt = lifs_max_ssd_read_size;
  ioattrp.io_maxwritecnt = lifs_max_ssd_write_size;
  ioattrp.io_segreadcnt = lifs_max_ssd_read_size >> PAGE_SHIFT_CONST;
  ioattrp.io_segwritecnt = lifs_max_ssd_write_size >> PAGE_SHIFT_CONST;
  *&ioattrp.io_maxsegreadsize = xmmword_3E20;
  ioattrp.32 = 0uLL;
  v3 = (a1 + 792);
  if (!atomic_load((a1 + 792)))
  {
    v13 = 0;
    goto LABEL_27;
  }

  v5 = v2;
  v6 = atomic_load(v3);
  if (VNOP_IOCTL(v6, 0x4004644FuLL, data, 0, v5))
  {
    v7 = 1;
  }

  else
  {
    v7 = *data == 0;
  }

  v8 = !v7;
  *(a1 + 808) = v8;
  if ((*(a1 + 32) & 8) == 0)
  {
    *v32 = 0;
    *v33 = 0;
    *v31 = 0;
    v9 = atomic_load(v3);
    if (!VNOP_IOCTL(v9, 0x40046418uLL, v32, 0, v5))
    {
      ioattrp.io_devblocksize = *v32;
    }

    v10 = atomic_load(v3);
    v11 = VNOP_IOCTL(v10, 0x4004644EuLL, &v32[4], 0, v5);
    v12 = *(a1 + 808);
    if (v11 || (*(a1 + 808) & 1) == 0 || *&v32[4] > 0x20u)
    {
      if (*(a1 + 808))
      {
LABEL_20:
        v15 = atomic_load(v3);
        if (!VNOP_IOCTL(v15, 0x40046448uLL, v31, 0, v5) && *v31)
        {
          vfs_setflags(*(a1 + 448), 0x200uLL);
        }

        v16 = atomic_load(v3);
        if (!VNOP_IOCTL(v16, 0x40086421uLL, v33, 0, v5) && (v33[0] & 1) != 0)
        {
          ioattrp.io_flags = 64;
          vfs_setflags(*(a1 + 448), 0x200uLL);
        }

        goto LABEL_26;
      }
    }

    else
    {
      *(a1 + 808) = 0;
    }

    ioattrp.io_maxreadcnt = lifs_max_read_size;
    ioattrp.io_maxwritecnt = lifs_max_write_size;
    ioattrp.io_segreadcnt = lifs_max_read_size >> PAGE_SHIFT_CONST;
    ioattrp.io_segwritecnt = lifs_max_write_size >> PAGE_SHIFT_CONST;
    goto LABEL_20;
  }

  v14 = atomic_load(v3);
  vfs_init_io_attributes(v14, *(a1 + 448));
  vfs_ioattr(*(a1 + 448), &ioattrp);
  *(a1 + 800) = vmin_u32(*&ioattrp.io_maxreadcnt, __PAIR64__(lifs_max_dev_write_size, lifs_max_dev_read_size));
  ioattrp.io_maxreadcnt = ubc_upl_maxbufsize();
  ioattrp.io_segreadcnt = ioattrp.io_maxreadcnt >> PAGE_SHIFT_CONST;
  ioattrp.io_maxwritecnt = ubc_upl_maxbufsize();
  ioattrp.io_segwritecnt = ioattrp.io_maxwritecnt >> PAGE_SHIFT_CONST;
LABEL_26:
  v17 = atomic_load(v3);
  v13 = vnode_getname(v17);
LABEL_27:
  v18 = "unknown";
  if (v13)
  {
    v18 = v13;
  }

  v30 = v18;
  v19 = *(a1 + 808) & 1;
  v20 = *(a1 + 448);
  io_devblocksize = ioattrp.io_devblocksize;
  v22 = *(a1 + 800);
  v23 = *(a1 + 804);
  io_maxreadcnt = ioattrp.io_maxreadcnt;
  io_maxwritecnt = ioattrp.io_maxwritecnt;
  v26 = a1;
  io_segreadcnt = ioattrp.io_segreadcnt;
  io_segwritecnt = ioattrp.io_segwritecnt;
  v29 = vfs_flags(v20);
  _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: isssd %u devblksize %u devreadsize %d devwritesize %d maxreadcnt %u segreadcnt %u maxwritecnt %u segwritecnt %u mnt_flags 0x%llx\n", v30, v19, io_devblocksize, v22, v23, io_maxreadcnt, io_segreadcnt, io_maxwritecnt, io_segwritecnt, v29);
  vfs_setioattr(*(v26 + 448), &ioattrp);
  if (v13)
  {
    vnode_putname(v13);
  }
}

uint64_t lifs_sync_callback(vnode *a1, uint64_t a2)
{
  v4 = vnode_hasdirtyblks(a1);
  v5 = *(a2 + 8);
  if (v4 || v5 != 2)
  {
    v6 = VNOP_FSYNC(a1, v5, *a2);
    if (v6)
    {
      *(a2 + 12) = v6;
    }
  }

  return 0;
}

void lifs_unmount_dangling_all()
{
  new_thread = 0;
  lck_mtx_lock(&lifs_mount_list_lock);
  v0 = 0;
  v1 = &lifs_mount_list;
  v2 = -1;
  do
  {
    v1 = *v1;
    ++v2;
    v0 += 8;
  }

  while (v1);
  _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Found %d dangling mount(s).", v2);
  if (v2)
  {
    v3 = kalloc_type_var_impl();
    if (v3)
    {
      v4 = v3;
      *v3 = v2 + 1;
      v5 = lifs_mount_list;
      if (lifs_mount_list)
      {
        v6 = 8;
        do
        {
          *&v4[v6] = vfs_statfs(*(v5 + 448))->f_fsid;
          v5 = *v5;
          v6 += 8;
        }

        while (v5);
      }

      lck_mtx_unlock(&lifs_mount_list_lock);
      v7 = kernel_thread_start(lifs_unmount_dangling_thread, v4, &new_thread);
      if (v7)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to start unmount dangling thread, kern_return %d", v7);
        kfree_type_var_impl();
      }

      else
      {
        thread_deallocate(new_thread);
      }
    }

    else
    {
      lck_mtx_unlock(&lifs_mount_list_lock);
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to allocate fsids buffer.");
    }
  }

  else
  {

    lck_mtx_unlock(&lifs_mount_list_lock);
  }
}

uint64_t lifs_unmount_dangling_thread(fsid_t *a1)
{
  v2 = a1->val[0];
  v3 = current_thread();
  thread_set_thread_name(v3, "lifs_unmount_dangling");
  if (v2 >= 2)
  {
    v4 = vfs_context_kernel();
    v5 = a1 + 1;
    v6 = v2 - 1;
    do
    {
      vfs_unmountbyfsid(v5++, 655360, v4);
      --v6;
    }

    while (v6);
  }

  kfree_type_var_impl();

  return thread_terminate(v3);
}

uint64_t sysctl_max_io_threads(sysctl_oid *a1, uint64_t a2, uint64_t a3, sysctl_req *a4)
{
  arg1 = lifs_max_io_threads;
  result = sysctl_handle_int(a1, &arg1, 0, a4);
  if (!result && a4->newptr && (arg1 - 1) <= 7)
  {
    lifs_max_io_threads = arg1;
  }

  return result;
}

uint64_t sysctl_max_inline_io_size(sysctl_oid *a1, uint64_t a2, uint64_t a3, sysctl_req *a4)
{
  arg1 = lifs_max_inline_io_size;
  result = sysctl_handle_int(a1, &arg1, 0, a4);
  if (!result && a4->newptr && (arg1 - 4096) <= 0x1FF000)
  {
    lifs_max_inline_io_size = arg1;
  }

  return result;
}

uint64_t sysctl_max_read_size(sysctl_oid *a1, uint64_t a2, uint64_t a3, sysctl_req *a4)
{
  arg1 = lifs_max_read_size;
  result = sysctl_handle_int(a1, &arg1, 0, a4);
  if (!result && a4->newptr && (arg1 - 0x100000) <= 0x700000)
  {
    lifs_max_read_size = arg1;
  }

  return result;
}

uint64_t sysctl_max_write_size(sysctl_oid *a1, uint64_t a2, uint64_t a3, sysctl_req *a4)
{
  arg1 = lifs_max_write_size;
  result = sysctl_handle_int(a1, &arg1, 0, a4);
  if (!result && a4->newptr && (arg1 - 0x100000) <= 0x300000)
  {
    lifs_max_write_size = arg1;
  }

  return result;
}

uint64_t sysctl_max_ssd_read_size(sysctl_oid *a1, uint64_t a2, uint64_t a3, sysctl_req *a4)
{
  arg1 = lifs_max_ssd_read_size;
  result = sysctl_handle_int(a1, &arg1, 0, a4);
  if (!result && a4->newptr && (arg1 - 0x100000) <= 0xF00000)
  {
    lifs_max_ssd_read_size = arg1;
  }

  return result;
}

uint64_t sysctl_max_ssd_write_size(sysctl_oid *a1, uint64_t a2, uint64_t a3, sysctl_req *a4)
{
  arg1 = lifs_max_ssd_write_size;
  result = sysctl_handle_int(a1, &arg1, 0, a4);
  if (!result && a4->newptr && (arg1 - 0x100000) <= 0xF00000)
  {
    lifs_max_ssd_write_size = arg1;
  }

  return result;
}

uint64_t sysctl_max_dev_read_size(sysctl_oid *a1, uint64_t a2, uint64_t a3, sysctl_req *a4)
{
  arg1 = lifs_max_dev_read_size;
  result = sysctl_handle_int(a1, &arg1, 0, a4);
  if (!result && a4->newptr && (arg1 - 0x100000) <= 0x700000)
  {
    lifs_max_dev_read_size = arg1;
  }

  return result;
}

uint64_t sysctl_max_dev_write_size(sysctl_oid *a1, uint64_t a2, uint64_t a3, sysctl_req *a4)
{
  arg1 = lifs_max_dev_write_size;
  result = sysctl_handle_int(a1, &arg1, 0, a4);
  if (!result && a4->newptr && (arg1 - 0x100000) <= 0x700000)
  {
    lifs_max_dev_write_size = arg1;
  }

  return result;
}

uint64_t sysctl_max_read_blockmap_size(sysctl_oid *a1, uint64_t a2, uint64_t a3, sysctl_req *a4)
{
  arg1 = lifs_max_read_blockmap_size;
  result = sysctl_handle_int(a1, &arg1, 0, a4);
  if (!result && a4->newptr && (arg1 - 0x20000) <= 0x3E0000)
  {
    lifs_max_read_blockmap_size = arg1;
  }

  return result;
}

uint64_t sysctl_max_write_blockmap_size(sysctl_oid *a1, uint64_t a2, uint64_t a3, sysctl_req *a4)
{
  arg1 = lifs_max_write_blockmap_size;
  result = sysctl_handle_int(a1, &arg1, 0, a4);
  if (!result && a4->newptr && (arg1 - 0x20000) <= 0xE0000)
  {
    lifs_max_write_blockmap_size = arg1;
  }

  return result;
}

uint64_t sysctl_max_ssd_read_blockmap_size(sysctl_oid *a1, uint64_t a2, uint64_t a3, sysctl_req *a4)
{
  arg1 = lifs_max_ssd_read_blockmap_size;
  result = sysctl_handle_int(a1, &arg1, 0, a4);
  if (!result && a4->newptr && (arg1 - 0x20000) <= 0x3E0000)
  {
    lifs_max_ssd_read_blockmap_size = arg1;
  }

  return result;
}

uint64_t sysctl_max_ssd_write_blockmap_size(sysctl_oid *a1, uint64_t a2, uint64_t a3, sysctl_req *a4)
{
  arg1 = lifs_max_ssd_write_blockmap_size;
  result = sysctl_handle_int(a1, &arg1, 0, a4);
  if (!result && a4->newptr && (arg1 - 0x20000) <= 0xE0000)
  {
    lifs_max_ssd_write_blockmap_size = arg1;
  }

  return result;
}

void lifs_register_sysctl()
{
  sysctl_register_oid(&sysctl__vfs_generic_lifs);
  sysctl_register_oid(&sysctl__vfs_generic_lifs_max_io_threads);
  sysctl_register_oid(&sysctl__vfs_generic_lifs_max_inline_io_size);
  sysctl_register_oid(&sysctl__vfs_generic_lifs_max_read_size);
  sysctl_register_oid(&sysctl__vfs_generic_lifs_max_write_size);
  sysctl_register_oid(&sysctl__vfs_generic_lifs_max_ssd_read_size);
  sysctl_register_oid(&sysctl__vfs_generic_lifs_max_ssd_write_size);
  sysctl_register_oid(&sysctl__vfs_generic_lifs_max_dev_read_size);
  sysctl_register_oid(&sysctl__vfs_generic_lifs_max_dev_write_size);
  sysctl_register_oid(&sysctl__vfs_generic_lifs_max_read_blockmap_size);
  sysctl_register_oid(&sysctl__vfs_generic_lifs_max_write_blockmap_size);
  sysctl_register_oid(&sysctl__vfs_generic_lifs_max_ssd_read_blockmap_size);
  sysctl_register_oid(&sysctl__vfs_generic_lifs_max_ssd_write_blockmap_size);
  sysctl_register_oid(&sysctl__vfs_generic_lifs_read_meta_cache_hit);

  sysctl_register_oid(&sysctl__vfs_generic_lifs_write_meta_cache_hit);
}

void lifs_unregister_sysctl()
{
  sysctl_unregister_oid(&sysctl__vfs_generic_lifs_max_io_threads);
  sysctl_unregister_oid(&sysctl__vfs_generic_lifs_max_inline_io_size);
  sysctl_unregister_oid(&sysctl__vfs_generic_lifs_max_read_size);
  sysctl_unregister_oid(&sysctl__vfs_generic_lifs_max_write_size);
  sysctl_unregister_oid(&sysctl__vfs_generic_lifs_max_ssd_read_size);
  sysctl_unregister_oid(&sysctl__vfs_generic_lifs_max_ssd_write_size);
  sysctl_unregister_oid(&sysctl__vfs_generic_lifs_max_dev_read_size);
  sysctl_unregister_oid(&sysctl__vfs_generic_lifs_max_dev_write_size);
  sysctl_unregister_oid(&sysctl__vfs_generic_lifs_max_read_blockmap_size);
  sysctl_unregister_oid(&sysctl__vfs_generic_lifs_max_write_blockmap_size);
  sysctl_unregister_oid(&sysctl__vfs_generic_lifs_max_ssd_read_blockmap_size);
  sysctl_unregister_oid(&sysctl__vfs_generic_lifs_max_ssd_write_blockmap_size);
  sysctl_unregister_oid(&sysctl__vfs_generic_lifs_read_meta_cache_hit);
  sysctl_unregister_oid(&sysctl__vfs_generic_lifs_write_meta_cache_hit);

  sysctl_unregister_oid(&sysctl__vfs_generic_lifs);
}

uint64_t lifatype_to_vtype(unsigned int a1)
{
  if (a1 > 7)
  {
    return 8;
  }

  v1 = 4 * a1;
  v2 = (&unk_3EC0 + (4 * a1));
  if (v1 != 4 * a1)
  {
    v2 = ((&unk_3EC0 + v1) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  return *v2;
}

unint64_t lifatype_to_dtype(unsigned int a1)
{
  v1 = 0xC0602010A040800uLL >> (8 * a1);
  if (a1 >= 8)
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 0xF;
}

uint64_t lifatype_to_stype(int a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  v1 = 4 * (a1 - 1);
  v2 = (&unk_3EE0 + v1);
  if (v1 != v1)
  {
    v2 = ((&unk_3EE0 + v1) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  return *v2;
}

BOOL update_lnode_attr_locked(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    if (v2)
    {
      v6 = *(a2 + 16);
      v5 = *(a2 + 8);
      if (v6 >= *(a1 + 216))
      {
        v7 = *(a1 + 24);
        if (v7)
        {
          v8 = *(a2 + 24);
          if (*(a1 + 40) != v8)
          {
            _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "Unexpected attribute type changed from %d to %d", *(a1 + 40), v8);
            v6 = *(a2 + 16);
            v7 = *(a1 + 24);
          }
        }

        *(a1 + 40) = *(a2 + 24);
        *(a1 + 216) = v6;
        *(a1 + 24) = v7 | 1;
        v5 = *(a2 + 8);
      }
    }

    else
    {
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v9 = *(a2 + 16);
      if (v9 >= *(a1 + 224))
      {
        *(a1 + 44) = *(a2 + 28);
        *(a1 + 224) = v9;
        *(a1 + 24) |= 2uLL;
        v5 = *(a2 + 8);
      }
    }

    if ((v5 & 4) != 0)
    {
      v10 = *(a2 + 16);
      if (v10 >= *(a1 + 232))
      {
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 232) = v10;
        *(a1 + 24) |= 4uLL;
        v5 = *(a2 + 8);
      }
    }

    if ((v5 & 8) != 0)
    {
      v11 = *(a2 + 16);
      if (v11 >= *(a1 + 240))
      {
        *(a1 + 52) = *(a2 + 36);
        *(a1 + 240) = v11;
        *(a1 + 24) |= 8uLL;
        v5 = *(a2 + 8);
      }
    }

    if ((v5 & 0x10) != 0)
    {
      v12 = *(a2 + 16);
      if (v12 >= *(a1 + 248))
      {
        *(a1 + 56) = *(a2 + 40);
        *(a1 + 248) = v12;
        *(a1 + 24) |= 0x10uLL;
        v5 = *(a2 + 8);
      }
    }

    if ((v5 & 0x20) != 0)
    {
      v13 = *(a2 + 16);
      if (v13 >= *(a1 + 256))
      {
        *(a1 + 60) = *(a2 + 44);
        *(a1 + 256) = v13;
        *(a1 + 24) |= 0x20uLL;
        v5 = *(a2 + 8);
      }
    }

    if ((v5 & 0x40) != 0)
    {
      v14 = *(a2 + 16);
      if (v14 >= *(a1 + 264))
      {
        *(a1 + 64) = *(a2 + 48);
        *(a1 + 264) = v14;
        *(a1 + 24) |= 0x40uLL;
        v5 = *(a2 + 8);
      }
    }

    if ((v5 & 0x80) != 0)
    {
      v15 = *(a2 + 16);
      if (v15 >= *(a1 + 272))
      {
        *(a1 + 72) = *(a2 + 56);
        *(a1 + 272) = v15;
        *(a1 + 24) |= 0x80uLL;
        v5 = *(a2 + 8);
      }
    }

    if ((v5 & 0x100) != 0)
    {
      v16 = *(a2 + 16);
      if (v16 >= *(a1 + 280))
      {
        *(a1 + 80) = *(a2 + 64);
        *(a1 + 280) = v16;
        *(a1 + 24) |= 0x100uLL;
        v5 = *(a2 + 8);
      }
    }

    if ((v5 & 0x200) != 0)
    {
      v17 = *(a2 + 16);
      if (v17 >= *(a1 + 288))
      {
        *(a1 + 88) = *(a2 + 72);
        *(a1 + 288) = v17;
        *(a1 + 24) |= 0x200uLL;
        v5 = *(a2 + 8);
      }
    }

    if ((v5 & 0x400) != 0 && *(a2 + 16) >= *(a1 + 296))
    {
      *(a1 + 96) = *(a2 + 80);
      *(a1 + 24) |= 0x400uLL;
      v5 = *(a2 + 8);
      *(a1 + 296) = *(a2 + 16);
    }

    if ((v5 & 0x800) != 0 && *(a2 + 16) >= *(a1 + 304))
    {
      *(a1 + 112) = *(a2 + 96);
      *(a1 + 24) |= 0x800uLL;
      v5 = *(a2 + 8);
      *(a1 + 304) = *(a2 + 16);
    }

    if ((v5 & 0x1000) != 0 && *(a2 + 16) >= *(a1 + 312))
    {
      *(a1 + 128) = *(a2 + 112);
      *(a1 + 24) |= 0x1000uLL;
      v5 = *(a2 + 8);
      *(a1 + 312) = *(a2 + 16);
    }

    if ((v5 & 0x2000) != 0 && *(a2 + 16) >= *(a1 + 320))
    {
      *(a1 + 144) = *(a2 + 128);
      *(a1 + 24) |= 0x2000uLL;
      v5 = *(a2 + 8);
      *(a1 + 320) = *(a2 + 16);
    }

    if ((v5 & 0x4000) != 0 && *(a2 + 16) >= *(a1 + 328))
    {
      *(a1 + 160) = *(a2 + 144);
      *(a1 + 24) |= 0x4000uLL;
      v5 = *(a2 + 8);
      *(a1 + 328) = *(a2 + 16);
    }

    if ((v5 & 0x8000) != 0 && *(a2 + 16) >= *(a1 + 336))
    {
      *(a1 + 176) = *(a2 + 160);
      *(a1 + 24) |= 0x8000uLL;
      v5 = *(a2 + 8);
      *(a1 + 336) = *(a2 + 16);
    }

    if ((v5 & 0x4000000000000000) != 0)
    {
      v18 = *(a2 + 16);
      if (v18 >= *(a1 + 344))
      {
        *(a1 + 192) = *(a2 + 176);
        *(a1 + 344) = v18;
        *(a1 + 24) |= 0x4000000000000000uLL;
      }
    }

    microuptime((a1 + 200));
  }

  return v2 != 0;
}

uint64_t invalidate_lnode_attr_locked(uint64_t result)
{
  *(result + 200) = 0;
  *(result + 208) = 0;
  return result;
}

BOOL update_lnode_attr(lck_mtx_t *a1, uint64_t a2)
{
  lck_mtx_lock(a1);
  updated = update_lnode_attr_locked(a1, a2);
  lck_mtx_unlock(a1);
  return updated;
}

__n128 update_lnode_attr_subset_locked(__n128 *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    if ((v2 & 0x40) != 0)
    {
      v3 = a2[1];
      if (v3 >= a1[16].n128_u64[1])
      {
        a1[4].n128_u64[0] = a2[2];
        a1[16].n128_u64[1] = v3;
        a1[1].n128_u64[1] |= 0x40uLL;
      }
    }

    if ((v2 & 0x80) != 0)
    {
      v4 = a2[1];
      if (v4 >= a1[17].n128_u64[0])
      {
        a1[4].n128_u64[1] = a2[3];
        a1[17].n128_u64[0] = v4;
        a1[1].n128_u64[1] |= 0x80uLL;
      }
    }

    if ((v2 & 0x100) != 0)
    {
      v5 = a2[1];
      if (v5 >= a1[17].n128_u64[1])
      {
        a1[5].n128_u64[0] = a2[4];
        a1[17].n128_u64[1] = v5;
        a1[1].n128_u64[1] |= 0x100uLL;
      }
    }

    if ((v2 & 0x400) != 0 && a2[1] >= a1[18].n128_u64[1])
    {
      result = *(a2 + 5);
      a1[6] = result;
      v2 = *a2;
      a1[18].n128_u64[1] = a2[1];
      a1[1].n128_u64[1] |= 0x400uLL;
    }

    if ((v2 & 0x800) != 0 && a2[1] >= a1[19].n128_u64[0])
    {
      result = *(a2 + 7);
      a1[7] = result;
      v2 = *a2;
      a1[19].n128_u64[0] = a2[1];
      a1[1].n128_u64[1] |= 0x800uLL;
    }

    if ((v2 & 0x1000) != 0 && a2[1] >= a1[19].n128_u64[1])
    {
      result = *(a2 + 9);
      a1[8] = result;
      a1[19].n128_u64[1] = a2[1];
      a1[1].n128_u64[1] |= 0x1000uLL;
    }
  }

  return result;
}

void update_lnode_attr_subset(lck_mtx_t *a1, uint64_t *a2)
{
  lck_mtx_lock(a1);
  update_lnode_attr_subset_locked(a1, a2);

  lck_mtx_unlock(a1);
}

uint64_t lifs_num_cpus()
{
  v2 = 0;
  v1 = 4;
  if (sysctlbyname("hw.ncpu", &v2, &v1, 0, 0))
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t lifs_next_powerof2(uint64_t result, int8x8_t a2)
{
  if (result <= 1)
  {
    result = 1;
  }

  else
  {
    result = result;
  }

  if ((result & 0x80000000) == 0)
  {
    a2.i32[0] = result;
    v2 = vcnt_s8(a2);
    v2.i16[0] = vaddlv_u8(v2);
    if (v2.i32[0] >= 2u)
    {
      v3 = (result - 1) | ((result - 1) >> 1) | (((result - 1) | ((result - 1) >> 1)) >> 2);
      v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
      return (v4 | HIWORD(v4)) + 1;
    }
  }

  return result;
}

uint64_t get_lifs_port(void *a1)
{
  lck_rw_lock_shared(&lifs_port_rwlock);
  v2 = lifs_port;
  *a1 = lifs_port;
  if ((v2 + 1) > 1)
  {
    return 0;
  }

  _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "Invalid lifs host port or port dying");
  *a1 = 0;
  lck_rw_unlock_shared(&lifs_port_rwlock);
  return 5;
}

uint64_t init_statfs(uint64_t a1, const char *a2, const char *a3)
{
  strlcpy((a1 + 1120), a2, 0x400uLL);
  strlcpy((a1 + 96), a3, 0x400uLL);
  strlcpy((a1 + 80), "lifs", 0x10uLL);
  *(a1 + 72) = 0;
  *(a1 + 12) = 0u;
  *(a1 + 36) = 0;
  *a1 = 0x100000;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0u;
  *(a1 + 4) = 0x100000;
  return 0;
}

uint64_t lifs_lookup_node(uint64_t a1, void *a2)
{
  v4 = crc32(0xFFF1u, a2, 0x40uLL);
  v5 = 8 * (*(a1 + 584) & v4);
  v6 = *(a1 + 576);
  v7 = (v6 + v5);
  if (v5 != v5)
  {
    v7 = ((v6 + v5) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  v8 = (a1 + 112);
  lck_mtx_lock(v8);
  v9 = lifs_lookup_node_locked(a2, v7, v4);
  lck_mtx_unlock(v8);
  return v9;
}

uint64_t lifs_lookup_node_locked(void *__s2, uint64_t *a2, int a3)
{
  for (i = *a2; i; i = *(i + 536))
  {
    if (*(i + 488) == a3 && !memcmp((i + 360), __s2, 0x40uLL))
    {
      break;
    }
  }

  return i;
}

void lifs_create_node(mount *a1, __int128 *a2, vnode *a3, uint64_t a4, uint64_t a5, vnode_t *a6)
{
  if (a1)
  {
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    data = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
    vpp = 0;
    v8 = vfs_fsprivate(a1);
    v9 = crc32(0xFFF1u, a2, 0x40uLL);
    v10 = 0;
    v11 = *(v8 + 72);
    v12 = 8 * (*(v8 + 73) & v9);
    v13 = (v11 + v12);
    if (v12 != v12)
    {
      v13 = ((v11 + v12) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    v44 = v8;
    for (i = (v8 + 112); ; msleep(v15, i, 1040, "lnode_larval", 0))
    {
      lck_mtx_lock(i);
      v15 = lifs_lookup_node_locked(a2, v13, v9);
      if (!v15)
      {
        lck_mtx_unlock(i);
        if (!v10)
        {
          v10 = kalloc_type_impl();
          lck_mtx_init(v10, lifs_node_grp, 0);
          lck_rw_init((v10 + 624), lifs_node_grp, 0);
          lck_rw_init((v10 + 696), lifs_node_grp, 0);
          lck_rw_init((v10 + 944), lifs_node_grp, 0);
          lck_rw_init((v10 + 512), lifs_node_grp, 0);
          v16 = *a2;
          v17 = a2[1];
          v18 = a2[3];
          *(v10 + 392) = a2[2];
          *(v10 + 408) = v18;
          *(v10 + 360) = v16;
          *(v10 + 376) = v17;
          *(v10 + 488) = v9;
        }

        lck_mtx_lock(i);
        v15 = lifs_lookup_node_locked(a2, v13, v9);
        if (!v15)
        {
          break;
        }
      }

      v19 = *(v15 + 552);
      if (v19)
      {
        vpp = *(v15 + 552);
        v20 = *(v15 + 576);
        lck_mtx_unlock(i);
        v21 = vnode_getwithvid(v19, v20);
        if (v10)
        {
          goto LABEL_12;
        }

        goto LABEL_13;
      }

      *(v15 + 356) |= 2u;
    }

    v22 = *v13;
    if (*v13)
    {
      if (*(v22 + 544) != v13)
      {
        __break(0xBFFDu);
        goto LABEL_55;
      }

      v23 = (v10 + 536);
      *(v10 + 536) = v22;
      *(v22 + 544) = v10 + 536;
    }

    else
    {
      v23 = (v10 + 536);
      *(v10 + 536) = 0;
    }

    *v13 = v10;
    *(v10 + 544) = v13;
    *(v10 + 356) |= 1u;
    lck_mtx_unlock(i);
    *&v59 = v10;
    *&data = a1;
    v24 = lifatype_to_vtype(*(a5 + 24));
    DWORD2(data) = v24;
    *&v58 = "lifs";
    *(&v58 + 1) = a3;
    *(&v59 + 1) = lifs_vnodeop_p;
    *&v60 = 0;
    DWORD2(v60) = 0;
    *&v61 = *(a5 + 48);
    *(&v61 + 1) = a4;
    LODWORD(v62) = 4;
    v25 = vnode_fsnode(a3);
    v26 = *(v25 + 408);
    v28 = *(v25 + 360);
    v27 = *(v25 + 376);
    *(v10 + 456) = *(v25 + 392);
    *(v10 + 472) = v26;
    *(v10 + 424) = v28;
    *(v10 + 440) = v27;
    *(v10 + 528) = v44;
    *(v10 + 508) = 0;
    v29 = *(a4 + 40);
    if (v29 && *(a4 + 48) >= 3 && *v29 == 46 && v29[1] == 95)
    {
      *(v10 + 352) |= 0x500u;
    }

    v30 = *a2;
    if (v24 == 2 && v30 == -1)
    {
      v50 = v59;
      v51 = v60;
      v52 = v61;
      v48 = data;
      v49 = v58;
      *&v53 = v62;
      *(&v53 + 1) = lifs_mirror_mount_trigger_resolve;
      *&v54 = lifs_mirror_mount_trigger_unresolve;
      *(&v54 + 1) = lifs_mirror_mount_trigger_rearm;
      v55 = 0uLL;
      v56 = 5;
      p_data = &v48;
      v32 = 21590;
      v33 = 136;
    }

    else
    {
      p_data = &data;
      v32 = 0;
      v33 = 88;
    }

    v21 = vnode_create(v32, v33, p_data, &vpp);
    if (!v21)
    {
      *(v10 + 576) = vnode_vid(vpp);
      update_lnode_attr_locked(v10, a5);
      v34 = *(v44 + 4);
      if (v34 & 8) != 0 && (*(a5 + 176))
      {
        *(v10 + 352) |= 0x800u;
      }

      if ((v34 & 0x40) != 0 && (*(a5 + 176) & 2) != 0)
      {
        *(v10 + 352) |= 0x2000u;
      }

      v35 = *(a5 + 48);
      *(v10 + 608) = v35;
      v36 = *(v10 + 352);
      if ((v36 & 0x2000) == 0)
      {
        *(v10 + 616) = v35;
        v36 |= 0x4000u;
        *(v10 + 352) = v36;
      }

      *(v10 + 592) = 0;
      *(v10 + 600) = v10 + 592;
      *(v10 + 960) = 0;
      *(v10 + 968) = v10 + 960;
      if ((v36 & 0x800) != 0)
      {
        lifs_init_extent_tree((v10 + 936));
      }

      lifs_get_supported_xattrs(v10);
      lck_mtx_lock(i);
      *(v10 + 552) = vpp;
      v37 = *(v10 + 356);
      if ((v37 & 2) != 0)
      {
        *(v10 + 356) = v37 & 0xFFFFFFFD;
        lck_mtx_unlock(i);
        wakeup(v10);
      }

      else
      {
        lck_mtx_unlock(i);
      }

      goto LABEL_14;
    }

    if (DWORD2(data) == 2 && v30 == -1)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to create trigger vnode");
    }

    else
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to create vnode", a3, a4);
    }

    lck_mtx_lock(i);
    v38 = *v23;
    if (*v23)
    {
      if (*(v38 + 544) != v23)
      {
LABEL_56:
        __break(0xBFFDu);
        return;
      }

      v39 = *(v10 + 544);
      if (*v39 == v10)
      {
        *(v38 + 544) = v39;
        v40 = *(v10 + 544);
        goto LABEL_51;
      }
    }

    else
    {
      v40 = *(v10 + 544);
      if (*v40 == v10)
      {
LABEL_51:
        *v40 = v38;
        v41 = *(v10 + 356);
        *(v10 + 356) = 0;
        lck_mtx_unlock(i);
        if ((v41 & 2) != 0)
        {
          wakeup(v10);
        }

LABEL_12:
        kfree_type_impl();
LABEL_13:
        if (v21)
        {
          return;
        }

LABEL_14:
        *a6 = vpp;
        return;
      }
    }

LABEL_55:
    __break(0xBFFDu);
    goto LABEL_56;
  }
}

uintptr_t lifs_mirror_mount_trigger_resolve(vnode *a1, uint64_t a2, unsigned int a3)
{
  v6 = vnode_fsnode(a1);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400D5u, 0, a1, v6, 0);
  }

  if ((*(a2 + 5) & 0x80) != 0 && a3 <= 0x1D && (((1 << a3) & 0x24713CEF) != 0 || a3 == 25 && is_machport_proc()))
  {
    v11 = *(v6 + 140);
    v12 = vfs_resolver_result();
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug_filtered(0x31400D6u, 1uLL, *(v6 + 140), v12, 0);
    }

    return v12;
  }

  if (vnode_mountedhere(a1))
  {
    goto LABEL_5;
  }

  v13 = lifs_set_busy(v6);
  if (v13)
  {
    v9 = v13;
    v7 = 0;
    goto LABEL_14;
  }

  if (vnode_mountedhere(a1))
  {
    lifs_clear_busy(v6);
LABEL_5:
    v7 = 0;
LABEL_6:
    v8 = *(v6 + 140);
    *(v6 + 140) = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      lifs_mirror_mount_trigger_resolve_cold_1();
    }

    v9 = 0;
    v10 = 0;
    goto LABEL_15;
  }

  lck_mtx_lock(v6);
  v16 = *(v6 + 88);
  lck_mtx_unlock(v6);
  if ((v16 & 0x10) != 0)
  {
    v7 = 0;
    v9 = 89;
LABEL_32:
    lifs_clear_busy(v6);
    goto LABEL_14;
  }

  v7 = vnode_getparent(a1);
  if (!v7 || vnode_vtype(a1) != VDIR)
  {
    v9 = 22;
    goto LABEL_32;
  }

  v9 = lifs_mirror_mount_domount(v7, a1, a2);
  lifs_clear_busy(v6);
  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_14:
  v10 = 3;
LABEL_15:
  v14 = *(v6 + 140);
  v12 = vfs_resolver_result();
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400D6u, v10, *(v6 + 140), v12, v9);
  }

  if (v7)
  {
    vnode_put(v7);
  }

  return v12;
}

uint64_t lifs_mirror_mount_trigger_unresolve(vnode *a1, int a2, uint64_t a3, vfs_context *a4)
{
  vnode_mount(a1);
  if (!a1)
  {
    return 22;
  }

  v7 = vnode_fsnode(a1);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400D5u, 1uLL, a1, v7, 0);
  }

  lck_mtx_lock(v7);
  v8 = vnode_mountedhere(a1);
  if (v8)
  {
    v9 = vfs_statfs(v8);
    v10 = vfs_unmountbyfsid(&v9->f_fsid, a2, a4);
    if (v10)
    {
      v11 = v10;
      v12 = 3;
    }

    else
    {
      v14 = *(v7 + 140);
      *(v7 + 140) = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        lifs_mirror_mount_trigger_unresolve_cold_1();
      }

      v11 = 0;
      v12 = 2;
    }
  }

  else
  {
    v12 = 3;
    v11 = 2;
  }

  v15 = *(v7 + 140);
  v13 = vfs_resolver_result();
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400D6u, v12, *(v7 + 140), v13, v11);
  }

  lck_mtx_unlock(v7);
  return v13;
}

uint64_t lifs_mirror_mount_trigger_rearm(vnode *a1)
{
  if (!a1)
  {
    return 22;
  }

  v2 = vnode_fsnode(a1);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400D5u, 2uLL, a1, v2, 0);
  }

  lck_mtx_lock(v2);
  v3 = *(v2 + 140);
  *(v2 + 140) = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    lifs_mirror_mount_trigger_rearm_cold_1();
  }

  vnode_mountedhere(a1);
  v4 = vfs_resolver_result();
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    v5 = vnode_mountedhere(a1);
    kernel_debug_filtered(0x31400D6u, 2 * (v5 == 0), *(v2 + 140), v4, 0);
  }

  lck_mtx_unlock(v2);
  return v4;
}

uint64_t lifs_get_supported_xattrs(uint64_t result)
{
  if ((*(result + 192) & 4) != 0)
  {
    v1 = result;
    v5 = 0;
    v2 = lifs_getfsattr_call(result, "_N_supported_xattr_namessize", &v5, 8);
    if (v2 || !v5)
    {
      if (v2)
      {
        return printf("%s: node has declared limited xattr support, but we got an error: %d\n");
      }

      else
      {
        return printf("%s: node has declared limited xattr support, but we got an empty list\n");
      }
    }

    else
    {
      if (v5 > 0x100)
      {
        return printf("%s: supported xattrs list size is not reasonable: %llu\n");
      }

      v3 = kalloc_data();
      result = lifs_getfsattr_call(v1, "_O_supported_xattr_names", v3, v5);
      if (result)
      {
        printf("%s: failed to get supported xattr names: %d\n");
      }

      else
      {
        v4 = v5;
        if (!*(v3 + v5 - 1))
        {
          *(v1 + 920) = v3;
          *(v1 + 928) = v4;
          return result;
        }

        printf("%s: supported xattr names list not NUL terminated\n");
      }

      return kfree_data();
    }
  }

  return result;
}

void lifs_hashremove(uint64_t a1)
{
  v2 = (*(a1 + 528) + 112);
  lck_mtx_lock(v2);
  v3 = *(a1 + 356);
  if (v3)
  {
    *(a1 + 356) = v3 & 0xFFFFFFFE;
    v4 = *(a1 + 536);
    if (v4)
    {
      if (*(v4 + 544) != a1 + 536)
      {
LABEL_12:
        __break(0xBFFDu);
        return;
      }

      v5 = *(a1 + 544);
      if (*v5 == a1)
      {
        *(v4 + 544) = v5;
        v6 = *(a1 + 544);
LABEL_7:
        *v6 = v4;
        goto LABEL_8;
      }
    }

    else
    {
      v6 = *(a1 + 544);
      if (*v6 == a1)
      {
        goto LABEL_7;
      }
    }

    __break(0xBFFDu);
    goto LABEL_12;
  }

LABEL_8:

  lck_mtx_unlock(v2);
}

uint64_t convert_va_active_to_requested_attributes(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (16 * v1) & 0x40;
  if ((v1 & 0x10) != 0)
  {
    v2 = 64;
  }

  v3 = vdupq_n_s64(v1);
  v4 = vorrq_s8(vandq_s8(vshlq_u64(v3, xmmword_3E80), xmmword_3EB0), vandq_s8(vshlq_u64(v3, xmmword_3E90), xmmword_3EA0));
  return *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | (2 * v1) & 0x2000 | (v1 >> 2) & 0x4000 | (v1 >> 15) & 0x8000 | v2;
}

uint64_t lifs_pack_vap(uint64_t result, uint64_t a2, mount_t mp)
{
  v5 = result;
  v6 = *(a2 + 8);
  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = *(result + 8);
  if ((v7 & 0x1000000) != 0)
  {
    result = lifatype_to_vtype(*(a2 + 24));
    *(v5 + 224) = result;
    *v5 |= 0x1000000uLL;
    if ((v7 & 0x800000000) == 0)
    {
LABEL_4:
      if ((v7 & 0x2000000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }
  }

  else if ((v7 & 0x800000000) == 0)
  {
    goto LABEL_4;
  }

  result = lifatype_to_vtype(*(a2 + 24));
  *(v5 + 328) = result;
  *v5 |= 0x800000000uLL;
  if ((v7 & 0x2000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v8 = lifatype_to_vtype(*(a2 + 24));
  result = vfs_flags(mp);
  if (result)
  {
    v9 = 4;
  }

  else
  {
    v9 = 6;
  }

  if (v8 == 2)
  {
    ++v9;
  }

  *(v5 + 336) = v9;
  *v5 |= 0x2000000000uLL;
  v6 = *(a2 + 8);
LABEL_11:
  v10 = *(v5 + 8);
  if ((v10 & 0x200) != 0 && (v6 & 2) != 0)
  {
    v11 = *(a2 + 28);
    if (v6)
    {
      v12 = v11 & 0xFFF;
      result = lifatype_to_stype(*(a2 + 24));
      LOWORD(v11) = result | v12;
    }

    *(v5 + 76) = v11;
    *v5 |= 0x200uLL;
  }

  if ((v10 & 0x80) != 0 && (v6 & 8) != 0)
  {
    *(v5 + 68) = *(a2 + 36);
    *v5 |= 0x80uLL;
  }

  if ((v10 & 2) != 0)
  {
    if ((v6 & 4) != 0)
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = 1;
    }

    *(v5 + 24) = v13;
    *v5 |= 2uLL;
  }

  if ((v10 & 0x100) != 0 && (v6 & 0x10) != 0)
  {
    *(v5 + 72) = *(a2 + 40);
    *v5 |= 0x100uLL;
  }

  if ((v10 & 0x400) != 0 && (v6 & 0x20) != 0)
  {
    *(v5 + 80) = *(a2 + 44);
    *v5 |= 0x400uLL;
  }

  if ((v6 & 0x40) != 0)
  {
    if ((v10 & 0x10) != 0)
    {
      *(v5 + 48) = *(a2 + 48);
      *v5 |= 0x10uLL;
    }

    if ((v10 & 4) != 0)
    {
      *(v5 + 32) = *(a2 + 48);
      *v5 |= 4uLL;
    }
  }

  if ((v6 & 0x80) != 0)
  {
    if ((v10 & 0x20) != 0)
    {
      *(v5 + 56) = *(a2 + 56);
      *v5 |= 0x20uLL;
    }

    if ((v10 & 8) != 0)
    {
      *(v5 + 40) = *(a2 + 56);
      *v5 |= 8uLL;
    }
  }

  if ((v10 & 0x20000) != 0 && (v6 & 0x100) != 0)
  {
    *(v5 + 176) = *(a2 + 64);
    *v5 |= 0x20000uLL;
  }

  if ((v10 & 0x80000) != 0 && (v6 & 0x200) != 0)
  {
    *(v5 + 192) = *(a2 + 72);
    *v5 |= 0x80000uLL;
  }

  if ((v10 & 0x2000) != 0 && (v6 & 0x400) != 0)
  {
    *(v5 + 112) = *(a2 + 80);
    *v5 |= 0x2000uLL;
  }

  if ((v10 & 0x4000) != 0 && (*(a2 + 9) & 8) != 0)
  {
    *(v5 + 128) = *(a2 + 96);
    *v5 |= 0x4000uLL;
  }

  if ((v10 & 0x8000) != 0 && (*(a2 + 9) & 0x10) != 0)
  {
    *(v5 + 144) = *(a2 + 112);
    *v5 |= 0x8000uLL;
  }

  if ((v10 & 0x1000) != 0 && (*(a2 + 9) & 0x20) != 0)
  {
    *(v5 + 96) = *(a2 + 128);
    *v5 |= 0x1000uLL;
  }

  if ((v10 & 0x10000) != 0 && (*(a2 + 9) & 0x40) != 0)
  {
    *(v5 + 160) = *(a2 + 144);
    *v5 |= 0x10000uLL;
  }

  if ((v10 & 0x40000000) != 0 && (*(a2 + 9) & 0x80) != 0)
  {
    *(v5 + 296) = *(a2 + 160);
    *v5 |= 0x40000000uLL;
  }

  if ((v10 & 0x20000000000) != 0)
  {
    result = vfs_statfs(mp);
    *(v5 + 392) = *(result + 60);
    v10 = *(v5 + 8);
    *v5 |= 0x20000000000uLL;
    if ((v10 & 0x100000) == 0)
    {
LABEL_69:
      if ((v10 & 0x400000000) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_80;
    }
  }

  else if ((v10 & 0x100000) == 0)
  {
    goto LABEL_69;
  }

  result = vfs_statfs(mp);
  *(v5 + 200) = *(result + 60);
  v10 = *(v5 + 8);
  *v5 |= 0x100000uLL;
  if ((v10 & 0x400000000) == 0)
  {
LABEL_70:
    if ((v10 & 0x400000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_81;
  }

LABEL_80:
  result = vfs_statfs(mp);
  *(v5 + 324) = *(result + 60);
  v10 = *(v5 + 8);
  *v5 |= 0x400000000uLL;
  if ((v10 & 0x400000) == 0)
  {
LABEL_71:
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v5 + 216) = 0;
  *v5 |= 0x400000uLL;
  if ((v10 & 0x200000) == 0)
  {
LABEL_72:
    if ((v10 & 1) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(v5 + 208) = 0;
  *v5 |= 0x200000uLL;
  if ((v10 & 1) == 0)
  {
LABEL_73:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(v5 + 20) = 0;
  *v5 |= 1uLL;
  if ((v10 & 0x40) == 0)
  {
LABEL_74:
    if ((v10 & 0x800000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(v5 + 64) = 0x100000;
  *v5 |= 0x40uLL;
  if ((v10 & 0x800000) == 0)
  {
LABEL_75:
    if ((v10 & 0x20000000) == 0)
    {
      return result;
    }

    goto LABEL_76;
  }

LABEL_85:
  *(v5 + 220) = 126;
  *v5 |= 0x800000uLL;
  if ((v10 & 0x20000000) == 0)
  {
    return result;
  }

LABEL_76:
  *(v5 + 280) = 1;
  *v5 |= 0x20000000uLL;
  return result;
}

uint64_t convert_vnode_attr(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *(a1 + 8) = 0;
  *a2 = 0;
  v3 = *(a2 + 8);
  if ((v3 & 0x200) != 0)
  {
    *(a1 + 28) = *(a2 + 76);
    v2 = 2;
    *(a1 + 8) = 2;
    if ((v3 & 0x80) == 0)
    {
LABEL_3:
      if ((v3 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v3 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(a1 + 36) = *(a2 + 68);
  v2 |= 8uLL;
  *(a1 + 8) = v2;
  if ((v3 & 0x100) == 0)
  {
LABEL_4:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a1 + 40) = *(a2 + 72);
  v2 |= 0x10uLL;
  *(a1 + 8) = v2;
  if ((v3 & 0x400) == 0)
  {
LABEL_5:
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a1 + 44) = *(a2 + 80);
  v2 |= 0x20uLL;
  *(a1 + 8) = v2;
  if ((v3 & 4) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a1 + 48) = *(a2 + 32);
  v2 |= 0x40uLL;
  *(a1 + 8) = v2;
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a1 + 48) = *(a2 + 48);
  v2 |= 0x40uLL;
  *(a1 + 8) = v2;
  if ((v3 & 0x4000) == 0)
  {
LABEL_8:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a1 + 96) = *(a2 + 128);
  v2 |= 0x800uLL;
  *(a1 + 8) = v2;
  if ((v3 & 0x2000) == 0)
  {
LABEL_9:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a1 + 80) = *(a2 + 112);
  v2 |= 0x400uLL;
  *(a1 + 8) = v2;
  if ((v3 & 0x1000) == 0)
  {
LABEL_10:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

LABEL_23:
    *(a1 + 144) = *(a2 + 160);
    v2 |= 0x4000uLL;
    *(a1 + 8) = v2;
    if ((v3 & 0x40000000) == 0)
    {
      return 0;
    }

    goto LABEL_12;
  }

LABEL_22:
  *(a1 + 128) = *(a2 + 96);
  v2 |= 0x2000uLL;
  *(a1 + 8) = v2;
  if ((v3 & 0x10000) != 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  if ((v3 & 0x40000000) != 0)
  {
LABEL_12:
    *(a1 + 160) = *(a2 + 296);
    *(a1 + 8) = v2 | 0x8000;
  }

  return 0;
}

uint64_t get_lifs_mount_from_node(uint64_t a1, void *a2)
{
  if (!a1)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Missing lifs node");
    return 22;
  }

  v2 = *(a1 + 528);
  if (!v2)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Missing lifs mount");
    return 22;
  }

  *a2 = v2;
  v3 = *(v2 + 448);
  v4 = 6;
  if (v3)
  {
    if (vfs_isforce(v3))
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t lifs_set_busy(uint64_t a1)
{
  lck_mtx_lock(a1);
  while (1)
  {
    v2 = *(a1 + 564);
    if ((v2 & 1) == 0)
    {
      break;
    }

    *(a1 + 564) = v2 | 2;
    v3 = msleep(a1, a1, 277, "lifsbusywant", 0);
    if (v3)
    {
      v4 = v3;
      goto LABEL_6;
    }
  }

  v4 = 0;
  *(a1 + 564) = v2 | 1;
LABEL_6:
  lck_mtx_unlock(a1);
  return v4;
}

uint64_t lifs_mirror_mount_domount(int a1, vnode_t vp, uint64_t a3)
{
  v5 = vnode_fsnode(vp);
  v22 = 0;
  len = 1024;
  v6 = kalloc_type_impl();
  v7 = kalloc_data();
  lifs_mount_from_node = get_lifs_mount_from_node(v5, &v22);
  if (!lifs_mount_from_node)
  {
    if (vn_getpath(vp, v7, &len))
    {
      lifs_mount_from_node = 12;
    }

    else
    {
      strlcpy((v6 + 1112), v7, 0x400uLL);
      v9 = *(a3 + 48);
      v10 = strlen("lifs:/");
      strlcpy((v6 + 88), "lifs:/", 0x400uLL);
      v11 = strlen("lifs:/");
      v12 = (v6 + 88 + v11);
      if (v11 != v11)
      {
        v12 = ((v6 + 88 + v11) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
      }

      if (v10 + v9 + 1 <= 0x3FF)
      {
        v13 = v9 + 1;
      }

      else
      {
        v13 = 1024 - v10;
      }

      strlcpy(v12, *(a3 + 40), v13);
      v14 = v22;
      *v6 = *(v22 + 24);
      *(v6 + 4) = 0x10000000100000;
      *(v6 + 20) = 0;
      v15 = *(v14 + 568);
      *(v6 + 12) = 0;
      *(v6 + 16) = v15;
      *(v6 + 2204) = *(v14 + 560);
      v17 = *(v5 + 392);
      v16 = *(v5 + 408);
      v18 = *(v5 + 376);
      *(v6 + 2136) = *(v5 + 360);
      *(v6 + 2152) = v18;
      *(v6 + 2168) = v17;
      *(v6 + 2184) = v16;
      *(v6 + 2200) = 64;
      vfs_flags(*(v14 + 448));
      v19 = vfs_mount_at_path();
      lifs_mount_from_node = v19;
      if (v19)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to mirror mount - error %d", v19);
      }
    }
  }

  if (v7)
  {
    kfree_data();
  }

  if (v6)
  {
    kfree_type_impl();
  }

  return lifs_mount_from_node;
}

void lifs_clear_busy(uint64_t a1)
{
  lck_mtx_lock(a1);
  v2 = *(a1 + 564);
  *(a1 + 564) = v2 & 0xFFFFFFFC;
  lck_mtx_unlock(a1);
  if ((v2 & 2) != 0)
  {

    wakeup(a1);
  }
}

uint64_t lifs_getfsattr_call(uint64_t a1, _BYTE *a2, void *a3, int a4)
{
  v13 = 0;
  v10 = 0;
  v11 = 0;
  result = get_lifs_mount_from_node(a1, &v13);
  if (!result)
  {
    LODWORD(v11) = a4;
    v12 = a3;
    if (*a2 != 95)
    {
      goto LABEL_9;
    }

    v9 = a2[1];
    if (v9 == 66)
    {
      if (a4 == 4)
      {
        goto LABEL_9;
      }
    }

    else if (a4 == 8 || v9 != 78)
    {
LABEL_9:
      result = lifs_getfsattr_request(v13, (a1 + 360), a2, &v10);
      if (result)
      {
        return result;
      }

      result = 45;
      if (v10 <= 1)
      {
        if (v10)
        {
          if (v10 != 1)
          {
            return result;
          }

          if (*a2 == 95 && a2[1] == 78)
          {
            result = 0;
            *a3 = v11;
            return result;
          }
        }

        else if (*a2 == 95 && a2[1] == 66)
        {
          result = 0;
          *a3 = v11;
          return result;
        }

        return 5;
      }

      if (v10 == 2)
      {
        if (*a2 != 95 || a2[1] != 79)
        {
          return 5;
        }
      }

      else
      {
        if (v10 != 3)
        {
          return result;
        }

        if (*a2 != 95 || a2[1] != 83)
        {
          return 5;
        }
      }

      return 0;
    }

    return 22;
  }

  return result;
}

size_t lifs_mntfromname(uint64_t a1, uint64_t a2)
{
  v4 = vfs_statfs(*(a1 + 448));
  f_mntfromname = v4->f_mntfromname;
  if (!a2)
  {
    v11 = "Dead volume";
    v12 = v4->f_mntfromname;
    v13 = 1024;
LABEL_17:

    return strlcpy(v12, v11, v13);
  }

  bzero(v4->f_mntfromname, 0x400uLL);
  if (lifs_getfsattr_call(a2, "_S_f_type", f_mntfromname, 1024))
  {
    strlcpy(f_mntfromname, "unknown", 0x400uLL);
  }

  result = strlen(f_mntfromname);
  if (1024 - result >= 4)
  {
    v7 = result;
    v8 = &f_mntfromname[result];
    if (result != result)
    {
      v8 = (&f_mntfromname[result] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    strlcpy(v8, "://", 1024 - result);
    v9 = v8 + 3;
    v10 = 1021 - v7;
    if (lifs_getfsattr_call(a2, "_S_f_location", v8 + 3, v10))
    {
      strlcpy(v8 + 3, "unknown", v10);
    }

    else if (!strncmp(v8 + 3, "/dev/", 5uLL))
    {
      strlcpy((a1 + 749), v8 + 3, 0x26uLL);
      v14 = strlen(v8 + 3);
      memmove(v8 + 3, v8 + 8, v14 - 4);
    }

    result = strlen(v8 + 3);
    v15 = v10 - result;
    if (v10 - result >= 2)
    {
      v16 = &v9[result];
      if (result != result)
      {
        v16 = &v9[result] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
      }

      strlcpy(v16, "/", v15);
      v17 = v15 - 1;
      result = lifs_getfsattr_call(a2, "_S_f_vol_name", (v16 + 1), v17);
      if (result)
      {
        v11 = "Untitled";
        v12 = (v16 + 1);
        v13 = v17;
        goto LABEL_17;
      }
    }
  }

  return result;
}

uint64_t lifs_free_supported_xattrs(uint64_t a1)
{
  result = *(a1 + 920);
  if (result)
  {
    v3 = *(a1 + 928);
    *(a1 + 920) = 0;
    result = kfree_data();
  }

  *(a1 + 920) = 0;
  *(a1 + 928) = 0;
  return result;
}

uint64_t lifs_cache_dirattr(uint64_t a1, uintptr_t a2, unint64_t a3, uint64_t a4)
{
  *arg3 = 0u;
  *arg4 = 0u;
  lck_mtx_lock(a1);
  if ((*(a1 + 352) & 0x80) == 0)
  {
    goto LABEL_2;
  }

  lck_rw_lock_shared((a1 + 696));
  v12 = *(a1 + 680);
  v13 = *(a1 + 688);
  v14 = *(a1 + 664);
  v15 = *(a1 + 672);
  lck_rw_unlock_shared((a1 + 696));
  if (v12 <= a3 && v13 > a3)
  {
    goto LABEL_32;
  }

  if (v13 == a3)
  {
    arg3[0] = v15;
    arg3[1] = v14;
    v8 = v15 == 0;
  }

  else
  {
LABEL_2:
    v8 = 1;
  }

  lck_mtx_unlock(a1);
  if (a3 && v8)
  {
    lck_rw_lock_shared((a1 + 696));
    v9 = (a1 + 720);
    v10 = -1;
    while (*(v9 - 1) != a3)
    {
      ++v10;
      v9 = (v9 + 24);
      if (v10 >= 7)
      {
        lck_rw_unlock_shared((a1 + 696));
        return 16;
      }
    }

    *arg3 = *v9;
    lck_rw_unlock_shared((a1 + 696));
  }

  v17 = (a2 + 744);
  if (atomic_fetch_or((a2 + 744), 0) <= 0xFF)
  {
    v18 = kalloc_data();
    v19 = arg3[0];
    v20 = convert_va_active_to_requested_attributes(a4);
    v11 = lifs_getattrlistbulk_request(a2, arg3[0], (a1 + 360), 0x10000, arg3[1], v20, v18, 0x10000, arg3);
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug_filtered(0x3140080u, a2, *(a1 + 552), arg3[1], SLODWORD(arg4[0]));
    }

    if (v11)
    {
      if (v11 == -1000)
      {
        lifs_invalidate_dirattrcache_ext(a1, 1);
      }

      else if (v11 == -1002)
      {
        LODWORD(arg4[0]) = 0;
        v21 = a3;
LABEL_24:
        lck_mtx_lock(a1);
        if ((*(a1 + 352) & 0x80) == 0)
        {
          v22 = 0;
          goto LABEL_44;
        }

        lck_rw_lock_shared((a1 + 696));
        v24 = *(a1 + 680);
        v25 = *(a1 + 688);
        lck_rw_unlock_shared((a1 + 696));
        if (v24 > a3 || v25 <= a3)
        {
          v22 = lifs_invalidate_dirattrcache_locked(a1, 1);
LABEL_44:
          atomic_fetch_add(v17, 1u);
          lck_rw_lock_exclusive((a1 + 696));
          *(a1 + 648) = v18;
          *(a1 + 656) = 0x10000;
          *(a1 + 664) = arg3[1];
          *(a1 + 672) = v19;
          *(a1 + 660) = arg4[0];
          *(a1 + 680) = a3;
          *(a1 + 688) = v21;
          lck_rw_unlock_exclusive((a1 + 696));
          *(a1 + 352) |= 0x80u;
          lck_mtx_unlock(a1);
          if (v22)
          {
            kfree_data();
          }

          return 0;
        }

LABEL_32:
        lck_mtx_unlock(a1);
        return 0;
      }
    }

    else
    {
      v23 = LODWORD(arg4[0]);
      if (LODWORD(arg4[0]) <= 0x10000)
      {
        v21 = a3;
        if (LODWORD(arg4[0]) >= 0xD0)
        {
          v27 = a3 + 1;
          v28 = v18;
          do
          {
            v21 = v27;
            v29 = *(v28 + 8);
            v19 = *v28;
            if (!*(v28 + 8) || v19 == -1)
            {
              break;
            }

            v28 += v29;
            v30 = v23 >= v29;
            v23 -= v29;
            if (!v30)
            {
              v23 = 0;
            }

            v27 = v21 + 1;
          }

          while (v23 > 0xCF);
        }

        goto LABEL_24;
      }

      v11 = 22;
    }

    kfree_data();
    return v11;
  }

  return 12;
}

void lifs_invalidate_dirattrcache_ext(lck_mtx_t *a1, int a2)
{
  lck_mtx_lock(a1);
  v4 = lifs_invalidate_dirattrcache_locked(a1, a2);
  lck_mtx_unlock(a1);
  if (v4)
  {

    kfree_data();
  }
}

uint64_t lifs_invalidate_dirattrcache_locked(uint64_t a1, int a2)
{
  v4 = *(a1 + 352);
  if ((v4 & 0x80) == 0)
  {
    v5 = 0;
    if (!a2)
    {
      return v5;
    }

    goto LABEL_5;
  }

  v6 = *(a1 + 528);
  *(a1 + 352) = v4 & 0xFFFFFF7F;
  lck_rw_lock_exclusive((a1 + 696));
  v5 = *(a1 + 648);
  *(a1 + 648) = 0;
  *(a1 + 660) = 0;
  *(a1 + 656) = 0;
  *(a1 + 688) = 0;
  *(a1 + 680) = 0;
  *(a1 + 672) = 0;
  *(a1 + 664) = 0;
  lck_rw_unlock_exclusive((a1 + 696));
  atomic_fetch_add((v6 + 744), 0xFFFFFFFF);
  if (a2)
  {
LABEL_5:
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
  }

  return v5;
}

uint64_t lifs_readdir_cached(uint64_t a1, uintptr_t a2, unint64_t a3, unint64_t *a4, void *a5, uint64_t a6, vnode_attr *a7)
{
  v14 = uio_offset(*(a6 + 32));
  v15 = lifs_cache_dirattr(a1, a2, v14, a7);
  if (v15)
  {
    return v15;
  }

  v34 = a4;
  v35 = a5;
  lck_rw_lock_shared((a1 + 696));
  v16 = *(a1 + 648);
  v17 = *(a1 + 660);
  v18 = *(a1 + 680);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140080u, *(a1 + 648), *(a1 + 660), *(a1 + 664), 0);
  }

  if (!v16)
  {
    lck_rw_unlock_shared((a1 + 696));
    return 0xFFFFFFFFLL;
  }

  if (v17)
  {
    if (*(a1 + 680) <= a3 && *(a1 + 688) > a3)
    {
      lck = (a1 + 696);
      v33 = 0;
      v19 = 0;
      while (1)
      {
        v20 = lifs_pack_attrlist_entry(a7, v16, v17, a6, a2, v14, v18);
        if (v20)
        {
          if (v20 != -2)
          {
            if (v20 == -1)
            {
              v15 = 0;
            }

            else
            {
              v15 = v20;
            }

LABEL_37:
            *v35 = *(a1 + 664);
            lck_rw_unlock_shared(lck);
            *v34 = v19;
            uio_setoffset(*(a6 + 32), v18);
            lck_rw_lock_exclusive(lck);
            v28 = (a1 + 712);
            v29 = 8;
            while (*v28 != a3)
            {
              v28 += 3;
              if (!--v29)
              {
                goto LABEL_44;
              }
            }

            if (v19 == -1)
            {
              *v28 = 0;
              v28[1] = 0;
              v28[2] = 0;
            }

            else
            {
              *v28 = v18;
              v28[1] = v19;
              v28[2] = *(a1 + 664);
            }

LABEL_44:
            lck_rw_unlock_exclusive(lck);
            v30 = *(a6 + 64);
            if (v30)
            {
              *v30 = v33;
            }

            v26 = *(a6 + 56);
            if (v26)
            {
              v27 = v19 == -1;
LABEL_48:
              *v26 = v27;
            }

            return v15;
          }

          v19 = *v16;
          v21 = *(v16 + 8);
          if (!*(v16 + 8) || v19 == -1)
          {
LABEL_19:
            v15 = 0;
            goto LABEL_37;
          }
        }

        else
        {
          v19 = *v16;
          v21 = *(v16 + 8);
          ++v33;
          if (*(v16 + 8))
          {
            v22 = v19 == -1;
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            v15 = 0;
            ++v18;
            goto LABEL_37;
          }
        }

        v16 += v21;
        ++v18;
        v17 -= v21;
        if (!v17)
        {
          goto LABEL_19;
        }
      }
    }

    lck_rw_unlock_shared((a1 + 696));
    lck_rw_lock_exclusive((a1 + 696));
    v23 = (a1 + 728);
    v24 = 8;
    while (*(v23 - 2) != a3)
    {
      v23 += 3;
      if (!--v24)
      {
        goto LABEL_30;
      }
    }

    *a4 = *(v23 - 1);
    *v35 = *v23;
LABEL_30:
    lck_rw_unlock_exclusive((a1 + 696));
    return 0xFFFFFFFFLL;
  }

  lck_rw_unlock_shared((a1 + 696));
  v25 = *(a6 + 64);
  if (v25)
  {
    *v25 = 0;
  }

  v26 = *(a6 + 56);
  if (v26)
  {
    v15 = 0;
    v27 = 1;
    goto LABEL_48;
  }

  return 0;
}

uint64_t lifs_pack_attrlist_entry(vnode_attr *vap, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  if (a3 < 8)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a2 + 10);
  if (((v8 + 9) & 0x1FFF8u) > a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (a7 < a6 || !*(a2 + 80) || !*(a2 + 12))
  {
    return 4294967294;
  }

  v11 = *(a2 + 12) + v8;
  if (v11 >= a3 || (v15 = *(a4 + 32), v16 = *(a4 + 8), *(a2 + 8)) && v11 >= *(a2 + 8))
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "Directory Entry name not within entry bounds");
    return 14;
  }

  va_name = vap->va_name;
  *&vap->va_supported = 0u;
  *&vap->va_vaflags = 0u;
  *&vap->va_total_size = 0u;
  *&vap->va_data_size = 0u;
  *&vap->va_iosize = 0u;
  *&vap->va_flags = 0u;
  vap->va_create_time = 0u;
  vap->va_access_time = 0u;
  vap->va_modify_time = 0u;
  vap->va_change_time = 0u;
  vap->va_backup_time = 0u;
  *&vap->va_fileid = 0u;
  *&vap->va_parentid = 0u;
  *&vap->va_filerev = 0u;
  vap[1].va_active = 0;
  *&vap->va_clone_id = 0u;
  *&vap->va_recursive_gencount = 0u;
  *&vap->va_rsrc_alloc = 0u;
  *&vap->va_write_gencount = 0u;
  *&vap->va_finderinfo[12] = 0u;
  *&vap->va_finderinfo[28] = 0u;
  *&vap->va_document_id = 0u;
  *&vap->va_user_access = 0u;
  *&vap->va_reserved1 = 0u;
  *&vap->va_addedtime.tv_nsec = 0u;
  vap->va_guuid = 0u;
  *&vap->va_nchildren = 0u;
  *&vap->va_type = 0u;
  vap->va_uuuid = 0u;
  vap->va_name = va_name;
  if (*(a2 + 40) == 2)
  {
    v18 = VDIR;
  }

  else
  {
    v18 = VREG;
  }

  v19 = vfs_setup_vattr_from_attrlist(*(a4 + 16), vap, v18, 0, *(a4 + 72));
  if (v19)
  {
    v9 = v19;
LABEL_25:
    uio_setoffset(v15, a6);
    return v9;
  }

  lifs_pack_vap(vap, a2 + 16, *(a5 + 448));
  if ((vap->va_active & 0x2000000) != 0)
  {
    if (memchr((a2 + *(a2 + 10)), 47, *(a2 + 12)))
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Skipping directory entry contains '/': %.*s", *(a2 + 12), (a2 + *(a2 + 10)));
      return 4294967294;
    }

    v21 = vap->va_name;
    v22 = *(a2 + 10);
    *(a2 + 12);
    __strncpy_chk();
    v23 = *(a2 + 12);
    if (v23 >= 0x3FF)
    {
      v23 = 1023;
    }

    vap->va_name[v23] = 0;
    vap->va_supported |= 0x2000000uLL;
  }

  v24 = uio_resid(v15);
  v25 = vnode_mount(v16);
  v9 = vfs_attr_pack_ext(v25, 0, v15, *(a4 + 16), *(a4 + 48), vap, 0, *(a4 + 72));
  v26 = uio_resid(v15);
  if (v9)
  {
    goto LABEL_25;
  }

  if (v24 == v26)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void add_sillyrename_entry(uint64_t a1, _OWORD *a2, const char *a3)
{
  v6 = kalloc_type_impl();
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[1];
  *(v6 + 1040) = *a2;
  *(v6 + 1072) = v7;
  *(v6 + 1088) = v8;
  *(v6 + 1056) = v9;
  strlcpy((v6 + 16), a3, 0x400uLL);
  lck_mtx_lock(a1);
  v10 = (a1 + 592);
  while (1)
  {
    v10 = *v10;
    if (!v10)
    {
      break;
    }

    if (!memcmp((a1 + 360), a2, 0x40uLL))
    {
      strlcpy(v10 + 16, a3, 0x400uLL);
      *(a1 + 352) |= 0x200u;
      lck_mtx_unlock(a1);

      kfree_type_impl();
      return;
    }
  }

  v11 = *(a1 + 600);
  *v6 = 0;
  *(v6 + 8) = v11;
  *v11 = v6;
  *(a1 + 600) = v6;
  *(a1 + 352) |= 0x200u;

  lck_mtx_unlock(a1);
}

void move_sillyrename_entries(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 528);
  bzero(v22, 0x2F0uLL);
  *&v20 = 0;
  *(&v20 + 1) = &v20;
  lck_mtx_lock(a1);
  v5 = *(a1 + 352);
  if ((v5 & 0x200) != 0)
  {
    v6 = (a1 + 600);
    v8 = v20;
    v20 = *(a1 + 592);
    v7 = v20;
    *(a1 + 592) = v8;
    v9 = v7;
    if (!v7)
    {
      v9 = &v20;
    }

    *(v9 + 1) = &v20;
    if (v8)
    {
      v6 = (v8 + 8);
    }

    *v6 = a1 + 592;
  }

  *(a1 + 352) = v5 & 0xFFFFFDFF;
  lck_mtx_unlock(a1);
  for (i = v20; v20; i = v20)
  {
    v11 = *i;
    if (*i)
    {
      if (*(v11 + 8) != i)
      {
        goto LABEL_20;
      }

      v12 = i[1];
      if (*v12 != i)
      {
LABEL_19:
        __break(0xBFFDu);
LABEL_20:
        __break(0xBFFDu);
      }

      *(v11 + 8) = v12;
      v13 = i[1];
    }

    else
    {
      v13 = i[1];
      if (*v13 != i)
      {
        goto LABEL_19;
      }

      *(&v20 + 1) = i[1];
    }

    *v13 = v11;
    v14 = lifs_lookup_node(v4, i + 130);
    if (v14)
    {
      v15 = v14;
      memset(v21, 0, sizeof(v21));
      if (!lifs_rename_request(v4, i + 16, i + 65, (a1 + 360), i + 16, v21, (a2 + 360), 0, v22))
      {
        lck_mtx_lock(a2);
        update_lnode_attr_locked(a2, &v23);
        lck_mtx_unlock(a2);
        lck_mtx_lock(a1);
        update_lnode_attr_locked(a1, v22);
        lck_mtx_unlock(a1);
        add_sillyrename_entry(a2, i + 65, i + 16);
        lck_mtx_lock(a2);
        v16 = *(a2 + 576);
        lck_mtx_unlock(a2);
        lck_mtx_lock(v15);
        *(v15 + 580) = v16;
        lck_mtx_unlock(v15);
        v17 = *(v15 + 552);
        v18 = *(a2 + 552);
        v19 = strnlen(i + 16, 0x400uLL);
        vnode_update_identity(v17, v18, i + 16, v19, 0, 1);
      }
    }

    kfree_type_impl();
  }
}

void cleanup_sillyrename_entries(uint64_t a1)
{
  *&v11 = 0;
  *(&v11 + 1) = &v11;
  lck_mtx_lock(a1);
  v2 = *(a1 + 352);
  if ((v2 & 0x200) != 0)
  {
    v3 = (a1 + 600);
    v5 = v11;
    v11 = *(a1 + 592);
    v4 = v11;
    *(a1 + 592) = v5;
    v6 = v4;
    if (!v4)
    {
      v6 = &v11;
    }

    *(v6 + 1) = &v11;
    if (v5)
    {
      v3 = (v5 + 8);
    }

    *v3 = a1 + 592;
  }

  *(a1 + 352) = v2 & 0xFFFFFDFF;
  lck_mtx_unlock(a1);
  v7 = v11;
  if (!v11)
  {
    return;
  }

  while (1)
  {
    v8 = *v7;
    if (*v7)
    {
      break;
    }

    v10 = v7[1];
    if (*v10 != v7)
    {
      goto LABEL_16;
    }

    *(&v11 + 1) = v7[1];
LABEL_14:
    *v10 = v8;
    kfree_type_impl();
    v7 = v11;
    if (!v11)
    {
      return;
    }
  }

  if (*(v8 + 8) != v7)
  {
    goto LABEL_17;
  }

  v9 = v7[1];
  if (*v9 == v7)
  {
    *(v8 + 8) = v9;
    v10 = v7[1];
    goto LABEL_14;
  }

LABEL_16:
  __break(0xBFFDu);
LABEL_17:
  __break(0xBFFDu);
}

double lifs_pathconf(uint64_t a1, uint64_t a2)
{
  memset(v4, 0, 28);
  if (!lifs_pathconf_request(a1, (a2 + 360), v4))
  {
    *(a1 + 456) = v4[0];
    result = *(v4 + 12);
    *(a1 + 468) = *(v4 + 12);
    *(a1 + 32) |= 1uLL;
  }

  return result;
}

uint64_t lifs_write_meta(vnode *a1, unsigned int a2, user_addr_t a3, int64_t arg2, uintptr_t size)
{
  v9 = arg2 / a2;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400F1u, a1, arg2, size, 0);
  }

  v10 = 0;
  v11 = 22;
  if (a3 && (arg2 & 0x8000000000000000) == 0 && !((size - 1) >> 20))
  {
    bp = 0;
    v12 = lifs_setup_buf_for_write(a1, v9, a3, size, &bp);
    if (v12)
    {
      v11 = v12;
      v10 = 0;
    }

    else
    {
      v13 = bp;
      v10 = buf_fromcache(bp) != 0;
      buf_setflags(v13, 2048);
      v11 = buf_bwrite(v13);
    }
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400F2u, a1, v9, v10, v11);
  }

  return v11;
}

uint64_t lifs_setup_buf_for_write(vnode *a1, daddr64_t a2, user_addr_t a3, size_t size, buf **a5)
{
  *a5 = 0;
  v8 = buf_getblk(a1, a2, size, 0, 0, 16);
  if (!v8)
  {
    return 12;
  }

  v9 = v8;
  v10 = buf_dataptr(v8);
  v11 = copyin(a3, v10, size);
  if (v11)
  {
    buf_markinvalid(v9);
    buf_brelse(v9);
  }

  else
  {
    *a5 = v9;
  }

  return v11;
}

uint64_t lifs_write_meta_async(vnode *a1, unsigned int a2, user_addr_t a3, int64_t arg2, uintptr_t size)
{
  v9 = arg2 / a2;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400F5u, a1, arg2, size, 0);
  }

  v10 = 0;
  v11 = 22;
  if (a3 && (arg2 & 0x8000000000000000) == 0 && !((size - 1) >> 20))
  {
    bp = 0;
    v12 = lifs_setup_buf_for_write(a1, v9, a3, size, &bp);
    if (v12)
    {
      v11 = v12;
      v10 = 0;
    }

    else
    {
      v13 = bp;
      v10 = buf_fromcache(bp) != 0;
      v11 = buf_bawrite(v13);
    }
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400F6u, a1, v9, v10, v11);
  }

  return v11;
}

uint64_t lifs_write_meta_delayed(vnode *a1, unsigned int a2, user_addr_t a3, int64_t arg2, uintptr_t size)
{
  v9 = arg2 / a2;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400F9u, a1, arg2, size, 0);
  }

  v10 = 0;
  v11 = 22;
  if (a3 && (arg2 & 0x8000000000000000) == 0 && !((size - 1) >> 20))
  {
    bp = 0;
    v12 = lifs_setup_buf_for_write(a1, v9, a3, size, &bp);
    if (v12)
    {
      v11 = v12;
      v10 = 0;
    }

    else
    {
      v13 = bp;
      v14 = buf_fromcache(bp);
      v10 = v14 != 0;
      if (v14)
      {
        atomic_fetch_add(&lifs_write_meta_cache_hit, 1uLL);
        v13 = bp;
      }

      v11 = buf_bdwrite(v13);
      if (!v11)
      {
        lifs_schedule_meta_flush(a1);
      }
    }
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400FAu, a1, v9, v10, v11);
  }

  return v11;
}

uint64_t lifs_read_meta(vnode *arg1, unsigned int a2, user_addr_t a3, int64_t arg2, uintptr_t arg3)
{
  v9 = arg2 / a2;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140101u, arg1, arg2, arg3, 0);
  }

  v10 = 0;
  bpp = 0;
  v11 = 22;
  if (a3 && (arg2 & 0x8000000000000000) == 0 && !((arg3 - 1) >> 20))
  {
    v11 = buf_meta_bread(arg1, v9, arg3, 0, &bpp);
    if (v11)
    {
      buf_brelse(bpp);
      v10 = 0;
    }

    else
    {
      v12 = buf_dataptr(bpp);
      v11 = copyout(v12, a3, arg3);
      v13 = buf_fromcache(bpp);
      if (v13)
      {
        atomic_fetch_add(&lifs_read_meta_cache_hit, 1uLL);
      }

      v10 = v13 != 0;
      buf_brelse(bpp);
    }
  }

  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140102u, arg1, v9, v10, v11);
  }

  return v11;
}

uint64_t lifs_read_meta_with_ra(vnode *arg1, unsigned int a2, user_addr_t a3, int64_t arg2, uintptr_t arg3, uint64_t a6, int nrablks)
{
  v9 = arg3;
  v12 = a2;
  v13 = arg2 / a2;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    v14 = a3;
    kernel_debug_filtered(0x3140105u, arg1, arg2, arg3, nrablks);
    a3 = v14;
    v9 = arg3;
  }

  v16 = 0;
  bpp = 0;
  *rablks = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = 22;
  *rasizes = 0u;
  v31 = 0u;
  if (a3)
  {
    if ((arg2 & 0x8000000000000000) == 0 && !((v9 - 1) >> 20))
    {
      v16 = 0;
      v17 = 22;
      if (a6)
      {
        if ((nrablks - 9) >= 0xFFFFFFF8)
        {
          udaddr = a3;
          v28 = v9;
          v18 = 0;
          v19 = (a6 + 8);
          v20 = (a6 + 8);
          do
          {
            v22 = *v20;
            v20 += 2;
            v21 = v22;
            if (v22 - 1048577 < 0xFFFFFFFFFFF00000)
            {
              v16 = 0;
              v17 = 22;
              goto LABEL_19;
            }

            rasizes[v18] = v21;
            v23 = *(v19 - 1);
            rablks[v18] = v23 / v12;
            if ((kdebug_enable & 0xFFFFFFF7) != 0)
            {
              kernel_debug_filtered(0x3140104u, arg1, v18, v23, v21);
            }

            ++v18;
            v19 = v20;
          }

          while (nrablks != v18);
          v17 = buf_meta_breadn(arg1, v13, v28, rablks, rasizes, nrablks, 0, &bpp);
          if (v17)
          {
            buf_brelse(bpp);
            v16 = 0;
          }

          else
          {
            v24 = buf_dataptr(bpp);
            v17 = copyout(v24, udaddr, v28);
            v25 = buf_fromcache(bpp);
            if (v25)
            {
              atomic_fetch_add(&lifs_read_meta_cache_hit, 1uLL);
            }

            v16 = v25 != 0;
            buf_brelse(bpp);
          }
        }
      }
    }
  }

LABEL_19:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140106u, arg1, v13, v16, v17);
  }

  return v17;
}

uint64_t lifs_flush_meta_blocks(vnode *arg1, unsigned int a2, uintptr_t arg2, unsigned int a4, int a5)
{
  v7 = arg2;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140109u, arg1, arg2, a4, a5);
  }

  v10 = 0;
  v11 = 22;
  if (v7 && a4 - 9 >= 0xFFFFFFF8)
  {
    v12 = 0;
    v13 = 0;
    v14 = a2;
    v24 = a4;
    v25 = v7;
    while (1)
    {
      v15 = v7 + 16 * v12;
      v16 = *(v15 + 8);
      if ((v16 - 1048577) < 0xFFF00000)
      {
        break;
      }

      if ((kdebug_enable & 0xFFFFFFF7) != 0)
      {
        kernel_debug_filtered(0x3140108u, arg1, *v15, v16, *(v15 + 12));
      }

      if (*(v15 + 12))
      {
        v17 = 0;
        do
        {
          v18 = *(v15 + 8);
          v19 = (*v15 + (v18 * v17)) / v14;
          v20 = buf_getblk(arg1, v19, v18, 0, 0, -2147483632);
          if (v20)
          {
            v21 = v20;
            if ((kdebug_enable & 0xFFFFFFF7) != 0)
            {
              kernel_debug_filtered(0x3140108u, arg1, v17, v19, v20);
            }

            if ((buf_flags(v21) & 8) != 0)
            {
              if (a5)
              {
                buf_bwrite(v21);
              }

              else
              {
                buf_bawrite(v21);
              }

              if (__OFADD__(v13++, 1))
              {
                lifs_flush_meta_blocks_cold_1();
              }
            }

            else
            {
              buf_brelse(v21);
            }
          }

          ++v17;
        }

        while (v17 < *(v15 + 12));
      }

      ++v12;
      v7 = v25;
      if (v12 == v24)
      {
        v11 = 0;
        goto LABEL_23;
      }
    }

    v11 = 22;
LABEL_23:
    v10 = v13;
  }

  lifs_flush_meta_blocks_cold_2(arg1, v11, v10);
  return v11;
}

uint64_t lifs_clear_meta_blocks(vnode *arg1, unsigned int a2, uintptr_t arg2, unsigned int a4, int a5)
{
  v7 = arg2;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x314010Du, arg1, arg2, a4, a5);
  }

  v10 = 0;
  v11 = 22;
  if (v7 && a4 - 9 >= 0xFFFFFFF8)
  {
    v12 = 0;
    v13 = a2;
    v22 = a4;
    v23 = 0;
    v21 = v7;
    while (1)
    {
      v14 = v7 + 16 * v12;
      v15 = *(v14 + 8);
      if ((v15 - 1048577) < 0xFFF00000)
      {
        break;
      }

      if ((kdebug_enable & 0xFFFFFFF7) != 0)
      {
        kernel_debug_filtered(0x314010Cu, arg1, *v14, v15, *(v14 + 12));
      }

      if (*(v14 + 12))
      {
        v16 = 0;
        do
        {
          v17 = *(v14 + 8);
          v18 = (*v14 + (v17 * v16)) / v13;
          v19 = buf_getblk(arg1, v18, v17, 0, 0, 16);
          if ((kdebug_enable & 0xFFFFFFF7) != 0)
          {
            kernel_debug_filtered(0x314010Cu, arg1, v16, v18, v19);
          }

          buf_clear(v19);
          if (a5)
          {
            buf_bwrite(v19);
          }

          else
          {
            buf_bawrite(v19);
          }

          if ((v23 ^ 0x7FFFFFFF) == v16)
          {
            lifs_clear_meta_blocks_cold_1();
          }

          ++v16;
        }

        while (v16 < *(v14 + 12));
        v23 += v16;
        v7 = v21;
      }

      if (++v12 == v22)
      {
        v11 = 0;
        goto LABEL_21;
      }
    }

    v11 = 22;
LABEL_21:
    v10 = v23;
  }

  lifs_clear_meta_blocks_cold_2(arg1, v11, v10);
  return v11;
}

uint64_t lifs_purge_meta_blocks(vnode *arg1, unsigned int a2, uintptr_t arg2, unsigned int a4)
{
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x3140111u, arg1, arg2, a4, 0);
  }

  v8 = 0;
  v9 = 22;
  if (arg2 && a4 - 9 >= 0xFFFFFFF8)
  {
    v10 = 0;
    v11 = 0;
    v12 = a2;
    v19 = a4;
    while (1)
    {
      v13 = arg2 + 16 * v10;
      v14 = *(v13 + 8);
      if ((v14 - 1048577) < 0xFFF00000)
      {
        break;
      }

      if ((kdebug_enable & 0xFFFFFFF7) != 0)
      {
        kernel_debug_filtered(0x3140110u, arg1, *v13, v14, *(v13 + 12));
      }

      if (*(v13 + 12))
      {
        v15 = 0;
        do
        {
          v16 = *v13 + (*(v13 + 8) * v15);
          v17 = v16 / v12;
          if ((kdebug_enable & 0xFFFFFFF7) != 0)
          {
            kernel_debug_filtered(0x3140110u, arg1, v15, v16 / v12, 0);
          }

          buf_invalblkno(arg1, v17, 1);
          if ((v11 ^ 0x7FFFFFFF) == v15)
          {
            lifs_purge_meta_blocks_cold_1();
          }

          ++v15;
        }

        while (v15 < *(v13 + 12));
        v11 += v15;
      }

      if (++v10 == v19)
      {
        v9 = 0;
        goto LABEL_18;
      }
    }

    v9 = 22;
LABEL_18:
    v8 = v11;
  }

  lifs_purge_meta_blocks_cold_2(arg1, v9, v8);
  return v9;
}

void lifs_update_freespace(uint64_t a1, unint64_t *a2)
{
  v4 = (a1 + 96);
  lck_mtx_lock((a1 + 96));
  v5 = a2[1];
  if (v5 > *(a1 + 880))
  {
    *(a1 + 880) = v5;
    v6 = *a2;
    *(a1 + 872) = *a2;
    v7 = *(a1 + 32);
    if ((v7 & 0x400) != 0 && v6 >= 0x46666667)
    {
      *(a1 + 32) = v7 & 0xFFFFFFFFFFFFFBFFLL;
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: lmp %p freespace 0x%llx sync write disabled", "lifs_update_freespace", a1, v6);
    }
  }

  lck_mtx_unlock(v4);
}

void lifs_dev_rele(uint64_t a1)
{
  v2 = (a1 + 848);
  if (os_ref_release_barrier_external((a1 + 848), 0) == 1)
  {
    lck_mtx_lock((a1 + 96));
    v3 = *(a1 + 32);
    if ((v3 & 0x80) != 0)
    {
      *(a1 + 32) = v3 & 0xFFFFFFFFFFFFFF7FLL;
      lck_mtx_unlock((a1 + 96));

      wakeup(v2);
    }

    else
    {

      lck_mtx_unlock((a1 + 96));
    }
  }
}

void IOCancelationWrapper::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void IOCancelationWrapper::~IOCancelationWrapper(OSObject *this)
{
  OSObject::~OSObject(this);
}

{
  OSObject::~OSObject(this);
}

{
  OSObject::~OSObject(this);

  _OSObject_typed_operator_delete(&IOCancelationWrapper_ktv, this, 40);
}

uint64_t IOCancelationWrapper::init(IOCancelationWrapper *this, OSObject *a2)
{
  if (result)
  {
    v5 = IOLockAlloc();
    *(this + 4) = v5;
    *(this + 2) = a2;
    *(this + 6) = 0;
    *(this + 28) = 0;
    if (a2)
    {
      (a2->retain)(a2);
      v5 = *(this + 4);
    }

    return v5 != 0;
  }

  return result;
}

uint64_t IOCancelationWrapper::free(IOCancelationWrapper *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    IOLockFree(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return (free)(this);
}

uint64_t IOCancelationWrapper::startUsingObjectAndGetReference(IOCancelationWrapper *this, OSObject **a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(this + 28))
  {
LABEL_5:
    result = 0;
    *a2 = 0;
    return result;
  }

  IOLockLock(*(this + 4));
  if (*(this + 28))
  {
    IOLockUnlock(*(this + 4));
    goto LABEL_5;
  }

  v5 = *(this + 2);
  if (v5)
  {
    (*(*v5 + 32))(v5);
    v6 = *(this + 2);
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  ++*(this + 6);
  IOLockUnlock(*(this + 4));
  return 1;
}

void IOCancelationWrapper::stopUsingObjectAndRelease(IOCancelationWrapper *this, OSObject *a2)
{
  if (*(this + 2) == a2)
  {
    if (a2)
    {
      (a2->release_0)(a2);
    }
  }

  else
  {
    IOLog("%s passed object other than object shared", "void IOCancelationWrapper::stopUsingObjectAndRelease(OSObject *)");
  }

  IOLockLock(*(this + 4));
  v3 = *(this + 6);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v5 < 0 != v4)
  {
    IOLog("%s called when use count was zero", "void IOCancelationWrapper::stopUsingObjectAndRelease(OSObject *)");
    if (*(this + 6))
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(this + 6) = v5;
    if (v5)
    {
LABEL_7:
      v6 = *(this + 4);

      IOLockUnlock(v6);
      return;
    }
  }

  v7 = *(this + 29);
  *(this + 29) = 0;
  IOLockUnlock(*(this + 4));
  if (v7)
  {
    v8 = *(this + 4);

    IOLockWakeup(v8, this, 0);
  }
}

OSMetaClass *_GLOBAL__sub_I_IOCancelationWrapper_cpp()
{
  result = OSMetaClass::OSMetaClass(&IOCancelationWrapper::gMetaClass, "IOCancelationWrapper", &OSObject::gMetaClass, 0x28u);
  result->__vftable = off_2DDC0;
  return result;
}

void IOWrappedMemoryDescriptor::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void IOWrappedMemoryDescriptor::~IOWrappedMemoryDescriptor(OSObject *this)
{
  IOCancelationWrapper::~IOCancelationWrapper(this);
}

{
  IOCancelationWrapper::~IOCancelationWrapper(this);

  _OSObject_typed_operator_delete(&IOWrappedMemoryDescriptor_ktv, this, 40);
}

IOCancelationWrapper *IOWrappedMemoryDescriptor::MetaClass::alloc(IOWrappedMemoryDescriptor::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  IOCancelationWrapper::IOCancelationWrapper(v1, &IOWrappedMemoryDescriptor::gMetaClass);
  *v2 = off_2DE50;
  OSMetaClass::instanceConstructed(&IOWrappedMemoryDescriptor::gMetaClass);
  return v1;
}

void IOWrappedMemoryDescriptor::IOWrappedMemoryDescriptor(IOWrappedMemoryDescriptor *this)
{
  IOCancelationWrapper::IOCancelationWrapper(this, &IOWrappedMemoryDescriptor::gMetaClass);
  *v1 = off_2DE50;
  OSMetaClass::instanceConstructed(&IOWrappedMemoryDescriptor::gMetaClass);
}

BOOL IOWrappedMemoryDescriptor::init(IOWrappedMemoryDescriptor *this, IOMemoryDescriptor *a2)
{
  v3 = IOCancelationWrapper::init(this, a2);
  result = 0;
  if (a2)
  {
    if (v3)
    {
      return OSMetaClassBase::safeMetaCast(a2, IOMemoryDescriptor::metaClass) != 0;
    }
  }

  return result;
}

IOMemoryMap *IOWrappedMemoryDescriptor::createMappingInTask(IOWrappedMemoryDescriptor *this, task *a2, mach_vm_address_t a3, IOOptionBits a4, mach_vm_size_t a5, mach_vm_size_t a6)
{
  anObject = 0;
  Reference = IOCancelationWrapper::startUsingObjectAndGetReference(this, &anObject);
  result = 0;
  if (Reference)
  {
    v14 = OSMetaClassBase::safeMetaCast(anObject, IOMemoryDescriptor::metaClass);
    if (v14)
    {
      return IOMemoryDescriptor::createMappingInTask(v14, a2, a3, a4, a5, a6);
    }

    else
    {
      IOCancelationWrapper::stopUsingObjectAndRelease(this, anObject);
      return 0;
    }
  }

  return result;
}

OSMetaClass *_GLOBAL__sub_I_IOWrappedMemoryDescriptor_cpp()
{
  result = OSMetaClass::OSMetaClass(&IOWrappedMemoryDescriptor::gMetaClass, "IOWrappedMemoryDescriptor", &IOCancelationWrapper::gMetaClass, 0x28u);
  result->__vftable = off_2DEF0;
  return result;
}

uint64_t lifs_mount_send(ipc_port *a1, uint64_t a2, const char *a3, const char *a4, int a5, int a6, __int128 *a7)
{
  bzero(&v27, 0x888uLL);
  v28 = NDR_record;
  v29 = a2;
  v14 = &v27 - 32;
  if (&_mig_strncpy_zerofill)
  {
    v15 = mig_strncpy_zerofill(v32, a3, 1024);
    v30 = 0;
    v31 = v15;
    v16 = (v15 + 3) & 0xFFFFFFFC;
    v17 = v14 + v16;
    v18 = mig_strncpy_zerofill(&v14[34] + v16, a4, 1024);
  }

  else
  {
    v19 = mig_strncpy(v32, a3, 1024);
    v30 = 0;
    v31 = v19;
    v16 = (v19 + 3) & 0xFFFFFFFC;
    v17 = v14 + v16;
    v18 = mig_strncpy(&v14[34] + v16, a4, 1024);
  }

  *(v17 + 271) = v18;
  v20 = (v18 + 3) & 0xFFFFFFFC;
  v21 = v16 + v20;
  *(v17 + 270) = 0;
  v22 = &v17[v20];
  *(v22 + 272) = a5;
  *(v22 + 273) = a6;
  v22 += 1096;
  v23 = *a7;
  v24 = a7[1];
  v25 = a7[3];
  *(v22 + 2) = a7[2];
  *(v22 + 3) = v25;
  *v22 = v23;
  *(v22 + 1) = v24;
  v27.msgh_bits = 19;
  v27.msgh_remote_port = a1;
  v27.msgh_local_port = 0;
  *&v27.msgh_voucher_port = 0x29A00000000;
  return mach_msg_send_from_kernel_proper(&v27, v21 + 136);
}

uint64_t lifs_unmount_send(ipc_port *a1, uint64_t a2, int a3, __int128 *a4)
{
  v4 = a4[1];
  v11 = *a4;
  v12 = v4;
  v5 = a4[3];
  v13 = a4[2];
  v8 = NDR_record;
  v9 = a2;
  v10 = a3;
  v14 = v5;
  *&v7.msgh_bits = 19;
  v7.msgh_remote_port = a1;
  v7.msgh_local_port = 0;
  *&v7.msgh_voucher_port = 0x29B00000000;
  return mach_msg_send_from_kernel_proper(&v7, 0x74u);
}

uint64_t lifs_unmount2_send(ipc_port *a1, uint64_t a2, int a3, __int128 *a4)
{
  v4 = a4[1];
  v11 = *a4;
  v12 = v4;
  v5 = a4[3];
  v13 = a4[2];
  v8 = NDR_record;
  v9 = a2;
  v10 = a3;
  v14 = v5;
  *&v7.msgh_bits = 19;
  v7.msgh_remote_port = a1;
  v7.msgh_local_port = 0;
  *&v7.msgh_voucher_port = 0x29C00000000;
  return mach_msg_send_from_kernel_proper(&v7, 0x74u);
}

uint64_t lifs_statfs_send(ipc_port *a1, uint64_t a2, __int128 *a3)
{
  v7 = NDR_record;
  v8 = a2;
  v3 = a3[1];
  v9 = *a3;
  v10 = v3;
  v4 = a3[3];
  v11 = a3[2];
  v12 = v4;
  *&msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x29D00000000;
  return mach_msg_send_from_kernel_proper(&msg, 0x70u);
}

uint64_t lifs_getfsattr_send(ipc_port *a1, uint64_t a2, __int128 *a3, char *src)
{
  v5 = *a3;
  v6 = a3[1];
  v12 = 0u;
  v13 = v5;
  v7 = a3[2];
  v8 = a3[3];
  v14 = v6;
  v15 = v7;
  memset(&v11, 0, sizeof(v11));
  *&v12 = NDR_record;
  *(&v12 + 1) = a2;
  v16 = v8;
  memset(v17, 0, 44);
  if (&_mig_strncpy_zerofill)
  {
    v9 = mig_strncpy_zerofill(v17 + 8, src, 33);
  }

  else
  {
    v9 = mig_strncpy(v17 + 8, src, 33);
  }

  LODWORD(v17[0]) = 0;
  DWORD1(v17[0]) = v9;
  *(&v17[2] + 9) = 0;
  BYTE11(v17[2]) = 0;
  v11.msgh_bits = 19;
  v11.msgh_remote_port = a1;
  v11.msgh_local_port = 0;
  *&v11.msgh_voucher_port = 0x29E00000000;
  return mach_msg_send_from_kernel_proper(&v11, ((v9 + 3) & 0xFFFFFFFC) + 120);
}

uint64_t lifs_setfsattr_send(ipc_port *a1, uint64_t a2, __int128 *a3, char *src, _OWORD *a5, int a6)
{
  v30 = 0u;
  v31 = 0u;
  v9 = a3[1];
  v30 = *a3;
  v31 = v9;
  v32 = 0u;
  v33 = 0u;
  v10 = a3[3];
  v32 = a3[2];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
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
  v35 = 0u;
  memset(&v27, 0, sizeof(v27));
  v28 = NDR_record;
  v29 = a2;
  v33 = v10;
  memset(v34, 0, sizeof(v34));
  if (&_mig_strncpy_zerofill)
  {
    v11 = mig_strncpy_zerofill(v34 + 8, src, 33);
  }

  else
  {
    v11 = mig_strncpy(v34 + 8, src, 33);
  }

  LODWORD(v34[0]) = 0;
  DWORD1(v34[0]) = v11;
  *(&v35 + 9) = 0;
  BYTE11(v35) = 0;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  v13 = &v27 + v12;
  v14 = a5[2];
  v15 = a5[3];
  v16 = a5[1];
  *(v13 + 120) = *a5;
  *(v13 + 168) = v15;
  *(v13 + 152) = v14;
  *(v13 + 136) = v16;
  v17 = a5[6];
  v18 = a5[7];
  v19 = a5[5];
  *(v13 + 184) = a5[4];
  *(v13 + 232) = v18;
  *(v13 + 216) = v17;
  *(v13 + 200) = v19;
  v20 = a5[10];
  v21 = a5[11];
  v22 = a5[9];
  *(v13 + 248) = a5[8];
  *(v13 + 280) = v20;
  *(v13 + 296) = v21;
  *(v13 + 264) = v22;
  v23 = a5[15];
  v25 = a5[12];
  v24 = a5[13];
  *(v13 + 344) = a5[14];
  *(v13 + 360) = v23;
  *(v13 + 312) = v25;
  *(v13 + 328) = v24;
  *(v13 + 94) = a6;
  v27.msgh_bits = 19;
  v27.msgh_remote_port = a1;
  v27.msgh_local_port = 0;
  *&v27.msgh_voucher_port = 0x29F00000000;
  return mach_msg_send_from_kernel_proper(&v27, v12 + 380);
}

uint64_t lifs_create_send(ipc_port *a1, uint64_t a2, const char *a3, _OWORD *a4, _OWORD *a5)
{
  bzero(&msg, 0x530uLL);
  v25 = NDR_record;
  v26 = a2;
  if (&_mig_strncpy_zerofill)
  {
    v10 = mig_strncpy_zerofill(v29, a3, 1024);
  }

  else
  {
    v10 = mig_strncpy(v29, a3, 1024);
  }

  v27 = 0;
  v28 = v10;
  v11 = &msg + ((v10 + 3) & 0xFFFFFFFC);
  v12 = a4[2];
  v13 = a4[3];
  v14 = a4[1];
  *(v11 + 56) = *a4;
  *(v11 + 104) = v13;
  *(v11 + 88) = v12;
  *(v11 + 72) = v14;
  v16 = a5[1];
  v15 = a5[2];
  *(v11 + 120) = *a5;
  *(v11 + 152) = v15;
  *(v11 + 136) = v16;
  v17 = a5[5];
  v18 = a5[6];
  v19 = a5[4];
  *(v11 + 168) = a5[3];
  *(v11 + 216) = v18;
  *(v11 + 200) = v17;
  *(v11 + 184) = v19;
  v20 = a5[9];
  v21 = a5[10];
  v22 = a5[8];
  *(v11 + 232) = a5[7];
  *(v11 + 264) = v20;
  *(v11 + 280) = v21;
  *(v11 + 248) = v22;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x2A100000000;
  return mach_msg_send_from_kernel_proper(&msg, ((v10 + 3) & 0xFFFFFFFC) + 304);
}

uint64_t lifs_clonefile_send(ipc_port *a1, uint64_t a2, const char *a3, _OWORD *a4, _OWORD *a5, int a6, _OWORD *a7)
{
  bzero(&msg, 0x574uLL);
  v32 = NDR_record;
  v33 = a2;
  if (&_mig_strncpy_zerofill)
  {
    v14 = mig_strncpy_zerofill(v36, a3, 1024);
  }

  else
  {
    v14 = mig_strncpy(v36, a3, 1024);
  }

  v34 = 0;
  v35 = v14;
  v15 = &msg + ((v14 + 3) & 0xFFFFFFFC);
  v16 = a4[2];
  v17 = a4[3];
  v18 = a4[1];
  *(v15 + 56) = *a4;
  *(v15 + 104) = v17;
  *(v15 + 88) = v16;
  *(v15 + 72) = v18;
  v19 = a5[2];
  v20 = a5[3];
  v21 = a5[1];
  *(v15 + 120) = *a5;
  *(v15 + 168) = v20;
  *(v15 + 152) = v19;
  *(v15 + 136) = v21;
  *(v15 + 46) = a6;
  v23 = a7[1];
  v22 = a7[2];
  *(v15 + 188) = *a7;
  *(v15 + 204) = v23;
  *(v15 + 220) = v22;
  v24 = a7[5];
  v25 = a7[6];
  v26 = a7[4];
  *(v15 + 236) = a7[3];
  *(v15 + 268) = v24;
  *(v15 + 284) = v25;
  *(v15 + 252) = v26;
  v27 = a7[10];
  v29 = a7[7];
  v28 = a7[8];
  *(v15 + 332) = a7[9];
  *(v15 + 348) = v27;
  *(v15 + 300) = v29;
  *(v15 + 316) = v28;
  msg.msgh_bits = 19;
  msg.msgh_local_port = 0;
  msg.msgh_remote_port = a1;
  *&msg.msgh_voucher_port = 0x2A200000000;
  return mach_msg_send_from_kernel_proper(&msg, ((v14 + 3) & 0xFFFFFFFC) + 372);
}

uint64_t lifs_mkdir_send(ipc_port *a1, uint64_t a2, const char *a3, _OWORD *a4, _OWORD *a5)
{
  bzero(&msg, 0x530uLL);
  v25 = NDR_record;
  v26 = a2;
  if (&_mig_strncpy_zerofill)
  {
    v10 = mig_strncpy_zerofill(v29, a3, 1024);
  }

  else
  {
    v10 = mig_strncpy(v29, a3, 1024);
  }

  v27 = 0;
  v28 = v10;
  v11 = &msg + ((v10 + 3) & 0xFFFFFFFC);
  v12 = a4[2];
  v13 = a4[3];
  v14 = a4[1];
  *(v11 + 56) = *a4;
  *(v11 + 104) = v13;
  *(v11 + 88) = v12;
  *(v11 + 72) = v14;
  v16 = a5[1];
  v15 = a5[2];
  *(v11 + 120) = *a5;
  *(v11 + 152) = v15;
  *(v11 + 136) = v16;
  v17 = a5[5];
  v18 = a5[6];
  v19 = a5[4];
  *(v11 + 168) = a5[3];
  *(v11 + 216) = v18;
  *(v11 + 200) = v17;
  *(v11 + 184) = v19;
  v20 = a5[9];
  v21 = a5[10];
  v22 = a5[8];
  *(v11 + 232) = a5[7];
  *(v11 + 264) = v20;
  *(v11 + 280) = v21;
  *(v11 + 248) = v22;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x2A300000000;
  return mach_msg_send_from_kernel_proper(&msg, ((v10 + 3) & 0xFFFFFFFC) + 304);
}

uint64_t lifs_lookup_send(ipc_port *a1, uint64_t a2, const char *a3, _OWORD *a4, int a5)
{
  bzero(&msg, 0x47CuLL);
  v17 = NDR_record;
  v18 = a2;
  if (&_mig_strncpy_zerofill)
  {
    v10 = mig_strncpy_zerofill(v21, a3, 1024);
  }

  else
  {
    v10 = mig_strncpy(v21, a3, 1024);
  }

  v19 = 0;
  v20 = v10;
  v11 = &msg + ((v10 + 3) & 0xFFFFFFFC);
  v12 = a4[2];
  v13 = a4[3];
  v14 = a4[1];
  *(v11 + 56) = *a4;
  *(v11 + 104) = v13;
  *(v11 + 88) = v12;
  *(v11 + 72) = v14;
  *(v11 + 30) = a5;
  msg.msgh_bits = 19;
  msg.msgh_local_port = 0;
  msg.msgh_remote_port = a1;
  *&msg.msgh_voucher_port = 0x2A400000000;
  return mach_msg_send_from_kernel_proper(&msg, ((v10 + 3) & 0xFFFFFFFC) + 124);
}

uint64_t lifs_lookupsmall_send(ipc_port *a1, uint64_t a2, char *src, _OWORD *a4, int a5)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  memset(v18, 0, sizeof(v18));
  memset(&v15, 0, sizeof(v15));
  v16 = NDR_record;
  v17 = a2;
  if (&_mig_strncpy_zerofill)
  {
    v8 = mig_strncpy_zerofill(v18 + 8, src, 33);
  }

  else
  {
    v8 = mig_strncpy(v18 + 8, src, 33);
  }

  LODWORD(v18[0]) = 0;
  DWORD1(v18[0]) = v8;
  *(&v19 + 9) = 0;
  BYTE11(v19) = 0;
  v9 = (v8 + 3) & 0xFFFFFFFC;
  v10 = &v15 + v9;
  v11 = a4[2];
  v12 = a4[3];
  v13 = a4[1];
  *(v10 + 56) = *a4;
  *(v10 + 104) = v12;
  *(v10 + 88) = v11;
  *(v10 + 72) = v13;
  *(v10 + 30) = a5;
  v15.msgh_bits = 19;
  v15.msgh_remote_port = a1;
  v15.msgh_local_port = 0;
  *&v15.msgh_voucher_port = 0x2A500000000;
  return mach_msg_send_from_kernel_proper(&v15, v9 + 124);
}

uint64_t lifs_lookupmed_send(ipc_port *a1, uint64_t a2, char *src, _OWORD *a4, int a5)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  memset(v18, 0, sizeof(v18));
  memset(&v15, 0, sizeof(v15));
  v16 = NDR_record;
  v17 = a2;
  if (&_mig_strncpy_zerofill)
  {
    v8 = mig_strncpy_zerofill(v18 + 8, src, 65);
  }

  else
  {
    v8 = mig_strncpy(v18 + 8, src, 65);
  }

  LODWORD(v18[0]) = 0;
  DWORD1(v18[0]) = v8;
  *(&v19 + 9) = 0;
  BYTE11(v19) = 0;
  v9 = (v8 + 3) & 0xFFFFFFFC;
  v10 = &v15 + v9;
  v11 = a4[2];
  v12 = a4[3];
  v13 = a4[1];
  *(v10 + 56) = *a4;
  *(v10 + 104) = v12;
  *(v10 + 88) = v11;
  *(v10 + 72) = v13;
  *(v10 + 30) = a5;
  v15.msgh_bits = 19;
  v15.msgh_remote_port = a1;
  v15.msgh_local_port = 0;
  *&v15.msgh_voucher_port = 0x2A600000000;
  return mach_msg_send_from_kernel_proper(&v15, v9 + 124);
}

uint64_t lifs_open_send(ipc_port *a1, uint64_t a2, __int128 *a3, int a4)
{
  v8 = NDR_record;
  v9 = a2;
  v4 = a3[1];
  v10 = *a3;
  v11 = v4;
  v5 = a3[3];
  v12 = a3[2];
  v13 = v5;
  v14 = a4;
  *&v7.msgh_bits = 19;
  v7.msgh_remote_port = a1;
  v7.msgh_local_port = 0;
  *&v7.msgh_voucher_port = 0x2A700000000;
  return mach_msg_send_from_kernel_proper(&v7, 0x74u);
}

uint64_t lifs_close_send(ipc_port *a1, uint64_t a2, __int128 *a3, int a4)
{
  v8 = NDR_record;
  v9 = a2;
  v4 = a3[1];
  v10 = *a3;
  v11 = v4;
  v5 = a3[3];
  v12 = a3[2];
  v13 = v5;
  v14 = a4;
  *&v7.msgh_bits = 19;
  v7.msgh_remote_port = a1;
  v7.msgh_local_port = 0;
  *&v7.msgh_voucher_port = 0x2A800000000;
  return mach_msg_send_from_kernel_proper(&v7, 0x74u);
}

uint64_t lifs_rename_send(ipc_port *a1, uint64_t a2, const char *a3, _OWORD *a4, _OWORD *a5, const char *a6, _OWORD *a7, __int128 *a8, int a9)
{
  bzero(&msg, 0x944uLL);
  v40 = NDR_record;
  v41 = a2;
  if (&_mig_strncpy_zerofill)
  {
    v17 = mig_strncpy_zerofill(v44, a3, 1024);
  }

  else
  {
    v17 = mig_strncpy(v44, a3, 1024);
  }

  v42 = 0;
  v43 = v17;
  v18 = (v17 + 3) & 0xFFFFFFFC;
  v19 = &msg + v18;
  v20 = v19 - 1024;
  v21 = a4[2];
  v22 = a4[3];
  v23 = a4[1];
  *(v19 + 56) = *a4;
  *(v19 + 104) = v22;
  *(v19 + 88) = v21;
  *(v19 + 72) = v23;
  v24 = a5[2];
  v25 = a5[3];
  v26 = a5[1];
  *(v19 + 120) = *a5;
  *(v19 + 168) = v25;
  *(v19 + 152) = v24;
  *(v19 + 136) = v26;
  v27 = v19 + 192;
  if (&_mig_strncpy_zerofill)
  {
    v28 = mig_strncpy_zerofill(v27, a6, 1024);
  }

  else
  {
    v28 = mig_strncpy(v27, a6, 1024);
  }

  *(v20 + 303) = v28;
  v29 = (v28 + 3) & 0xFFFFFFFC;
  v30 = v18 + v29;
  *(v20 + 302) = 0;
  v31 = &v20[v29];
  v32 = a7[2];
  v33 = a7[3];
  v34 = a7[1];
  *(v31 + 76) = *a7;
  *(v31 + 78) = v32;
  *(v31 + 79) = v33;
  *(v31 + 77) = v34;
  v35 = *a8;
  v36 = a8[1];
  v37 = a8[3];
  *(v31 + 82) = a8[2];
  *(v31 + 83) = v37;
  *(v31 + 81) = v36;
  *(v31 + 80) = v35;
  *(v31 + 336) = a9;
  msg.msgh_bits = 19;
  msg.msgh_local_port = 0;
  msg.msgh_remote_port = a1;
  *&msg.msgh_voucher_port = 0x2A900000000;
  return mach_msg_send_from_kernel_proper(&msg, v30 + 324);
}

uint64_t lifs_rmdir_send(ipc_port *a1, uint64_t a2, __int128 *a3, __int128 *a4, const char *a5)
{
  bzero(&v16, 0x4B8uLL);
  v17 = NDR_record;
  v18 = a2;
  v10 = a3[1];
  v19 = *a3;
  v20 = v10;
  v11 = a3[3];
  v21 = a3[2];
  v22 = v11;
  v12 = a4[1];
  v23 = *a4;
  v24 = v12;
  v13 = a4[3];
  v25 = a4[2];
  v26 = v13;
  if (&_mig_strncpy_zerofill)
  {
    v14 = mig_strncpy_zerofill(v29, a5, 1024);
  }

  else
  {
    v14 = mig_strncpy(v29, a5, 1024);
  }

  v27 = 0;
  v28 = v14;
  v16.msgh_bits = 19;
  v16.msgh_remote_port = a1;
  v16.msgh_local_port = 0;
  *&v16.msgh_voucher_port = 0x2AA00000000;
  return mach_msg_send_from_kernel_proper(&v16, ((v14 + 3) & 0xFFFFFFFC) + 184);
}

uint64_t lifs_readdir_send(ipc_port *a1, uint64_t a2, int a3, uint64_t a4, __int128 *a5, int a6, uint64_t a7)
{
  v7 = a5[1];
  v15 = *a5;
  v16 = v7;
  v8 = a5[3];
  v17 = a5[2];
  v11 = NDR_record;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v18 = v8;
  v19 = a6;
  v20 = a7;
  *&v10.msgh_bits = 19;
  v10.msgh_remote_port = a1;
  v10.msgh_local_port = 0;
  *&v10.msgh_voucher_port = 0x2AB00000000;
  return mach_msg_send_from_kernel_proper(&v10, 0x88u);
}

uint64_t lifs_symlink_send(ipc_port *a1, uint64_t a2, const char *a3, const char *a4, _OWORD *a5, __int128 *a6)
{
  bzero(&v33, 0x938uLL);
  v34 = NDR_record;
  v35 = a2;
  v12 = &v33 - 32;
  if (&_mig_strncpy_zerofill)
  {
    v13 = mig_strncpy_zerofill(v38, a3, 1024);
    v36 = 0;
    v37 = v13;
    v14 = (v13 + 3) & 0xFFFFFFFC;
    v15 = v12 + v14;
    v16 = mig_strncpy_zerofill(&v12[34] + v14, a4, 1024);
  }

  else
  {
    v17 = mig_strncpy(v38, a3, 1024);
    v36 = 0;
    v37 = v17;
    v14 = (v17 + 3) & 0xFFFFFFFC;
    v15 = v12 + v14;
    v16 = mig_strncpy(&v12[34] + v14, a4, 1024);
  }

  *(v15 + 271) = v16;
  v18 = (v16 + 3) & 0xFFFFFFFC;
  v19 = v14 + v18;
  *(v15 + 270) = 0;
  v20 = &v15[v18];
  v21 = a5[2];
  v22 = a5[3];
  v23 = a5[1];
  *(v20 + 68) = *a5;
  *(v20 + 70) = v21;
  *(v20 + 71) = v22;
  *(v20 + 69) = v23;
  v24 = a6[6];
  v26 = a6[3];
  v25 = a6[4];
  *(v20 + 77) = a6[5];
  *(v20 + 78) = v24;
  *(v20 + 75) = v26;
  *(v20 + 76) = v25;
  v27 = a6[10];
  v29 = a6[7];
  v28 = a6[8];
  *(v20 + 81) = a6[9];
  *(v20 + 82) = v27;
  *(v20 + 79) = v29;
  *(v20 + 80) = v28;
  v30 = *a6;
  v31 = a6[2];
  *(v20 + 73) = a6[1];
  *(v20 + 74) = v31;
  *(v20 + 72) = v30;
  v33.msgh_bits = 19;
  v33.msgh_remote_port = a1;
  v33.msgh_local_port = 0;
  *&v33.msgh_voucher_port = 0x2AC00000000;
  return mach_msg_send_from_kernel_proper(&v33, v19 + 312);
}

uint64_t lifs_link_send(ipc_port *a1, uint64_t a2, __int128 *a3, const char *a4, _OWORD *a5)
{
  bzero(&v19, 0x4B8uLL);
  v20 = NDR_record;
  v21 = a2;
  v10 = a3[1];
  v22 = *a3;
  v23 = v10;
  v11 = a3[3];
  v24 = a3[2];
  v25 = v11;
  if (&_mig_strncpy_zerofill)
  {
    v12 = mig_strncpy_zerofill(v28, a4, 1024);
  }

  else
  {
    v12 = mig_strncpy(v28, a4, 1024);
  }

  v26 = 0;
  v27 = v12;
  v13 = (v12 + 3) & 0xFFFFFFFC;
  v14 = &v19 + v13;
  v15 = a5[2];
  v16 = a5[3];
  v17 = a5[1];
  *(v14 + 120) = *a5;
  *(v14 + 168) = v16;
  *(v14 + 152) = v15;
  *(v14 + 136) = v17;
  v19.msgh_bits = 19;
  v19.msgh_remote_port = a1;
  v19.msgh_local_port = 0;
  *&v19.msgh_voucher_port = 0x2AD00000000;
  return mach_msg_send_from_kernel_proper(&v19, v13 + 184);
}

uint64_t lifs_readlink_send(ipc_port *a1, uint64_t a2, __int128 *a3)
{
  v7 = NDR_record;
  v8 = a2;
  v3 = a3[1];
  v9 = *a3;
  v10 = v3;
  v4 = a3[3];
  v11 = a3[2];
  v12 = v4;
  *&msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x2AE00000000;
  return mach_msg_send_from_kernel_proper(&msg, 0x70u);
}

uint64_t lifs_remove_send(ipc_port *a1, uint64_t a2, __int128 *a3, __int128 *a4, const char *a5, int a6)
{
  bzero(&msg, 0x4BCuLL);
  v19 = NDR_record;
  v20 = a2;
  v12 = a3[1];
  v21 = *a3;
  v22 = v12;
  v13 = a3[3];
  v23 = a3[2];
  v24 = v13;
  v14 = a4[1];
  v25 = *a4;
  v26 = v14;
  v15 = a4[3];
  v27 = a4[2];
  v28 = v15;
  if (&_mig_strncpy_zerofill)
  {
    v16 = mig_strncpy_zerofill(v31, a5, 1024);
  }

  else
  {
    v16 = mig_strncpy(v31, a5, 1024);
  }

  v29 = 0;
  v30 = v16;
  *&v31[(v16 + 3) & 0xFFFFFFFC] = a6;
  msg.msgh_bits = 19;
  msg.msgh_local_port = 0;
  msg.msgh_remote_port = a1;
  *&msg.msgh_voucher_port = 0x2AF00000000;
  return mach_msg_send_from_kernel_proper(&msg, ((v16 + 3) & 0xFFFFFFFC) + 188);
}

uint64_t lifs_setattr_send(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  memset(&v16[212], 0, 32);
  v17 = 0;
  *&v16[196] = 0u;
  *&v16[180] = 0u;
  *&v16[164] = 0u;
  *&v16[148] = 0u;
  *&v16[132] = 0u;
  *&v16[116] = 0u;
  *&v16[100] = 0u;
  *&v16[84] = 0u;
  *&v16[68] = 0u;
  *&v16[52] = 0u;
  *&v16[36] = 0u;
  *&v16[20] = 0u;
  *&v16[4] = 0u;
  *v16 = 0;
  *v14 = 0u;
  v13 = 0u;
  *&v14[12] = NDR_record;
  v15 = a2;
  v4 = a3[1];
  *v16 = *a3;
  *&v16[16] = v4;
  v5 = a3[3];
  *&v16[32] = a3[2];
  *&v16[48] = v5;
  v6 = a4[9];
  *&v16[192] = a4[8];
  *&v16[208] = v6;
  *&v16[224] = a4[10];
  v7 = a4[5];
  *&v16[128] = a4[4];
  *&v16[144] = v7;
  v8 = a4[7];
  *&v16[160] = a4[6];
  *&v16[176] = v8;
  v9 = a4[1];
  *&v16[64] = *a4;
  *&v16[80] = v9;
  v10 = a4[3];
  *&v16[96] = a4[2];
  *&v16[112] = v10;
  v12 = 19;
  *(&v13 + 4) = a1;
  *&v14[8] = 688;
  return mach_msg_send_from_kernel_proper(&v12, 0x128u);
}

uint64_t lifs_getattr_send(ipc_port *a1, uint64_t a2, __int128 *a3)
{
  v7 = NDR_record;
  v8 = a2;
  v3 = a3[1];
  v9 = *a3;
  v10 = v3;
  v4 = a3[3];
  v11 = a3[2];
  v12 = v4;
  *&msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x2B100000000;
  return mach_msg_send_from_kernel_proper(&msg, 0x70u);
}

uint64_t lifs_getattrlistbulk_send(ipc_port *a1, uint64_t a2, uint64_t a3, __int128 *a4, int a5, uint64_t a6, uint64_t a7)
{
  v7 = a4[1];
  v14 = *a4;
  v15 = v7;
  v8 = a4[3];
  v16 = a4[2];
  v11 = NDR_record;
  v12 = a2;
  v13 = a3;
  v17 = v8;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  *&msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x2B200000000;
  return mach_msg_send_from_kernel_proper(&msg, 0x8Cu);
}

uint64_t lifs_write_send(ipc_port *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v10 = 1;
  v11 = a5;
  v12 = 16777473;
  v13 = a6;
  v14 = NDR_record;
  v15 = a2;
  v19 = v7;
  v20 = a4;
  v21 = a6;
  *&msg.msgh_bits = 2147483667;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x2B300000000;
  return mach_msg_send_from_kernel_proper(&msg, 0x90u);
}

uint64_t lifs_write_wrapped_send(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, _DWORD *a7)
{
  v18 = 0u;
  memset(&msg[4], 0, 32);
  v10 = a2[1];
  v20 = *a2;
  v21 = v10;
  v11 = a2[3];
  v22 = a2[2];
  *&msg[32] = 1;
  *&v18 = a5;
  DWORD2(v18) = 1245184;
  v19 = NDR_record;
  v23 = v11;
  v24 = a3;
  v25 = a4;
  *msg = -2147478253;
  *&msg[16] = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[24] = 0x2B400000000;
  v12 = mach_msg_rpc_from_kernel_proper(msg, 0x8Cu, 0x3Cu);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(*&msg[16]);
      return v13;
    }

    if (*&msg[28] == 71)
    {
      v13 = 4294966988;
    }

    else if (*&msg[28] == 792)
    {
      if ((*msg & 0x80000000) == 0)
      {
        if (*&msg[4] == 52)
        {
          if (!*&msg[8])
          {
            v13 = DWORD1(v18);
            if (!DWORD1(v18))
            {
              v16 = HIDWORD(v18);
              *a6 = DWORD2(v18);
              *a7 = v16;
              return v13;
            }

            goto LABEL_21;
          }
        }

        else if (*&msg[4] == 44)
        {
          if (*&msg[8])
          {
            v14 = 1;
          }

          else
          {
            v14 = DWORD1(v18) == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = DWORD1(v18);
          }

          goto LABEL_21;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_21:
    mach_msg_destroy_from_kernel_proper(msg);
    return v13;
  }

  mig_put_reply_port(*&msg[16]);
  return v13;
}

uint64_t lifs_read_send(ipc_port *a1, uint64_t a2, __int128 *a3, int a4, uint64_t a5)
{
  v9 = NDR_record;
  v10 = a2;
  v5 = a3[1];
  v11 = *a3;
  v12 = v5;
  v6 = a3[3];
  v13 = a3[2];
  v14 = v6;
  v15 = a4;
  v16 = a5;
  *&msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x2B500000000;
  return mach_msg_send_from_kernel_proper(&msg, 0x7Cu);
}

uint64_t lifs_read_wrapped_send(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, _DWORD *a7)
{
  v18 = 0u;
  memset(&msg[4], 0, 32);
  v10 = a2[1];
  v20 = *a2;
  v21 = v10;
  v11 = a2[3];
  v22 = a2[2];
  *&msg[32] = 1;
  *&v18 = a5;
  DWORD2(v18) = 1245184;
  v19 = NDR_record;
  v23 = v11;
  v24 = a3;
  v25 = a4;
  *msg = -2147478253;
  *&msg[16] = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[24] = 0x2B600000000;
  v12 = mach_msg_rpc_from_kernel_proper(msg, 0x8Cu, 0x3Cu);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(*&msg[16]);
      return v13;
    }

    if (*&msg[28] == 71)
    {
      v13 = 4294966988;
    }

    else if (*&msg[28] == 794)
    {
      if ((*msg & 0x80000000) == 0)
      {
        if (*&msg[4] == 52)
        {
          if (!*&msg[8])
          {
            v13 = DWORD1(v18);
            if (!DWORD1(v18))
            {
              v16 = HIDWORD(v18);
              *a6 = DWORD2(v18);
              *a7 = v16;
              return v13;
            }

            goto LABEL_21;
          }
        }

        else if (*&msg[4] == 44)
        {
          if (*&msg[8])
          {
            v14 = 1;
          }

          else
          {
            v14 = DWORD1(v18) == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = DWORD1(v18);
          }

          goto LABEL_21;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_21:
    mach_msg_destroy_from_kernel_proper(msg);
    return v13;
  }

  mig_put_reply_port(*&msg[16]);
  return v13;
}

uint64_t lifs_pathconf_send(ipc_port *a1, uint64_t a2, __int128 *a3)
{
  v7 = NDR_record;
  v8 = a2;
  v3 = a3[1];
  v9 = *a3;
  v10 = v3;
  v4 = a3[3];
  v11 = a3[2];
  v12 = v4;
  *&msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x2B700000000;
  return mach_msg_send_from_kernel_proper(&msg, 0x70u);
}

uint64_t lifs_reclaim_send(ipc_port *a1, uint64_t a2, __int128 *a3)
{
  v7 = NDR_record;
  v8 = a2;
  v3 = a3[1];
  v9 = *a3;
  v10 = v3;
  v4 = a3[3];
  v11 = a3[2];
  v12 = v4;
  *&msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x2B800000000;
  return mach_msg_send_from_kernel_proper(&msg, 0x70u);
}

uint64_t lifs_access_send(ipc_port *a1, uint64_t a2, __int128 *a3, int a4)
{
  v8 = NDR_record;
  v9 = a2;
  v4 = a3[1];
  v10 = *a3;
  v11 = v4;
  v5 = a3[3];
  v12 = a3[2];
  v13 = v5;
  v14 = a4;
  *&v7.msgh_bits = 19;
  v7.msgh_remote_port = a1;
  v7.msgh_local_port = 0;
  *&v7.msgh_voucher_port = 0x2B900000000;
  return mach_msg_send_from_kernel_proper(&v7, 0x74u);
}

uint64_t lifs_getxattr_send(ipc_port *a1, uint64_t a2, __int128 *a3, char *src, uint64_t a5, int a6)
{
  v18 = 0u;
  v19 = 0u;
  v9 = a3[1];
  v18 = *a3;
  v19 = v9;
  v20 = 0u;
  v21 = 0u;
  v10 = a3[3];
  v20 = a3[2];
  v23 = 0;
  memset(&v15, 0, sizeof(v15));
  v16 = NDR_record;
  v17 = a2;
  v21 = v10;
  memset(v22, 0, sizeof(v22));
  if (&_mig_strncpy_zerofill)
  {
    v11 = mig_strncpy_zerofill(v22 + 8, src, 128);
  }

  else
  {
    v11 = mig_strncpy(v22 + 8, src, 128);
  }

  LODWORD(v22[0]) = 0;
  DWORD1(v22[0]) = v11;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  v13 = &v15 + v12;
  *(v13 + 15) = a5;
  *(v13 + 32) = a6;
  v15.msgh_bits = 19;
  v15.msgh_remote_port = a1;
  v15.msgh_local_port = 0;
  *&v15.msgh_voucher_port = 0x2BA00000000;
  return mach_msg_send_from_kernel_proper(&v15, v12 + 132);
}

uint64_t lifs_listxattr_send(ipc_port *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = NDR_record;
  v9 = a2;
  v4 = a3[1];
  v10 = *a3;
  v11 = v4;
  v5 = a3[3];
  v12 = a3[2];
  v13 = v5;
  v14 = a4;
  *&v7.msgh_bits = 19;
  v7.msgh_remote_port = a1;
  v7.msgh_local_port = 0;
  *&v7.msgh_voucher_port = 0x2BB00000000;
  return mach_msg_send_from_kernel_proper(&v7, 0x78u);
}

uint64_t lifs_removexattr_send(ipc_port *a1, uint64_t a2, __int128 *a3, char *src)
{
  v18 = 0;
  v12 = 0u;
  v13 = 0u;
  v5 = *a3;
  v6 = a3[1];
  v14 = 0u;
  v15 = 0u;
  v7 = a3[2];
  v8 = a3[3];
  memset(&v11, 0, sizeof(v11));
  *&v12 = NDR_record;
  *(&v12 + 1) = a2;
  v16 = v8;
  memset(v17, 0, sizeof(v17));
  v14 = v6;
  v15 = v7;
  v13 = v5;
  if (&_mig_strncpy_zerofill)
  {
    v9 = mig_strncpy_zerofill(v17 + 8, src, 128);
  }

  else
  {
    v9 = mig_strncpy(v17 + 8, src, 128);
  }

  LODWORD(v17[0]) = 0;
  DWORD1(v17[0]) = v9;
  v11.msgh_bits = 19;
  v11.msgh_remote_port = a1;
  v11.msgh_local_port = 0;
  *&v11.msgh_voucher_port = 0x2BC00000000;
  return mach_msg_send_from_kernel_proper(&v11, ((v9 + 3) & 0xFFFFFFFC) + 120);
}

uint64_t lifs_setxattr_small_send(ipc_port *a1, uint64_t a2, __int128 *a3, const char *a4, const void *a5, uint64_t a6, int a7, int a8)
{
  bzero(&v22, 0x508uLL);
  v23 = NDR_record;
  v24 = a2;
  v16 = a3[1];
  v25 = *a3;
  v26 = v16;
  v17 = a3[3];
  v27 = a3[2];
  v28 = v17;
  if (&_mig_strncpy_zerofill)
  {
    v18 = mig_strncpy_zerofill(v31, a4, 128);
  }

  else
  {
    v18 = mig_strncpy(v31, a4, 128);
  }

  v29 = 0;
  v30 = v18;
  v19 = (v18 + 3) & 0xFFFFFFFC;
  v20 = &v22 + v19;
  memcpy(&v31[v19], a5, 0x400uLL);
  *(v20 + 143) = a6;
  *(v20 + 288) = a7;
  *(v20 + 289) = a8;
  v22.msgh_bits = 19;
  v22.msgh_remote_port = a1;
  v22.msgh_local_port = 0;
  *&v22.msgh_voucher_port = 0x2BD00000000;
  return mach_msg_send_from_kernel_proper(&v22, v19 + 1160);
}

uint64_t lifs_setxattr_large_send(ipc_port *a1, uint64_t a2, _OWORD *a3, char *src, uint64_t a5, int a6, int a7, int a8)
{
  memset(v20, 0, sizeof(v20));
  v19 = 0u;
  memset(&v18, 0, sizeof(v18));
  v12 = a3[1];
  *(&v20[1] + 4) = *a3;
  *(&v20[2] + 4) = v12;
  v13 = a3[3];
  *(&v20[3] + 4) = a3[2];
  v21 = 0;
  LODWORD(v19) = 1;
  *(&v19 + 4) = a5;
  HIDWORD(v19) = 16777472;
  LODWORD(v20[0]) = a6;
  *(v20 + 4) = NDR_record;
  *(v20 + 12) = a2;
  *(&v20[4] + 4) = v13;
  if (&_mig_strncpy_zerofill)
  {
    v14 = mig_strncpy_zerofill(&v20[5] + 12, src, 128);
  }

  else
  {
    v14 = mig_strncpy(&v20[5] + 12, src, 128);
  }

  DWORD1(v20[5]) = 0;
  DWORD2(v20[5]) = v14;
  v15 = (v14 + 3) & 0xFFFFFFFC;
  v16 = (&v18.msgh_bits + v15);
  v16[35] = a6;
  v16[36] = a7;
  v16[37] = a8;
  v18.msgh_bits = -2147483629;
  v18.msgh_remote_port = a1;
  v18.msgh_local_port = 0;
  *&v18.msgh_voucher_port = 0x2BE00000000;
  return mach_msg_send_from_kernel_proper(&v18, v15 + 152);
}

uint64_t lifs_get_volume_port_send(ipc_port *a1, uint64_t a2, __int128 *a3)
{
  v7 = NDR_record;
  v8 = a2;
  v3 = a3[1];
  v9 = *a3;
  v10 = v3;
  v4 = a3[3];
  v11 = a3[2];
  v12 = v4;
  *&msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x2BF00000000;
  return mach_msg_send_from_kernel_proper(&msg, 0x70u);
}

uint64_t lifs_blockmap_file_send(ipc_port *a1, uint64_t a2, __int128 *a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v11 = NDR_record;
  v12 = a2;
  v7 = a3[1];
  v13 = *a3;
  v14 = v7;
  v8 = a3[3];
  v15 = a3[2];
  v16 = v8;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  *&v10.msgh_bits = 19;
  v10.msgh_remote_port = a1;
  v10.msgh_local_port = 0;
  *&v10.msgh_voucher_port = 0x2C000000000;
  return mach_msg_send_from_kernel_proper(&v10, 0x88u);
}

uint64_t lifs_endio_send(ipc_port *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  v12 = NDR_record;
  v13 = a2;
  v8 = a3[1];
  v14 = *a3;
  v15 = v8;
  v9 = a3[3];
  v16 = a3[2];
  v17 = v9;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  *&msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x2C100000000;
  return mach_msg_send_from_kernel_proper(&msg, 0x90u);
}

uint64_t _start()
{
  if (_realmain)
  {
    return _realmain();
  }

  else
  {
    return 0;
  }
}

uint64_t _stop()
{
  if (_antimain)
  {
    return _antimain();
  }

  else
  {
    return 0;
  }
}

void lifs_vnop_ioctl_cold_1(uint64_t *a1, vfs_context_t *a2, _DWORD *a3)
{
  lifs_dev_ref(*a1);
  explicit = atomic_load_explicit((*a1 + 792), memory_order_acquire);
  if (explicit)
  {
    LODWORD(explicit) = VNOP_IOCTL(explicit, 0x20006416uLL, 0, 2, *a2);
  }

  *a3 = explicit;
  lifs_dev_rele(*a1);
}

void lifs_schedule_meta_flush(uint64_t a1)
{
  lck_mtx_lock(&lifs_mount_list_lock);
  mount_with_devvp = lifs_get_mount_with_devvp(a1);
  if (mount_with_devvp)
  {
    v3 = mount_with_devvp;
    v4 = (mount_with_devvp + 12);
    lck_mtx_lock((mount_with_devvp + 12));
    if (v3[108] && (*(v3 + 33) & 8) == 0)
    {
      result = 0;
      clock_interval_to_deadline(0x32u, 0xF4240u, &result);
      thread_call_enter_delayed(v3[108], result);
      v3[4] |= 0x800uLL;
    }

    lck_mtx_unlock(v4);
  }

  lck_mtx_unlock(&lifs_mount_list_lock);
}

uint64_t lifs_write_meta_subblock(vnode *arg1, unsigned int a2, int64_t arg2, uint64_t size, user_addr_t a5, uintptr_t arg3, uintptr_t arg4)
{
  v13 = arg2 / a2;
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400FDu, arg1, arg2, arg3, arg4);
  }

  v14 = 0;
  bpp = 0;
  v15 = 22;
  if ((arg2 & 0x8000000000000000) == 0 && (size - 1048577) >= 0xFFFFFFFFFFF00000)
  {
    v14 = 0;
    v15 = 22;
    if (a5)
    {
      if ((arg3 & 0x8000000000000000) == 0 && !((arg4 - 1) >> 20))
      {
        v16 = arg4 + arg3;
        v17 = arg3 >= arg2;
        v18 = arg3 - arg2;
        if (!v17 || v16 > size + arg2)
        {
          v14 = 0;
          v15 = 22;
        }

        else
        {
          v20 = buf_meta_bread(arg1, v13, size, 0, &bpp);
          if (v20)
          {
            v15 = v20;
LABEL_16:
            buf_brelse(bpp);
            v14 = 0;
            goto LABEL_17;
          }

          v21 = buf_dataptr(bpp);
          v15 = copyin(a5, (v18 + v21), arg4);
          if (v15)
          {
            buf_markinvalid(bpp);
            goto LABEL_16;
          }

          v23 = buf_fromcache(bpp);
          v14 = v23 != 0;
          if (v23)
          {
            atomic_fetch_add(&lifs_write_meta_cache_hit, 1uLL);
          }

          v15 = buf_bdwrite(bpp);
          if (!v15)
          {
            lifs_schedule_meta_flush(arg1);
          }
        }
      }
    }
  }

LABEL_17:
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug_filtered(0x31400FEu, arg1, v13, v14, v15);
  }

  return v15;
}

void lifs_flush_meta_blocks_cold_2(uintptr_t a1, unsigned int a2, uintptr_t a3)
{
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    OUTLINED_FUNCTION_0(0x10Au, a3, a2, a1);
  }
}

void lifs_clear_meta_blocks_cold_2(uintptr_t a1, unsigned int a2, uintptr_t a3)
{
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    OUTLINED_FUNCTION_0(0x10Eu, a3, a2, a1);
  }
}

void lifs_purge_meta_blocks_cold_2(uintptr_t a1, unsigned int a2, uintptr_t a3)
{
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    OUTLINED_FUNCTION_0(0x112u, a3, a2, a1);
  }
}