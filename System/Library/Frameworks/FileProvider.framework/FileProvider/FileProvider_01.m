uint64_t fpfs_copy_xattrs(const char *a1, const char *a2)
{
  v4 = malloc_type_malloc(0x8000uLL, 0xACB0C588uLL);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = listxattr(a1, v4, 0x8000uLL, 0);
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  v7 = v6;
  if (v6 > 0x8000)
  {
    free(v5);
    *__error() = 12;
    return 0xFFFFFFFFLL;
  }

  v8 = malloc_type_malloc(0x8000uLL, 0xB6B0831uLL);
  if (!v8)
  {
LABEL_14:
    free(v5);
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  if (v7)
  {
    v10 = &v5[v7];
    v11 = v5;
    while (1)
    {
      bzero(v9, 0x8000uLL);
      v12 = strlen(v11);
      if (xattr_preserve_for_intent(v11, 1u) == 1)
      {
        v13 = getxattr(a1, v11, v9, 0x8000uLL, 0, 0);
        if (v13 <= 0x8000 && setxattr(a2, v11, v9, v13, 0, 2) < 0)
        {
          break;
        }
      }

      v11 += v12 + 1;
      if (v11 >= v10)
      {
        goto LABEL_12;
      }
    }

    v14 = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_12:
    v14 = 0;
  }

  free(v9);
  free(v5);
  return v14;
}

uint64_t fpfs_delete_xattrs(int a1, int a2)
{
  v4 = malloc_type_malloc(0x8000uLL, 0xF75264A6uLL);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = flistxattr(a1, v4, 0x8000uLL, 0);
  if ((v6 & 0x8000000000000000) != 0)
  {
    free(v5);
    return 0xFFFFFFFFLL;
  }

  if (v6 > 0x8000)
  {
    free(v5);
    *__error() = 12;
    return 0xFFFFFFFFLL;
  }

  if (v6)
  {
    v9 = &v5[v6];
    v10 = v5;
    while (1)
    {
      v11 = strlen(v10);
      if (strcmp(v10, "com.apple.ResourceFork") && (!a2 || strcmp(v10, "com.apple.lastuseddate#PS")) && fremovexattr(a1, v10, 0) < 0)
      {
        break;
      }

      v10 += v11 + 1;
      if (v10 >= v9)
      {
        goto LABEL_15;
      }
    }

    v7 = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_15:
    v7 = 0;
  }

  free(v5);
  return v7;
}

uint64_t fpfs_set_bplist_xattr(const char *a1, const char *a2, char *cStr, int a4)
{
  v7 = *MEMORY[0x1E695E480];
  v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x600u);
  if (!v8)
  {
    v15 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      fpfs_set_bplist_xattr_cold_2(v15);
    }

    goto LABEL_8;
  }

  v9 = v8;
  error = 0;
  v10 = CFPropertyListCreateData(v7, v8, kCFPropertyListBinaryFormat_v1_0, 0, &error);
  if (!v10)
  {
    CFRelease(v9);
    v15 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      fpfs_set_bplist_xattr_cold_1(&error, v15);
    }

LABEL_8:

    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  BytePtr = CFDataGetBytePtr(v10);
  Length = CFDataGetLength(v11);
  v14 = setxattr(a1, a2, BytePtr, Length, 0, a4);
  CFRelease(v11);
  CFRelease(v9);
  return v14;
}

uint64_t fpfs_fset_collaboration_identifier(int fd, const char *a2)
{
  if (a2)
  {
    v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
    if (v3)
    {
      v4 = v3;
      MDItemCollaborationIdentifier = getMDItemCollaborationIdentifier();
      v6 = _MDPropertyCopyEncodedData(MDItemCollaborationIdentifier, v4);
      if (v6)
      {
        v7 = v6;
        BytePtr = CFDataGetBytePtr(v6);
        Length = CFDataGetLength(v7);
        v10 = fpfs_fsetxattr(fd, "com.apple.metadata:kMDItemCollaborationIdentifier", BytePtr, Length, 0, 0);
        CFRelease(v7);
        CFRelease(v4);
        return v10;
      }

      CFRelease(v4);
    }
  }

  else if ((fremovexattr(fd, "com.apple.metadata:kMDItemCollaborationIdentifier", 0) & 0x80000000) == 0 || *__error() == 93)
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t _MDPropertyCopyEncodedData(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v4 = getMDPropertyCopyEncodedDataSymbolLoc_ptr;
  v10 = getMDPropertyCopyEncodedDataSymbolLoc_ptr;
  if (!getMDPropertyCopyEncodedDataSymbolLoc_ptr)
  {
    v5 = MetadataUtilitiesLibrary();
    v8[3] = dlsym(v5, "MDPropertyCopyEncodedData");
    getMDPropertyCopyEncodedDataSymbolLoc_ptr = v8[3];
    v4 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v4)
  {
    _MDPropertyCopyEncodedData_cold_1();
  }

  return v4(a1, a2);
}

void sub_1AAB3718C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMDItemCollaborationIdentifier()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getMDItemCollaborationIdentifierSymbolLoc_ptr;
  v7 = getMDItemCollaborationIdentifierSymbolLoc_ptr;
  if (!getMDItemCollaborationIdentifierSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v5[3] = dlsym(v1, "MDItemCollaborationIdentifier");
    getMDItemCollaborationIdentifierSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getMDItemCollaborationIdentifier_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1AAB37290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpfs_fset_is_shared(int fd, char a2)
{
  if (fpfs_fset_is_shared_onceToken == -1)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    fpfs_fset_is_shared_cold_1();
    if (a2)
    {
LABEL_3:
      MDItemIsShared = getMDItemIsShared();
      v5 = _MDPropertyCopyEncodedData(MDItemIsShared, *MEMORY[0x1E695E4D0]);
      if (v5)
      {
        v6 = v5;
        BytePtr = CFDataGetBytePtr(v5);
        Length = CFDataGetLength(v6);
        v9 = fpfs_fsetxattr(fd, fpfs_fset_is_shared_xattrNameBuffer, BytePtr, Length, 0, 0);
        CFRelease(v6);
        return v9;
      }

      return 0xFFFFFFFFLL;
    }
  }

  if ((fremovexattr(fd, fpfs_fset_is_shared_xattrNameBuffer, 0) & 0x80000000) == 0 || *__error() == 93)
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

void __fpfs_fset_is_shared_block_invoke()
{
  MDItemIsShared = getMDItemIsShared();
  v1 = _MDPropertyCopyXAttrName(MDItemIsShared);
  if (v1)
  {
    v2 = v1;
    MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(v1);
    if (MaximumSizeOfFileSystemRepresentation >= 1)
    {
      v4 = MaximumSizeOfFileSystemRepresentation;
      fpfs_fset_is_shared_xattrNameBuffer = malloc_type_calloc(1uLL, MaximumSizeOfFileSystemRepresentation + 1, 0x64EDC07EuLL);
      CFStringGetFileSystemRepresentation(v2, fpfs_fset_is_shared_xattrNameBuffer, v4);
    }

    CFRelease(v2);
  }
}

uint64_t _MDPropertyCopyXAttrName(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = getMDPropertyCopyXAttrNameSymbolLoc_ptr;
  v8 = getMDPropertyCopyXAttrNameSymbolLoc_ptr;
  if (!getMDPropertyCopyXAttrNameSymbolLoc_ptr)
  {
    v3 = MetadataUtilitiesLibrary();
    v6[3] = dlsym(v3, "MDPropertyCopyXAttrName");
    getMDPropertyCopyXAttrNameSymbolLoc_ptr = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    _MDPropertyCopyXAttrName_cold_1();
  }

  return v2(a1);
}

void sub_1AAB374F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMDItemIsShared()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getMDItemIsSharedSymbolLoc_ptr;
  v7 = getMDItemIsSharedSymbolLoc_ptr;
  if (!getMDItemIsSharedSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v5[3] = dlsym(v1, "MDItemIsShared");
    getMDItemIsSharedSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getMDItemIsShared_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1AAB375FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpfs_fset_is_shared_by_current_user(int fd, _BYTE *a2)
{
  if (fpfs_fset_is_shared_by_current_user_onceToken == -1)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    fpfs_fset_is_shared_by_current_user_cold_1();
    if (a2)
    {
LABEL_3:
      if (*a2)
      {
        v4 = @"NSURLUbiquitousSharedItemRoleOwner";
      }

      else
      {
        v4 = @"NSURLUbiquitousSharedItemRoleParticipant";
      }

      MDItemSharedItemCurrentUserRole = getMDItemSharedItemCurrentUserRole();
      v6 = _MDPropertyCopyEncodedData(MDItemSharedItemCurrentUserRole, v4);
      if (v6)
      {
        v7 = v6;
        BytePtr = CFDataGetBytePtr(v6);
        Length = CFDataGetLength(v7);
        v10 = fpfs_fsetxattr(fd, fpfs_fset_is_shared_by_current_user_xattrNameBuffer, BytePtr, Length, 0, 0);
        CFRelease(v7);
        return v10;
      }

      return 0xFFFFFFFFLL;
    }
  }

  if ((fremovexattr(fd, fpfs_fset_is_shared_by_current_user_xattrNameBuffer, 0) & 0x80000000) == 0 || *__error() == 93)
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

void __fpfs_fset_is_shared_by_current_user_block_invoke()
{
  MDItemSharedItemCurrentUserRole = getMDItemSharedItemCurrentUserRole();
  v1 = _MDPropertyCopyXAttrName(MDItemSharedItemCurrentUserRole);
  if (v1)
  {
    v2 = v1;
    MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(v1);
    if (MaximumSizeOfFileSystemRepresentation >= 1)
    {
      v4 = MaximumSizeOfFileSystemRepresentation;
      fpfs_fset_is_shared_by_current_user_xattrNameBuffer = malloc_type_calloc(1uLL, MaximumSizeOfFileSystemRepresentation + 1, 0x496308C9uLL);
      CFStringGetFileSystemRepresentation(v2, fpfs_fset_is_shared_by_current_user_xattrNameBuffer, v4);
    }

    CFRelease(v2);
  }
}

id getMDItemSharedItemCurrentUserRole()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getMDItemSharedItemCurrentUserRoleSymbolLoc_ptr;
  v7 = getMDItemSharedItemCurrentUserRoleSymbolLoc_ptr;
  if (!getMDItemSharedItemCurrentUserRoleSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v5[3] = dlsym(v1, "MDItemSharedItemCurrentUserRole");
    getMDItemSharedItemCurrentUserRoleSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getMDItemSharedItemCurrentUserRole_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1AAB37878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpfs_fset_owner_name(int fd, char *cStr)
{
  if (fpfs_fset_owner_name_onceToken == -1)
  {
    if (cStr)
    {
      goto LABEL_3;
    }
  }

  else
  {
    fpfs_fset_owner_name_cold_1();
    if (cStr)
    {
LABEL_3:
      v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
      if (v4)
      {
        v5 = v4;
        MDItemOwnerName = getMDItemOwnerName();
        v7 = _MDPropertyCopyEncodedData(MDItemOwnerName, v5);
        if (v7)
        {
          v8 = v7;
          BytePtr = CFDataGetBytePtr(v7);
          Length = CFDataGetLength(v8);
          v11 = fpfs_fsetxattr(fd, fpfs_fset_owner_name_xattrNameBuffer, BytePtr, Length, 0, 0);
          CFRelease(v8);
          CFRelease(v5);
          return v11;
        }

        CFRelease(v5);
      }

      return 0xFFFFFFFFLL;
    }
  }

  if ((fremovexattr(fd, fpfs_fset_owner_name_xattrNameBuffer, 0) & 0x80000000) == 0 || *__error() == 93)
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t __fpfs_fset_owner_name_block_invoke()
{
  MDItemOwnerName = getMDItemOwnerName();
  result = _MDPropertyCopyXAttrName(MDItemOwnerName);
  if (result)
  {
    v2 = result;
    result = CFStringGetMaximumSizeOfFileSystemRepresentation(result);
    if (result >= 1)
    {
      v3 = result;
      v4 = malloc_type_calloc(1uLL, result + 1, 0x2D12EF82uLL);
      fpfs_fset_owner_name_xattrNameBuffer = v4;

      return CFStringGetFileSystemRepresentation(v2, v4, v3);
    }
  }

  return result;
}

id getMDItemOwnerName()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getMDItemOwnerNameSymbolLoc_ptr;
  v7 = getMDItemOwnerNameSymbolLoc_ptr;
  if (!getMDItemOwnerNameSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary();
    v5[3] = dlsym(v1, "MDItemOwnerName");
    getMDItemOwnerNameSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getMDItemOwnerName_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1AAB37B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpfs_funset_pause_sync_bundleID(int a1)
{
  if (fremovexattr(a1, "com.apple.file-provider-sync_paused_bundle_id#PX", 0) < 0 && *__error() != 93)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t fpfs_funset_resuming_sync_with_drop_local_changes(int a1)
{
  if (fremovexattr(a1, "com.apple.file-provider-resuming-sync-drop-local-changes#PX", 0) < 0 && *__error() != 93)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t fpfs_set_root_exposure_symlink_xattr(const char *a1, char *__s)
{
  v4 = strlen(__s) + 1;

  return setxattr(a1, "com.apple.fileprovider.domainLink#N", __s, v4, 0, 1);
}

const char *fpfs_root_exposure_symlink_xattr_exists(const char *result)
{
  if (result)
  {
    return (getxattr(result, "com.apple.fileprovider.domainLink#N", 0, 0, 0, 1) >= 0);
  }

  return result;
}

BOOL fpfs_root_exposure_symlink_xattr_is_equal(const char *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = malloc_type_malloc(v4 + 1, 0xB96B28B6uLL);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = (getxattr(a1, "com.apple.fileprovider.domainLink#N", v5, v4 + 1, 0, 1) & 0x8000000000000000) == 0 && strncmp(__s, v6, v4 + 1) == 0;
  free(v6);
  return v7;
}

uint64_t fpfs_remove_content_dependent_xattrs(int a1, void *a2)
{
  v3 = a2;
  v4 = malloc_type_malloc(0x8000uLL, 0xE34D4BD9uLL);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = flistxattr(a1, v4, 0x8000uLL, 0);
  if ((v6 & 0x8000000000000000) != 0)
  {
    free(v5);
    goto LABEL_6;
  }

  if (v6 > 0x8000)
  {
    free(v5);
    *__error() = 12;
LABEL_6:
    v7 = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  if (v6)
  {
    v9 = &v5[v6];
    v10 = v5;
    while (1)
    {
      v11 = strlen(v10);
      if (strcmp(v10, "com.apple.ResourceFork"))
      {
        if ((fpfs_xattr_flags_from_name(v10) & 2) != 0 && (v3[2](v3, v10) & 1) == 0 && fremovexattr(a1, v10, 0) < 0 && *__error() != 93)
        {
          break;
        }
      }

      v10 += v11 + 1;
      if (v10 >= v9)
      {
        goto LABEL_16;
      }
    }

    v7 = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_16:
    v7 = 0;
  }

  free(v5);
LABEL_7:

  return v7;
}

const char *__fpfs_xattr_flags_from_name_block_invoke()
{
  result = fpfs_xattr_flags_from_name_xattr_mods;
  if (fpfs_xattr_flags_from_name_xattr_mods)
  {
    v1 = &off_1ED6EE170;
    do
    {
      *(v1 - 4) = xattr_name_without_flags(result);
      v2 = *v1;
      v1 += 4;
      result = v2;
    }

    while (v2);
  }

  return result;
}

void *__getMDPropertyCopyEncodedDataForLastUsedDateWithTimeSpecSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MetadataUtilitiesLibrary();
  result = dlsym(v2, "MDPropertyCopyEncodedDataForLastUsedDateWithTimeSpec");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDPropertyCopyEncodedDataForLastUsedDateWithTimeSpecSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MetadataUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MetadataUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getMDPropertyDecodedLastUsedDateTimeSpecSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MetadataUtilitiesLibrary();
  result = dlsym(v2, "MDPropertyDecodedLastUsedDateTimeSpec");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDPropertyDecodedLastUsedDateTimeSpecSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDPropertyCopyEncodedDataForFavoriteRankSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MetadataUtilitiesLibrary();
  result = dlsym(v2, "MDPropertyCopyEncodedDataForFavoriteRank");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDPropertyCopyEncodedDataForFavoriteRankSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDPropertyDecodedFavoritRankSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MetadataUtilitiesLibrary();
  result = dlsym(v2, "MDPropertyDecodedFavoritRank");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDPropertyDecodedFavoritRankSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDPropertyCopyEncodedDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MetadataUtilitiesLibrary();
  result = dlsym(v2, "MDPropertyCopyEncodedData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDPropertyCopyEncodedDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemCollaborationIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDItemCollaborationIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemCollaborationIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreSpotlightLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpotlightLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getMDPropertyCopyXAttrNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MetadataUtilitiesLibrary();
  result = dlsym(v2, "MDPropertyCopyXAttrName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDPropertyCopyXAttrNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemIsSharedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDItemIsShared");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemIsSharedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemSharedItemCurrentUserRoleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDItemSharedItemCurrentUserRole");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemSharedItemCurrentUserRoleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemOwnerNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "MDItemOwnerName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemOwnerNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDPropertyCopyDecodedValueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MetadataUtilitiesLibrary();
  result = dlsym(v2, "MDPropertyCopyDecodedValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDPropertyCopyDecodedValueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1AAB39F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose((v49 - 176), 8);
  __fp_leave_section_Debug(&a48);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_1AAB3AB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AAB3AFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AAB3B294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *FPHumanReadableDropReason(unint64_t a1)
{
  if (a1 > 0xD)
  {
    return @"NA";
  }

  else
  {
    return off_1E793A778[a1];
  }
}

uint64_t FPCSIndexReasonForFPIndexDropReason(uint64_t a1)
{
  if ((a1 - 4) > 9)
  {
    return 0;
  }

  else
  {
    return qword_1AAC264D8[a1 - 4];
  }
}

uint64_t tokensAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 isEqualToData:v4];
  v6 = 1;
  if (v3 != v4 && (v5 & 1) == 0)
  {
    v6 = 0;
    if (v3)
    {
      if (v4)
      {
        v13 = 0;
        v7 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:&v13];
        v8 = v13;
        if (v7)
        {
          v12 = 0;
          v9 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:&v12];
          v10 = v12;

          if (v9)
          {
            v6 = [v7 isEqual:v9];
          }

          else
          {
            v6 = 0;
          }

          v8 = v10;
        }

        else
        {
          v6 = 0;
        }
      }
    }
  }

  return v6;
}

void sub_1AAB3F65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _FPRestorePersona(va);
  _Unwind_Resume(a1);
}

void sub_1AAB40698(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _FPRestorePersona(va);
  _Unwind_Resume(a1);
}

void sub_1AAB409C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _FPRestorePersona(va);
  _Unwind_Resume(a1);
}

Class __getCSSearchableIndexClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreSpotlightLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreSpotlightLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E793A760;
    v6 = 0;
    CoreSpotlightLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!CoreSpotlightLibraryCore_frameworkLibrary_0)
  {
    __getCSSearchableIndexClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CSSearchableIndex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSSearchableIndexClass_block_invoke_cold_1();
  }

  getCSSearchableIndexClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreSpotlightLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpotlightLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AAB438D4(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1AAB438A4);
}

void sub_1AAB43BD0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1AAB43B74);
  }

  _Unwind_Resume(a1);
}

uint64_t fpfs_fopendir(int a1, void *a2)
{
  v3 = a2;
  v4 = dup(a1);
  if (v4 < 0)
  {
    goto LABEL_13;
  }

  v5 = v4;
  v6 = fdopendir(v4);
  if (!v6)
  {
    v12 = *__error();
    close(v5);
    *__error() = v12;
LABEL_13:
    v11 = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  v7 = v6;
  rewinddir(v6);
  v8 = readdir(v7);
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      if (v9->d_name[0] != 46 || v9->d_name[1] && (v9->d_name[1] != 46 || v9->d_name[2]))
      {
        v10 = v3[2](v3);
        if (v10)
        {
          break;
        }
      }

      v9 = readdir(v7);
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    v11 = v10;
    v14 = *__error();
    closedir(v7);
    *__error() = v14;
  }

  else
  {
LABEL_11:
    v11 = closedir(v7);
  }

LABEL_14:

  return v11;
}

uint64_t fpfs_opendir(const char *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __fpfs_opendir_block_invoke;
  v7[3] = &unk_1E793A8F0;
  v8 = v3;
  v4 = v3;
  v5 = fpfs_openat(4294967294, a1, 0x100000u, 0, 0, v7);

  return v5;
}

uint64_t __fpfs_opendir_block_invoke(uint64_t a1, int a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __fpfs_opendir_block_invoke_2;
  v5[3] = &unk_1E793A8C8;
  v6 = *(a1 + 32);
  v7 = a2;
  v3 = fpfs_fopendir(a2, v5);

  return v3;
}

uint64_t fpfs_chdir(const char *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __fpfs_chdir_block_invoke;
  v7[3] = &unk_1E793A8F0;
  v8 = v3;
  v4 = v3;
  v5 = fpfs_openat(4294967294, a1, 0, 0, 0, v7);

  return v5;
}

uint64_t fpfs_opendirat(int a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __fpfs_opendirat_block_invoke;
  v9[3] = &unk_1E793A940;
  v10 = v5;
  v11 = a2;
  v6 = v5;
  v7 = fpfs_fchdir(a1, v9);

  return v7;
}

uint64_t fpfs_removeat(int a1, const char *a2)
{
  memset(&v5, 0, sizeof(v5));
  if (fstatat(a1, a2, &v5, 32) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return unlinkat(a1, a2, ((v5.st_mode & 0xF000) == 0x4000) << 7);
  }
}

uint64_t fpfs_fchflags(int a1, unsigned int a2, int a3)
{
  if ((a3 & a2) != 0)
  {
    v3 = __error();
    v4 = 22;
  }

  else if (a1 < 0)
  {
    v3 = __error();
    v4 = 9;
  }

  else if ((a3 | a2) >= 0x10000)
  {
    v3 = __error();
    v4 = 1;
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
    if (fstat(a1, &v16) < 0)
    {
      return 0xFFFFFFFFLL;
    }

    v9 = (a2 << 25) & 0x40000000 | a2;
    st_flags = v16.st_flags;
    if ((v16.st_flags & ~v9 | a3) == v16.st_flags)
    {
      return 0;
    }

    v13 = v16.st_flags;
    v14 = v16.st_flags & ~v9 | a3;
    v11 = 4;
    v15 = v16.st_flags;
    while (--v11)
    {
      v13 = st_flags;
      v14 = st_flags & ~v9 | a3;
      if (ffsctl(a1, 0xC00C4114uLL, &v13, 0) < 0)
      {
        return 0xFFFFFFFFLL;
      }

      st_flags = v15;
      if ((a3 & ~v15) == 0 && (v15 & v9) == 0)
      {
        return 0;
      }
    }

    v3 = __error();
    v4 = 35;
  }

  *v3 = v4;
  return 0xFFFFFFFFLL;
}

uint64_t fpfs_chflags(const char *a1, int a2, int a3)
{
  if (!a1)
  {
    return 22;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __fpfs_chflags_block_invoke;
  v4[3] = &__block_descriptor_40_e8_i12__0i8l;
  v5 = a2;
  v6 = a3;
  return fpfs_openat(4294967294, a1, 0x200000u, 0, 0, v4);
}

uint64_t fpfs_with_parent_path(const char *a1, void *a2)
{
  v3 = a2;
  v4 = strdup(a1);
  if (v4 && (v5 = v4, v6 = dirname(v4), free(v5), v6) && (v7 = strdup(v6)) != 0)
  {
    v8 = v7;
    v9 = v3[2](v3, v7);
    free(v8);
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  return v9;
}

uint64_t fpfs_dirsize()
{
  if (dirstat_np() < 0)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

uint64_t _t_fpfs_readbyte(const char *a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___t_fpfs_readbyte_block_invoke;
  v3[3] = &__block_descriptor_40_e8_i12__0i8l;
  v3[4] = a2;
  return fpfs_openat(4294967294, a1, 0, 0, 0, v3);
}

uint64_t ___t_fpfs_readbyte_block_invoke(uint64_t a1, int __fd)
{
  __buf = 0;
  v2 = pread(__fd, &__buf, 1uLL, *(a1 + 32));
  if (v2 == 1)
  {
    return __buf;
  }

  if (!v2)
  {
    *__error() = 22;
  }

  return 0xFFFFFFFFLL;
}

void _FPPerformWithPersona(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 userPersonaUniqueString];
  v9 = v8;
  if (v8 == v6)
  {

    goto LABEL_15;
  }

  v10 = [v5 userPersonaUniqueString];
  v11 = [v10 isEqualToString:v6];

  if (v11)
  {
LABEL_15:
    v7[2](v7, 0);
    goto LABEL_16;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v22 = 0;
    v12 = [v5 copyCurrentPersonaContextWithError:&v22];
    v13 = v22;
    v14 = v13;
    if (!v12)
    {
      v21 = v13;
      v12 = [v5 copyCurrentPersonaContextWithError:&v21];
      v15 = v21;

      if (!v12)
      {
        (v7)[2](v7, v15);
LABEL_20:

        goto LABEL_16;
      }

      v14 = v15;
    }

    v16 = [v5 generateAndRestorePersonaContextWithPersonaUniqueString:v6];

    if (v16)
    {
      [MEMORY[0x1E696AF00] sleepForTimeInterval:0.2];
      v16 = [v5 generateAndRestorePersonaContextWithPersonaUniqueString:v6];

      v14 = v16;
    }

    (v7)[2](v7, v16);
    v17 = [v5 restorePersonaWithSavedPersonaContext:v12];

    if (v17)
    {
      [MEMORY[0x1E696AF00] sleepForTimeInterval:0.2];
      v15 = [v5 restorePersonaWithSavedPersonaContext:v12];

      if (v15)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed restoring persona %@", v15];
        v19 = fp_current_or_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          _FPPerformWithPersona_cold_1();
        }

        __assert_rtn("_FPPerformWithPersona", "/Library/Caches/com.apple.xbs/Sources/FileProvider/framework/NSURL+FPAdditions.m", 117, [v18 UTF8String]);
      }
    }

    else
    {
      v15 = v14;
    }

    goto LABEL_20;
  }

  v20 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:1];
  (v7)[2](v7, v20);

LABEL_16:
}

void FPPerformWithDefaultPersona(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E69DF068] sharedManager];
  v3 = [v2 currentPersona];

  if ([v3 isDefaultPersona] || (objc_msgSend(MEMORY[0x1E69DF068], "sharedManager"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isSharedIPad"), v4, v5))
  {
    v1[2](v1, 0);
  }

  else
  {
    v6 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:5];
    v7 = [v6 userPersonaUniqueString];

    if (v7)
    {
      _FPPerformWithPersona(v3, v7, v1);
    }

    else
    {
      v8 = fp_current_or_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        FPPerformWithDefaultPersona_cold_1();
      }

      v7 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:2];
      (v1)[2](v1, v7);
    }
  }
}

void FPPerformWithPersona(void *a1, void *a2)
{
  v10 = a1;
  v3 = a2;
  v4 = [MEMORY[0x1E69DF068] sharedManager];
  v5 = [v4 currentPersona];

  v6 = [v5 userPersonaUniqueString];
  v7 = v6;
  if ((v10 != 0) == (v6 == 0))
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"One persona is unexpectedly nil: existing %@, requested %@", v6, v10];
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      _FPPerformWithPersona_cold_1();
    }

    __assert_rtn("FPPerformWithPersona", "/Library/Caches/com.apple.xbs/Sources/FileProvider/framework/NSURL+FPAdditions.m", 162, [v8 UTF8String]);
  }

  _FPPerformWithPersona(v5, v10, v3);
}

void sub_1AAB46B7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_leave_section_Debug(va);
  _Unwind_Resume(a1);
}

void sub_1AAB4728C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __fp_leave_section_Debug(va);
  _Unwind_Resume(a1);
}

void sub_1AAB476BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getQLThumbnailAdditionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getQLThumbnailAdditionClass_softClass;
  v7 = getQLThumbnailAdditionClass_softClass;
  if (!getQLThumbnailAdditionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getQLThumbnailAdditionClass_block_invoke;
    v3[3] = &unk_1E793A2E8;
    v3[4] = &v4;
    __getQLThumbnailAdditionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AAB4779C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getGSStorageManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!GenerationalStorageLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __GenerationalStorageLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E793A9C8;
    v6 = 0;
    GenerationalStorageLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!GenerationalStorageLibraryCore_frameworkLibrary)
  {
    __getGSStorageManagerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("GSStorageManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getGSStorageManagerClass_block_invoke_cold_1();
  }

  getGSStorageManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __GenerationalStorageLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  GenerationalStorageLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getQLThumbnailAdditionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!QuickLookThumbnailingLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __QuickLookThumbnailingLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E793A9E0;
    v6 = 0;
    QuickLookThumbnailingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!QuickLookThumbnailingLibraryCore_frameworkLibrary)
  {
    __getQLThumbnailAdditionClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("QLThumbnailAddition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getQLThumbnailAdditionClass_block_invoke_cold_1();
  }

  getQLThumbnailAdditionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __QuickLookThumbnailingLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  QuickLookThumbnailingLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_6_3(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

uint64_t fpfs_supports_pkg_dataless_escape_prevention()
{
  v0 = *__error();
  if (fpfs_supports_pkg_dataless_escape_prevention_once_token != -1)
  {
    fpfs_supports_pkg_dataless_escape_prevention_cold_1();
  }

  *__error() = v0;
  return fpfs_supports_pkg_dataless_escape_prevention_feature_enabled;
}

uint64_t __fpfs_supports_pkg_dataless_escape_prevention_block_invoke()
{
  result = _fpfs_is_feature_flag_enabled("PackageDatalessPrevention");
  fpfs_supports_pkg_dataless_escape_prevention_feature_enabled = result;
  return result;
}

uint64_t fpfs_supports_partial_materialization()
{
  v0 = *__error();
  if (fpfs_supports_partial_materialization_once_token != -1)
  {
    fpfs_supports_partial_materialization_cold_1();
  }

  *__error() = v0;
  return fpfs_supports_partial_materialization_feature_enabled;
}

uint64_t __fpfs_supports_partial_materialization_block_invoke()
{
  result = _fpfs_is_feature_flag_enabled("PartialMaterialization");
  fpfs_supports_partial_materialization_feature_enabled = result;
  return result;
}

uint64_t fpfs_supports_brm_sparse_files()
{
  v0 = *__error();
  if (fpfs_supports_brm_sparse_files_once_token != -1)
  {
    fpfs_supports_brm_sparse_files_cold_1();
  }

  *__error() = v0;
  return fpfs_supports_brm_sparse_files_feature_enabled;
}

uint64_t __fpfs_supports_brm_sparse_files_block_invoke()
{
  result = _fpfs_is_feature_flag_enabled("BRMSparseFiles");
  fpfs_supports_brm_sparse_files_feature_enabled = result;
  return result;
}

uint64_t fpfs_supports_nx_for_testing()
{
  v0 = *__error();
  if (fpfs_supports_nx_for_testing_once_token != -1)
  {
    fpfs_supports_nx_for_testing_cold_1();
  }

  *__error() = v0;
  return fpfs_supports_nx_for_testing_feature_enabled;
}

uint64_t __fpfs_supports_nx_for_testing_block_invoke()
{
  result = _fpfs_is_feature_flag_enabled("NonExistentFeatureFlagUsedForTesting");
  fpfs_supports_nx_for_testing_feature_enabled = result;
  return result;
}

uint64_t fpfs_supports_lazy_recursive_deletion()
{
  v0 = *__error();
  if (fpfs_supports_lazy_recursive_deletion_once_token != -1)
  {
    fpfs_supports_lazy_recursive_deletion_cold_1();
  }

  *__error() = v0;
  return fpfs_supports_lazy_recursive_deletion_feature_enabled;
}

uint64_t __fpfs_supports_lazy_recursive_deletion_block_invoke()
{
  result = _fpfs_is_feature_flag_enabled("LazyRecursiveDeletion");
  fpfs_supports_lazy_recursive_deletion_feature_enabled = result;
  return result;
}

uint64_t fpfs_supports_download_lazily_v2()
{
  v0 = *__error();
  if (fpfs_supports_download_lazily_v2_once_token != -1)
  {
    fpfs_supports_download_lazily_v2_cold_1();
  }

  *__error() = v0;
  return fpfs_supports_download_lazily_v2_feature_enabled;
}

uint64_t __fpfs_supports_download_lazily_v2_block_invoke()
{
  result = _fpfs_is_feature_flag_enabled("DLV2");
  fpfs_supports_download_lazily_v2_feature_enabled = result;
  return result;
}

uint64_t fpfs_supports_local_storage_less()
{
  v0 = *__error();
  if (fpfs_supports_local_storage_less_once_token != -1)
  {
    fpfs_supports_local_storage_less_cold_1();
  }

  *__error() = v0;
  return fpfs_supports_local_storage_less_feature_enabled;
}

uint64_t __fpfs_supports_local_storage_less_block_invoke()
{
  result = _fpfs_is_feature_flag_enabled("LocalStorageLess");
  fpfs_supports_local_storage_less_feature_enabled = result;
  return result;
}

uint64_t fpfs_is_internal_build()
{
  if (fpfs_is_internal_build_once != -1)
  {
    fpfs_is_internal_build_cold_1();
  }

  return fpfs_is_internal_build_is_internal_build;
}

uint64_t __fpfs_is_internal_build_block_invoke()
{
  result = os_variant_has_internal_content();
  fpfs_is_internal_build_is_internal_build = result;
  return result;
}

uint64_t fpfs_is_seed_build()
{
  if (fpfs_is_seed_build_once != -1)
  {
    fpfs_is_seed_build_cold_1();
  }

  return 0;
}

uint64_t fpfs_supports_tap_to_feedback()
{
  if (fpfs_supports_tap_to_feedback_once != -1)
  {
    fpfs_supports_tap_to_feedback_cold_1();
  }

  return 0;
}

uint64_t fpfs_supports_indexAllRemoteItems()
{
  v0 = *__error();
  if (fpfs_supports_indexAllRemoteItems_once_token != -1)
  {
    fpfs_supports_indexAllRemoteItems_cold_1();
  }

  *__error() = v0;
  return fpfs_supports_indexAllRemoteItems_feature_enabled;
}

uint64_t __fpfs_supports_indexAllRemoteItems_block_invoke()
{
  result = _fpfs_is_feature_flag_enabled("indexAllRemoteItems");
  fpfs_supports_indexAllRemoteItems_feature_enabled = result;
  return result;
}

uint64_t fpfs_supports_fsevents_purge_detection()
{
  v0 = *__error();
  if (fpfs_supports_fsevents_purge_detection_once_token != -1)
  {
    fpfs_supports_fsevents_purge_detection_cold_1();
  }

  *__error() = v0;
  v1 = fpfs_supports_fsevents_purge_detection_feature_enabled;
  v2 = *__error();
  if (fpfs_supports_fsevents_purge_detection_once_token_36 != -1)
  {
    fpfs_supports_fsevents_purge_detection_cold_2();
  }

  *__error() = v2;
  return (v1 & fpfs_supports_fsevents_purge_detection_enablementFSEvents);
}

uint64_t __fpfs_supports_fsevents_purge_detection_block_invoke()
{
  result = _fpfs_is_feature_flag_enabled("fseventsPurgeDetection");
  fpfs_supports_fsevents_purge_detection_feature_enabled = result;
  return result;
}

uint64_t __fpfs_supports_fsevents_purge_detection_block_invoke_2()
{
  result = _os_feature_enabled_impl();
  fpfs_supports_fsevents_purge_detection_enablementFSEvents = result;
  return result;
}

uint64_t fpfs_supports_bgst_improvements()
{
  v0 = *__error();
  if (fpfs_supports_bgst_improvements_once_token != -1)
  {
    fpfs_supports_bgst_improvements_cold_1();
  }

  *__error() = v0;
  return fpfs_supports_bgst_improvements_feature_enabled;
}

uint64_t __fpfs_supports_bgst_improvements_block_invoke()
{
  result = _fpfs_is_feature_flag_enabled("bgstImprovements");
  fpfs_supports_bgst_improvements_feature_enabled = result;
  return result;
}

uint64_t fpfs_supports_gutenberg()
{
  v0 = *__error();
  if (fpfs_supports_gutenberg_once_token != -1)
  {
    fpfs_supports_gutenberg_cold_1();
  }

  *__error() = v0;
  return fpfs_supports_gutenberg_feature_enabled;
}

uint64_t __fpfs_supports_gutenberg_block_invoke()
{
  result = _fpfs_is_feature_flag_enabled("gutenberg");
  fpfs_supports_gutenberg_feature_enabled = result;
  return result;
}

uint64_t fpfs_fset_syncroot(int a1, int a2)
{
  result = fpfs_operation_is_allowed(4);
  if (result)
  {
    v5 = a2 != 0;
    return (ffsctl(a1, 0x80044A48uLL, &v5, 0) >> 31);
  }

  return result;
}

uint64_t fpfs_set_syncroot_at(uint64_t a1, const char *a2, int a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __fpfs_set_syncroot_at_block_invoke;
  v4[3] = &__block_descriptor_36_e8_i12__0i8l;
  v5 = a3;
  return fpfs_openat(a1, a2, 0x100000u, 0, 0, v4);
}

uint64_t fpfs_fget_syncroot(int a1, BOOL *a2)
{
  v5 = 0;
  if (fpfs_operation_is_allowed(2) && ffsctl(a1, 0x40044A48uLL, &v5, 0) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a2)
  {
    *a2 = v5 != 0;
  }

  return result;
}

uint64_t FPStatFSFromPath(void *a1, statfs *a2)
{
  v3 = a1;
  v4 = statfs([v3 fileSystemRepresentation], a2);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      FPStatFSFromPath_cold_1(v3, v5);
    }
  }

  return v4;
}

char *FPFileSystemTypeName(char *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1 + 72];
    v1 = vars8;
  }

  return a1;
}

uint64_t FPFileSystemFreeBytes(unsigned int *a1)
{
  if (a1)
  {
    return *(a1 + 3) * *a1;
  }

  else
  {
    return -1;
  }
}

__CFString *FPLocalizedFileSystemTypeName(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:a1];
  v10 = 0;
  v2 = *MEMORY[0x1E695DDC8];
  v9 = 0;
  v3 = [v1 getResourceValue:&v10 forKey:v2 error:&v9];
  v4 = v10;
  v5 = v9;

  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      FPLocalizedFileSystemTypeName_cold_1(v5, v7);
    }

    v6 = @"Unknown";
  }

  return v6;
}

void sub_1AAB4DBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AAB4EC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void *__getCSSearchQueryErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_0();
  result = dlsym(v2, "CSSearchQueryErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCSSearchQueryErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreSpotlightLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpotlightLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCSUserQueryContextClass_block_invoke(uint64_t a1)
{
  CoreSpotlightLibrary_0();
  result = objc_getClass("CSUserQueryContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSUserQueryContextClass_block_invoke_cold_1();
  }

  getCSUserQueryContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCSUserQueryClass_block_invoke(uint64_t a1)
{
  CoreSpotlightLibrary_0();
  result = objc_getClass("CSUserQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSUserQueryClass_block_invoke_cold_1();
  }

  getCSUserQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getIFImageClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIFImageClass_softClass;
  v7 = getIFImageClass_softClass;
  if (!getIFImageClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIFImageClass_block_invoke;
    v3[3] = &unk_1E793A2E8;
    v3[4] = &v4;
    __getIFImageClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AAB50FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _CGImageDestinationCreateWithData(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v4 = getCGImageDestinationCreateWithDataSymbolLoc_ptr;
  v10 = getCGImageDestinationCreateWithDataSymbolLoc_ptr;
  if (!getCGImageDestinationCreateWithDataSymbolLoc_ptr)
  {
    v5 = ImageIOLibrary();
    v8[3] = dlsym(v5, "CGImageDestinationCreateWithData");
    getCGImageDestinationCreateWithDataSymbolLoc_ptr = v8[3];
    v4 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v4)
  {
    _CGImageDestinationCreateWithData_cold_1();
  }

  return v4(a1, a2, 1, 0);
}

void sub_1AAB510BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _CGImageDestinationAddImage(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v4 = getCGImageDestinationAddImageSymbolLoc_ptr;
  v10 = getCGImageDestinationAddImageSymbolLoc_ptr;
  if (!getCGImageDestinationAddImageSymbolLoc_ptr)
  {
    v5 = ImageIOLibrary();
    v8[3] = dlsym(v5, "CGImageDestinationAddImage");
    getCGImageDestinationAddImageSymbolLoc_ptr = v8[3];
    v4 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v4)
  {
    _CGImageDestinationAddImage_cold_1();
  }

  return v4(a1, a2, 0);
}

void sub_1AAB511CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _CGImageDestinationFinalize(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = getCGImageDestinationFinalizeSymbolLoc_ptr;
  v8 = getCGImageDestinationFinalizeSymbolLoc_ptr;
  if (!getCGImageDestinationFinalizeSymbolLoc_ptr)
  {
    v3 = ImageIOLibrary();
    v6[3] = dlsym(v3, "CGImageDestinationFinalize");
    getCGImageDestinationFinalizeSymbolLoc_ptr = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    _CGImageDestinationFinalize_cold_1();
  }

  return v2(a1);
}

void sub_1AAB512D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIFImageClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IconFoundationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IconFoundationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E793AD68;
    v6 = 0;
    IconFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IconFoundationLibraryCore_frameworkLibrary)
  {
    __getIFImageClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("IFImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIFImageClass_block_invoke_cold_1();
  }

  getIFImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IconFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IconFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getCGImageDestinationCreateWithDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "CGImageDestinationCreateWithData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageDestinationCreateWithDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ImageIOLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ImageIOLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ImageIOLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E793AD80;
    v5 = 0;
    ImageIOLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ImageIOLibraryCore_frameworkLibrary;
  if (!ImageIOLibraryCore_frameworkLibrary)
  {
    ImageIOLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __ImageIOLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ImageIOLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getCGImageDestinationAddImageSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "CGImageDestinationAddImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageDestinationAddImageSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageDestinationFinalizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "CGImageDestinationFinalize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageDestinationFinalizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return objc_opt_class();
}

void sub_1AAB52D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AAB53D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getDSArchiveServiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getDSArchiveServiceClass_softClass;
  v7 = getDSArchiveServiceClass_softClass;
  if (!getDSArchiveServiceClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getDSArchiveServiceClass_block_invoke;
    v3[3] = &unk_1E793A2E8;
    v3[4] = &v4;
    __getDSArchiveServiceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AAB5457C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AAB551EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AAB55850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 96));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getDSArchiveServiceClass_block_invoke(uint64_t a1)
{
  DesktopServicesPrivLibrary();
  result = objc_getClass("DSArchiveService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDSArchiveServiceClass_block_invoke_cold_1();
  }

  getDSArchiveServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t DesktopServicesPrivLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!DesktopServicesPrivLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __DesktopServicesPrivLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E793B150;
    v5 = 0;
    DesktopServicesPrivLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = DesktopServicesPrivLibraryCore_frameworkLibrary;
  if (!DesktopServicesPrivLibraryCore_frameworkLibrary)
  {
    DesktopServicesPrivLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __DesktopServicesPrivLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DesktopServicesPrivLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getDSArchiveServiceErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DesktopServicesPrivLibrary();
  result = dlsym(v2, "DSArchiveServiceErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDSArchiveServiceErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1AAB57A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AAB580EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBRFieldContentSignatureClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!iCloudDriveCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __iCloudDriveCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E793B168;
    v6 = 0;
    iCloudDriveCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!iCloudDriveCoreLibraryCore_frameworkLibrary)
  {
    __getBRFieldContentSignatureClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("BRFieldContentSignature");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBRFieldContentSignatureClass_block_invoke_cold_1();
  }

  getBRFieldContentSignatureClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __iCloudDriveCoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  iCloudDriveCoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AAB596F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void FPBookmarkableStringFromDocumentURL(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __FPBookmarkableStringFromDocumentURL_block_invoke;
  v14[3] = &unk_1E7939EA8;
  v5 = v3;
  v15 = v5;
  v6 = [FPFrameworkOverridesIterator newIteratorWithNotFoundHandler:v14];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FPBookmarkableStringFromDocumentURL_block_invoke_2;
  v10[3] = &unk_1E793B1D8;
  v11 = v6;
  v12 = v4;
  v13 = v5;
  v7 = v5;
  v8 = v4;
  v9 = v6;
  [v9 FPBookmarkableStringFromDocumentURL:v8 completionHandler:v10];
}

uint64_t __FPBookmarkableStringFromDocumentURL_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __FPBookmarkableStringFromDocumentURL_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 | v6)
  {
    v7 = fp_current_or_default_log();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = [*(a1 + 40) fp_shortDescription];
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_INFO, "[INFO] Created a bookmark for %@", &v12, 0xCu);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __FPBookmarkableStringFromDocumentURL_block_invoke_2_cold_1(v6);
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, v5, v6);
    }

    [*(a1 + 32) finish];
  }

  else
  {
    [*(a1 + 32) callNextOverrides];
  }

  v11 = *MEMORY[0x1E69E9840];
}

id FPCreateBookmarkableStringFromDocumentURLWithOptions(void *a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  +[FPFrameworkOverridesIterator allOverrides];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v31 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v25 = a3;
    v9 = *v29;
    v10 = &unk_1E793F000;
    v11 = &unk_1E793F000;
    while (2)
    {
      v12 = 0;
      v13 = v10[350];
      v14 = v11[349];
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v28 + 1) + 8 * v12);
        v16 = objc_opt_respondsToSelector();
        v17 = objc_opt_respondsToSelector();
        if (v16 & 1) != 0 || (v17)
        {
          if (v16)
          {
            v27 = 0;
            v18 = &v27;
            [v15 FPBookmarkableStringFromDocumentURL:v5 options:a2 error:&v27];
          }

          else
          {
            v26 = 0;
            v18 = &v26;
            [v15 FPBookmarkableStringFromDocumentURL:v5 error:&v26];
          }
          v19 = ;
          v20 = *v18;
          v21 = v20;
          if (v20)
          {
            v22 = 0;
            if (v25)
            {
              *v25 = v20;
            }

            goto LABEL_19;
          }

          if (v19)
          {
            v22 = v19;
LABEL_19:

            goto LABEL_20;
          }
        }

        ++v12;
      }

      while (v8 != v12);
      v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
      v10 = &unk_1E793F000;
      v11 = &unk_1E793F000;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v22 = 0;
LABEL_20:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

void FPDocumentURLFromBookmarkableString(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __FPDocumentURLFromBookmarkableString_block_invoke;
  v11[3] = &unk_1E7939EA8;
  v4 = v3;
  v12 = v4;
  v5 = [FPFrameworkOverridesIterator newIteratorWithNotFoundHandler:v11];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FPDocumentURLFromBookmarkableString_block_invoke_2;
  v8[3] = &unk_1E793A1E0;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  [v7 FPDocumentURLFromBookmarkableString:a1 completionHandler:v8];
}

uint64_t __FPDocumentURLFromBookmarkableString_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __FPDocumentURLFromBookmarkableString_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 | v6)
  {
    v7 = fp_current_or_default_log();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = [v5 fp_shortDescription];
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_INFO, "[INFO] Resolved bookmark to URL %@", &v12, 0xCu);
      }

      MEMORY[0x1AC5934D0](v5, @"FPFileIsBookmarkURLProperty", *MEMORY[0x1E695E4D0]);
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __FPDocumentURLFromBookmarkableString_block_invoke_2_cold_1(v6);
      }
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v5, v6);
    }

    [*(a1 + 32) finish];
  }

  else
  {
    [*(a1 + 32) callNextOverrides];
  }

  v11 = *MEMORY[0x1E69E9840];
}

id FPCreateDocumentURLFromBookmarkableString(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  +[FPFrameworkOverridesIterator allOverrides];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = *v16;
  while (2)
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v16 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v15 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        v14 = 0;
        v9 = [v8 FPDocumentURLFromBookmarkableString:v3 error:&v14];
        v10 = v14;
        v11 = v10;
        if (v10)
        {
          v5 = 0;
          if (a2)
          {
            *a2 = v10;
          }
        }

        else
        {
          if (!v9)
          {
            continue;
          }

          v5 = v9;
        }

        goto LABEL_16;
      }
    }

    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_16:

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

void FPExtendBookmarkForDocumentURL(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __FPExtendBookmarkForDocumentURL_block_invoke;
  v20[3] = &unk_1E793B200;
  v8 = v5;
  v22 = v8;
  v9 = v7;
  v21 = v9;
  v10 = [FPFrameworkOverridesIterator newIteratorWithNotFoundHandler:v20];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __FPExtendBookmarkForDocumentURL_block_invoke_2;
  v15[3] = &unk_1E793B228;
  v16 = v10;
  v17 = v9;
  v18 = v6;
  v19 = v8;
  v11 = v8;
  v12 = v6;
  v13 = v9;
  v14 = v10;
  [v14 FPExtendBookmarkForDocumentURL:v13 forBundleID:v12 completionHandler:v15];
}

uint64_t __FPExtendBookmarkForDocumentURL_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 40);
  if (v8)
  {
    v9 = FPProviderNotFoundErrorForURL(*(result + 32), a2, a3, a4, a5, a6, a7, a8);
    v10 = *(v8 + 16);

    return v10(v8, 0, v9);
  }

  return result;
}

void __FPExtendBookmarkForDocumentURL_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 | v6)
  {
    v7 = fp_current_or_default_log();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 48);
        v12 = 138412546;
        v13 = v9;
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_INFO, "[INFO] Extended sandbox and received bookmark for %@: %@", &v12, 0x16u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __FPExtendBookmarkForDocumentURL_block_invoke_2_cold_1();
    }

    v10 = *(a1 + 56);
    if (v10)
    {
      (*(v10 + 16))(v10, v5, v6);
    }

    [*(a1 + 32) finish];
  }

  else
  {
    [*(a1 + 32) callNextOverrides];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void FPRegisterFileProvidersForFileCoordination(void *a1)
{
  v1 = a1;
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    FPRegisterFileProvidersForFileCoordination_cold_1();
  }

  v1[2](v1);
}

void FPRegisterFileProvidersForUser(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    FPRegisterFileProvidersForUser_cold_1();
  }

  v5 = [FPDaemonConnection connectionForUser:a1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __FPRegisterFileProvidersForUser_block_invoke;
  v7[3] = &unk_1E793B250;
  v8 = v3;
  v6 = v3;
  [v5 wakeUpForURL:0 completionHandler:v7];
}

void __FPRegisterFileProvidersForUser_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __FPRegisterFileProvidersForUser_block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

BOOL FPFetchDatalessFileResolverUIDAtURL(void *a1, uid_t *a2, void *a3)
{
  v5 = a1;
  if (![v5 isFileURL] || (objc_msgSend(v5, "path"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "fileSystemRepresentation"), v6, !v7))
  {
    if (a3)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A978];
      v13 = -1000;
LABEL_7:
      [v11 errorWithDomain:v12 code:v13 userInfo:0];
      *a3 = v10 = 0;
      goto LABEL_35;
    }

LABEL_34:
    v10 = 0;
    goto LABEL_35;
  }

  v8 = [v5 path];
  dataless_cmpfs_xattr_owner = fpfs_get_dataless_cmpfs_xattr_owner([v8 fileSystemRepresentation], a2);

  if (dataless_cmpfs_xattr_owner < 0)
  {
    if (*__error() == 63)
    {
      v14 = getiopolicy_np(13, 1);
      v15 = v14;
      if (v14 != 1)
      {
        if (v14 == -1)
        {
          v16 = fp_current_or_default_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            FPFetchDatalessFileResolverUIDAtURL_cold_1();
          }

          goto LABEL_32;
        }

        if (setiopolicy_np(13, 1, 1) < 0)
        {
          v16 = fp_current_or_default_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            FPFetchDatalessFileResolverUIDAtURL_cold_3();
          }

LABEL_32:

          if (a3)
          {
            v22 = MEMORY[0x1E696ABC0];
            v23 = *MEMORY[0x1E696A798];
            v13 = *__error();
            v11 = v22;
            v12 = v23;
            goto LABEL_7;
          }

          goto LABEL_34;
        }

        v21 = [v5 path];
        dataless_cmpfs_xattr_owner = fpfs_get_dataless_cmpfs_xattr_owner([v21 fileSystemRepresentation], a2);

        if ((dataless_cmpfs_xattr_owner & 0x80000000) == 0)
        {
LABEL_23:
          if (setiopolicy_np(13, 1, v15) < 0)
          {
            v20 = fp_current_or_default_log();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              FPFetchDatalessFileResolverUIDAtURL_cold_2();
            }
          }

          goto LABEL_4;
        }
      }
    }

    else
    {
      v15 = -1;
    }

    v17 = [v5 path];
    v18 = open([v17 fileSystemRepresentation], 2097156);

    if (v18 < 0)
    {
      dataless_cmpfs_xattr_owner = v18;
    }

    else
    {
      memset(&v25, 0, sizeof(v25));
      dataless_cmpfs_xattr_owner = fstat(v18, &v25);
      v19 = *__error();
      close(v18);
      *__error() = v19;
      if (a2 && !dataless_cmpfs_xattr_owner)
      {
        *a2 = v25.st_uid;
      }
    }

    if (a3 && dataless_cmpfs_xattr_owner < 0)
    {
      *a3 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
    }

    if (v15 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

LABEL_4:
  v10 = dataless_cmpfs_xattr_owner == 0;
LABEL_35:

  return v10;
}

BOOL FPStartDownloadingItemAtURL(void *a1, void *a2)
{
  v3 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6;
  v13 = __Block_byref_object_dispose__6;
  v14 = 0;
  v4 = +[FPDaemonConnection synchronousSharedConnectionProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FPStartDownloadingItemAtURL_block_invoke;
  v8[3] = &unk_1E793B278;
  v8[4] = &v9;
  [v4 startDownloadingItemAtURL:v3 completionHandler:v8];

  v5 = v10[5];
  if (a2 && v5)
  {
    v5 = v5;
    *a2 = v5;
  }

  v6 = v5 == 0;
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_1AAB5A960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FPResolveSymlink(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = getiopolicy_np(3, 1);
  if (v6 == 1)
  {
    v7 = FPResolveSymlinkRecursive(v5, a2, 0, 0, a3);
  }

  else
  {
    v8 = v6;
    setiopolicy_np(3, 1, 1);
    v7 = FPResolveSymlinkRecursive(v5, a2, 0, 0, a3);
    setiopolicy_np(3, 1, v8);
  }

  return v7;
}

id FPResolveSymlinkRecursive(void *a1, uint64_t a2, unint64_t a3, int a4, void *a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = v9;
  if (a3 >= 0x65)
  {
    if (a5)
    {
      [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:62];
      *a5 = v11 = 0;
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (([v9 isFileURL] & 1) == 0)
  {
    v15 = v10;
LABEL_18:
    v10 = v15;
    v11 = v15;
    goto LABEL_26;
  }

  memset(&v36, 0, sizeof(v36));
  if (lstat([v10 fileSystemRepresentation], &v36) < 0)
  {
LABEL_11:
    if (*__error() == 2)
    {
      if (a5)
      {
        v16 = MEMORY[0x1E696ABC0];
        v39 = *MEMORY[0x1E696A998];
        v40 = v10;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        *a5 = [v16 errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:v17];
      }
    }

    else
    {
      if (*__error() == 11 && !a4)
      {
        v21 = objc_opt_new();
        *v41 = 0;
        v42 = v41;
        v43 = 0x3032000000;
        v44 = __Block_byref_object_copy__6;
        v45 = __Block_byref_object_dispose__6;
        v46 = 0;
        v22 = [v10 URLByDeletingLastPathComponent];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __FPResolveSymlinkRecursive_block_invoke_2;
        v34[3] = &unk_1E793B758;
        v34[4] = v41;
        [v21 coordinateReadingItemAtURL:v22 options:1 error:a5 byAccessor:v34];

        if (*(v42 + 5))
        {
          v11 = FPResolveSymlinkRecursive(v10, a2, a3, 1, a5);
        }

        else
        {
          v11 = 0;
        }

        _Block_object_dispose(v41, 8);

        goto LABEL_26;
      }

      if (a5)
      {
        v23 = MEMORY[0x1E696ABC0];
        v24 = *MEMORY[0x1E696A998];
        v38[0] = v10;
        v25 = *MEMORY[0x1E696AA08];
        v37[0] = v24;
        v37[1] = v25;
        v26 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
        v38[1] = v26;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
        *a5 = [v23 errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:v27];
      }
    }

LABEL_25:
    v11 = 0;
    goto LABEL_26;
  }

  if ((v36.st_mode & 0xF000) == 0xA000)
  {
    bzero(v41, 0x401uLL);
    v12 = v10;
    v13 = readlink([v10 fileSystemRepresentation], v41, 0x401uLL);
    if ((v13 & 0x8000000000000000) == 0)
    {
      v41[v13] = 0;
      if (v41[0] == 47)
      {
        v14 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v41 isDirectory:0 relativeToURL:0];
      }

      else
      {
        v30 = [v10 URLByDeletingLastPathComponent];
        v31 = [MEMORY[0x1E696AEC0] fp_pathWithFileSystemRepresentation:v41];
        v14 = [v30 URLByAppendingPathComponent:v31 isDirectory:0];
      }

      v32 = [v14 standardizedURL];
      v11 = FPResolveSymlinkRecursive(v32, a2, a3 + 1, 0, a5);

      goto LABEL_26;
    }

    goto LABEL_11;
  }

  v18 = MEMORY[0x1E695DFF8];
  v19 = [v10 path];
  v20 = [v18 fileURLWithPath:v19 isDirectory:(v36.st_mode & 0xF000) == 0x4000];

  if (!a2 || (v36.st_mode & 0xF000) != 0x4000 || (v36.st_flags & 0x40000000) == 0)
  {
    v15 = v20;
    goto LABEL_18;
  }

  v33 = objc_opt_new();
  *v41 = 0;
  v42 = v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__6;
  v45 = __Block_byref_object_dispose__6;
  v46 = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __FPResolveSymlinkRecursive_block_invoke;
  v35[3] = &unk_1E793B758;
  v35[4] = v41;
  [v33 coordinateReadingItemAtURL:v20 options:1 error:a5 byAccessor:v35];
  v11 = *(v42 + 5);
  _Block_object_dispose(v41, 8);

  v10 = v20;
LABEL_26:

  v28 = *MEMORY[0x1E69E9840];

  return v11;
}

BOOL FPIsBinCompatSymlinkToDetachedRoot(void *a1)
{
  v1 = a1;
  v2 = getiopolicy_np(3, 1);
  if (v2 != 1)
  {
    setiopolicy_np(3, 1, 1);
  }

  v3 = open([v1 fileSystemRepresentation], 2129924);
  if (v3 < 0)
  {
    v5 = 0;
  }

  else
  {
    v4 = v3;
    memset(&v7, 0, sizeof(v7));
    v5 = (fstat(v3, &v7) & 0x80000000) == 0 && (v7.st_mode & 0xF000) == 0xA000 && fgetxattr(v4, "com.apple.fileprovider.detached-link#P", 0, 0, 0, 0) >= 0;
    close(v4);
  }

  if (v2 != 1)
  {
    setiopolicy_np(3, 1, v2);
  }

  return v5;
}

id FPCopyItemForURLWithEUID(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6;
  v13 = __Block_byref_object_dispose__6;
  v14 = 0;
  v5 = +[FPDaemonConnection synchronousSharedConnectionProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FPCopyItemForURLWithEUID_block_invoke;
  v8[3] = &unk_1E793B2A0;
  v8[4] = &v9;
  v8[5] = &v15;
  [v5 itemForURL:v4 options:0 completionHandler:v8];
  if (a3)
  {
    *a3 = v16[5];
  }

  v6 = v10[5];

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);

  return v6;
}

void sub_1AAB5B29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __FPCopyItemForURLWithEUID_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [FPItemManager _promoteItemToAppLibraryIfNeeded:*(*(*(a1 + 32) + 8) + 40)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
  v11 = v6;

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

void __FPRegisterFileProvidersForUserAtURLs_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __FPRegisterFileProvidersForUser_block_invoke_cold_1();
  }

  v8 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __FPRegisterFileProvidersForUserAtURLs_block_invoke_14;
  v11[3] = &unk_1E79399B0;
  v12 = v5;
  v9 = *(v8 + 16);
  v10 = v5;
  v9(v8, v6, v11);
}

BOOL FPURLIsLocatedOnRemovableStorage(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFF8] URLWithString:@"file:///private/var/mobile/Library/LiveFiles/com.apple.filesystems.userfsd"];
  v3 = [v2 fp_relativePathOf:a1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t FPIsFileProviderBookmark(const __CFURL *a1, CFErrorRef *error)
{
  propertyValueTypeRefPtr = 0;
  if (CFURLCopyResourcePropertyForKey(a1, @"FPFileIsBookmarkURLProperty", &propertyValueTypeRefPtr, error))
  {
    v4 = propertyValueTypeRefPtr == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = FPCreateBookmarkableStringFromDocumentURLWithOptions(a1, 0, error);
    v6 = v5;
    Value = v5 != 0;
    if (v5)
    {
      CFRelease(v5);
    }

    v7 = MEMORY[0x1E695E4D0];
    if (!v6)
    {
      v7 = MEMORY[0x1E695E4C0];
    }

    MEMORY[0x1AC5934D0](a1, @"FPFileIsBookmarkURLProperty", *v7);
  }

  else
  {
    Value = CFBooleanGetValue(propertyValueTypeRefPtr);
    CFRelease(propertyValueTypeRefPtr);
  }

  return Value;
}

uint64_t FPCFCopyAttributeValuesForItem(void *a1, uint64_t a2, void *a3)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __FPCFCopyAttributeValuesForItem_block_invoke;
  v17[3] = &unk_1E793B2F8;
  v17[4] = &v18;
  v17[5] = &v22;
  v6 = [FPFrameworkOverridesIterator newIteratorForURL:a1 withNotFoundHandler:v17];
  v7 = a1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __FPCFCopyAttributeValuesForItem_block_invoke_2;
  v12[3] = &unk_1E793B320;
  v15 = &v22;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v16 = &v18;
  [v8 FPValuesForAttributes:a2 forItemAtURL:v9 completionHandler:v12];
  if (a3)
  {
    *a3 = v23[3];
  }

  v10 = v19[3];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v10;
}

void sub_1AAB5B768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __FPCFCopyAttributeValuesForItem_block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = 0;
  *(*(*(result + 40) + 8) + 24) = 0;
  return result;
}

void __FPCFCopyAttributeValuesForItem_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    if (!*(*(*(a1 + 48) + 8) + 24))
    {
      [*(a1 + 32) callNextOverrides];
      goto LABEL_7;
    }

    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __FPCFCopyAttributeValuesForItem_block_invoke_2_cold_1();
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = v5;
  *(*(*(a1 + 48) + 8) + 24) = v6;
  [*(a1 + 32) finish];
LABEL_7:
}

uint64_t FPCFSetAttributeValueForItem(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = +[FPFrameworkOverridesIterator allOverrides];
  v8 = a2;
  v9 = a3;
  v10 = a1;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    v15 = &unk_1E793F000;
    while (2)
    {
      v16 = 0;
      v17 = v15[361];
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v27 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          v26 = 0;
          v19 = [v18 FPSetValue:v9 forAttribute:v8 onItemAtURL:v10 error:&v26];
          v20 = v26;
          v21 = v20;
          if ((v19 & 1) == 0 && v20)
          {
            if (a4)
            {
              *a4 = v20;
            }

            v22 = 0;
            goto LABEL_18;
          }

          if (v19)
          {
            v22 = 1;
LABEL_18:

            goto LABEL_19;
          }
        }

        ++v16;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      v15 = &unk_1E793F000;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  if (a4)
  {
    FPNotSupportedError();
    *a4 = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_19:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

void FPCFGetAttributeValuesForItem(void *a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    *cf = 0;
    v6 = FPCFCopyAttributeValuesForItem(a1, a2, cf);
    v5[2](v5, v6, *cf);
    if (*cf)
    {
      CFRelease(*cf);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *cf = 136315138;
      *&cf[4] = "FPCFGetAttributeValuesForItem";
      _os_log_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEFAULT, "[NOTICE] No point in calling %s without a completion block", cf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

id FPCopyExtensionMatchingDictionaryForItem(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 fp_matchesFileProviderHeuristics:geteuid()];

  v7 = @"URLMightBeInFileProvider";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v2];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

void FPEvictItem(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[FPDaemonConnection sharedConnection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __FPEvictItem_block_invoke;
  v7[3] = &unk_1E7939C00;
  v8 = v3;
  v5 = v3;
  v6 = [v4 evictItemAtURL:v5 evenIfEnumeratingFP:0 andClearACLForConsumer:a2 completionHandler:v7];
}

void __FPEvictItem_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __FPEvictItem_block_invoke_cold_1();
    }
  }
}

BOOL FPEvictItemAtURL(void *a1, void *a2)
{
  v3 = a1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __FPEvictItemAtURL_block_invoke;
  v11[3] = &unk_1E793A2E8;
  v11[4] = &v12;
  v4 = [FPFrameworkOverridesIterator newIteratorWithNotFoundHandler:v11];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FPEvictItemAtURL_block_invoke_2;
  v8[3] = &unk_1E793B348;
  v5 = v4;
  v9 = v5;
  v10 = &v12;
  [v5 FPEvictItemAtURL:v3 completionHandler:v8];
  if (a2)
  {
    *a2 = v13[5];
  }

  v6 = v13[5] == 0;

  _Block_object_dispose(&v12, 8);
  return v6;
}

void sub_1AAB5BED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FPEvictItemAtURL_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:45];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __FPEvictItemAtURL_block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6 || (a2 & 1) != 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    [*(a1 + 32) finish];
  }

  else
  {
    [*(a1 + 32) callNextOverrides];
  }
}

void FPUpdateLastUsedDate(void *a1, void *a2)
{
  v3 = a2;
  if ([a1 fp_matchesFileProviderHeuristics:geteuid()])
  {
    v4 = +[FPDaemonConnection sharedConnection];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __FPUpdateLastUsedDate_block_invoke;
    v5[3] = &unk_1E7939100;
    v6 = v3;
    [v4 updateLastUsedDateForFileURL:a1 completionHandler:v5];
  }

  else
  {
    (*(v3 + 2))(v3, 0);
  }
}

void FPSetAlternateContentsURLOnDocumentURL(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = a2;
  v8 = +[FPDaemonConnection sharedConnectionProxy];
  if (v7)
  {
    v21 = 0;
    v9 = [FPSandboxingURLWrapper wrapperWithURL:v7 readonly:0 error:&v21];
    v10 = v21;
    if (!v9)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void FPSetAlternateContentsURLOnDocumentURL(CFURLRef, CFURLRef, void (^__strong)(CFErrorRef))"}];
      v13 = [v7 fp_scopeDescription];
      [v11 handleFailureInFunction:v12 file:@"FPUtilities.m" lineNumber:738 description:{@"nil wrapper returned for url %@: %@", v13, v10}];
    }
  }

  else
  {
    v9 = 0;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __FPSetAlternateContentsURLOnDocumentURL_block_invoke;
  v17[3] = &unk_1E7939F98;
  v18 = v7;
  v19 = v6;
  v20 = v5;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  [v8 setAlternateContentsURL:v9 onDocumentURL:v15 completionHandler:v17];
}

void __FPSetAlternateContentsURLOnDocumentURL_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __FPSetAlternateContentsURLOnDocumentURL_block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __FPSetAlternateContentsURLOnDocumentURL_block_invoke_cold_2(a1);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void FPFetchAlternateContentsURLForDocumentURL(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[FPDaemonConnection sharedConnectionProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FPFetchAlternateContentsURLForDocumentURL_block_invoke;
  v8[3] = &unk_1E793A1E0;
  v9 = v4;
  v10 = v3;
  v6 = v3;
  v7 = v4;
  [v5 fetchAlternateContentsURLForDocumentURL:v7 completionHandler:v8];
}

void __FPFetchAlternateContentsURLForDocumentURL_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = fp_current_or_default_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __FPFetchAlternateContentsURLForDocumentURL_block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __FPFetchAlternateContentsURLForDocumentURL_block_invoke_cold_2();
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

void FPAppHasNonUploadedFiles(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[FPDaemonConnection sharedConnectionProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FPAppHasNonUploadedFiles_block_invoke;
  v8[3] = &unk_1E7939328;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  [v5 appHasNonUploadedFiles:v7 completionHandler:v8];
}

void __FPAppHasNonUploadedFiles_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = fp_current_or_default_log();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __FPAppHasNonUploadedFiles_block_invoke_cold_1(a1, v5);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __FPAppHasNonUploadedFiles_block_invoke_cold_2(a1, a2, v7);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }
}

void FPDidUpdateAlternateContentsDocumentForDocumentAtURL(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[FPDaemonConnection sharedConnectionProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FPDidUpdateAlternateContentsDocumentForDocumentAtURL_block_invoke;
  v8[3] = &unk_1E7939170;
  v9 = v4;
  v10 = v3;
  v6 = v3;
  v7 = v4;
  [v5 didUpdateAlternateContentsDocumentForDocumentAtURL:v7 completionHandler:v8];
}

void __FPDidUpdateAlternateContentsDocumentForDocumentAtURL_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __FPDidUpdateAlternateContentsDocumentForDocumentAtURL_block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __FPDidUpdateAlternateContentsDocumentForDocumentAtURL_block_invoke_cold_2(a1);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void legacy_FPUniversalBookmarkableStringFromDocumentURL(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __legacy_FPUniversalBookmarkableStringFromDocumentURL_block_invoke;
  v15[3] = &unk_1E793B200;
  v5 = v3;
  v17 = v5;
  v6 = v4;
  v16 = v6;
  v7 = [FPFrameworkOverridesIterator newIteratorWithNotFoundHandler:v15];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __legacy_FPUniversalBookmarkableStringFromDocumentURL_block_invoke_2;
  v11[3] = &unk_1E793B1D8;
  v12 = v7;
  v13 = v6;
  v14 = v5;
  v8 = v5;
  v9 = v6;
  v10 = v7;
  [v10 FPUniversalBookmarkableStringFromDocumentURL:v9 completionHandler:v11];
}

void legacy_FPDocumentURLFromUniversalBookmarkableString(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __legacy_FPDocumentURLFromUniversalBookmarkableString_block_invoke;
  v11[3] = &unk_1E7939EA8;
  v4 = v3;
  v12 = v4;
  v5 = [FPFrameworkOverridesIterator newIteratorWithNotFoundHandler:v11];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __legacy_FPDocumentURLFromUniversalBookmarkableString_block_invoke_2;
  v8[3] = &unk_1E793A1E0;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  [v7 FPDocumentURLFromUniversalBookmarkableString:a1 completionHandler:v8];
}

void FPPauseSyncForFileAtURL(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = a3;
  v5 = FPNotSupportedError();
  (a3)[2](v4, v5);
}

void FPResumeSyncForFileAtURL(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = a3;
  v5 = FPNotSupportedError();
  (a3)[2](v4, v5);
}

void FPResumeSyncForFileAtURLWithOptions(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = a3;
  v5 = FPNotSupportedError();
  (a3)[2](v4, v5);
}

void FPPauseSyncForFileAtURLWithBehavior(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if ([v5 fp_matchesFileProviderHeuristics:geteuid()])
  {
    v7 = +[FPDaemonConnection sharedConnectionProxy];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __FPPauseSyncForFileAtURLWithBehavior_block_invoke;
    v9[3] = &unk_1E7939100;
    v10 = v6;
    [v7 pauseSyncForItemAtURL:v5 behavior:a2 bundleID:0 completionHandler:v9];
  }

  else
  {
    v8 = FPNotSupportedError();
    (*(v6 + 2))(v6, v8);
  }
}

void FPResumeSyncForFileAtURLWithBehavior(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if ([v5 fp_matchesFileProviderHeuristics:geteuid()])
  {
    v7 = +[FPDaemonConnection sharedConnectionProxy];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __FPResumeSyncForFileAtURLWithBehavior_block_invoke;
    v9[3] = &unk_1E7939100;
    v10 = v6;
    [v7 resumeSyncForItemAtURL:v5 behavior:a2 bundleID:0 completionHandler:v9];
  }

  else
  {
    v8 = FPNotSupportedError();
    (*(v6 + 2))(v6, v8);
  }
}

void FPResumeSyncForItemAtURLWithBehavior(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (a2)
  {
    if (a2 == 1)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __FPResumeSyncForItemAtURLWithBehavior_block_invoke;
      v16[3] = &unk_1E793B370;
      v18 = v6;
      v17 = v5;
      v19 = 0;
      FPUploadLocalVersionOfUbiquitousItemAtURLWithConflictResolutionPolicy(v17, 1, v16);

      goto LABEL_8;
    }

    if (a2 != 2)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
      v15 = FPInvalidParameterError(@"behavior", v8, v9, v10, v11, v12, v13, v14);
      (v7)[2](v7, v15);

      goto LABEL_8;
    }

    a2 = 1;
  }

  FPResumeSyncForFileAtURLWithBehavior(v5, a2, v6);
LABEL_8:
}

void FPUploadLocalVersionOfUbiquitousItemAtURLWithConflictResolutionPolicy(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __FPUploadLocalVersionOfUbiquitousItemAtURLWithConflictResolutionPolicy_block_invoke;
  v7[3] = &unk_1E793B438;
  v8 = v5;
  v6 = v5;
  FPUploadAndReturnLocalVersionOfUbiquitousItemAtURLWithConflictResolutionPolicy(a1, a2, v7);
}

void __FPResumeSyncForItemAtURLWithBehavior_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    FPResumeSyncForFileAtURLWithBehavior(*(a1 + 32), *(a1 + 48), *(a1 + 40));
  }
}

void FPGetPausedFilesList(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[FPDaemonConnection sharedConnectionProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FPGetPausedFilesList_block_invoke;
  v8[3] = &unk_1E793B398;
  v9 = v4;
  v10 = v3;
  v6 = v3;
  v7 = v4;
  [v5 listPausedURLsWithBundleID:0 completionHandler:v8];
}

void __FPGetPausedFilesList_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(a1 + 40);
          v13 = [*(*(&v15 + 1) + 8 * i) url];
          (*(v12 + 16))(v12, v13);
        }

        v9 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  v7();

  v14 = *MEMORY[0x1E69E9840];
}

void FPFetchLatestVersionForFileAtURL(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 fp_matchesFileProviderHeuristics:geteuid()])
  {
    v5 = +[FPDaemonConnection sharedConnectionProxy];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __FPFetchLatestVersionForFileAtURL_block_invoke;
    v7[3] = &unk_1E793B3C0;
    v9 = v4;
    v8 = v3;
    [v5 fetchLatestVersionForItemAtURL:v8 bundleID:0 completionHandler:v7];
  }

  else
  {
    v6 = FPNotSupportedError();
    (*(v4 + 2))(v4, 0, v6);
  }
}

void __FPFetchLatestVersionForFileAtURL_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = *(*(a1 + 40) + 16);
LABEL_3:
    v10();
    goto LABEL_25;
  }

  if (!v7)
  {
    v10 = *(*(a1 + 40) + 16);
    goto LABEL_3;
  }

  v11 = [MEMORY[0x1E69A07C0] manager];
  v12 = *(a1 + 32);
  v32 = 0;
  v13 = [v11 permanentStorageForItemAtURL:v12 allocateIfNone:0 error:&v32];
  v14 = v32;

  if (v13)
  {
    v15 = *MEMORY[0x1E69A0798];
    v31 = v14;
    v16 = [v13 additionWithName:v7 inNameSpace:v15 error:&v31];
    v17 = v31;

    if (v16)
    {
      v30 = v17;
      v18 = MEMORY[0x1E696AC30];
      if (v8)
      {
        v19 = objc_alloc(MEMORY[0x1E696AC30]);
        v20 = *(a1 + 32);
        v21 = [v16 name];
        v22 = [v8 url];
        v23 = [v19 _initWithFileURL:v20 library:0 clientID:0 name:v21 contentsURL:v22 isBackup:0 revision:0];
      }

      else
      {
        v26 = *(a1 + 32);
        v21 = [v16 persistentIdentifier];
        v23 = [v18 versionOfItemAtURL:v26 forPersistentIdentifier:v21];
      }

      if (v23)
      {
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v27 = fp_current_or_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          __FPFetchLatestVersionForFileAtURL_block_invoke_cold_1();
        }

        v28 = *(a1 + 40);
        v29 = FPItemNotFoundErrorAtURL(*(a1 + 32));
        (*(v28 + 16))(v28, 0, v29);
      }

      v17 = v30;
    }

    else
    {
      v25 = fp_current_or_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __FPFetchLatestVersionForFileAtURL_block_invoke_cold_2();
      }

      (*(*(a1 + 40) + 16))();
    }

    v14 = v17;
  }

  else
  {
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __FPFetchLatestVersionForFileAtURL_block_invoke_cold_3();
    }

    (*(*(a1 + 40) + 16))();
  }

LABEL_25:
}

void FPFetchLatestRemoteVersionOfItemAtURL(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __FPFetchLatestRemoteVersionOfItemAtURL_block_invoke;
  v7[3] = &unk_1E793B3E8;
  v8 = v3;
  v9 = v4;
  v5 = v4;
  v6 = v3;
  FPFetchLatestVersionForFileAtURL(v6, v7);
}

void __FPFetchLatestRemoteVersionOfItemAtURL_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = v8;
  v7 = v5;
  if (!(v8 | v5))
  {
    v6 = [MEMORY[0x1E696AC30] currentVersionOfItemAtURL:*(a1 + 32)];
  }

  v9 = v6;
  (*(*(a1 + 40) + 16))();
}

void FPUploadAndReturnLocalVersionOfUbiquitousItemAtURLWithConflictResolutionPolicy(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if ([v5 fp_matchesFileProviderHeuristics:geteuid()])
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__6;
    v12[4] = __Block_byref_object_dispose__6;
    v13 = [MEMORY[0x1E696AC30] currentVersionOfItemAtURL:v5];
    v7 = +[FPDaemonConnection sharedConnectionProxy];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __FPUploadAndReturnLocalVersionOfUbiquitousItemAtURLWithConflictResolutionPolicy_block_invoke;
    v9[3] = &unk_1E793B410;
    v10 = v6;
    v11 = v12;
    [v7 uploadLocalVersionOfItemAtURL:v5 bundleID:0 conflictResolutionPolicy:a2 completionHandler:v9];

    _Block_object_dispose(v12, 8);
  }

  else
  {
    v8 = FPNotSupportedError();
    (*(v6 + 2))(v6, 0, v8);
  }
}

void sub_1AAB5D898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FPUploadAndReturnLocalVersionOfUbiquitousItemAtURLWithConflictResolutionPolicy_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return (*(v3 + 16))(v3, 0, a2);
  }

  else
  {
    return (*(v3 + 16))(v3, *(*(*(a1 + 40) + 8) + 40));
  }
}

void _fetchProviderForProviderDomainID(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___fetchProviderForProviderDomainID_block_invoke;
  v5[3] = &unk_1E793A150;
  v6 = v3;
  v4 = v3;
  [FPProviderDomain fetchProviderDomainWithID:a1 completionHandler:v5];
}

void ___fetchProviderForProviderDomainID_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (!v8 || v5)
  {
    v6 = *(*(a1 + 32) + 16);
    goto LABEL_6;
  }

  if ([v8 isEnabled])
  {
    v6 = *(*(a1 + 32) + 16);
LABEL_6:
    v6();
    goto LABEL_8;
  }

  v7 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"provider isn't enabled"];
  (*(*(a1 + 32) + 16))();

LABEL_8:
}

void _fetchItemForItemID(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[FPItemManager defaultManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___fetchItemForItemID_block_invoke;
  v7[3] = &unk_1E793B460;
  v8 = v3;
  v6 = v3;
  [v5 fetchItemForItemID:v4 completionHandler:v7];
}

uint64_t FPCreateCrossDeviceItemIDForItemAtURL(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  v4 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FPCreateCrossDeviceItemIDForItemAtURL_block_invoke;
  v8[3] = &unk_1E793B488;
  v10 = &v12;
  v11 = a2;
  v5 = v4;
  v9 = v5;
  FPCrossDeviceItemIDForItemAtURL(a1, v8);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);
  return v6;
}

void sub_1AAB5DC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void FPCrossDeviceItemIDForItemAtURL(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    FPCrossDeviceItemIDForItemAtURL_cold_1();
  }

  if (a1)
  {
    v5 = +[FPItemManager defaultManager];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FPCrossDeviceItemIDForItemAtURL_block_invoke;
    v6[3] = &unk_1E793B460;
    v7 = v3;
    [v5 fetchItemForURL:a1 completionHandler:v6];
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"itemURL required to fetch cross-device itemID"];
    (*(v3 + 2))(v3, 0, v5);
  }
}

intptr_t __FPCreateCrossDeviceItemIDForItemAtURL_block_invoke(uint64_t a1, void *a2, const void *a3)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (a3)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __FPCreateCrossDeviceItemIDForItemAtURL_block_invoke_cold_1(a1);
    }

    if (*(a1 + 48))
    {
      CFRetain(a3);
      **(a1 + 48) = a3;
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void __FPCrossDeviceItemIDForItemAtURL_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v6 = [a2 itemID];
    FPCrossDeviceItemIDForItemID(v6, *(a1 + 32));
  }
}

void FPCrossDeviceItemIDForItemID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    FPCrossDeviceItemIDForItemID_cold_1();
  }

  if (v3)
  {
    v6 = +[FPItemManager defaultManager];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __FPCrossDeviceItemIDForItemID_block_invoke;
    aBlock[3] = &unk_1E793B4B0;
    v7 = v4;
    v37 = v7;
    v8 = v3;
    v36 = v8;
    v9 = _Block_copy(aBlock);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __FPCrossDeviceItemIDForItemID_block_invoke_77;
    v32[3] = &unk_1E793B500;
    v10 = v7;
    v33 = v10;
    v34 = v9;
    v11 = v9;
    v12 = _Block_copy(v32);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __FPCrossDeviceItemIDForItemID_block_invoke_4;
    v28[3] = &unk_1E793B550;
    v13 = v10;
    v30 = v13;
    v31 = v12;
    v29 = v6;
    v14 = v6;
    v15 = v12;
    v16 = _Block_copy(v28);
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __FPCrossDeviceItemIDForItemID_block_invoke_6;
    v24 = &unk_1E793B5A0;
    v26 = v13;
    v17 = v8;
    v25 = v17;
    v27 = v16;
    v18 = v16;
    v19 = _Block_copy(&v21);
    v20 = [v17 providerDomainID];
    _fetchProviderForProviderDomainID(v20, v19);
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"itemID required to fetch cross-device itemID"];
    (*(v4 + 2))(v4, 0, v14);
  }
}

uint64_t FPCreateCrossDeviceItemIDForItemID(void *a1, uint64_t a2)
{
  v3 = a1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FPCreateCrossDeviceItemIDForItemID_block_invoke;
  v8[3] = &unk_1E793B488;
  v10 = &v12;
  v11 = a2;
  v5 = v4;
  v9 = v5;
  FPCrossDeviceItemIDForItemID(v3, v8);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v6;
}

void sub_1AAB5E2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t __FPCreateCrossDeviceItemIDForItemID_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (a3)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __FPCreateCrossDeviceItemIDForItemID_block_invoke_cold_1(a1);
    }

    if (*(a1 + 48))
    {
      CFRetain(a3);
      **(a1 + 48) = a3;
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void __FPCrossDeviceItemIDForItemID_block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5)
{
  v9 = a4;
  v10 = v9;
  if (!a2 || a5)
  {
    v12 = *(*(a1 + 40) + 16);
LABEL_8:
    v12();
    goto LABEL_15;
  }

  if (a3)
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __FPCrossDeviceItemIDForItemID_block_invoke_cold_1(a1);
    }

    v12 = *(*(a1 + 40) + 16);
    goto LABEL_8;
  }

  if (v9)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@:%@", @"deviceSpecific", v9, a2];
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __FPCrossDeviceItemIDForItemID_block_invoke_cold_1(a1);
    }

    v15 = *(*(a1 + 40) + 16);
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"can't extract path UUID for local only item"];
    v15 = *(*(a1 + 40) + 16);
  }

  v15();

LABEL_15:
}

void __FPCrossDeviceItemIDForItemID_block_invoke_77(uint64_t a1, void *a2, int a3, char a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v11 || v13)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v15 = [v11 startAccessingSecurityScopedResource];
    if (a3)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __FPCrossDeviceItemIDForItemID_block_invoke_2;
      v23[3] = &unk_1E793B4D8;
      v27 = v15;
      v24 = v11;
      v26 = *(a1 + 40);
      v28 = a4;
      v25 = v12;
      legacy_FPUniversalBookmarkableStringFromDocumentURL(v24, v23);

      v16 = v24;
    }

    else
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __FPCrossDeviceItemIDForItemID_block_invoke_3;
      v17[3] = &unk_1E793B4D8;
      v21 = v15;
      v18 = v11;
      v20 = *(a1 + 40);
      v22 = a4;
      v19 = v12;
      FPBookmarkableStringFromDocumentURL(v18, v17);

      v16 = v18;
    }
  }
}

uint64_t __FPCrossDeviceItemIDForItemID_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 48) + 16);
  v4 = *(a1 + 57);

  return v3();
}

uint64_t __FPCrossDeviceItemIDForItemID_block_invoke_3(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 48) + 16);
  v4 = *(a1 + 57);

  return v3();
}

void __FPCrossDeviceItemIDForItemID_block_invoke_4(uint64_t a1, void *a2, char a3, int a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  v11 = v10;
  if (!v9 || v10)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (a4 && [v9 isUbiquitous] && (objc_msgSend(v9, "isUploaded") & 1) != 0)
    {
      v12 = 0;
      v13 = 1;
    }

    else
    {
      v14 = MEMORY[0x1E6963618];
      v15 = [v9 providerID];
      v16 = [v14 bundleProxyForIdentifier:v15];

      v17 = [v16 dataContainerURL];
      v12 = [v17 lastPathComponent];

      v13 = 0;
    }

    v18 = [v9 fileURL];
    if (v18)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v19 = *(a1 + 32);
      v20 = [v9 itemID];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __FPCrossDeviceItemIDForItemID_block_invoke_5;
      v21[3] = &unk_1E793B528;
      v23 = *(a1 + 48);
      v24 = a3;
      v25 = v13;
      v22 = v12;
      [v19 fetchURLForItemID:v20 completionHandler:v21];
    }
  }
}

void __FPCrossDeviceItemIDForItemID_block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!v5 || a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [v5 isiCloudDriveProvider];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = [v6 usesUniqueItemIdentifiersAcrossDevices];
    }

    v9 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __FPCrossDeviceItemIDForItemID_block_invoke_7;
    v10[3] = &unk_1E793B578;
    v11 = *(a1 + 48);
    v12 = v7;
    v13 = v8;
    _fetchItemForItemID(v9, v10);
  }
}

uint64_t FPGetItemURLForCrossDeviceItemID(void *a1, uint64_t a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  v4 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FPGetItemURLForCrossDeviceItemID_block_invoke;
  v8[3] = &unk_1E793B5C8;
  v10 = &v12;
  v11 = a2;
  v5 = v4;
  v9 = v5;
  FPItemURLForCrossDeviceItemID(a1, v8);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);
  return v6;
}

void sub_1AAB5EB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void FPItemURLForCrossDeviceItemID(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    CFRetain(a1);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __FPItemURLForCrossDeviceItemID_block_invoke;
  aBlock[3] = &unk_1E793B5F0;
  v36 = a1;
  v4 = v3;
  v35 = v4;
  v5 = _Block_copy(aBlock);
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    FPItemURLForCrossDeviceItemID_cold_1();
  }

  if (a1)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __FPItemURLForCrossDeviceItemID_block_invoke_85;
    v31[3] = &unk_1E793B618;
    v7 = v5;
    v32 = v7;
    v33 = a1;
    v8 = _Block_copy(v31);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __FPItemURLForCrossDeviceItemID_block_invoke_90;
    v27[3] = &unk_1E793B668;
    v9 = v7;
    v28 = v9;
    v30 = a1;
    v10 = v8;
    v29 = v10;
    v11 = _Block_copy(v27);
    v12 = a1;
    if ([v12 hasPrefix:@"deviceSpecific"])
    {
      v13 = [v12 substringFromIndex:{objc_msgSend(@"deviceSpecific", "length")}];

      if (([v13 hasPrefix:@":"] & 1) == 0)
      {
        v16 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"crossDeviceItemID has an invalid format"];
        (*(v9 + 2))(v9, 0, v16);
        goto LABEL_17;
      }

      v14 = [v13 substringFromIndex:1];

      v15 = [v14 rangeOfString:@":"];
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"crossDeviceItemID has an invalid format"];
        (*(v9 + 2))(v9, 0, v16);
        v13 = v14;
LABEL_17:

        v17 = v32;
        goto LABEL_18;
      }

      v20 = v15;
      v18 = [v14 substringToIndex:v15];
      v12 = [v14 substringFromIndex:v20 + 1];
    }

    else
    {
      v18 = 0;
    }

    if ([v12 hasPrefix:@"fp:"])
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __FPItemURLForCrossDeviceItemID_block_invoke_2;
      v24[3] = &unk_1E793B690;
      v25 = v18;
      v26 = v11;
      v16 = v18;
      FPDocumentURLFromBookmarkableString(v12, v24);

      v19 = v26;
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __FPItemURLForCrossDeviceItemID_block_invoke_3;
      v21[3] = &unk_1E793B690;
      v22 = v18;
      v23 = v11;
      v16 = v18;
      legacy_FPDocumentURLFromUniversalBookmarkableString(v12, v21);

      v19 = v23;
    }

    v13 = v12;
    goto LABEL_17;
  }

  v17 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"crossDeviceItemID required to resolve itemURL"];
  (*(v5 + 2))(v5, 0, v17);
LABEL_18:
}

intptr_t __FPGetItemURLForCrossDeviceItemID_block_invoke(uint64_t a1, void *a2, const void *a3)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (a3)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __FPGetItemURLForCrossDeviceItemID_block_invoke_cold_1(a1);
    }

    if (*(a1 + 48))
    {
      CFRetain(a3);
      **(a1 + 48) = a3;
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __FPItemURLForCrossDeviceItemID_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void __FPItemURLForCrossDeviceItemID_block_invoke_85(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a3;
  v10 = a4;
  if (!a2 || a5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v11 = MEMORY[0x1E6963618];
    v12 = [a2 providerID];
    v13 = [v11 bundleProxyForIdentifier:v12];

    v14 = [v13 dataContainerURL];
    v15 = [v14 lastPathComponent];
    v16 = [v9 isEqualToString:v15];

    if (v16)
    {
      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __FPItemURLForCrossDeviceItemID_block_invoke_85_cold_1(a1, v10);
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v18 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"path UUID doesn't match in resulting item URL"];
      (*(*(a1 + 32) + 16))();
    }
  }
}

void __FPItemURLForCrossDeviceItemID_block_invoke_90(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = v7;
  if (!a2 || a4)
  {
    v12 = *(*(a1 + 32) + 16);
LABEL_9:
    v12();
    goto LABEL_10;
  }

  if (!v7)
  {
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __FPItemURLForCrossDeviceItemID_block_invoke_90_cold_1(a1, a2);
    }

    v12 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

  v9 = CFRetain(a2);
  [v9 startAccessingSecurityScopedResource];
  v10 = +[FPItemManager defaultManager];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __FPItemURLForCrossDeviceItemID_block_invoke_91;
  v14[3] = &unk_1E793B640;
  v15 = v9;
  v17 = *(a1 + 40);
  v16 = v8;
  v11 = v9;
  [v10 fetchItemForURL:v11 completionHandler:v14];

LABEL_10:
}

void __FPItemURLForCrossDeviceItemID_block_invoke_91(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v9 = a2;
  [v5 stopAccessingSecurityScopedResource];
  v7 = a1[5];
  v8 = a1[4];
  (*(a1[6] + 16))();
}

id FPGetItemIDFromCrossDeviceItemID(void *a1, uint64_t a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  v4 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FPGetItemIDFromCrossDeviceItemID_block_invoke;
  v8[3] = &unk_1E793B6B8;
  v10 = &v12;
  v11 = a2;
  v5 = v4;
  v9 = v5;
  FPItemIDFromCrossDeviceItemID(a1, v8);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void sub_1AAB5F594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void FPItemIDFromCrossDeviceItemID(void *a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    FPItemIDFromCrossDeviceItemID_cold_1();
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __FPItemIDFromCrossDeviceItemID_block_invoke;
  aBlock[3] = &unk_1E793B6E0;
  v5 = v3;
  v13 = v5;
  v14 = a1;
  v6 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FPItemIDFromCrossDeviceItemID_block_invoke_103;
  v9[3] = &unk_1E793B708;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  FPItemURLForCrossDeviceItemID(a1, v9);
}

void __FPGetItemIDFromCrossDeviceItemID_block_invoke(uint64_t a1, void *a2, const void *a3)
{
  v6 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (a3)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __FPGetItemIDFromCrossDeviceItemID_block_invoke_cold_1(a1);
    }

    if (*(a1 + 48))
    {
      CFRetain(a3);
      **(a1 + 48) = a3;
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __FPItemIDFromCrossDeviceItemID_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5 || a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __FPItemIDFromCrossDeviceItemID_block_invoke_cold_1(a1, v5);
    }

    v7 = *(a1 + 32);
    v8 = [v5 itemID];
    (*(v7 + 16))(v7, v8, 0);
  }
}

void __FPItemIDFromCrossDeviceItemID_block_invoke_103(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }

  else
  {
    v7 = +[FPItemManager defaultManager];
    [v7 fetchItemForURL:a2 completionHandler:*(a1 + 40)];
  }
}

void FPNumberOfNonMaterializedFilesForProviderDomainID(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[FPDaemonConnection sharedConnectionProxy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __FPNumberOfNonMaterializedFilesForProviderDomainID_block_invoke;
  v7[3] = &unk_1E793B730;
  v8 = v3;
  v6 = v3;
  [v5 getNumberOfNonMaterializedFilesInDomain:v4 withCompletionHandler:v7];
}

void __FPNumberOfNonMaterializedFilesForProviderDomainID_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __FPNumberOfNonMaterializedFilesForProviderDomainID_block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1AAB605B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak(v2);
  objc_destroyWeak((v3 - 104));
  objc_destroyWeak((v3 - 96));
  _Unwind_Resume(a1);
}

void sub_1AAB60F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1AAB619BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpfs_set_metadata(const char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = a7;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __fpfs_set_metadata_block_invoke;
  v17[3] = &unk_1E793B8C0;
  v23 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v18 = v13;
  v19 = a2;
  v14 = v13;
  v15 = fpfs_open(a1, 0x200002u, 0, 2, v17);

  return v15;
}

uint64_t fpfs_fset_metadata(int a1, uint64_t a2, int a3, uint64_t a4, char *a5, uint64_t *a6, void *a7)
{
  v74 = *MEMORY[0x1E69E9840];
  v10 = a7;
  v11 = 0;
  v12 = 0;
  v13 = *a2;
  v72 = 0u;
  v73 = 0u;
  v14 = 0;
  if ((a4 & 0x400000) != 0 && v13 == 2)
  {
    if ((fpfs_set_favorite_rank(a1, *(a2 + 72)) & 0x80000000) != 0)
    {
      v12 = 0;
      v14 = *__error();
      v11 = 0x400000;
      if ((a4 & 0x800000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_6;
    }

    v14 = 0;
    v11 = 0;
    v12 = 1;
  }

  if ((a4 & 0x800000) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((fpfs_set_is_pinned(a1, (*(a2 + 4) >> 7) & 1) & 0x80000000) != 0)
  {
    v11 |= 0x800000uLL;
    if (!v14)
    {
      v14 = *__error();
    }
  }

  else
  {
    v12 = 1;
  }

LABEL_11:
  if ((a4 & 0x1000000) != 0)
  {
    if ((fpfs_set_before_bounce_filename(a1, *(a2 + 136)) & 0x80000000) != 0)
    {
      v11 |= 0x1000000uLL;
      if (!v14)
      {
        v14 = *__error();
      }
    }

    else
    {
      v12 = 1;
    }
  }

  v68 = 0;
  if ((a4 & 0x2000000) != 0)
  {
    if (*a2 == 2)
    {
      v15 = &v68;
    }

    else
    {
      v15 = 0;
    }

    if ((fpfs_set_syncable_xattrs(a1, *(a2 + 160), v15, v10) & 0x80000000) != 0)
    {
      v11 |= 0x2000000uLL;
      if (!v14)
      {
        v14 = *__error();
      }
    }

    else
    {
      v12 = 1;
    }
  }

  if ((a4 & 0x200000) != 0)
  {
    if ((*(a2 + 5) & 0x10) != 0)
    {
      if ((fpfs_set_last_use_date(a1, (a2 + 56), 0) & 0x80000000) != 0)
      {
        goto LABEL_28;
      }
    }

    else if (fpfs_fremovexattr(a1, "com.apple.lastuseddate#PS", 0) < 0 && *__error() != 93)
    {
LABEL_28:
      v11 |= 0x200000uLL;
      if (!v14)
      {
        v14 = *__error();
      }

      goto LABEL_32;
    }

    v12 = 1;
  }

LABEL_32:
  if ((a4 & 0x20000000) != 0)
  {
    if ((fpfs_fset_collaboration_identifier(a1, *(a2 + 176)) & 0x80000000) != 0)
    {
      v11 |= 0x20000000uLL;
      if (!v14)
      {
        v14 = *__error();
      }
    }

    else
    {
      v12 = 1;
    }
  }

  if ((a4 & 0x40000000) != 0)
  {
    if ((fpfs_fset_is_shared(a1, *(a2 + 184)) & 0x80000000) != 0)
    {
      v11 |= 0x40000000uLL;
      if (!v14)
      {
        v14 = *__error();
      }
    }

    else
    {
      v12 = 1;
    }

    if ((a4 & 0x100000000) != 0)
    {
      if ((fpfs_fset_is_shared_by_current_user(a1, (a2 + 185)) & 0x80000000) != 0)
      {
        v11 |= 0x100000000uLL;
        if (!v14)
        {
          v14 = *__error();
        }
      }

      else
      {
        v12 = 1;
      }
    }

    if ((*(a2 + 184) & 1) == 0 && (fpfs_fset_is_shared_by_current_user(a1, 0) & 0x80000000) != 0)
    {
      v11 |= 0x100000000uLL;
      if (!v14)
      {
        v14 = *__error();
      }
    }
  }

  if ((a4 & 0x80000000) != 0)
  {
    if ((fpfs_fset_owner_name(a1, *(a2 + 192)) & 0x80000000) != 0)
    {
      v11 |= 0x80000000uLL;
      if (!v14)
      {
        v14 = *__error();
      }
    }

    else
    {
      v12 = 1;
    }
  }

  if ((v13 - 1) > 2)
  {
    v17 = 0;
    goto LABEL_71;
  }

  *&v48 = 0;
  if ((a4 & 0x200) != 0)
  {
    v16 = (*(a2 + 4) >> 10) & 2;
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  v18 = v16 | BYTE1(a4) & 1;
  v19 = *(a2 + 4);
  v20 = ~v19 & 4;
  if ((a4 & 0x8000) == 0)
  {
    v20 = 0;
  }

  LOBYTE(v48) = (a4 >> 7) & 8 | v18 | v20 | (16 * (v68 != 0));
  *(&v48 + 1) = a4 & 0x800;
  *(&v69 + 1) = *(a2 + 112);
  *&v69 = v19 & 0xC | (16 * (v68 == 1)) | (v19 >> 10) & 2 | ((v19 & 2) != 0);
  if ((a4 & 0x100000) != 0)
  {
    if ((fpfs_set_tag_data(a1, a2 + 80, &v48, &v69) & 0x80000000) == 0)
    {
      v21 = v10;
      v12 = 1;
      goto LABEL_67;
    }

    v11 |= 0x100000uLL;
    if (!v14)
    {
      v21 = v10;
      v14 = *__error();
      goto LABEL_67;
    }
  }

  v21 = v10;
LABEL_67:
  if ((a4 & 0x108F00) == 0 && !v68)
  {
    goto LABEL_69;
  }

  if ((fpfs_get_finder_info_buffer(a1, &v72) & 0x80000000) != 0)
  {
    v11 |= a4 & 0x108F00;
    if (!v14)
    {
      v17 = 0;
      v14 = *__error();
      goto LABEL_70;
    }

LABEL_69:
    v17 = 0;
LABEL_70:
    v10 = v21;
    goto LABEL_71;
  }

  v66 = 0uLL;
  fpfs_finder_info_deserialize(&v72, &v66);
  v17 = fpfs_finder_info_update_with_mask(&v66, &v48, &v69);
  if (v17)
  {
    fpfs_finder_info_serialize(&v66, &v72);
  }

  v10 = v21;
  if (*a2 == 3)
  {
    fpfs_pkg_promote(a1);
  }

LABEL_71:
  if ((a4 & 0x20000) != 0)
  {
    if (*(a2 + 4))
    {
      if ((fpfs_set_dataless_cmpfs_attrs(a1, a2) & 0x80000000) == 0)
      {
LABEL_74:
        v12 = 1;
        goto LABEL_83;
      }
    }

    else if ((fpfs_unset_dataless_cmpfs_attrs(a1, (a2 + 40)) & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

    v11 |= 0x20000uLL;
    if (!v14)
    {
      v14 = *__error();
    }
  }

LABEL_83:
  v45 = v13;
  if ((a4 & 0x10000000) != 0 && (*a2 & 0xFFFFFFFE) == 2)
  {
    v22 = a1;
    if ((fpfs_fset_syncroot(a1, (*(a2 + 4) >> 8) & 1) & 0x80000000) != 0)
    {
      v11 |= 0x10000000uLL;
      if (!v14)
      {
        v14 = *__error();
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v22 = a1;
  }

  v23 = v10;
  v67 = 0;
  v66 = xmmword_1AAC265A8;
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  v69 = 0u;
  v24 = &v69;
  if ((a4 & 1) == 0)
  {
    v25 = 0;
    v26 = 0;
    if ((a4 & 2) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

  v25 = 512;
  DWORD1(v66) = 512;
  v69 = *(a2 + 24);
  v24 = v70;
  v26 = 16;
  if ((a4 & 2) != 0)
  {
LABEL_92:
    v25 |= 0x400u;
    DWORD1(v66) = v25;
    *v24++ = *(a2 + 40);
    v26 += 16;
  }

LABEL_93:
  if ((a4 & 0x200000) != 0 && (*(a2 + 5) & 0x10) != 0)
  {
    DWORD1(v66) = v25 | 0x1000;
    *v24++ = *(a2 + 56);
    v26 += 16;
  }

  if (v17)
  {
    DWORD1(v66) |= 0x4000u;
    v27 = v73;
    *v24 = v72;
    v24[1] = v27;
    v24 += 2;
    v26 += 32;
  }

  if ((a4 & 4) != 0)
  {
    DWORD1(v66) |= 0x20000u;
    v28 = *(a2 + 8) & 0xFFF;
    if ((v45 & 0xFFFFFFFE) == 2)
    {
      if (fpfs_supports_vfs_ignore_permissions_iopolicy())
      {
        v28 |= 0x40u;
      }

      else
      {
        v28 |= 0x1C0u;
      }
    }

    *v24 = v28;
    v24 = (v24 + 4);
    v26 += 4;
  }

  else if (!v26)
  {
    goto LABEL_109;
  }

  if (v24 - &v69 != v26)
  {
    fpfs_fset_metadata_cold_1();
  }

  if ((fsetattrlist(v22, &v66, &v69, v26, 0) & 0x80000000) == 0)
  {
    v12 = 1;
LABEL_109:
    v29 = v23;
    goto LABEL_112;
  }

  v11 |= a4 & 0x308F07;
  v29 = v23;
  if (!v14)
  {
    v14 = *__error();
  }

LABEL_112:
  if ((a4 & 0x38000) == 0)
  {
    goto LABEL_125;
  }

  if ((a4 & 0x8000) == 0)
  {
    v30 = 0;
    v31 = 0;
    if ((a4 & 0x10000) == 0)
    {
      goto LABEL_120;
    }

LABEL_117:
    if ((*(a2 + 4) & 0x10) != 0)
    {
      v31 |= 2u;
    }

    else
    {
      v30 |= 2u;
    }

    goto LABEL_120;
  }

  v31 = (*(a2 + 4) << 13) & 0x8000;
  v30 = v31 ^ 0x8000;
  if ((a4 & 0x10000) != 0)
  {
    goto LABEL_117;
  }

LABEL_120:
  if (v31 | v30)
  {
    if ((fpfs_fchflags(v22, v30, v31) & 0x80000000) == 0)
    {
      v12 = 1;
      if ((a4 & 0x8000000) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_126;
    }

    v11 |= a4 & 0x38000;
    if (!v14)
    {
      v14 = *__error();
      if ((a4 & 0x8000000) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_126;
    }
  }

LABEL_125:
  if ((a4 & 0x8000000) == 0)
  {
    goto LABEL_138;
  }

LABEL_126:
  if (*a2 == 3)
  {
    goto LABEL_130;
  }

  if (*a2 != 1)
  {
    goto LABEL_138;
  }

  if (!fpfs_supports_partial_materialization())
  {
LABEL_130:
    v32 = *(a2 + 4);
    if ((v32 & 1) == 0)
    {
      goto LABEL_131;
    }

LABEL_138:
    v40 = a5;
    goto LABEL_139;
  }

  v32 = *(a2 + 4);
LABEL_131:
  v48 = 0u;
  v49 = 0u;
  v33 = *(a2 + 176);
  v61 = *(a2 + 160);
  v62 = v33;
  v34 = *(a2 + 208);
  v63 = *(a2 + 192);
  v64 = v34;
  v35 = *(a2 + 112);
  v57 = *(a2 + 96);
  v58 = v35;
  v36 = *(a2 + 144);
  v59 = *(a2 + 128);
  v60 = v36;
  v37 = *(a2 + 48);
  v53 = *(a2 + 32);
  v54 = v37;
  v38 = *(a2 + 80);
  v55 = *(a2 + 64);
  v56 = v38;
  v39 = *(a2 + 16);
  v51 = *a2;
  v50 = 0;
  DWORD1(v49) = a3;
  v52 = v39;
  v65 = 0;
  if (a3 && (v32 & 0x20) != 0)
  {
    if ((fpfs_set_evictable(v22, &v48) & 0x80000000) != 0)
    {
      goto LABEL_134;
    }

    goto LABEL_137;
  }

  if ((fpfs_unset_evictable(v22, &v48) & 0x80000000) == 0)
  {
LABEL_137:
    v12 = 1;
    goto LABEL_138;
  }

LABEL_134:
  v11 |= 0x8000000uLL;
  v40 = a5;
  if (!v14)
  {
    v14 = *__error();
  }

LABEL_139:
  if (v40)
  {
    *v40 = v12;
  }

  if (v11)
  {
    if (a6)
    {
      *a6 = v11;
    }

    *__error() = v14;
    v41 = 0xFFFFFFFFLL;
  }

  else
  {
    v41 = 0;
  }

  v42 = *MEMORY[0x1E69E9840];
  return v41;
}

uint64_t fpfs_set_vfs_parent_mtime_iopolicy()
{
  result = fpfs_supports_parent_mtime_iopolicy();
  if (result)
  {

    return setiopolicy_np(8, 0, 1);
  }

  return result;
}

uint64_t fpfs_unset_vfs_parent_mtime_iopolicy()
{
  result = fpfs_supports_parent_mtime_iopolicy();
  if (result)
  {

    return setiopolicy_np(8, 0, 0);
  }

  return result;
}

uint64_t fpfs_ignore_thread_skip_mtime_iopolicy()
{
  v0 = getiopolicy_np(8, 1);
  if ((v0 & 0x80000000) != 0)
  {
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      fpfs_ignore_thread_skip_mtime_iopolicy_cold_2(v2, v10, v11, v12, v13, v14, v15, v16);
    }

    goto LABEL_7;
  }

  v1 = v0;
  if (setiopolicy_np(8, 1, 2) < 0)
  {
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      fpfs_ignore_thread_skip_mtime_iopolicy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

LABEL_7:

    return 0xFFFFFFFFLL;
  }

  return v1;
}

uint64_t fpfs_restore_thread_skip_mtime_iopolicy(int a1)
{
  if ((setiopolicy_np(8, 1, a1) & 0x80000000) == 0)
  {
    return 0;
  }

  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    fpfs_restore_thread_skip_mtime_iopolicy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return 0xFFFFFFFFLL;
}

uint64_t fpfs_fget_parent_id(int a1, void *a2)
{
  v6 = 0;
  v5 = xmmword_1AAC265C0;
  memset(v4, 0, 12);
  if (fgetattrlist(a1, &v5, v4, 0xCuLL, 0) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = *(v4 + 4);
  return result;
}

uint64_t fpfs_make_fsevent(int a1)
{
  if (fsetxattr(a1, "com.apple.fileprovider.touch", "", 1uLL, 0, 0) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (fremovexattr(a1, "com.apple.fileprovider.touch", 0) >> 31);
  }
}

uint64_t fpfs_num_entries_at(int a1, const char *a2, int a3, _DWORD *a4)
{
  v8 = 0;
  v7 = xmmword_1AAC265D8;
  v6 = 0;
  result = getattrlistat(a1, a2, &v7, &v6, 8uLL, a3 ^ 1u);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a4 = HIDWORD(v6);
  return result;
}

id FPGetImportCookieForURL(void *a1, void *a2)
{
  v3 = a1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__9;
  v19 = __Block_byref_object_dispose__9;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__9;
  v13 = __Block_byref_object_dispose__9;
  v14 = 0;
  v4 = [MEMORY[0x1E69A07C0] manager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FPGetImportCookieForURL_block_invoke;
  v8[3] = &unk_1E793B908;
  v8[4] = &v9;
  v8[5] = &v15;
  [v4 readImportCookieDataForVolumeAtURL:v3 handler:v8];

  if (a2)
  {
    v5 = v10[5];
    if (v5)
    {
      *a2 = v5;
    }
  }

  v6 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void sub_1AAB628C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void ExpirationInterval()
{
  if (os_variant_has_internal_content())
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v0 doubleForKey:@"com.apple.fileproviderd.importCookieExpiration"];
  }
}

void __FPGetImportCookieForURL_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a4);
  }

  else if (v7)
  {
    v10 = MEMORY[0x1E696ACD0];
    v11 = objc_opt_class();
    v12 = *(*(a1 + 32) + 8);
    obj = *(v12 + 40);
    v13 = [v10 unarchivedObjectOfClass:v11 fromData:v7 error:&obj];
    objc_storeStrong((v12 + 40), obj);
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = [*(*(*(a1 + 40) + 8) + 40) entries];
    v17 = [v16 allValues];

    v18 = [v17 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v25 + 1) + 8 * i);
          [v22 creationTime];
          if (v23 == 0.0)
          {
            [v8 timeIntervalSinceReferenceDate];
            [v22 setCreationTime:?];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v19);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t FPWriteImportCookieForDomainURL(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    FPWriteImportCookieForDomainURL_cold_1(v5);
  }

  v8 = [[FPImportCookie alloc] initWithURL:v5 error:a3];
  if (v8)
  {
    v9 = [[FPImportCookieEntry alloc] initWithDomainURL:v5 displayName:v6 error:a3];
    if (v9)
    {
      [(FPImportCookie *)v8 addEntry:v9];
      v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:a3];
      if (v10)
      {
        v11 = [MEMORY[0x1E69A07C0] manager];
        v12 = [v11 storeImportCookieData:v10 forVolumeURL:v5 error:a3];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t FPClearImportCookieForDomainURL(void *a1, void *a2)
{
  v3 = a1;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    FPClearImportCookieForDomainURL_cold_1(v3);
  }

  v5 = FPPathRelativeToVolumeRoot(v3, 0, a2);
  if (v5)
  {
    v14 = 0;
    v6 = FPGetImportCookieForURL(v3, &v14);
    v7 = v14;
    v8 = v7;
    if (v6)
    {
      [v6 removeEntryForPathRelativeToVolumeRoot:v5];
      if ([v6 isEmpty])
      {
        v9 = [MEMORY[0x1E69A07C0] manager];
        v10 = [v9 storeImportCookieData:0 forVolumeURL:v3 error:a2];
      }

      else
      {
        v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:a2];
        v12 = [MEMORY[0x1E69A07C0] manager];
        v10 = [v12 storeImportCookieData:v9 forVolumeURL:v3 error:a2];
      }
    }

    else if (v7)
    {
      if (a2)
      {
        v11 = v7;
        v10 = 0;
        *a2 = v8;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t FPIsImportingInVolumeAtURL(void *a1, void *a2)
{
  v3 = FPGetImportCookieForURL(a1, 0);
  v4 = v3;
  if (v3 && ([v3 isEmpty] & 1) == 0)
  {
    v7 = [v4 hasExpired];
    v5 = v7 ^ 1u;
    if (a2 && (v7 & 1) == 0)
    {
      *a2 = [v4 providersWithOngoingImport];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t FPIsImportingDomainsForUserURL(void *a1, void **a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = FPGetImportCookieForURL(v2, 0);
  v4 = v3;
  if (!v3 || ([v3 isEmpty] & 1) != 0 || (objc_msgSend(v4, "hasExpired") & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v32 = v4;
    v8 = [v4 entries];
    v9 = [v8 allValues];

    v10 = [v9 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v37 = 0;
      v38 = *v40;
      v12 = 0x1E695D000uLL;
      v34 = v2;
      v35 = v9;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v38)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v39 + 1) + 8 * i);
          v15 = *(v12 + 4088);
          v16 = [v14 domainPathRelativeToVolumeRoot];
          v17 = [v15 fileURLWithPath:v16 isDirectory:1];

          v18 = FPPathRelativeToVolumeRoot(v2, 0, 0);
          if (v18)
          {
            v19 = v12;
            v20 = [*(v12 + 4088) fileURLWithPath:v18 isDirectory:1];
            if ([v20 fp_relationshipToItemAtURL:v17] <= 1)
            {
              v21 = [MEMORY[0x1E695DF00] date];
              [v21 timeIntervalSinceReferenceDate];
              v23 = v22;

              ExpirationInterval();
              v25 = v24;
              [v14 creationTime];
              v27 = v23 - v26;
              if (v27 >= v25 || a2 == 0)
              {
                v37 |= v27 < v25;
              }

              else
              {
                v29 = *a2;
                v30 = *a2;
                if (!*a2)
                {
                  v30 = objc_opt_new();
                  v33 = v30;
                }

                v31 = [v14 displayName];
                *a2 = [v30 setByAddingObject:v31];

                if (!v29)
                {
                }

                v37 = 1;
                v2 = v34;
                v9 = v35;
              }
            }

            v12 = v19;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v11);
    }

    else
    {
      v37 = 0;
    }

    v4 = v32;
    v5 = v37;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

void sub_1AAB63C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AAB64D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_sync_exit(v22);
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id FPPathComponentsForFPItems(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v25 = a2;
  if ([v3 count])
  {
    v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v21 = v3;
    obj = v3;
    v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v4)
    {
      v5 = v4;
      v23 = *v27;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v27 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v26 + 1) + 8 * i);
          v8 = v25;
          v9 = [v7 itemIdentifier];
          v10 = [v9 isEqualToString:@"NSFileProviderRootContainerItemIdentifier"];

          if (v10)
          {
            v11 = [v8 domainFullDisplayName];
            v12 = [v8 topLevelBundleURL];
            v13 = 0;
            v14 = 0;
          }

          else
          {
            if ([v7 isContainer])
            {
              v11 = [v7 containerDisplayName];
              v13 = [v8 domainFullDisplayName];
              v14 = [v7 fp_appContainerBundleIdentifier];
            }

            else
            {
              v11 = [v7 displayName];
              v13 = 0;
              v14 = 0;
            }

            v12 = 0;
          }

          v15 = [FPPathComponentDisplayMetadata alloc];
          v16 = [v7 fileURL];
          v17 = [(FPPathComponentDisplayMetadata *)v15 initWithURL:v16 displayName:v11 suffix:v13 bundleID:v14 bundleURL:v12];

          [v24 addObject:v17];
        }

        v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v5);
    }

    v18 = [v24 copy];
    v3 = v21;
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

void __FILEPROVIDER_SEARCH_OBSERVER_TOO_MANY_ITEMS__(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Search enumerator attempted to return more than %lu items in one page/batch. Use the -maxNumberOfResults method to determine a reasonable number of items per page. Break on %s to debug this.", a1, "__FILEPROVIDER_SEARCH_OBSERVER_TOO_MANY_ITEMS__"];
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *buf = 138543362;
    v4 = v1;
    _os_log_fault_impl(&dword_1AAAE1000, v2, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", buf, 0xCu);
  }

  __assert_rtn("__FILEPROVIDER_SEARCH_OBSERVER_TOO_MANY_ITEMS__", "/Library/Caches/com.apple.xbs/Sources/FileProvider/extension/search-on-server/FPXSearchEnumeratorObserver.m", 14, [v1 UTF8String]);
}

void sub_1AAB67B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1AAB67D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1AAB67F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AAB681DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FPExecutableNameForProcessIdentifier_block_invoke()
{
  getpid();
  v0 = *MEMORY[0x1E69E9BD0];
  result = sandbox_check();
  FPExecutableNameForProcessIdentifier_pidResolutionAllowed = result == 0;
  return result;
}

id FPEntitlementValueForAuditToken(void *a1, _OWORD *a2)
{
  v3 = a1;
  v4 = a2[1];
  *v9.val = *a2;
  *&v9.val[4] = v4;
  v5 = SecTaskCreateWithAuditToken(0, &v9);
  if (v5)
  {
    v6 = v5;
    v7 = SecTaskCopyValueForEntitlement(v5, v3, 0);
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id FPOSVersion()
{
  if (FPOSVersion_pred != -1)
  {
    FPOSVersion_cold_1();
  }

  v1 = FPOSVersion_OSVersion;

  return v1;
}

void __FPOSVersion_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  *v4 = 0x4100000001;
  v3 = 20;
  if (sysctl(v4, 2u, v5, &v3, 0, 0) < 0)
  {
    v1 = fp_current_or_default_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __FPOSVersion_block_invoke_cold_1(v1);
    }
  }

  else
  {
    HIBYTE(v6) = 0;
    v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v5];
    v1 = FPOSVersion_OSVersion;
    FPOSVersion_OSVersion = v0;
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t FPFSProviderIsForcedForFPFS(void *a1)
{
  v1 = FPFSProviderIsForcedForFPFS_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    FPFSProviderIsForcedForFPFS_cold_1();
  }

  v3 = [FPFSProviderIsForcedForFPFS_enabledProviders containsObject:v2];

  return v3;
}

void __FPFSProviderIsForcedForFPFS_block_invoke()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.fileproviderd"];
  v1 = [v0 arrayForKey:@"fpfs-providers"];

  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:{v8, v12}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = FPFSProviderIsForcedForFPFS_enabledProviders;
  FPFSProviderIsForcedForFPFS_enabledProviders = v9;

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t FPFSProviderIsDeniedForFPFS(void *a1)
{
  v1 = FPFSProviderIsDeniedForFPFS_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    FPFSProviderIsDeniedForFPFS_cold_1();
  }

  v3 = [FPFSProviderIsDeniedForFPFS_blacklistedProviders containsObject:v2];

  return v3;
}

void __FPFSProviderIsDeniedForFPFS_block_invoke()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.fileproviderd"];
  v1 = [v0 arrayForKey:@"fpfs-disabled-providers"];

  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:{v8, v12}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = FPFSProviderIsDeniedForFPFS_blacklistedProviders;
  FPFSProviderIsDeniedForFPFS_blacklistedProviders = v9;

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t FPFeatureFlagResolverIsEnabled()
{
  if (os_variant_has_internal_content())
  {
    v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.fileproviderd"];
    v1 = [v0 dictionaryRepresentation];
    v2 = [v1 allKeys];
    v3 = [v2 containsObject:@"com.apple.fileproviderd.debug.enable-resolver"];

    if (v3)
    {
      v4 = [v0 BOOLForKey:@"com.apple.fileproviderd.debug.enable-resolver"];

      return v4;
    }
  }

  return _os_feature_enabled_impl();
}

void __FPIsFileIndexerEnabled_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (_os_feature_enabled_impl())
  {
    FPIsFileIndexerEnabled_enabled = 1;
  }

  else if (os_variant_has_internal_content())
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.fileindexerd.%sDevelopment", *(a1 + 32)];
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    FPIsFileIndexerEnabled_enabled = [v3 BOOLForKey:v4];
  }
}

id _getBootUUID()
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  v4 = 37;
  v0 = sysctlbyname("kern.bootsessionuuid", v5, &v4, 0, 0);
  v1 = 0;
  if (!v0)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
  }

  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

BOOL FPVolumeFPFSSupported(uint64_t a1, int a2, uint64_t *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2 && (_os_feature_enabled_impl() & 1) == 0)
  {
    if (a3)
    {
      *a3 = 1;
    }

    if (a4)
    {
      v18 = FPNotSupportedError();
      v19 = v18;
      result = 0;
      *a4 = v18;
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v8 = a1 + 1112;
  v9 = *(a1 + 48);
  v10 = *(a1 + 64);
  if ((v10 & 1) == 0)
  {
    v11 = 0;
    if ((v10 & 0x1000) != 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v23 = a1 + 1112;
      v24 = 1024;
      v25 = v9;
      _os_log_impl(&dword_1AAAE1000, v13, OS_LOG_TYPE_INFO, "[INFO] Non-eligible device %{public}s [%d]: non-local", buf, 0x12u);
    }

    if (!a3)
    {
      goto LABEL_43;
    }

    v11 |= 0x10uLL;
    if ((*(a1 + 64) & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v23 = a1 + 1112;
    v24 = 1024;
    v25 = v9;
    _os_log_impl(&dword_1AAAE1000, v12, OS_LOG_TYPE_INFO, "[INFO] Non-eligible device %{public}s [%d]: R/O volume", buf, 0x12u);
  }

  if (!a3)
  {
    goto LABEL_43;
  }

  v10 = *(a1 + 64);
  v11 = 8;
  if ((v10 & 0x1000) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v10 & 0x400) == 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  v14 = fp_current_or_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v23 = a1 + 1112;
    v24 = 1024;
    v25 = v9;
    _os_log_impl(&dword_1AAAE1000, v14, OS_LOG_TYPE_INFO, "[INFO] Non-eligible device %{public}s [%d]: quarantined", buf, 0x12u);
  }

  if (!a3)
  {
    goto LABEL_43;
  }

  v11 |= 0x20uLL;
LABEL_19:
  if (strcasecmp("apfs", (a1 + 72)))
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v23 = v8;
      v24 = 1024;
      v25 = v9;
      _os_log_impl(&dword_1AAAE1000, v15, OS_LOG_TYPE_INFO, "[INFO] Non-eligible device %{public}s [%d]: non-apfs", buf, 0x12u);
    }

    if (!a3)
    {
      goto LABEL_43;
    }

    v11 |= 6uLL;
  }

  if (a2 && (v11 & 2) == 0)
  {
    VEKState = APFSVolumeGetVEKState();
    if (VEKState == 22)
    {
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        v23 = v8;
        v24 = 1024;
        v25 = v9;
        _os_log_impl(&dword_1AAAE1000, v20, OS_LOG_TYPE_INFO, "[INFO] Non-eligible device %{public}s [%d]: unencrypted", buf, 0x12u);
      }

      if (a3)
      {
        v11 |= 4uLL;
        goto LABEL_29;
      }
    }

    else
    {
      if (!VEKState)
      {
        goto LABEL_28;
      }

      if (a3)
      {
        *a3 = 1;
      }

      if (a4)
      {
        *a4 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:VEKState];
      }
    }

LABEL_43:
    result = 0;
    goto LABEL_44;
  }

LABEL_28:
  if (a3)
  {
LABEL_29:
    *a3 = v11;
  }

  result = v11 == 0;
LABEL_44:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FPIgnoresForcedKeyChecks()
{
  if (FPIgnoresForcedKeyChecks_onceToken != -1)
  {
    FPIgnoresForcedKeyChecks_cold_1();
  }

  return FPIgnoresForcedKeyChecks_areForcedKeysIgnored;
}

void __FPIgnoresForcedKeyChecks_block_invoke()
{
  if (os_variant_has_internal_content())
  {
    v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.fileproviderd"];
    FPIgnoresForcedKeyChecks_areForcedKeysIgnored = [v0 BOOLForKey:@"IgnoreForcedKeyChecksInInternalOS"];
  }
}

void sub_1AAB6A6D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void __FILEPROVIDER_OBSERVER_TOO_MANY_ITEMS__(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (__FILEPROVIDER_OBSERVER_TOO_MANY_ITEMS___onceToken != -1)
  {
    dispatch_once(&__FILEPROVIDER_OBSERVER_TOO_MANY_ITEMS___onceToken, &__block_literal_global_284);
  }

  if (__FILEPROVIDER_OBSERVER_TOO_MANY_ITEMS___isFatal == 1)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Enumerator for %@ attempted to return more than %lu items in one page/batch. Use the -suggestedBatchSize/suggestedPageSize methods to determine a reasonable number of items per page. Break on %s to debug this.", v1, 20000, "__FILEPROVIDER_OBSERVER_TOO_MANY_ITEMS__"];
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v7 = v4;
      _os_log_fault_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", buf, 0xCu);
    }

    __assert_rtn("__FILEPROVIDER_OBSERVER_TOO_MANY_ITEMS__", "/Library/Caches/com.apple.xbs/Sources/FileProvider/extension/FPXEnumerator.m", 173, [v4 UTF8String]);
  }

  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412802;
    v7 = v1;
    v8 = 2048;
    v9 = 20000;
    v10 = 2080;
    v11 = "__FILEPROVIDER_OBSERVER_TOO_MANY_ITEMS__";
    _os_log_fault_impl(&dword_1AAAE1000, v2, OS_LOG_TYPE_FAULT, "[CRIT] Enumerator for %@ attempted to return more than %lu items in one page/batch. Use the -suggestedBatchSize/suggestedPageSize methods to determine a reasonable number of items per page. Break on %s to debug this.", buf, 0x20u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __FILEPROVIDER_OBSERVER_FINISHED_MORE_THAN_ONCE__(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (dyld_program_sdk_at_least())
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-finish* was called more than once on the observer for %@, only the first call is taken into account", v1];
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v7 = v4;
      _os_log_fault_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", buf, 0xCu);
    }

    __assert_rtn("__FILEPROVIDER_OBSERVER_FINISHED_MORE_THAN_ONCE__", "/Library/Caches/com.apple.xbs/Sources/FileProvider/extension/FPXEnumerator.m", 160, [v4 UTF8String]);
  }

  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = v1;
    _os_log_impl(&dword_1AAAE1000, v2, OS_LOG_TYPE_DEFAULT, "[WARNING] -finish* was called more than once on the observer for %{public}@, only the first call is taken into account", buf, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_1AAB6CC60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1AAB6D46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB6D5E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB6E134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB6E610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB6EEB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB6F970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_leave_section_Debug(va);
  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Au);
}

void sub_1AAB714EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCSSearchableItemAttributeSetClass_block_invoke(uint64_t a1)
{
  CoreSpotlightLibrary_1();
  result = objc_getClass("CSSearchableItemAttributeSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSSearchableItemAttributeSetClass_block_invoke_cold_1();
  }

  getCSSearchableItemAttributeSetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreSpotlightLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpotlightLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCSSearchableItemClass_block_invoke(uint64_t a1)
{
  CoreSpotlightLibrary_1();
  result = objc_getClass("CSSearchableItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSSearchableItemClass_block_invoke_cold_1();
  }

  getCSSearchableItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t fp_disableFilenameObsucationInCurrentProcess(char a1)
{
  result = os_variant_has_internal_content();
  if (result)
  {
    forceDeobfuscateFilenames = a1;
  }

  return result;
}

void sub_1AAB753FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (a2 == 1)
  {
    v18 = objc_begin_catch(exception_object);
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [a17 predicate];
      [FPPreflightUserInteraction _evaluateWithObjectsByName:v20 sourceItems:v18 suppressionDelegate:(v17 - 256) errorIndex:v19];
    }

    objc_end_catch();
    JUMPOUT(0x1AAB74F84);
  }

  _Unwind_Resume(exception_object);
}

id fp_backtrace()
{
  MEMORY[0x1EEE9AC00]();
  v4 = *MEMORY[0x1E69E9840];
  bzero(v3, 0x2000uLL);
  fp_backtrace_snprint(v3);
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

void fp_backtrace_exception_snprint(char *a1, size_t a2, void *a3)
{
  v6 = [a3 callStackSymbols];
  v5 = [v6 description];
  snprintf(a1, a2, "%s", [v5 UTF8String]);
}

void FPCaptureLogsForOperation(void *a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [v7 domain];
  v10 = [v8 stringWithFormat:@"%@.%ld", v9, objc_msgSend(v7, "code")];

  v11 = [v7 underlyingErrors];

  if (v11)
  {
    v24 = v5;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = [v7 underlyingErrors];
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        v16 = 0;
        v17 = v10;
        do
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v25 + 1) + 8 * v16);
          v19 = [v18 domain];
          v10 = [v17 stringByAppendingFormat:@"%@.%ld", v19, objc_msgSend(v18, "code")];;

          ++v16;
          v17 = v10;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v14);
    }

    v5 = v24;
  }

  v20 = fp_current_or_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v30 = v5;
    v31 = 2112;
    v32 = v6;
    v33 = 2112;
    v34 = v10;
    _os_log_debug_impl(&dword_1AAAE1000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] Sending ABC report with signature: type = %@, subtype = %@, subtype context = %@", buf, 0x20u);
  }

  v21 = get_sd_reporter();
  v22 = [v21 signatureWithDomain:@"FileProvider" type:v5 subType:v6 subtypeContext:v10 detectedProcess:@"fileproviderd" triggerThresholdValues:0];
  [v21 snapshotWithSignature:v22 duration:0 events:0 payload:0 actions:&__block_literal_global_23 reply:15.0];

  v23 = *MEMORY[0x1E69E9840];
}

id get_sd_reporter()
{
  if (get_sd_reporter_onceToken != -1)
  {
    get_sd_reporter_cold_1();
  }

  v1 = get_sd_reporter__diagnosticReporter;

  return v1;
}

void __FPCaptureLogsForOperation_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:*MEMORY[0x1E69D50D0]];
  v3 = [v2 BOOLValue];

  v4 = fp_current_or_default_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __FPCaptureLogsForOperation_block_invoke_cold_2();
    }
  }

  else if (v5)
  {
    __FPCaptureLogsForOperation_block_invoke_cold_1();
  }
}

void abc_report_assert_with_signature()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v17 = *MEMORY[0x1E69E9840];
  v1 = v0;
  v2 = v1;
  if ([v1 length] >= 0x65)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@":0x%lx", objc_msgSend(v1, "hash")];
    v4 = [v1 substringToIndex:{100 - objc_msgSend(v3, "length")}];
    v2 = [v4 stringByAppendingString:v3];
  }

  v5 = get_sd_reporter();
  v6 = [v5 signatureWithDomain:@"Application" type:@"Functional" subType:@"AssertionFailed" detectedProcess:@"fileproviderd" triggerThresholdValues:0];

  [v6 setObject:v2 forKeyedSubscript:*MEMORY[0x1E69D50E8]];
  bzero(v16, 0x2000uLL);
  fp_backtrace_snprint(v16);
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];
  v8 = get_sd_reporter();
  v14 = @"backtrace";
  v15 = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v10 = [v8 snapshotWithSignature:v6 duration:v9 event:0 payload:&__block_literal_global_20 reply:15.0];

  v11 = fp_current_or_default_log();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      abc_report_assert_with_signature_cold_2();
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    abc_report_assert_with_signature_cold_1(v1, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __abc_report_assert_with_signature_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __abc_report_assert_with_signature_block_invoke_cold_1();
  }
}

void fp_simulate_crash(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x1E696AEC0];
  v10 = a1;
  v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];
  getpid();
  SimulateCrash();
  abc_report_assert_with_signature();
}

void __fp_leave_section_Notice(uint64_t *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *a1;
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1AAAE1000, v2, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┗%llx ", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __fp_leave_section_Error(uint64_t *a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __fp_leave_section_Error_cold_1(a1, v2);
  }
}

id fssync_default_log()
{
  if (fssync_default_log_once != -1)
  {
    fssync_default_log_cold_1();
  }

  v1 = fssync_default_log_log;

  return v1;
}

uint64_t __fssync_default_log_block_invoke()
{
  fssync_default_log_log = os_log_create("com.apple.FileProvider", "fssync");

  return MEMORY[0x1EEE66BB8]();
}

id telemetry_default_log()
{
  if (telemetry_default_log_once != -1)
  {
    telemetry_default_log_cold_1();
  }

  v1 = telemetry_default_log_logger;

  return v1;
}

uint64_t __telemetry_default_log_block_invoke()
{
  telemetry_default_log_logger = os_log_create("com.apple.FileProvider", "telemetry");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t fp_backtrace_snprint(char *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *v12 = 0u;
  v13 = 0u;
  result = backtrace(v12, 24);
  if (result)
  {
    v3 = 0;
    v4 = result;
    v5 = 0x2000;
    do
    {
      memset(&v11, 0, sizeof(v11));
      if (v3)
      {
        if (dladdr(v12[v3], &v11))
        {
          dli_sname = v11.dli_sname;
          v7 = rindex(v11.dli_fname, 47);
          dli_fname = v11.dli_fname;
          if (v7)
          {
            dli_fname = v7 + 1;
          }
        }

        else
        {
          dli_sname = "";
          dli_fname = "";
        }

        result = snprintf(a1, v5, "frame %d: %lld %s in %s\n", v3, v12[v3], dli_sname, dli_fname);
        v9 = v5 <= result;
        v5 -= result;
        if (v9)
        {
          break;
        }

        a1 += result;
      }

      ++v3;
    }

    while (v4 != v3);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __get_sd_reporter_block_invoke()
{
  get_sd_reporter__diagnosticReporter = objc_alloc_init(MEMORY[0x1E69D4F80]);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __fpfs_default_log_block_invoke()
{
  fpfs_default_log_log = os_log_create("com.apple.FileProvider", "fpfs");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t dataless_fault_header_encode(uint64_t a1, int a2, unint64_t a3, unint64_t a4, int a5)
{
  switch(a2)
  {
    case 1:
      v5 = -2147483647;
      goto LABEL_7;
    case 3:
      a3 = a3 & 0xFFFFFFFFFFLL | (a4 << 40);
      v5 = -2147483646;
      goto LABEL_7;
    case 2:
      v5 = -2147483647;
      a3 = a4;
LABEL_7:
      *a1 = 1668116582;
      *(a1 + 4) = v5;
      *(a1 + 8) = a3;
      *(a1 + 16) = a5;
      return 20;
  }

  *__error() = 22;
  return 0xFFFFFFFFLL;
}

uint64_t dataless_fault_header_convert_to_decmpfs_header(int *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  *(a2 + 4) = *a1;
  *(a2 + 8) = v2;
  if (v3 == 1668116582 && (v2 + 0x7FFFFFFF) < 2)
  {
    *(a2 + 12) = *(a1 + 1);
    return 20;
  }

  else
  {
    *__error() = 45;
    return 0xFFFFFFFFLL;
  }
}

uint64_t dataless_fault_header_decode(int *a1, unint64_t a2, uint64_t a3)
{
  if (a2 <= 0xF)
  {
    v3 = __error();
    v4 = 100;
LABEL_8:
    *v3 = v4;
    return 0xFFFFFFFFLL;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *a1;
  v5 = a1[1];
  *a3 = *a1;
  *(a3 + 4) = v5;
  if (v6 != 1668116582 || (v5 + 0x7FFFFFFF) >= 2)
  {
    v3 = __error();
    v4 = 45;
    goto LABEL_8;
  }

  *(a3 + 8) = *(a1 + 1);
  if (a2 < 0x14)
  {
    return 16;
  }

  *(a3 + 16) = a1[4] & 6;
  return 20;
}

uint64_t fpfs_parse_cmpfs_xattr(int *a1, unint64_t a2, uid_t *a3, _DWORD *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  v8 = dataless_fault_header_decode(a1, a2, v17);
  if (v8 < 0)
  {
    goto LABEL_10;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v9 = v18;
  if (a3 && (v18 & 2) == 0)
  {
    v10 = __error();
    v11 = 96;
LABEL_9:
    *v10 = v11;
LABEL_10:
    result = 0xFFFFFFFFLL;
    goto LABEL_11;
  }

  v14 = v8;
  if ((v18 & 2) != 0)
  {
    if (a2 - v8 <= 0xF)
    {
      v10 = __error();
      v11 = 100;
      goto LABEL_9;
    }

    *uu1 = *(a1 + v8);
    if (a3)
    {
      *uid_or_gid = 0;
      if (_get_current_user_uuid_once_token != -1)
      {
        fpfs_parse_cmpfs_xattr_cold_1();
      }

      *uu2 = _get_current_user_uuid_uuid_cached;
      if (uuid_compare(uu1, uu2))
      {
        if (mbr_uuid_to_id(uu1, &uid_or_gid[1], uid_or_gid))
        {
          goto LABEL_10;
        }

        if (uid_or_gid[0])
        {
          v10 = __error();
          v11 = 80;
          goto LABEL_9;
        }

        v15 = uid_or_gid[1];
      }

      else
      {
        v15 = getuid();
      }

      *a3 = v15;
    }

    v14 += 16;
  }

  result = 0;
  if (a4 && (v9 & 4) != 0)
  {
    if (a2 - v14 >= 4)
    {
      result = 0;
      *a4 = *(a1 + v14);
      goto LABEL_11;
    }

    *__error() = 100;
    if (*__error() == 100)
    {
      result = 0;
      *a4 = 0;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_11:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fpfs_get_dataless_cmpfs_xattr_owner(const char *a1, uid_t *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  bzero(value, 0xEDAuLL);
  v4 = getxattr(a1, "com.apple.decmpfs", value, 0xEDAuLL, 0, 33);
  if (v4 < 0)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = fpfs_parse_cmpfs_xattr(value, v4, a2, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fpfs_fget_decmpf_info(int a1, ssize_t *a2, _DWORD *a3, _DWORD *a4, void *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  bzero(value, 0xEDAuLL);
  v10 = fgetxattr(a1, "com.apple.decmpfs", value, 0xEDAuLL, 0, 32);
  if (a2)
  {
    *a2 = v10;
  }

  if (v10 < 16)
  {
    if (v10 < 0)
    {
LABEL_15:
      result = 0xFFFFFFFFLL;
      goto LABEL_16;
    }

    v13 = __error();
    v14 = 34;
LABEL_14:
    *v13 = v14;
    goto LABEL_15;
  }

  v11 = value[0];
  if (a3)
  {
    *a3 = value[0];
  }

  if (v11 != 1668116582)
  {
    v13 = __error();
    v14 = 22;
    goto LABEL_14;
  }

  if (a4)
  {
    *a4 = value[1];
  }

  result = 0;
  if (a5)
  {
    *a5 = v17;
  }

LABEL_16:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fpfs_fget_decmpf_type(int a1, void *a2)
{
  v3 = 0;
  if (fpfs_fget_decmpf_info(a1, 0, 0, &v3, a2) < 0)
  {
    return -1;
  }

  else
  {
    return v3;
  }
}

uint64_t _fset_dataless_cmpfs_xattr_only(int a1, int a2, unint64_t a3, unint64_t a4, int a5)
{
  v19[473] = *MEMORY[0x1E69E9840];
  if ((_check_afsc_file(a1) & 0x80000000) != 0)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  bzero(&v16[1], 0xEDAuLL);
  switch(a2)
  {
    case 1:
      v10 = -2147483647;
      break;
    case 3:
      a3 = a3 & 0xFFFFFFFFFFLL | (a4 << 40);
      v10 = -2147483646;
      break;
    case 2:
      v10 = -2147483647;
      a3 = a4;
      break;
    default:
      v12 = v16;
      *__error() = 22;
      v13 = -1;
      goto LABEL_11;
  }

  v12 = v19;
  *&v16[1] = 1668116582;
  *&v16[5] = v10;
  v17 = a3;
  v18 = 6;
  v13 = 20;
LABEL_11:
  if (_get_current_user_uuid_once_token != -1)
  {
    _fset_dataless_cmpfs_xattr_only_cold_1();
  }

  *v12 = _get_current_user_uuid_uuid_cached;
  v14 = v13 + 16;
  if (a5)
  {
    *&v16[v14 + 1] = a5;
    v14 = v13 + 20;
  }

  result = fpfs_fsetxattr(a1, "com.apple.decmpfs", &v16[1], v14, 0, 0);
LABEL_16:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _check_afsc_file(int a1)
{
  memset(&v3, 0, sizeof(v3));
  if ((fstat(a1, &v3) & 0x80000000) == 0)
  {
    if ((v3.st_flags & 0x40000020) != 0x20)
    {
      return 0;
    }

    v4 = 0;
    if ((fpfs_fget_decmpf_info(a1, 0, 0, &v4, 0) & 0x80000000) == 0 && v4 - 2147483649u < 2)
    {
      return 0;
    }

    *__error() = 45;
  }

  return 0xFFFFFFFFLL;
}

uint64_t _fset_dataless_cmpfs_xattr(int a1, int a2, unint64_t a3, unint64_t a4, int a5)
{
  v21[473] = *MEMORY[0x1E69E9840];
  if ((_check_afsc_file(a1) & 0x80000000) != 0)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  bzero(&v18[1], 0xEDAuLL);
  if (a5)
  {
    v10 = 6;
  }

  else
  {
    v10 = 2;
  }

  switch(a2)
  {
    case 1:
      v11 = -2147483647;
      break;
    case 3:
      a3 = a3 & 0xFFFFFFFFFFLL | (a4 << 40);
      v11 = -2147483646;
      break;
    case 2:
      v11 = -2147483647;
      a3 = a4;
      break;
    default:
      v13 = v18;
      *__error() = 22;
      v14 = -1;
      goto LABEL_14;
  }

  v13 = v21;
  *&v18[1] = 1668116582;
  *&v18[5] = v11;
  v19 = a3;
  v20 = v10;
  v14 = 20;
LABEL_14:
  if (_get_current_user_uuid_once_token != -1)
  {
    _fset_dataless_cmpfs_xattr_only_cold_1();
  }

  *v13 = _get_current_user_uuid_uuid_cached;
  v15 = v14 + 16;
  if (a5)
  {
    *&v18[v15 + 1] = a5;
    v15 = v14 + 20;
  }

  v17[0] = &v18[1];
  v17[1] = v15;
  result = ffsctl(a1, 0x80104A39uLL, v17, 0);
LABEL_19:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fpfs_update_purgency_during_restore(int a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = a4 << 28;
  if (a4 >= 7)
  {
    v4 = 0;
  }

  v5 = a2 | 0x10104;
  if (a3)
  {
    v5 = a2 | 0x10104 | (a3 << 32) | 0x20000;
  }

  v7[1] = 0;
  v7[2] = 0;
  v7[0] = v4 | v5;
  return ffsctl(a1, 0xC0184A4FuLL, v7, 0);
}

uint64_t fpfs_update_purgency(int a1, uint64_t a2)
{
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  if (ffsctl(a1, 0x40304A6DuLL, &v8, 0) < 0)
  {
    v5 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      fpfs_update_purgency_cold_2();
    }

    return 0xFFFFFFFFLL;
  }

  if ((BYTE1(v8) & 1) == 0)
  {
    v4 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      fpfs_update_purgency_cold_1(v4);
    }

    *__error() = 45;
    return 0xFFFFFFFFLL;
  }

  v7 = a2 | 0x410104;
  if (DWORD2(v9))
  {
    v7 = a2 | 0x410104 | (*(&v9 + 1) << 32) | 0x20000;
  }

  v11[0] = v7;
  v11[1] = v10;
  v11[2] = 0;
  return ffsctl(a1, 0xC0184A4FuLL, v11, 0);
}

uint64_t fpfs_set_evictable(int a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (((v3 - 1) & 0xFFFFFFFD) != 0)
  {
    return 0;
  }

  if ((_fset_dataless_cmpfs_xattr_only(a1, v3, *(a2 + 56), *(a2 + 144), 0) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(a2 + 44) & 0x20) == 0 || (v6 = *(a2 + 240)) == 0)
  {
    v11 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      fpfs_set_evictable_cold_1((a2 + 44), a2);
    }

    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v7 = *(a2 + 20);
  v8 = (*(a2 + 252) & 0xF) << 28;
  if (*(a2 + 252) >= 7u)
  {
    v8 = 0;
  }

  v9 = v6 | 0x10104;
  if (v7)
  {
    v9 |= (v7 << 32) | 0x20000;
  }

  v10 = *(a2 + 160);
  v12[0] = v8 | v9;
  v12[1] = v10;
  v12[2] = 0;
  return ffsctl(a1, 0xC0184A4FuLL, v12, 0);
}

uint64_t fpfs_unset_evictable(int a1, uint64_t a2)
{
  if (a2)
  {
    if ((*(a2 + 44) & 1) != 0 && *(a2 + 40) == 1)
    {
      v4 = fpfs_supports_partial_materialization();
    }

    else
    {
      v4 = 0;
    }

    if (((*(a2 + 40) - 1) & 0xFFFFFFFD) != 0)
    {
      return 0;
    }

    v6 = 0;
    if (ffsctl(a1, 0xC0084A44uLL, &v6, 0) < 0)
    {
      return 0xFFFFFFFFLL;
    }

    if (v4)
    {
      return 0;
    }
  }

  else
  {
    v6 = 0;
    if (ffsctl(a1, 0xC0084A44uLL, &v6, 0) < 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if ((_unset_dataless_cmpfs_xattr(a1) & 0x80000000) == 0)
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t _unset_dataless_cmpfs_xattr(int a1)
{
  if (fpfs_fremovexattr(a1, "com.apple.decmpfs", 32) && *__error() != 93)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t fpfs_get_purgeable_info(int a1, void *a2, void *a3)
{
  v8 = 0u;
  memset(v7, 0, sizeof(v7));
  if (ffsctl(a1, 0x40304A6DuLL, v7, 0) < 0)
  {
    v6 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      fpfs_update_purgency_cold_2();
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    if (a2)
    {
      *a2 = *&v7[0];
    }

    result = 0;
    if (a3)
    {
      *a3 = v8;
    }
  }

  return result;
}

uint64_t fpfs_get_purgeable_stats(char *a1, _OWORD *a2)
{
  v3 = 0;
  v29[10] = *MEMORY[0x1E69E9840];
  *a2 = 0u;
  v27 = 512;
  v28 = a2;
  a2[3] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  v29[0] = a2 + 2;
  v29[1] = 1024;
  v4 = v29;
  v29[2] = a2 + 8;
  v29[3] = a2 + 40;
  v29[4] = 2048;
  v29[5] = a2 + 1;
  v29[6] = a2 + 3;
  v29[7] = 0x8000;
  v5 = 1;
  v29[8] = a2 + 24;
  v29[9] = a2 + 56;
  while (1)
  {
    v6 = *(v4 - 2);
    v7 = *(v4 - 1);
    v8 = *v4;
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    v12[0] = 4;
    v12[1] = v6;
    if (fsctl(a1, 0xC0E84A70uLL, v12, 1u) < 0)
    {
      break;
    }

    *v7 += v20;
    *v8 += *(&v13 + 1);
LABEL_5:
    v5 = v3 < 3;
    v4 += 3;
    if (++v3 == 4)
    {
      result = 0;
      goto LABEL_10;
    }
  }

  if (*__error() == 1)
  {
    goto LABEL_5;
  }

  v10 = fpfs_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    fpfs_get_purgeable_stats_cold_1();
  }

  result = (v5 << 31 >> 31);
LABEL_10:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fpfs_set_purgeable_non_evictable(int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a1;
  v5 = 5;
  if (a3)
  {
    v5 = a3;
  }

  v6 = v5 | 0x10000;
  v7 = v5 >= 0xD;
  v8 = 0x10000;
  if (!v7)
  {
    v8 = v6;
  }

  v9 = v8 | a2;
  v18 = v9;
  if (a4 < 1)
  {
    v10 = &v18;
    v11 = 3221768772;
  }

  else
  {
    v13 = v9;
    v14 = xmmword_1AAC26630;
    v15 = 0;
    v16 = clock_gettime_nsec_np(_CLOCK_REALTIME) + 1000000000 * a4;
    v17 = 0;
    v10 = &v13;
    a1 = v4;
    v11 = 3224390255;
  }

  return ffsctl(a1, v11, v10, 0);
}

uint64_t fpfs_set_purgeable_non_evictable_at(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __fpfs_set_purgeable_non_evictable_at_block_invoke;
  v6[3] = &__block_descriptor_56_e8_i12__0i8l;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  return fpfs_openat(a1, a2, 0x208000u, 0, 0, v6);
}

uint64_t fpfs_t_is_evictable(int a1, BOOL *a2)
{
  v4 = 0;
  if (a2)
  {
    if ((fpfs_eviction_urgency_with_validation(a1, &v4, 0, 1) & 0x80000000) == 0)
    {
      result = 0;
      *a2 = v4 != 0;
      return result;
    }
  }

  else
  {
    *__error() = 22;
  }

  return 0xFFFFFFFFLL;
}

uint64_t fpfs_t_fget_pristine_time(int a1, void *a2)
{
  v4 = 0;
  v5 = 0;
  if (ffsctl(a1, 0x40104A7BuLL, &v4, 0) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t fpfs_t_fget_is_pristine(int a1, _BYTE *a2)
{
  v4[0] = 0;
  v4[1] = 0;
  if (ffsctl(a1, 0x40104A7BuLL, v4, 0) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a2)
  {
    *a2 = BYTE6(v4[0]) & 1;
  }

  return result;
}

uint64_t fpfs_eviction_urgency_with_validation(int a1, void *a2, _BYTE *a3, int a4)
{
  if (fpfs_operation_is_allowed(1))
  {
    v9 = 0;
    if (ffsctl(a1, 0x40084A47uLL, &v9, 0) < 0)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      if (!a4 || (v9 & 0x100) != 0)
      {
        if (a2)
        {
          *a2 = v9 & 0x8E00;
        }

        if (a3)
        {
          v10[0] = 0;
          v10[1] = 0;
          if (ffsctl(a1, 0x40104A7BuLL, v10, 0) < 0)
          {
            __error();
          }

          else
          {
            *a3 = (BYTE6(v10[0]) >> 2) & 0xF;
          }
        }
      }

      else
      {
        if (a2)
        {
          *a2 = 0;
        }

        if (a3)
        {
          result = 0;
LABEL_12:
          *a3 = 0;
          return result;
        }
      }

      return 0;
    }
  }

  else
  {
    if (a2)
    {
      *a2 = 0;
    }

    result = 0;
    if (a3)
    {
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t fpfs_eviction_reason(int a1, _DWORD *a2)
{
  if (!a2)
  {
LABEL_4:
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  memset(&v5, 0, sizeof(v5));
  if ((fstat(a1, &v5) & 0x80000000) == 0)
  {
    if ((v5.st_flags & 0x40000000) != 0)
    {
      return fpfs_eviction_reason_from_xattr(a1, a2);
    }

    goto LABEL_4;
  }

  return 0xFFFFFFFFLL;
}

uint64_t fpfs_eviction_reason_from_xattr(int a1, _DWORD *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  bzero(value, 0xEDAuLL);
  v4 = fgetxattr(a1, "com.apple.decmpfs", value, 0xEDAuLL, 0, 32);
  if (v4 < 0)
  {
    if (*__error() == 93)
    {
      result = 0;
      *a2 = 0;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  else
  {
    result = fpfs_parse_cmpfs_xattr(value, v4, 0, a2);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fpfs_unset_dataless_cmpfs_attrs(int a1, __int128 *a2)
{
  LODWORD(v7) = 0;
  if (ffsctl(a1, 0x80044A7AuLL, &v7, 0) < 0)
  {
    if (*__error() == 1 || *__error() == 25)
    {
      if ((fpfs_fchflags(a1, 0x20u, 0) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v5 = fpfs_current_or_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        fpfs_unset_dataless_cmpfs_attrs_cold_2();
      }
    }

    else
    {
      v5 = fpfs_current_or_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        fpfs_unset_dataless_cmpfs_attrs_cold_1();
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_5:
  if (!a2)
  {
    return _unset_dataless_cmpfs_xattr(a1);
  }

  v8 = 0;
  v6 = *a2;
  v7 = xmmword_1AAC26658;
  if ((fsetattrlist(a1, &v7, &v6, 0x10uLL, 0) & 0x80000000) == 0)
  {
    return _unset_dataless_cmpfs_xattr(a1);
  }

  return 0xFFFFFFFFLL;
}

uint64_t fpfs_create_dataless_fault_at(uint64_t a1, const char *a2, int *a3, int a4, void *a5)
{
  v9 = a5;
  v10 = v9;
  v11 = *a3;
  if (*a3 <= 1)
  {
    if (v11)
    {
      if (v11 == 1)
      {
        v14 = 2562;
      }

      else
      {
        v14 = 0;
      }

      if (v11 == 1)
      {
        v13 = 384;
      }

      else
      {
        v13 = 0;
      }

      v12 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    if ((v11 - 2) < 2)
    {
      v12 = 1;
      v13 = 448;
      v14 = 2048;
LABEL_15:
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __fpfs_create_dataless_fault_at_block_invoke;
      v17[3] = &unk_1E793BF20;
      v20 = a4;
      v19 = a3;
      v18 = v9;
      v15 = fpfs_openat(a1, a2, v14, v13, v12, v17);

      goto LABEL_16;
    }

    if (v11 != 4)
    {
      v14 = 0;
      v13 = 0;
      v12 = 0;
      goto LABEL_15;
    }
  }

  *__error() = 22;
  v15 = 0xFFFFFFFFLL;
LABEL_16:

  return v15;
}

uint64_t __fpfs_create_dataless_fault_at_block_invoke(uint64_t a1, int to_fd)
{
  v9 = 0;
  if ((to_fd & 0x80000000) == 0 && (fpfs_eviction_reason_from_xattr(to_fd, &v9) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 48);
  if ((v4 & 0x80000000) == 0 && fcopyfile(v4, to_fd, 0, 4u) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  if ((_fset_dataless_cmpfs_xattr(to_fd, **(a1 + 40), *(*(a1 + 40) + 16), *(*(a1 + 40) + 104), v9) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 40);
  v6 = *(v5 + 4);
  if ((v6 & 1) == 0)
  {
    __fpfs_create_dataless_fault_at_block_invoke_cold_1();
  }

  if ((v6 & 0x100) != 0)
  {
    v7 = 0x1FBF38F07;
  }

  else
  {
    v7 = 0x1EBF38F07;
  }

  return fpfs_fset_metadata(to_fd, v5, 0, v7, 0, 0, *(a1 + 32));
}

uint64_t fpfs_update_dataless_fault(int a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5, void *a6)
{
  if ((fpfs_fset_metadata(a1, a2, 0, a3, a4, a5, a6) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (_fset_dataless_cmpfs_xattr_only(a1, *a2, *(a2 + 16), *(a2 + 104), *(a2 + 208)) >> 31);
  }
}

uint64_t fpfs_update_dataless_fault_at(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = a7;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __fpfs_update_dataless_fault_at_block_invoke;
  v17[3] = &unk_1E793BF48;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v18 = v13;
  v19 = a3;
  v14 = v13;
  v15 = fpfs_openat(a1, a2, 0, 0, 0, v17);

  return v15;
}

uint64_t fpfs_femptydir(int a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __fpfs_femptydir_block_invoke;
  v13[3] = &unk_1E793BF70;
  v17 = a1;
  v18 = a3;
  v15 = a2;
  v16 = a4;
  v14 = v9;
  v10 = v9;
  v11 = fpfs_fopendir(a1, v13);

  return v11;
}

uint64_t __fpfs_femptydir_block_invoke(uint64_t a1, char *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*a2 == *(a1 + 40))
  {
    result = 0;
    goto LABEL_13;
  }

  v12 = 0;
  v11 = xmmword_1AAC26670;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  if (getattrlistat(*(a1 + 56), a2 + 21, &v11, v21, 0x48uLL, 0x21uLL))
  {
LABEL_12:
    result = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  if (v22 != *a2)
  {
    *__error() = 70;
    v6 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 56);
      v9 = *(a1 + 60);
      v10 = *a2;
      *buf = 67109888;
      v14 = v8;
      v15 = 1024;
      v16 = v9;
      v17 = 2048;
      v18 = v10;
      v19 = 2048;
      v20 = v22;
      _os_log_error_impl(&dword_1AAAE1000, v6, OS_LOG_TYPE_ERROR, "ESTALE: item changed between enumeration and lookup [%d, %u, %llu, %llu]", buf, 0x22u);
    }

    goto LABEL_12;
  }

  if (_fpfs_is_meaningful_item(v21, a2 + 21, *(a1 + 60)))
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      *v5 = *a2;
    }

    *__error() = 66;
    goto LABEL_12;
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, *(a1 + 56), a2, a2 + 21);
  }

LABEL_13:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _fpfs_is_meaningful_item(uint64_t a1, char *__s1, int a3)
{
  if (a3 != 2)
  {
    v8[0] = 0;
    v8[1] = 0;
    fpfs_finder_info_deserialize(a1 + 24, v8);
    if ((a3 == 3 || !a3) && ((*(a1 + 59) & 0x40) != 0 || *(a1 + 4) == 5))
    {
      return 0;
    }

    v7 = *(a1 + 4);
    if (!*(a1 + 60))
    {
      return !fpfs_path_is_ignored(__s1, v7 == 1);
    }

    if (v7 != 1)
    {
      if (v7 != 2)
      {
        return !fpfs_path_is_ignored(__s1, v7 == 1);
      }

      if ((v8[0] & 2) == 0)
      {
        v7 = 2;
        return !fpfs_path_is_ignored(__s1, v7 == 1);
      }
    }

    return 1;
  }

  result = strcmp(__s1, ".localized");
  if (result)
  {
    return strcmp(__s1, ".DS_Store") != 0;
  }

  return result;
}

void _fpfs_remove_sharing_xattrs(int a1)
{
  if ((fpfs_fset_collaboration_identifier(a1, 0) & 0x80000000) != 0)
  {
    v2 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      _fpfs_remove_sharing_xattrs_cold_1();
    }
  }

  if ((fpfs_fset_is_shared(a1, 0) & 0x80000000) != 0)
  {
    v3 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _fpfs_remove_sharing_xattrs_cold_2();
    }
  }

  if ((fpfs_fset_is_shared_by_current_user(a1, 0) & 0x80000000) != 0)
  {
    v4 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      _fpfs_remove_sharing_xattrs_cold_3();
    }
  }

  if ((fpfs_fset_owner_name(a1, 0) & 0x80000000) != 0)
  {
    v5 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _fpfs_remove_sharing_xattrs_cold_4();
    }
  }
}

uint64_t fpfs_recursive_prune_fault(uint64_t a1, int a2)
{
  value = a2;
  v11 = 0;
  v2 = fpfs_fast_realpath();
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  path = 0;
  if (!strncmp(v2, "/.nofollow/", 0xBuLL))
  {
    path = v3;
  }

  else
  {
    v4 = asprintf(&path, "/.nofollow/%s", v3);
    free(v3);
    if (v4 < 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v6 = removefile_state_alloc();
  removefile_state_set(v6, 1u, _fpfs_prune_fault_confirm);
  removefile_state_set(v6, 2u, &value);
  removefile_state_set(v6, 3u, _fpfs_prune_fault_error);
  removefile_state_set(v6, 6u, _fpfs_prune_fault_status);
  removefile_state_set(v6, 4u, &v11);
  v5 = removefile(path, v6, 0x103u);
  removefile_state_free(v6);
  if ((v5 & 0x80000000) != 0)
  {
    v8 = v11;
    *__error() = v8;
  }

  else
  {
    v7 = fpfs_open(path, 0x200000u, 0, 0, &__block_literal_global_10);
    if ((v7 & 0x80000000) == 0)
    {
      fpfs_set_syncroot_at(4294967294, path, 0);
      v7 = unlinkat(-2, path, 128);
    }

    v5 = v7;
  }

  free(path);
  return v5;
}

uint64_t _fpfs_prune_fault_confirm(uint64_t a1, const char *a2, int *a3)
{
  v3 = *a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___fpfs_prune_fault_confirm_block_invoke;
  v5[3] = &__block_descriptor_44_e8_i12__0i8l;
  v6 = v3;
  v5[4] = a2;
  return fpfs_open(a2, 0x20208000u, 0, 0, v5) >> 31;
}

uint64_t _fpfs_prune_fault_error(_removefile_state *a1, uint64_t a2)
{
  dst = 0;
  removefile_state_get(a1, 5u, &dst);
  v3 = fpfs_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    _fpfs_prune_fault_error_cold_1(a2, &dst);
  }

  return 1;
}

uint64_t _fpfs_prune_fault_status()
{
  v0 = fpfs_current_or_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    _fpfs_prune_fault_status_cold_1();
  }

  return 0;
}

uint64_t __fpfs_recursive_prune_fault_block_invoke(int a1, int a2)
{
  memset(&v4, 0, sizeof(v4));
  if (fstat(a2, &v4) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v4.st_flags & 0x40000000) != 0)
  {
    fpfs_unset_dataless_cmpfs_attrs(a2, &v4.st_mtimespec.tv_sec);
  }

  return 0;
}

uint64_t fpfs_recursive_unlinkat(int a1, const char *a2, int a3, int a4)
{
  if (a3)
  {
    v6 = 128;
  }

  else
  {
    v6 = 0;
  }

  if (a4)
  {
    v7 = v6 | 0x1000;
  }

  else
  {
    v7 = v6;
  }

  v8 = do_unlinkat(a1, a2, v7);
  if (v8 && (*__error() == 66 || *__error() == 1))
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __fpfs_recursive_unlinkat_block_invoke;
    v10[3] = &__block_descriptor_44_e5_i8__0l;
    v10[4] = a2;
    v11 = v7;
    return fpfs_fchdir(a1, v10);
  }

  return v8;
}

uint64_t do_unlinkat(int a1, const char *a2, __int16 a3)
{
  if ((a3 & 0x1000) != 0)
  {
    v6[5] = v3;
    v6[6] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __fpfs_delete_at_block_invoke;
    v6[3] = &__block_descriptor_40_e5_i8__0l;
    v6[4] = a2;
    return fpfs_fchdir(a1, v6);
  }

  else
  {

    return unlinkat(a1, a2, a3);
  }
}

uint64_t __fpfs_recursive_unlinkat_block_invoke(uint64_t a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v14[0] = *(a1 + 32);
  v14[1] = 0;
  v2 = fts_open(v14, 2132, 0);
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      v4 = fts_read(v3);
      v5 = 0;
      if (!v4)
      {
LABEL_27:
        v11 = *__error();
        fts_close(v3);
        *__error() = v11;
        goto LABEL_28;
      }

      fts_info = v4->fts_info;
      if (fts_info <= 7)
      {
        if (v4->fts_info <= 3u)
        {
          if (fts_info == 3)
          {
LABEL_13:
            v9 = unlinkat(-2, v4->fts_path, 0);
            goto LABEL_14;
          }

          if (fts_info == 2)
          {
            fts_errno = 62;
LABEL_26:
            *__error() = fts_errno;
            v5 = 0xFFFFFFFFLL;
            goto LABEL_27;
          }
        }

        else
        {
          if (fts_info == 6)
          {
            fts_path = v4->fts_path;
            v8 = *(a1 + 40) & 0xFFFFEFFF;
LABEL_11:
            v9 = do_unlinkat(-2, fts_path, v8);
LABEL_14:
            v5 = v9;
            goto LABEL_15;
          }

          if (fts_info == 4 || fts_info == 7)
          {
LABEL_25:
            fts_errno = v4->fts_errno;
            goto LABEL_26;
          }
        }
      }

      else
      {
        if (fts_info - 12 < 2)
        {
          goto LABEL_13;
        }

        if (fts_info == 8)
        {
          fts_path = v4->fts_path;
          v8 = *(a1 + 40) & 0xFFFFFF7F;
          goto LABEL_11;
        }

        if (fts_info == 10)
        {
          goto LABEL_25;
        }
      }

LABEL_15:
      if (v5)
      {
        goto LABEL_27;
      }
    }
  }

  v5 = 0xFFFFFFFFLL;
LABEL_28:
  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _materialize_full(int a1, uint64_t a2, uint64_t a3)
{
  if (ftruncate(a2, 0) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    return fcntl(a1, 69, a2);
  }

  return 0;
}

uint64_t fpfs_materialize(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, void *a10)
{
  v97 = *MEMORY[0x1E69E9840];
  v66 = a10;
  v18 = a2[2] < 1 || a5 < 0;
  v91 = v18;
  memset(&v80, 0, sizeof(v80));
  if (fstat(a1, &v80) < 0 || (_validate_file_types(v80.st_mode, *a2, v19) & 0x80000000) != 0)
  {
    goto LABEL_49;
  }

  if ((v80.st_flags & 0x40000000) == 0)
  {
    if ((*(a2 + 4) & 0x20) == 0 && (_unset_dataless_cmpfs_xattr(a1) & 0x80000000) != 0 && *__error() != 93 && (*a2 != 2 || *__error() != 21))
    {
      goto LABEL_49;
    }

    v20 = __error();
    v21 = 37;
    goto LABEL_48;
  }

  if ((a4 & 0x80000000) == 0)
  {
    v22 = *a2;
    memset(&v80, 0, sizeof(v80));
    if (fstat(a4, &v80) < 0 || (_validate_file_types(v80.st_mode, v22, v23) & 0x80000000) != 0)
    {
      goto LABEL_49;
    }
  }

  v24 = *a2;
  if (*a2 <= 1)
  {
    if (!v24)
    {
      goto LABEL_47;
    }

    if (v24 != 1)
    {
      goto LABEL_54;
    }

    v25 = fcntl(a4, 63);
    v26 = fcntl(a1, 63);
    if (v26 >= v25 && (v25 || !v26))
    {
      if (v25 >= v26 && (v26 || !v25) || (fcntl(a1, 64, v25) & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      v59 = *__error();
      v60 = fpfs_current_or_default_log();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        fpfs_materialize_cold_1();
      }
    }

    else
    {
      if ((fcntl(a4, 64, v26) & 0x80000000) == 0)
      {
LABEL_28:
        v63 = fgetxattr(a4, "com.apple.ResourceFork", 0, 0, 0, 0);
        if (v63 < 0)
        {
          if (*__error() != 93)
          {
            goto LABEL_49;
          }

LABEL_94:
          if (v18)
          {
            v35 = _materialize_full(a4, a1, a2[2]);
          }

          else
          {
            v35 = _materialize_partial(a4, a1, a5, a6, a7, &v91);
          }

          goto LABEL_53;
        }

        if (fremovexattr(a1, "com.apple.ResourceFork", 32) < 0 && *__error() != 93)
        {
          goto LABEL_49;
        }

        if (v63 >= 0x1000)
        {
          v27 = 4096;
        }

        else
        {
          v27 = v63;
        }

        size = v27;
        value = malloc_type_malloc(v27, 0xF0AB2815uLL);
        if (!value)
        {
          v20 = __error();
          v21 = 12;
          goto LABEL_48;
        }

        if (v63)
        {
          v28 = fgetxattr(a4, "com.apple.ResourceFork", value, size, 0, 0);
          if ((v28 & 0x8000000000000000) == 0)
          {
            v29 = 0;
            while ((fsetxattr(a1, "com.apple.ResourceFork", value, v28, v29, 0) & 0x80000000) == 0)
            {
              v29 += v28;
              v30 = v63 - v29;
              if (v63 > v29)
              {
                v31 = v30 >= size ? size : v30;
                v28 = fgetxattr(a4, "com.apple.ResourceFork", value, v31, v29, 0);
                if ((v28 & 0x8000000000000000) == 0)
                {
                  continue;
                }
              }

              free(value);
              goto LABEL_94;
            }
          }
        }

        free(value);
        v59 = *__error();
        fremovexattr(a1, "com.apple.ResourceFork", 32);
        v61 = __error();
LABEL_97:
        *v61 = v59;
        goto LABEL_49;
      }

      v59 = *__error();
      v60 = fpfs_current_or_default_log();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        fpfs_materialize_cold_2();
      }
    }

    v61 = __error();
    goto LABEL_97;
  }

  if (v24 != 2)
  {
    if (v24 != 3)
    {
      if (v24 != 4)
      {
        goto LABEL_54;
      }

      goto LABEL_47;
    }

    *&v67 = MEMORY[0x1E69E9820];
    *(&v67 + 1) = 3221225472;
    *&v68 = ___femptypkg_block_invoke;
    *(&v68 + 1) = &__block_descriptor_36_e29_i16__0__dirent_QQSSC_1024c__8l;
    *v69 = a1;
    if ((fpfs_fopendir(a1, &v67) & 0x80000000) != 0)
    {
      goto LABEL_49;
    }

    *&v80.st_dev = MEMORY[0x1E69E9820];
    v80.st_ino = 3221225472;
    *&v80.st_uid = ___transfer_dir_contents_block_invoke;
    *&v80.st_rdev = &__block_descriptor_40_e29_i16__0__dirent_QQSSC_1024c__8l;
    v80.st_atimespec.tv_sec = __PAIR64__(a1, a4);
    v35 = fpfs_fopendir(a4, &v80);
LABEL_53:
    if (v35 < 0)
    {
      goto LABEL_49;
    }

LABEL_54:
    v87 = 0;
    v88 = &v87;
    v89 = 0x2020000000;
    v90 = 0;
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __fpfs_materialize_block_invoke;
    v86[3] = &unk_1E793BFB8;
    v86[4] = &v87;
    v86[5] = a9;
    fpfs_fgethandle(a1, v86);
    v36 = v91;
    if (v91)
    {
      a3 |= 0x20000uLL;
    }

    v37 = *(a2 + 11);
    v82 = *(a2 + 10);
    v83 = v37;
    v38 = *(a2 + 13);
    v84 = *(a2 + 12);
    v85 = v38;
    v39 = *(a2 + 7);
    *&v80.st_size = *(a2 + 6);
    *&v80.st_blksize = v39;
    v40 = *(a2 + 9);
    *v80.st_qspare = *(a2 + 8);
    v81 = v40;
    v41 = *(a2 + 3);
    v80.st_atimespec = *(a2 + 2);
    v80.st_mtimespec = v41;
    v42 = *(a2 + 5);
    v80.st_ctimespec = *(a2 + 4);
    v80.st_birthtimespec = v42;
    v43 = *(a2 + 1);
    *&v80.st_dev = *a2;
    *&v80.st_uid = v43;
    if (!v91)
    {
      *&v80.st_mode |= 1u;
      LODWORD(v67) = 0;
      if ((a1 & 0x80000000) != 0)
      {
        v44 = 0;
      }

      else
      {
        if ((fpfs_eviction_reason_from_xattr(a1, &v67) & 0x80000000) != 0)
        {
          goto LABEL_82;
        }

        v44 = v67;
      }

      LODWORD(v85) = v44;
    }

    if ((fpfs_fset_metadata(a1, &v80, *(v88 + 6), a3, 0, 0, v66) & 0x80000000) == 0 && (!v36 || (*(a2 + 4) & 0x20) != 0 || (_unset_dataless_cmpfs_xattr(a1) & 0x80000000) == 0 || *__error() == 93))
    {
      if (a8 && (fpfs_remove_content_dependent_xattrs(a1, v66) & 0x80000000) != 0)
      {
        v45 = fpfs_current_or_default_log();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = __error();
          v47 = strerror(*v46);
          fpfs_materialize_cold_3(v47, v96, v45);
        }
      }

      if ((fpfs_supports_parent_mtime_iopolicy() & 1) == 0 && *a2 == 3)
      {
        v48 = *(a2 + 11);
        v76 = *(a2 + 10);
        v77 = v48;
        v49 = *(a2 + 13);
        v78 = *(a2 + 12);
        v79 = v49;
        v50 = *(a2 + 7);
        v72 = *(a2 + 6);
        v73 = v50;
        v51 = *(a2 + 9);
        v74 = *(a2 + 8);
        v75 = v51;
        v52 = *(a2 + 3);
        *v69 = *(a2 + 2);
        *&v69[16] = v52;
        v53 = *(a2 + 5);
        v70 = *(a2 + 4);
        v71 = v53;
        v54 = *(a2 + 1);
        v67 = *a2;
        v68 = v54;
        clock_gettime(_CLOCK_REALTIME, &v69[8]);
        if ((fpfs_fset_metadata(a1, &v67, 0, 2, 0, 0, v66) & 0x80000000) != 0)
        {
          v55 = fpfs_current_or_default_log();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            v56 = *(a9 + 16);
            v57 = __error();
            v58 = strerror(*v57);
            *buf = 67109378;
            v93 = v56;
            v94 = 2080;
            v95 = v58;
            _os_log_impl(&dword_1AAAE1000, v55, OS_LOG_TYPE_INFO, "Unable to bump mtime at pkg root for docID(%u) after materialization (ignoring): %s", buf, 0x12u);
          }
        }
      }

      v32 = 0;
      goto LABEL_83;
    }

LABEL_82:
    v32 = 0xFFFFFFFFLL;
LABEL_83:
    _Block_object_dispose(&v87, 8);
    goto LABEL_50;
  }

  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_54;
  }

LABEL_47:
  v20 = __error();
  v21 = 22;
LABEL_48:
  *v20 = v21;
LABEL_49:
  v32 = 0xFFFFFFFFLL;
LABEL_50:

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}